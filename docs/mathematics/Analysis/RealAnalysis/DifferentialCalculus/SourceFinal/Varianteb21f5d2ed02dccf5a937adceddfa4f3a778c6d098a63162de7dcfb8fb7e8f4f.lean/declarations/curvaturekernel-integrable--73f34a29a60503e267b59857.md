# curvatureKernel_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "677fee9f54688d1fc0cf5feac642a71a1a0614bc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 281,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/eb/eb21f5d2ed02dccf5a937adceddfa4f3a778c6d098a63162de7dcfb8fb7e8f4f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bd67e715-d78d-3178-ccf2-507e9b3965f0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4e75e6b3-6c4f-f332-f35d-a25505800d51",
  "kind": "theorem",
  "lexical_name": "curvatureKernel_integrable",
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
  "slug": "curvaturekernel-integrable--73f34a29a60503e267b59857",
  "source": {
    "blob": "677fee9f54688d1fc0cf5feac642a71a1a0614bc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 294,
    "line": 281,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceFinal/Varianteb21f5d2ed02dccf5a937adceddfa4f3a778c6d098a63162de7dcfb8fb7e8f4f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:73f34a29a60503e267b59857cb76a1b9aba57de7e3e6564fa1fd112a8a48520a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceFinal/Varianteb21f5d2ed02dccf5a937adceddfa4f3a778c6d098a63162de7dcfb8fb7e8f4f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4e75e6b3-6c4f-f332-f35d-a25505800d51`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 281–294.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem curvatureKernel_integrable {x : ℝ} (hx : -2 < x) :
    IntegrableOn (curvatureKernel x) (Ioi 0) := by
  refine ⟨(curvatureKernel_continuousOn x).aestronglyMeasurable measurableSet_Ioi, ?_⟩
  apply hasFiniteIntegral_iff_enorm.mpr
  calc
    _ ≤ ∫⁻ t : ℝ in Ioi 0, ∑' n : ℕ, ‖momentTerm x n t‖ₑ := by
      apply lintegral_mono_ae
      filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
      rw [← (momentTerm_hasSum x ht).tsum_eq]
      exact enorm_tsum_le_tsum_enorm
    _ = ∑' n : ℕ, ∫⁻ t : ℝ in Ioi 0, ‖momentTerm x n t‖ₑ :=
      lintegral_tsum (fun n ↦ (momentTerm_integrable hx n).1.enorm)
    _ < ⊤ := momentTerm_lintegral_enorm_tsum_lt_top hx

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceFinal/Varianteb21f5d2ed02dccf5a937adceddfa4f3a778c6d098a63162de7dcfb8fb7e8f4f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceFinal/Varianteb21f5d2ed02dccf5a937adceddfa4f3a778c6d098a63162de7dcfb8fb7e8f4f.lean#L281).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `677fee9f54688d1fc0cf5feac642a71a1a0614bc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
