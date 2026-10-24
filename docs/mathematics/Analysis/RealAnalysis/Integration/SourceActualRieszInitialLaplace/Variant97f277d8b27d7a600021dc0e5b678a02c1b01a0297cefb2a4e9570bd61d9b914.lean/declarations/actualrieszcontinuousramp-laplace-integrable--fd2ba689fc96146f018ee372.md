# actualRieszContinuousRamp_laplace_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8227ca5b-7958-12ff-1468-ee730b5539b2",
  "kind": "theorem",
  "lexical_name": "actualRieszContinuousRamp_laplace_integrable",
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
  "slug": "actualrieszcontinuousramp-laplace-integrable--fd2ba689fc96146f018ee372",
  "source": {
    "blob": "4f7945d6aa1ae67becb6e503e2b25dec45fd1ee6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 427,
    "line": 412,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplace/Variant97f277d8b27d7a600021dc0e5b678a02c1b01a0297cefb2a4e9570bd61d9b914.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fd2ba689fc96146f018ee372383ea97d95b19a740958d13e357694a50aeecfa3",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplace/Variant97f277d8b27d7a600021dc0e5b678a02c1b01a0297cefb2a4e9570bd61d9b914.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8227ca5b-7958-12ff-1468-ee730b5539b2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 412–427.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualRieszContinuousRamp_laplace_integrable {z : ℂ} (hz : 1 / 2 < z.re) :
    IntegrableOn (fun t : ℝ => (actualRieszContinuousRamp t : ℂ) *
      Complex.exp (-z * (t : ℂ))) (Ioi 0) := by
  have h0 := integrableOn_exp_mul_complex_Ioi (a := -z) (by simp; linarith) 0
  have hh := integrableOn_exp_mul_complex_Ioi (a := -(z - 1 / 2))
    (by simp; linarith) 0
  have ht : IntegrableOn (fun t : ℝ => (t : ℂ) * Complex.exp (-z * (t : ℂ)))
      (Ioi 0) := by
    apply (actualSingleRieszRamp_integrable (by linarith : 0 < z.re)
      (a := 0) le_rfl).congr_fun _ measurableSet_Ioi
    intro t ht
    have htn : 0 ≤ t := (show 0 < t from ht).le
    simp only [sub_zero, max_eq_right htn]
  simp_rw [continuousRamp_weight_eq]
  exact ((hh.const_mul 4).sub (h0.const_mul 4)).sub (ht.const_mul 2)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplace/Variant97f277d8b27d7a600021dc0e5b678a02c1b01a0297cefb2a4e9570bd61d9b914.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplace/Variant97f277d8b27d7a600021dc0e5b678a02c1b01a0297cefb2a4e9570bd61d9b914.lean#L412).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4f7945d6aa1ae67becb6e503e2b25dec45fd1ee6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
