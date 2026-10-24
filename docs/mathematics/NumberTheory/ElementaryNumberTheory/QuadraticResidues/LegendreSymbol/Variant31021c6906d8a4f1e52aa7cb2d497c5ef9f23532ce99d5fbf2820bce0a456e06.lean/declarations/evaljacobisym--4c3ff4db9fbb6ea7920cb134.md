# evalJacobiSym

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e33a6e638438e241e720e7b8b485b34f1871effd47b4b574d2a17e3482f208a1",
  "kind": "def",
  "lexical_name": "evalJacobiSym",
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
  "slug": "evaljacobisym--4c3ff4db9fbb6ea7920cb134",
  "source": {
    "blob": "d10bf98bc2e4aa27e8c399c1942fb659700a0244",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 430,
    "line": 419,
    "path": "GRWTSK/NumberTheory/LegendreSymbol/Variant31021c6906d8a4f1e52aa7cb2d497c5ef9f23532ce99d5fbf2820bce0a456e06.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4c3ff4db9fbb6ea7920cb134a467f82f686593f098337e308c1acaf0e7b2d78a",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/QuadraticResidues/LegendreSymbol/Variant31021c6906d8a4f1e52aa7cb2d497c5ef9f23532ce99d5fbf2820bce0a456e06.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e33a6e638438e241e720e7b8b485b34f1871effd47b4b574d2a17e3482f208a1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 419–430.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def evalJacobiSym : NormNumExt where eval {u α} e := do
    let .app (.app _ (a : Q(ℤ))) (b : Q(ℕ)) ← Meta.whnfR e | failure
    let ⟨ea, pa⟩ ← deriveInt a _
    let ⟨eb, pb⟩ ← deriveNat b _
    haveI' : u =QL 0 := ⟨⟩ haveI' : $α =Q ℤ := ⟨⟩
    have ⟨er, pr⟩ := proveJacobiSym ea eb
    haveI' : $e =Q jacobiSym $a $b := ⟨⟩
    return .isInt _ er er.intLit! q(isInt_jacobiSym $pa $pb $pr)
#align tactic.norm_num.eval_jacobi_sym Tactic.NormNum.evalJacobiSym

/-- This is the `norm_num` plug-in that evaluates Jacobi symbols on natural numbers. -/
@[norm_num jacobiSymNat _ _]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/QuadraticResidues/LegendreSymbol/Variant31021c6906d8a4f1e52aa7cb2d497c5ef9f23532ce99d5fbf2820bce0a456e06.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/LegendreSymbol/Variant31021c6906d8a4f1e52aa7cb2d497c5ef9f23532ce99d5fbf2820bce0a456e06.lean#L419).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d10bf98bc2e4aa27e8c399c1942fb659700a0244` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
