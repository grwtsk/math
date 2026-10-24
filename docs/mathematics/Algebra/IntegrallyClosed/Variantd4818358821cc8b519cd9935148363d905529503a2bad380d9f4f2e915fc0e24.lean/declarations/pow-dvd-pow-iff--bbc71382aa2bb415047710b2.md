# pow_dvd_pow_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "aeed505a7106e6c4ae328bb1a3d258c216e14d9d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 323,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d4/d4818358821cc8b519cd9935148363d905529503a2bad380d9f4f2e915fc0e24.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:12791389-6253-05ff-b062-825c43d0871e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:03aefe55-ac72-4b09-360a-6a8f2a6cbc2c",
  "kind": "theorem",
  "lexical_name": "pow_dvd_pow_iff",
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
  "slug": "pow-dvd-pow-iff--bbc71382aa2bb415047710b2",
  "source": {
    "blob": "aeed505a7106e6c4ae328bb1a3d258c216e14d9d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 342,
    "line": 323,
    "path": "GRWTSK/Algebra/IntegrallyClosed/Variantd4818358821cc8b519cd9935148363d905529503a2bad380d9f4f2e915fc0e24.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bbc71382aa2bb415047710b26d79b9c6e66b7df7baaf37094741bbbceba3fa03",
  "verification": {
    "reference": "docs/verification/Algebra/IntegrallyClosed/Variantd4818358821cc8b519cd9935148363d905529503a2bad380d9f4f2e915fc0e24.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:03aefe55-ac72-4b09-360a-6a8f2a6cbc2c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 323–342.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pow_dvd_pow_iff [IsDomain R] [IsIntegrallyClosed R]
    {n : ℕ} (hn : n ≠ 0) {a b : R} : a ^ n ∣ b ^ n ↔ a ∣ b := by
  refine ⟨fun ⟨x, hx⟩ ↦ ?_, fun h ↦ pow_dvd_pow_of_dvd h n⟩
  by_cases ha : a = 0
  · simpa [ha, hn] using hx
  let K := FractionRing R
  replace ha : algebraMap R K a ≠ 0 := fun h ↦
    ha <| (injective_iff_map_eq_zero _).1 (IsFractionRing.injective R K) _ h
  let y := (algebraMap R K b) / (algebraMap R K a)
  have hy : IsIntegral R y := by
    refine ⟨X ^ n - C x, monic_X_pow_sub_C _ hn, ?_⟩
    simp only [y, eval₂_sub, eval₂_X_pow, div_pow, eval₂_C]
    replace hx := congr_arg (algebraMap R K) hx
    rw [map_pow] at hx
    simp [hx, ha]
  obtain ⟨k, hk⟩ := algebraMap_eq_of_integral hy
  refine ⟨k, IsFractionRing.injective R K ?_⟩
  rw [map_mul, hk, mul_div_cancel₀ _ ha]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/IntegrallyClosed/Variantd4818358821cc8b519cd9935148363d905529503a2bad380d9f4f2e915fc0e24.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/IntegrallyClosed/Variantd4818358821cc8b519cd9935148363d905529503a2bad380d9f4f2e915fc0e24.lean#L323).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aeed505a7106e6c4ae328bb1a3d258c216e14d9d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
