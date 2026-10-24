# smoothedPerronIntegrand_residue_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7357e295-b13c-589b-732b-5c007173ac43",
  "kind": "theorem",
  "lexical_name": "smoothedPerronIntegrand_residue_one",
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
  "slug": "smoothedperronintegrand-residue-one--947aad1011b43fad60016af5",
  "source": {
    "blob": "7eb4166a891b5e3ae5704f638d733a601a392400",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 208,
    "line": 152,
    "path": "GRWTSK/Analysis/ComplexAnalysis/MobiusReciprocalPoleAudit/Variantdb28ffe32177d215e03a4c6e2175074cd449e823046d9d3293ee10d897d42161.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:947aad1011b43fad60016af5895d71e05a8536c2006b2e1db37817d4155f4e2b",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/MobiusReciprocalPoleAudit/Variantdb28ffe32177d215e03a4c6e2175074cd449e823046d9d3293ee10d897d42161.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7357e295-b13c-589b-732b-5c007173ac43`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 152–208.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem smoothedPerronIntegrand_residue_one (x : ℝ) (hx : 0 < x) :
    residue (smoothedPerronIntegrand x) 0 = 1 := by
  apply residue_eq_of_tendsto
  simpa only [sub_zero] using smoothedPerronIntegrand_residue_limit x hx

end
end MobiusReciprocalPoleScratch

set_option pp.universes true
set_option pp.proofs true
set_option pp.deepTerms true
set_option pp.maxSteps 10000000
#check @MobiusReciprocalPoleScratch.zetaPoleFactor
#print MobiusReciprocalPoleScratch.zetaPoleFactor
#print axioms MobiusReciprocalPoleScratch.zetaPoleFactor
#check @MobiusReciprocalPoleScratch.zetaPoleFactor_zero
#print MobiusReciprocalPoleScratch.zetaPoleFactor_zero
#print axioms MobiusReciprocalPoleScratch.zetaPoleFactor_zero
#check @MobiusReciprocalPoleScratch.zetaPoleFactor_analyticAt_zero
#print MobiusReciprocalPoleScratch.zetaPoleFactor_analyticAt_zero
#print axioms MobiusReciprocalPoleScratch.zetaPoleFactor_analyticAt_zero
#check @MobiusReciprocalPoleScratch.reciprocalZeta
#print MobiusReciprocalPoleScratch.reciprocalZeta
#print axioms MobiusReciprocalPoleScratch.reciprocalZeta
#check @MobiusReciprocalPoleScratch.reciprocalZeta_zero
#print MobiusReciprocalPoleScratch.reciprocalZeta_zero
#print axioms MobiusReciprocalPoleScratch.reciprocalZeta_zero
#check @MobiusReciprocalPoleScratch.reciprocalZeta_off
#print MobiusReciprocalPoleScratch.reciprocalZeta_off
#print axioms MobiusReciprocalPoleScratch.reciprocalZeta_off
#check @MobiusReciprocalPoleScratch.reciprocalZeta_eq_div_factor
#print MobiusReciprocalPoleScratch.reciprocalZeta_eq_div_factor
#print axioms MobiusReciprocalPoleScratch.reciprocalZeta_eq_div_factor
#check @MobiusReciprocalPoleScratch.reciprocalZeta_analyticAt_zero
#print MobiusReciprocalPoleScratch.reciprocalZeta_analyticAt_zero
#print axioms MobiusReciprocalPoleScratch.reciprocalZeta_analyticAt_zero
#check @MobiusReciprocalPoleScratch.reciprocalZeta_hasDerivAt_zero
#print MobiusReciprocalPoleScratch.reciprocalZeta_hasDerivAt_zero
#print axioms MobiusReciprocalPoleScratch.reciprocalZeta_hasDerivAt_zero
#check @MobiusReciprocalPoleScratch.reciprocalZeta_eventually_ne_zero
#print MobiusReciprocalPoleScratch.reciprocalZeta_eventually_ne_zero
#print axioms MobiusReciprocalPoleScratch.reciprocalZeta_eventually_ne_zero
#check @MobiusReciprocalPoleScratch.smoothedPerronIntegrand
#print MobiusReciprocalPoleScratch.smoothedPerronIntegrand
#print axioms MobiusReciprocalPoleScratch.smoothedPerronIntegrand
#check @MobiusReciprocalPoleScratch.smoothedPerronIntegrand_meromorphicAt_zero
#print MobiusReciprocalPoleScratch.smoothedPerronIntegrand_meromorphicAt_zero
#print axioms MobiusReciprocalPoleScratch.smoothedPerronIntegrand_meromorphicAt_zero
#check @MobiusReciprocalPoleScratch.smoothedPerronIntegrand_order_zero
#print MobiusReciprocalPoleScratch.smoothedPerronIntegrand_order_zero
#print axioms MobiusReciprocalPoleScratch.smoothedPerronIntegrand_order_zero
#check @MobiusReciprocalPoleScratch.smoothedPerronIntegrand_residue_limit
#print MobiusReciprocalPoleScratch.smoothedPerronIntegrand_residue_limit
#print axioms MobiusReciprocalPoleScratch.smoothedPerronIntegrand_residue_limit
#check @MobiusReciprocalPoleScratch.smoothedPerronIntegrand_residue_one
#print MobiusReciprocalPoleScratch.smoothedPerronIntegrand_residue_one
#print axioms MobiusReciprocalPoleScratch.smoothedPerronIntegrand_residue_one
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/MobiusReciprocalPoleAudit/Variantdb28ffe32177d215e03a4c6e2175074cd449e823046d9d3293ee10d897d42161.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/MobiusReciprocalPoleAudit/Variantdb28ffe32177d215e03a4c6e2175074cd449e823046d9d3293ee10d897d42161.lean#L152).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7eb4166a891b5e3ae5704f638d733a601a392400` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
