# injectiveDimension_X₁_eq_succ_of_not_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:efe0cfef-8616-69aa-9c15-a31b34a0ab1a",
  "kind": "lemma",
  "lexical_name": "injectiveDimension_X₁_eq_succ_of_not_injective",
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
  "slug": "injectivedimension-x-eq-succ-of-not-injective--756b6917f22d60b0725f462e",
  "source": {
    "blob": "1411411a6997a92ee1cea1cf719a7666e4b3c85d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 427,
    "line": 405,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Dimension/Variantf3b88db7743173faf8da9df1204e4db94906731e8651ccebe4cda50db7c11092.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:756b6917f22d60b0725f462e285fc240c224d7152524f3d63e1ced651a9beeb2",
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

Occurrence: `result:efe0cfef-8616-69aa-9c15-a31b34a0ab1a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 405–427.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma injectiveDimension_X₁_eq_succ_of_not_injective (i : Injective S.X₂)
    (ni : ¬ Injective S.X₁) : injectiveDimension S.X₁ = injectiveDimension S.X₃ + 1 := by
  refine le_antisymm (hS.injectiveDimension_X₁_le_sup.trans ?_)
    (hS.injectiveDimension_X₃_succ_le_sup.trans ?_)
  · simp only [sup_le_iff, le_refl, and_true]
    trans 0 + 1
    · grw [i.injectiveDimension_le_zero, zero_add, zero_le_one]
    · rw [ENat.WithBot.add_le_add_one_right_iff, injectiveDimension_ge_zero_iff, ← hS.isIso_f_iff]
      contrapose ni
      exact Injective.of_iso (asIso S.f).symm i
  · simp only [sup_le_iff, le_refl, and_true]
    trans 0 + 1
    · grw [i.injectiveDimension_le_zero]
    · rwa [zero_add, ← Nat.cast_one, injectiveDimension_ge_iff,
        ← injective_iff_hasInjectiveDimensionLT_one]

end ShortExact

end ShortComplex

end CategoryTheory

end InjectiveDimension
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Dimension/Variantf3b88db7743173faf8da9df1204e4db94906731e8651ccebe4cda50db7c11092.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Dimension/Variantf3b88db7743173faf8da9df1204e4db94906731e8651ccebe4cda50db7c11092.lean#L405).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1411411a6997a92ee1cea1cf719a7666e4b3c85d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
