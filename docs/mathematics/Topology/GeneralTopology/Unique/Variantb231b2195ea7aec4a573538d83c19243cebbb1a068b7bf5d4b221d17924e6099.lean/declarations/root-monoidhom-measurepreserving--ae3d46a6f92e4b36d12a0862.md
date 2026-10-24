# _root_.MonoidHom.measurePreserving

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6d7e88c666147c86eb1b9d9168e7f4ddcbcd54c1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 907,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b2/b231b2195ea7aec4a573538d83c19243cebbb1a068b7bf5d4b221d17924e6099.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:18c926cb-c8d6-f5d0-951e-9658027f6bc8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:aecae3c4-2032-0aee-cfe4-8c80fdb9b0f1",
  "kind": "theorem",
  "lexical_name": "_root_.MonoidHom.measurePreserving",
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
  "slug": "root-monoidhom-measurepreserving--ae3d46a6f92e4b36d12a0862",
  "source": {
    "blob": "6d7e88c666147c86eb1b9d9168e7f4ddcbcd54c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 933,
    "line": 907,
    "path": "GRWTSK/Topology/GeneralTopology/Unique/Variantb231b2195ea7aec4a573538d83c19243cebbb1a068b7bf5d4b221d17924e6099.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ae3d46a6f92e4b36d12a08622d1d8b457194d9cb7dca2f1b02138c4440f189de",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Unique/Variantb231b2195ea7aec4a573538d83c19243cebbb1a068b7bf5d4b221d17924e6099.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aecae3c4-2032-0aee-cfe4-8c80fdb9b0f1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 907–933.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.MonoidHom.measurePreserving
    {H : Type*} [Group H] [TopologicalSpace H] [IsTopologicalGroup H] [CompactSpace H]
    [MeasurableSpace H] [BorelSpace H]
    {μ : Measure G} [IsHaarMeasure μ] {ν : Measure H} [IsHaarMeasure ν]
    {f : G →* H} (hcont : Continuous f) (hsurj : Surjective f) (huniv : μ univ = ν univ) :
    MeasurePreserving f μ ν where
  measurable := hcont.measurable
  map_eq := by
    have : IsFiniteMeasure μ := ⟨by rw [huniv]; apply measure_lt_top⟩
    have : (μ.map f).IsHaarMeasure := isHaarMeasure_map_of_isFiniteMeasure μ f hcont hsurj
    set C : ℝ≥0 := haarScalarFactor (μ.map f) ν
    have hC : μ.map f = C • ν := isMulLeftInvariant_eq_smul_of_innerRegular _ _
    suffices C = 1 by rwa [this, one_smul] at hC
    have : C * ν univ = 1 * ν univ := by
      rw [one_mul, ← smul_eq_mul, ← ENNReal.smul_def, ← smul_apply, ← hC,
        map_apply hcont.measurable .univ, preimage_univ, huniv]
    rwa [ENNReal.mul_left_inj (NeZero.ne _) (measure_ne_top _ _), ENNReal.coe_eq_one] at this

end Group

section CommGroup

variable {G : Type*} [CommGroup G] [TopologicalSpace G] [IsTopologicalGroup G]
  [MeasurableSpace G] [BorelSpace G] (μ : Measure G) [IsHaarMeasure μ]

/-- Any regular Haar measure is invariant under inversion in an abelian group. -/
@[to_additive "Any regular additive Haar measure is invariant under negation in an abelian group."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Unique/Variantb231b2195ea7aec4a573538d83c19243cebbb1a068b7bf5d4b221d17924e6099.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Unique/Variantb231b2195ea7aec4a573538d83c19243cebbb1a068b7bf5d4b221d17924e6099.lean#L907).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d7e88c666147c86eb1b9d9168e7f4ddcbcd54c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
