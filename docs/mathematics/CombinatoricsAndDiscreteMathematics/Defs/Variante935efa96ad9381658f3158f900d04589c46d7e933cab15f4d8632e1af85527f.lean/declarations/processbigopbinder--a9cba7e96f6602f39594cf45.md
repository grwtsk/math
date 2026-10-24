# processBigOpBinder

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:addb9edff18aba2d20c3e6966540d07a2699a52f71d6a8bcae126784ffeca58b",
  "kind": "def",
  "lexical_name": "processBigOpBinder",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "processbigopbinder--a9cba7e96f6602f39594cf45",
  "source": {
    "blob": "0eec64f2576f4d449b44b877678fe95678cfc9f0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140,
    "line": 120,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Defs/Variante935efa96ad9381658f3158f900d04589c46d7e933cab15f4d8632e1af85527f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a9cba7e96f6602f39594cf45af74d934ebc7fd14be66e3bea604e3d4a12c2fcc",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Defs/Variante935efa96ad9381658f3158f900d04589c46d7e933cab15f4d8632e1af85527f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:addb9edff18aba2d20c3e6966540d07a2699a52f71d6a8bcae126784ffeca58b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120–140.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
meta def processBigOpBinder (processed : (Array (Term × Term))) (binder : TSyntax ``bigOpBinder) :
    MacroM (Array (Term × Term)) :=
  set_option hygiene false in
  withRef binder do
    match binder with
    | `(bigOpBinder| $x:term) =>
      match x with
      | `(($a + $b = $n)) => -- Maybe this is too cute.
        return processed |>.push (← `(⟨$a, $b⟩), ← `(Finset.Nat.antidiagonal $n))
      | _ => return processed |>.push (x, ← ``(Finset.univ))
    | `(bigOpBinder| $x : $t) => return processed |>.push (x, ← ``((Finset.univ : Finset $t)))
    | `(bigOpBinder| $x ∈ $s) => return processed |>.push (x, ← `(finset% $s))
    | `(bigOpBinder| $x ∉ $s) => return processed |>.push (x, ← `(finset% $sᶜ))
    | `(bigOpBinder| $x ≠ $n) => return processed |>.push (x, ← `(Finset.univ.erase $n))
    | `(bigOpBinder| $x < $n) => return processed |>.push (x, ← `(Finset.Iio $n))
    | `(bigOpBinder| $x ≤ $n) => return processed |>.push (x, ← `(Finset.Iic $n))
    | `(bigOpBinder| $x > $n) => return processed |>.push (x, ← `(Finset.Ioi $n))
    | `(bigOpBinder| $x ≥ $n) => return processed |>.push (x, ← `(Finset.Ici $n))
    | _ => Macro.throwUnsupported

/-- Collects the binder/Finset pairs for the given `bigOpBinders`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Defs/Variante935efa96ad9381658f3158f900d04589c46d7e933cab15f4d8632e1af85527f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Defs/Variante935efa96ad9381658f3158f900d04589c46d7e933cab15f4d8632e1af85527f.lean#L120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0eec64f2576f4d449b44b877678fe95678cfc9f0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
