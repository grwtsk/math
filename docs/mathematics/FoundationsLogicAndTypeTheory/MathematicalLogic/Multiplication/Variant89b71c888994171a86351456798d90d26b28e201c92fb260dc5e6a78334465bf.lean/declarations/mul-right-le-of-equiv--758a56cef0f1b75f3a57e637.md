# mul_right_le_of_equiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "34dec25f964853a34aa6a75b2e028953923aded2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 348,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/89/89b71c888994171a86351456798d90d26b28e201c92fb260dc5e6a78334465bf.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:437b1e6e-1f5b-4705-b01d-2bea9cf22ac3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:718990ca-8584-db8b-ed70-ec5f157ab4aa",
  "kind": "theorem",
  "lexical_name": "mul_right_le_of_equiv",
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
  "slug": "mul-right-le-of-equiv--758a56cef0f1b75f3a57e637",
  "source": {
    "blob": "34dec25f964853a34aa6a75b2e028953923aded2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 363,
    "line": 348,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Multiplication/Variant89b71c888994171a86351456798d90d26b28e201c92fb260dc5e6a78334465bf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:758a56cef0f1b75f3a57e6370b37c598174cef33342e103de2fc1f3dafa8b764",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Multiplication/Variant89b71c888994171a86351456798d90d26b28e201c92fb260dc5e6a78334465bf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:718990ca-8584-db8b-ed70-ec5f157ab4aa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 348–363.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mul_right_le_of_equiv (h₁ : x₁.Numeric) (h₂ : x₂.Numeric)
    (h₁₂ : IH24 x₁ x₂ y) (h₂₁ : IH24 x₂ x₁ y) (he : x₁ ≈ x₂) : x₁ * y ≤ x₂ * y := by
  have he' := neg_equiv_neg_iff.2 he
  apply PGame.le_of_forall_lt <;> simp_rw [lt_iff_game_lt]
  · rw [leftMoves_mul_iff (_ > ·)]
    refine ⟨mulOption_lt_mul_of_equiv h₁ h₁₂ he, ?_⟩
    rw [← quot_neg_mul_neg]
    exact mulOption_lt_mul_of_equiv h₁.neg (ih24_neg <| (ih24_neg h₂₁).1).2 he'
  · rw [rightMoves_mul_iff]
    constructor <;> intros <;> rw [lt_neg]
    · rw [← quot_mul_neg]
      apply mulOption_lt_mul_of_equiv h₂ (ih24_neg h₂₁).2 (symm he)
    · rw [← quot_neg_mul]
      apply mulOption_lt_mul_of_equiv h₂.neg (ih24_neg h₁₂).1 (symm he')

/-- The statement that all left options of `x * y` of the first kind are less than itself. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Multiplication/Variant89b71c888994171a86351456798d90d26b28e201c92fb260dc5e6a78334465bf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Multiplication/Variant89b71c888994171a86351456798d90d26b28e201c92fb260dc5e6a78334465bf.lean#L348).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `34dec25f964853a34aa6a75b2e028953923aded2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
