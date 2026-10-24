# log_time_mixed_hasDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e89c55cc-8302-0e0f-95ba-556b71b368a2",
  "kind": "theorem",
  "lexical_name": "log_time_mixed_hasDerivAt",
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
  "slug": "log-time-mixed-hasderivat--491c73d05d21f4473771d209",
  "source": {
    "blob": "4d70f32b4cd934df9f6a666bccc66633e6ef28bc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 104,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/D3547d8317ea9465f0c0SourceActualDoubleMixedKernel/Variant92185368960f33188c465d569a7cba5c7313132ffb7c108fcafad4c62ec05364.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:491c73d05d21f4473771d209a638b1aacea288b54721f1839dbf18ba20bacb2b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/D3547d8317ea9465f0c0SourceActualDoubleMixedKernel/Variant92185368960f33188c465d569a7cba5c7313132ffb7c108fcafad4c62ec05364.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e89c55cc-8302-0e0f-95ba-556b71b368a2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem log_time_mixed_hasDerivAt (A : ℝ) (hA : 0 < A) (t s : ℝ) :
    HasDerivAt (timeMixedDerivative A t)
      (Real.exp (t / 2) * Real.exp (-s / 2) * actualLogFourthKernel A (t + s)) s := by
  have h0 := (actual_jet_hasDerivAt A hA 0 (by norm_num) (t + s)).comp s
    ((hasDerivAt_id s).const_add t)
  have h1 := (actual_jet_hasDerivAt A hA 1 (by norm_num) (t + s)).comp s
    ((hasDerivAt_id s).const_add t)
  have h2 := (actual_jet_hasDerivAt A hA 2 (by norm_num) (t + s)).comp s
    ((hasDerivAt_id s).const_add t)
  have h3 := (actual_jet_hasDerivAt A hA 3 (by norm_num) (t + s)).comp s
    ((hasDerivAt_id s).const_add t)
  have he := ((((hasDerivAt_id s).neg).div_const 2).exp).const_mul (Real.exp (t / 2))
  have hh := he.mul (((h3.add (h2.div_const 2)).sub (h1.div_const 4)).sub (h0.div_const 8))
  convert hh using 1 <;> try rfl
  simp only [actualLogFourthKernel, Function.comp_apply, iteratedDeriv_zero, id_eq,
    Pi.add_apply, Pi.sub_apply, Pi.neg_apply]
  ring

/-- A second mixed derivative gives C4-C2/2+C/16; the lower jets do not disappear. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/D3547d8317ea9465f0c0SourceActualDoubleMixedKernel/Variant92185368960f33188c465d569a7cba5c7313132ffb7c108fcafad4c62ec05364.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/D3547d8317ea9465f0c0SourceActualDoubleMixedKernel/Variant92185368960f33188c465d569a7cba5c7313132ffb7c108fcafad4c62ec05364.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d70f32b4cd934df9f6a666bccc66633e6ef28bc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
