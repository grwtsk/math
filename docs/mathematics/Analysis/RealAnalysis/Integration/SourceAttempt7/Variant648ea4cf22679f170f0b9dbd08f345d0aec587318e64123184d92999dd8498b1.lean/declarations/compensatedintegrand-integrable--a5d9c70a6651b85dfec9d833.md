# compensatedIntegrand_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8e9d18ad-5229-08b5-b3da-58ba2af761be",
  "kind": "theorem",
  "lexical_name": "compensatedIntegrand_integrable",
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
  "slug": "compensatedintegrand-integrable--a5d9c70a6651b85dfec9d833",
  "source": {
    "blob": "437fa83e7f505e1b8c17bf316bf88b7709cc47fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 223,
    "line": 210,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceAttempt7/Variant648ea4cf22679f170f0b9dbd08f345d0aec587318e64123184d92999dd8498b1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a5d9c70a6651b85dfec9d833ec09e3999d8bfde5ac6528e9e0ae03a7c3b6448a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceAttempt7/Variant648ea4cf22679f170f0b9dbd08f345d0aec587318e64123184d92999dd8498b1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8e9d18ad-5229-08b5-b3da-58ba2af761be`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 210–223.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem compensatedIntegrand_integrable {x : ℝ} (hx : -2 < x) :
    IntegrableOn (compensatedIntegrand x) (Ioi 0) := by
  refine ⟨(compensatedIntegrand_continuousOn x).aestronglyMeasurable measurableSet_Ioi, ?_⟩
  apply hasFiniteIntegral_iff_enorm.mpr
  calc
    _ ≤ ∫⁻ t : ℝ in Ioi 0, ∑' n : ℕ, ‖compensatedTerm x n t‖ₑ := by
      apply lintegral_mono_ae
      filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
      rw [← (compensatedTerm_hasSum x ht).tsum_eq]
      exact enorm_tsum_le_tsum_enorm
    _ = ∑' n : ℕ, ∫⁻ t : ℝ in Ioi 0, ‖compensatedTerm x n t‖ₑ :=
      lintegral_tsum (fun n ↦ (compensatedTerm_integrable hx n).1.enorm)
    _ < ⊤ := compensatedTerm_lintegral_enorm_tsum_lt_top hx

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceAttempt7/Variant648ea4cf22679f170f0b9dbd08f345d0aec587318e64123184d92999dd8498b1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceAttempt7/Variant648ea4cf22679f170f0b9dbd08f345d0aec587318e64123184d92999dd8498b1.lean#L210).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `437fa83e7f505e1b8c17bf316bf88b7709cc47fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
