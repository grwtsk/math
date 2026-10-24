# map_linearMap_addHaar_pi_eq_smul_addHaar

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "34e6b3be1d28a98a0f1568d8ecf76f36ee2fc2d7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 215,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/19/1907da884af980c936439349b4441c2d087ed62dbd7e92159cafd481f1b8082b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:92b25f5f-546e-e0dc-f274-30d93fd9cf1c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c0a5a94a-af3a-e4e2-a195-0491f4064b94",
  "kind": "theorem",
  "lexical_name": "map_linearMap_addHaar_pi_eq_smul_addHaar",
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
  "slug": "map-linearmap-addhaar-pi-eq-smul-addhaar--58b3f91a035ef4f74f0d5387",
  "source": {
    "blob": "34e6b3be1d28a98a0f1568d8ecf76f36ee2fc2d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 227,
    "line": 215,
    "path": "GRWTSK/Topology/GeneralTopology/EqHaar/Variant1907da884af980c936439349b4441c2d087ed62dbd7e92159cafd481f1b8082b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:58b3f91a035ef4f74f0d5387e540d1bf1a7939c3974fe1472860f5bf8b7db5f2",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/EqHaar/Variant1907da884af980c936439349b4441c2d087ed62dbd7e92159cafd481f1b8082b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c0a5a94a-af3a-e4e2-a195-0491f4064b94`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 215–227.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_linearMap_addHaar_pi_eq_smul_addHaar {ι : Type*} [Finite ι] {f : (ι → ℝ) →ₗ[ℝ] ι → ℝ}
    (hf : LinearMap.det f ≠ 0) (μ : Measure (ι → ℝ)) [IsAddHaarMeasure μ] :
    Measure.map f μ = ENNReal.ofReal (abs (LinearMap.det f)⁻¹) • μ := by
  cases nonempty_fintype ι
  /- We have already proved the result for the Lebesgue product measure, using matrices.
    We deduce it for any Haar measure by uniqueness (up to scalar multiplication). -/
  have := addHaarMeasure_unique μ (piIcc01 ι)
  rw [this, addHaarMeasure_eq_volume_pi, Measure.map_smul,
    Real.map_linearMap_volume_pi_eq_smul_volume_pi hf, smul_comm]

variable {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E] [MeasurableSpace E] [BorelSpace E]
  [FiniteDimensional ℝ E] (μ : Measure E) [IsAddHaarMeasure μ]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/EqHaar/Variant1907da884af980c936439349b4441c2d087ed62dbd7e92159cafd481f1b8082b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/EqHaar/Variant1907da884af980c936439349b4441c2d087ed62dbd7e92159cafd481f1b8082b.lean#L215).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `34e6b3be1d28a98a0f1568d8ecf76f36ee2fc2d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
