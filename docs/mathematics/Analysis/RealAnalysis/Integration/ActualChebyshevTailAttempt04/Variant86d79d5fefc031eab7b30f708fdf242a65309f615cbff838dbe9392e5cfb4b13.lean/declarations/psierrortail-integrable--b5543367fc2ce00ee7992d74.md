# psiErrorTail_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a6fab210-3cd7-f796-57e7-544c06d0beb6",
  "kind": "theorem",
  "lexical_name": "psiErrorTail_integrable",
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
  "slug": "psierrortail-integrable--b5543367fc2ce00ee7992d74",
  "source": {
    "blob": "570c200c7fdcbb9fe708184d1d9cb1d953350e20",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 76,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualChebyshevTailAttempt04/Variant86d79d5fefc031eab7b30f708fdf242a65309f615cbff838dbe9392e5cfb4b13.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b5543367fc2ce00ee7992d748feb199f260c614e8884f3f57b7e4c0e14dbc38b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ActualChebyshevTailAttempt04/Variant86d79d5fefc031eab7b30f708fdf242a65309f615cbff838dbe9392e5cfb4b13.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a6fab210-3cd7-f796-57e7-544c06d0beb6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem psiErrorTail_integrable : IntegrableOn psiErrorTail (Ioi (0:ℝ)) := by
  apply triangleKernel_integrable.integral_prod_left.integrableOn.congr_fun
  · intro t ht
    exact triangleKernel_inner_eq ht
  · exact measurableSet_Ioi

end ContinuousResearch.ActualChebyshevTail

set_option pp.fullNames true
set_option pp.universes true
#check ContinuousResearch.ActualChebyshevTail.psiErrorTail
#print axioms ContinuousResearch.ActualChebyshevTail.psiErrorTail
#print ContinuousResearch.ActualChebyshevTail.psiErrorTail
#check ContinuousResearch.ActualChebyshevTail.triangleKernel
#print axioms ContinuousResearch.ActualChebyshevTail.triangleKernel
#print ContinuousResearch.ActualChebyshevTail.triangleKernel
#check ContinuousResearch.ActualChebyshevTail.triangleKernel_measurable
#print axioms ContinuousResearch.ActualChebyshevTail.triangleKernel_measurable
#print ContinuousResearch.ActualChebyshevTail.triangleKernel_measurable
#check ContinuousResearch.ActualChebyshevTail.triangleKernel_slice
#print axioms ContinuousResearch.ActualChebyshevTail.triangleKernel_slice
#print ContinuousResearch.ActualChebyshevTail.triangleKernel_slice
#check ContinuousResearch.ActualChebyshevTail.triangleKernel_slice_integrable
#print axioms ContinuousResearch.ActualChebyshevTail.triangleKernel_slice_integrable
#print ContinuousResearch.ActualChebyshevTail.triangleKernel_slice_integrable
#check ContinuousResearch.ActualChebyshevTail.triangleKernel_slice_norm_integral
#print axioms ContinuousResearch.ActualChebyshevTail.triangleKernel_slice_norm_integral
#print ContinuousResearch.ActualChebyshevTail.triangleKernel_slice_norm_integral
#check ContinuousResearch.ActualChebyshevTail.triangleKernel_integrable
#print axioms ContinuousResearch.ActualChebyshevTail.triangleKernel_integrable
#print ContinuousResearch.ActualChebyshevTail.triangleKernel_integrable
#check ContinuousResearch.ActualChebyshevTail.triangleKernel_inner_eq
#print axioms ContinuousResearch.ActualChebyshevTail.triangleKernel_inner_eq
#print ContinuousResearch.ActualChebyshevTail.triangleKernel_inner_eq
#check ContinuousResearch.ActualChebyshevTail.psiErrorTail_integrable
#print axioms ContinuousResearch.ActualChebyshevTail.psiErrorTail_integrable
#print ContinuousResearch.ActualChebyshevTail.psiErrorTail_integrable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ActualChebyshevTailAttempt04/Variant86d79d5fefc031eab7b30f708fdf242a65309f615cbff838dbe9392e5cfb4b13.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ActualChebyshevTailAttempt04/Variant86d79d5fefc031eab7b30f708fdf242a65309f615cbff838dbe9392e5cfb4b13.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `570c200c7fdcbb9fe708184d1d9cb1d953350e20` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
