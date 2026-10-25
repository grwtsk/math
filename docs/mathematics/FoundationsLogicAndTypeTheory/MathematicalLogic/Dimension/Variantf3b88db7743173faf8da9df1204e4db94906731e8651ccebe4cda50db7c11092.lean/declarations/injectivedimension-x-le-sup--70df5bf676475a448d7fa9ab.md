# injectiveDimension_X₂_le_sup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:93e35e7c-915e-240f-5c6a-be1707f8bd22",
  "kind": "lemma",
  "lexical_name": "injectiveDimension_X₂_le_sup",
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
  "slug": "injectivedimension-x-le-sup--70df5bf676475a448d7fa9ab",
  "source": {
    "blob": "1411411a6997a92ee1cea1cf719a7666e4b3c85d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 370,
    "line": 357,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Dimension/Variantf3b88db7743173faf8da9df1204e4db94906731e8651ccebe4cda50db7c11092.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:70df5bf676475a448d7fa9ab029d30601f8c3446fddca8747ce8570d44bba42e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Dimension/Variantf3b88db7743173faf8da9df1204e4db94906731e8651ccebe4cda50db7c11092.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:93e35e7c-915e-240f-5c6a-be1707f8bd22`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 357–370.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma injectiveDimension_X₂_le_sup :
    injectiveDimension S.X₂ ≤ injectiveDimension S.X₁ ⊔ injectiveDimension S.X₃ := by
  refine le_of_forall_ge (fun N ↦ ?_)
  induction N with
  | bot =>
    simpa [injectiveDimension_eq_bot_iff] using fun h1 h3 ↦ hS.exact.isZero_of_both_isZero h1 h3
  | coe N =>
    induction N with
    | top => simp
    | coe n =>
      simpa [injectiveDimension_le_iff] using hS.hasInjectiveDimensionLT_X₂ (n + 1)

/-- In a short exact complex, the injective dimension of the left object is bounded by
`max (injectiveDimension S.X₂) (injectiveDimension S.X₃ + 1)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Dimension/Variantf3b88db7743173faf8da9df1204e4db94906731e8651ccebe4cda50db7c11092.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Dimension/Variantf3b88db7743173faf8da9df1204e4db94906731e8651ccebe4cda50db7c11092.lean#L357).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1411411a6997a92ee1cea1cf719a7666e4b3c85d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
