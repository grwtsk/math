# blockPairDensity_le_exp_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:31ce7e69-1365-5c3c-21c8-d4dbf27eb3ce",
  "kind": "theorem",
  "lexical_name": "blockPairDensity_le_exp_one",
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
  "slug": "blockpairdensity-le-exp-one--5d49099553c9d3036a96af24",
  "source": {
    "blob": "a7ffc921f376ae1374f18a9ee1e51af6945f51c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 193,
    "line": 177,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Abc72c0a43eeafcbd886EstimateTypeTwoLogBlocks/Variantf457cdd5c4f6ac5919bf29904db2f5dffee58491585e4d8a004746967e1f7e0b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5d49099553c9d3036a96af244a31818bb1e0d6e757c80f51a45ca898537361a5",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Abc72c0a43eeafcbd886EstimateTypeTwoLogBlocks/Variantf457cdd5c4f6ac5919bf29904db2f5dffee58491585e4d8a004746967e1f7e0b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:31ce7e69-1365-5c3c-21c8-d4dbf27eb3ce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 177–193.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem blockPairDensity_le_exp_one (A : ℝ) (c : ℕ × ℕ) :
    blockPairDensity A c ≤ Real.exp 1 := by
  unfold blockPairDensity
  apply (div_le_iff₀ (Real.exp_pos _)).2
  apply (Real.sqrt_le_left (by positivity)).2
  have he : (Real.exp 1 * Real.exp (((c.1 : ℝ)+(c.2 : ℝ))/2))^2 =
      Real.exp ((c.1 : ℝ)+1) * Real.exp ((c.2 : ℝ)+1) := by
    rw [← Real.exp_add, pow_two, ← Real.exp_add, ← Real.exp_add]
    congr 1
    ring
  rw [he]
  exact mul_le_mul (logLongInventory_card_le_exp A c.1) (logLongInventory_card_le_exp A c.2)
    (by positivity) (Real.exp_pos _).le

end
end EstimateTypeTwoLogBlocks
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Abc72c0a43eeafcbd886EstimateTypeTwoLogBlocks/Variantf457cdd5c4f6ac5919bf29904db2f5dffee58491585e4d8a004746967e1f7e0b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Abc72c0a43eeafcbd886EstimateTypeTwoLogBlocks/Variantf457cdd5c4f6ac5919bf29904db2f5dffee58491585e4d8a004746967e1f7e0b.lean#L177).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a7ffc921f376ae1374f18a9ee1e51af6945f51c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
