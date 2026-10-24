# vector_setIntegral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "392919ef3e139bea89b795f78dd56e4aca08f9df",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 370,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/98/987b92f6efb4d7ec7692102e35b076ddca0d749c68b0920522d041008115c6df.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:073530be-4df4-f7cc-5c0a-ffa0f9fa2bb6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f31ba4ab-6fe5-ff0d-e947-47217108f0c4",
  "kind": "theorem",
  "lexical_name": "vector_setIntegral",
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
  "slug": "vector-setintegral--5551657c450bf896b0de6264",
  "source": {
    "blob": "392919ef3e139bea89b795f78dd56e4aca08f9df",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 384,
    "line": 370,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceConvolutionAEAudit/Variant987b92f6efb4d7ec7692102e35b076ddca0d749c68b0920522d041008115c6df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5551657c450bf896b0de6264850e6152733886be2037c6d6bb3e8d9884882f7e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceConvolutionAEAudit/Variant987b92f6efb4d7ec7692102e35b076ddca0d749c68b0920522d041008115c6df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f31ba4ab-6fe5-ff0d-e947-47217108f0c4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 370–384.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem vector_setIntegral (f : FullH) (B : Set ℝ)
    (hB : MeasurableSet B) (hBfin : volume B < ∞) :
    (∫ t in B, actualFull f t) =
      ∫ a : ℝ, ∫ t in B, fixedKernel a • f (t - a) := by
  rw [← L2.inner_indicatorConstLp_one hB hBfin.ne, actualFull_apply,
    ← integral_inner (weighted_shift_integrable fixedKernel fixedKernel_integrable f)]
  apply integral_congr_ae
  filter_upwards [] with a
  rw [L2.inner_indicatorConstLp_one hB hBfin.ne]
  apply integral_congr_ae
  filter_upwards [ae_restrict_of_ae (Lp.coeFn_smul (fixedKernel a : ℂ) (fullShift a f)),
    ae_restrict_of_ae (fullShift_ae a f)] with t hmul hshift
  rw [hmul, Pi.smul_apply, hshift]
  rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceConvolutionAEAudit/Variant987b92f6efb4d7ec7692102e35b076ddca0d749c68b0920522d041008115c6df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceConvolutionAEAudit/Variant987b92f6efb4d7ec7692102e35b076ddca0d749c68b0920522d041008115c6df.lean#L370).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `392919ef3e139bea89b795f78dd56e4aca08f9df` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
