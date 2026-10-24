# hasSimplePoleResidueAt_logDeriv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cd3bedebe331761ce7a3625051f928f5a3678d23",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 98,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b7/b74406fd02f7613617331447fce2f4e2cccc2379507b799f4318f390c8fd2f34.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e951ea0d-6575-23d2-0f7d-492169da9f3b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e9b051b3-a0d5-e2c9-ee7e-30e3687955d6",
  "kind": "theorem",
  "lexical_name": "hasSimplePoleResidueAt_logDeriv",
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
  "slug": "hassimplepoleresidueat-logderiv--a17051f55d373033af01cdb9",
  "source": {
    "blob": "cd3bedebe331761ce7a3625051f928f5a3678d23",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 137,
    "line": 98,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LogDerivativeResidue/Variantb74406fd02f7613617331447fce2f4e2cccc2379507b799f4318f390c8fd2f34.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a17051f55d373033af01cdb93bec1705884c1905b7d35791c9dbce0b9e94dd10",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/LogDerivativeResidue/Variantb74406fd02f7613617331447fce2f4e2cccc2379507b799f4318f390c8fd2f34.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e9b051b3-a0d5-e2c9-ee7e-30e3687955d6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–137.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasSimplePoleResidueAt_logDeriv
    {f : ℂ → ℂ} {z : ℂ} (hf : AnalyticAt ℂ f z)
    {n : ℕ} (hn : analyticOrderAt f z = n) :
    HasSimplePoleResidueAt (logDeriv f) z (n : ℂ) := by
  obtain ⟨g, hg, hg0, hlog⟩ :=
    logDeriv_eventuallyEq_principalPart hf hn

  have hld : ContinuousAt (logDeriv g) z := by
    exact hg.deriv.continuousAt.div hg.continuousAt hg0

  have hsub : Tendsto (fun w : ℂ ↦ w - z)
      (𝓝[≠] z) (𝓝 0) := by
    have hc : ContinuousAt (fun w : ℂ ↦ w - z) z := by
      fun_prop
    simpa only [sub_self] using hc.tendsto.mono_left
      (show 𝓝[≠] z ≤ 𝓝 z from nhdsWithin_le_nhds)

  have hmul :
      Tendsto (fun w ↦ (w - z) * logDeriv g w)
        (𝓝[≠] z) (𝓝 0) := by
    simpa only [zero_mul] using
      hsub.mul (hld.tendsto.mono_left nhdsWithin_le_nhds)

  have hmain :
      Tendsto
        (fun w ↦ (n : ℂ) + (w - z) * logDeriv g w)
        (𝓝[≠] z) (𝓝 (n : ℂ)) := by
    simpa only [add_zero] using tendsto_const_nhds.add hmul

  apply hmain.congr'
  filter_upwards [hlog, self_mem_nhdsWithin] with w hw hwz
  rw [hw]
  have hwz' : w - z ≠ 0 := sub_ne_zero.mpr hwz
  field_simp

end AnalyticAt

end

end Surface.Core.ComplexAnalysis
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/LogDerivativeResidue/Variantb74406fd02f7613617331447fce2f4e2cccc2379507b799f4318f390c8fd2f34.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LogDerivativeResidue/Variantb74406fd02f7613617331447fce2f4e2cccc2379507b799f4318f390c8fd2f34.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd3bedebe331761ce7a3625051f928f5a3678d23` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
