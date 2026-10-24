# actual_multiplier_integral_explicit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4c02a42e-5528-5982-3a4f-b317ebfc8cec",
  "kind": "theorem",
  "lexical_name": "actual_multiplier_integral_explicit",
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
  "slug": "actual-multiplier-integral-explicit--70dea6b670366190a6270082",
  "source": {
    "blob": "bb63320071bbabdfdf61a69663113d7a8418c516",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 92,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CenteredDigammaKernel/Variant8a5cee5dfb7b4c7c422af5ba6356f96d0789b2c60b836cbca86687e8c53264b3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:70dea6b670366190a6270082b2b025a931063fd4ce864fc58ac3f2cd08c7626a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CenteredDigammaKernel/Variant8a5cee5dfb7b4c7c422af5ba6356f96d0789b2c60b836cbca86687e8c53264b3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4c02a42e-5528-5982-3a4f-b317ebfc8cec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_multiplier_integral_explicit (ξ : ℝ) :
    archimedeanMultiplier ξ + archimedeanConstant =
      2 * (∫ t : ℝ in Ioi 0,
        (1-Real.cos (ξ*t))*Real.exp (-t/2)/(1-Real.exp (-2*t))) := by
  rw [actual_multiplier_integral]
  unfold compensatedKernel ArchimedeanKernel.kernel
  rw [← integral_const_mul]
  apply integral_congr_ae
  exact Filter.Eventually.of_forall (fun t => by ring)

#print axioms term
#print axioms compensatedKernel
#print axioms cosine_deficit
#print axioms compensatedKernel_integrable
#print axioms term_integrable
#print axioms term_nonneg
#print axioms hasSum_terms
#print axioms norm_integrals_summable
#print axioms actual_multiplier_integral
#print axioms actual_multiplier_integral_explicit
end ContinuousResearch.CenteredDigammaKernel
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CenteredDigammaKernel/Variant8a5cee5dfb7b4c7c422af5ba6356f96d0789b2c60b836cbca86687e8c53264b3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CenteredDigammaKernel/Variant8a5cee5dfb7b4c7c422af5ba6356f96d0789b2c60b836cbca86687e8c53264b3.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb63320071bbabdfdf61a69663113d7a8418c516` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
