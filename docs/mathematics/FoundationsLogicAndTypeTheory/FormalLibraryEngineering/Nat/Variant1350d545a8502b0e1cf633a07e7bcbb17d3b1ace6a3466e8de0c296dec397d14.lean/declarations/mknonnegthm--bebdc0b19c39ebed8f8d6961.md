# mkNonnegThm?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6d28c8ecb9f2517394c15e54e557bcf451adc18725d0554646463a31ab7e8051",
  "kind": "def",
  "lexical_name": "mkNonnegThm?",
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
  "slug": "mknonnegthm--bebdc0b19c39ebed8f8d6961",
  "source": {
    "blob": "077d0d36de2dc68929fb568613c5a3623b33f966",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 157,
    "line": 141,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Nat/Variant1350d545a8502b0e1cf633a07e7bcbb17d3b1ace6a3466e8de0c296dec397d14.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bebdc0b19c39ebed8f8d6961044ff5009cd795205a04a4fec73f47781ed8985f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Nat/Variant1350d545a8502b0e1cf633a07e7bcbb17d3b1ace6a3466e8de0c296dec397d14.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6d28c8ecb9f2517394c15e54e557bcf451adc18725d0554646463a31ab7e8051`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 141–157.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def mkNonnegThm? (e : Expr) : GoalM (Option Expr) := do
  unless (← isNonneg e) do return none
  return some (← go e)
where
  go (e : Expr) : MetaM Expr := do
    match_expr e with
    | OfNat.ofNat _ _ _ => return mkApp2 (mkConst ``Int.Nonneg.num) e eagerReflBoolTrue
    | HAdd.hAdd _ _ _ _ a b => return mkApp4 (mkConst ``Int.Nonneg.add) a b (← go a) (← go b)
    | HMul.hMul _ _ _ _ a b => return mkApp4 (mkConst ``Int.Nonneg.mul) a b (← go a) (← go b)
    | HDiv.hDiv _ _ _ _ a b => return mkApp4 (mkConst ``Int.Nonneg.div) a b (← go a) (← go b)
    | HMod.hMod _ _ _ _ a b => return mkApp3 (mkConst ``Int.Nonneg.mod) a b (← go a)
    | HPow.hPow _ _ _ _ a b => return mkApp3 (mkConst ``Int.Nonneg.pow) a b (← go a)
    | _ =>
      let_expr NatCast.natCast _ _ a ← e | unreachable!
      return mkApp (mkConst ``Int.Nonneg.natCast) a

 /-- Given `x` whose denotation is `e : Int`, tries to assert that `e ≥ 0` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Nat/Variant1350d545a8502b0e1cf633a07e7bcbb17d3b1ace6a3466e8de0c296dec397d14.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Nat/Variant1350d545a8502b0e1cf633a07e7bcbb17d3b1ace6a3466e8de0c296dec397d14.lean#L141).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `077d0d36de2dc68929fb568613c5a3623b33f966` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
