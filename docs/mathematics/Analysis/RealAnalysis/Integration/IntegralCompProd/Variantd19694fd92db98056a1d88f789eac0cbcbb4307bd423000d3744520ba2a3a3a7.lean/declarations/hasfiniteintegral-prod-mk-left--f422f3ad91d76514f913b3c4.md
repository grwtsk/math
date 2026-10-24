# hasFiniteIntegral_prod_mk_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "845cde5da7be1b51128dce9d04ced95a10817718",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 48,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d1/d19694fd92db98056a1d88f789eac0cbcbb4307bd423000d3744520ba2a3a3a7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7c09978d-a6e5-eb93-2baa-9343f4254ed8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1e5aa3c8-ef83-db7a-9489-26b8b9c6fba7",
  "kind": "theorem",
  "lexical_name": "hasFiniteIntegral_prod_mk_left",
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
  "slug": "hasfiniteintegral-prod-mk-left--f422f3ad91d76514f913b3c4",
  "source": {
    "blob": "845cde5da7be1b51128dce9d04ced95a10817718",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 48,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/IntegralCompProd/Variantd19694fd92db98056a1d88f789eac0cbcbb4307bd423000d3744520ba2a3a3a7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f422f3ad91d76514f913b3c4b9911f657c56ce800d9d0514fffbc29188365979",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/IntegralCompProd/Variantd19694fd92db98056a1d88f789eac0cbcbb4307bd423000d3744520ba2a3a3a7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1e5aa3c8-ef83-db7a-9489-26b8b9c6fba7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasFiniteIntegral_prod_mk_left (a : α) {s : Set (β × γ)} (h2s : (κ ⊗ₖ η) a s ≠ ∞) :
    HasFiniteIntegral (fun b => (η (a, b) (Prod.mk b ⁻¹' s)).toReal) (κ a) := by
  let t := toMeasurable ((κ ⊗ₖ η) a) s
  simp_rw [HasFiniteIntegral, ennnorm_eq_ofReal toReal_nonneg]
  calc
    ∫⁻ b, ENNReal.ofReal (η (a, b) (Prod.mk b ⁻¹' s)).toReal ∂κ a
    _ ≤ ∫⁻ b, η (a, b) (Prod.mk b ⁻¹' t) ∂κ a := by
      refine' lintegral_mono_ae _
      filter_upwards [ae_kernel_lt_top a h2s] with b hb
      rw [ofReal_toReal hb.ne]
      exact measure_mono (preimage_mono (subset_toMeasurable _ _))
    _ ≤ (κ ⊗ₖ η) a t := (le_compProd_apply _ _ _ _)
    _ = (κ ⊗ₖ η) a s := (measure_toMeasurable s)
    _ < ⊤ := h2s.lt_top
#align probability_theory.has_finite_integral_prod_mk_left ProbabilityTheory.hasFiniteIntegral_prod_mk_left

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/IntegralCompProd/Variantd19694fd92db98056a1d88f789eac0cbcbb4307bd423000d3744520ba2a3a3a7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/IntegralCompProd/Variantd19694fd92db98056a1d88f789eac0cbcbb4307bd423000d3744520ba2a3a3a7.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `845cde5da7be1b51128dce9d04ced95a10817718` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
