# centroid_pair

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c710ccd1-686a-2bab-6fe2-94096131b548",
  "kind": "theorem",
  "lexical_name": "centroid_pair",
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
  "slug": "centroid-pair--a2fb0ecb1a157a7680af1e63",
  "source": {
    "blob": "1ea3bf8ce929ecd8e51c12e88c581abae1d5d8b7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 107,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Centroid/Variantbc3225f73b376ffbad673ae378df7b742706dc01cdc947671df4e0f40471de32.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a2fb0ecb1a157a7680af1e63e232b9b0e39b37a51cb11118e0e80314b4ba3862",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Centroid/Variantbc3225f73b376ffbad673ae378df7b742706dc01cdc947671df4e0f40471de32.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c710ccd1-686a-2bab-6fe2-94096131b548`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem centroid_pair [DecidableEq ι] [Invertible (2 : k)] (p : ι → P) (i₁ i₂ : ι) :
    ({i₁, i₂} : Finset ι).centroid k p = (2⁻¹ : k) • (p i₂ -ᵥ p i₁) +ᵥ p i₁ := by
  by_cases h : i₁ = i₂
  · simp [h]
  · have hc : (#{i₁, i₂} : k) ≠ 0 := by
      rw [card_insert_of_notMem (notMem_singleton.2 h), card_singleton]
      simpa using Invertible.ne_zero _
    rw [centroid_def,
      affineCombination_eq_weightedVSubOfPoint_vadd_of_sum_eq_one _ _ _
        (sum_centroidWeights_eq_one_of_cast_card_ne_zero _ hc) (p i₁)]
    simp [h, one_add_one_eq_two]

/-- The centroid of two points indexed by `Fin 2`, expressed directly
as adding a vector to the first point. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Centroid/Variantbc3225f73b376ffbad673ae378df7b742706dc01cdc947671df4e0f40471de32.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Centroid/Variantbc3225f73b376ffbad673ae378df7b742706dc01cdc947671df4e0f40471de32.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ea3bf8ce929ecd8e51c12e88c581abae1d5d8b7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
