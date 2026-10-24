# muq_part_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e9cfcb22-4cea-346c-471e-1a7f9b86a259",
  "kind": "lemma",
  "lexical_name": "muq_part_integrable",
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
  "slug": "muq-part-integrable--ee658f200597ec725a0f1f14",
  "source": {
    "blob": "b7f058ea3d12e02b6f34456557fc66c69d693d9c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 686,
    "line": 661,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/PrimeSideChi/Variant7be0edcf892154aaa300dc0bb7502b743ce9709067f095d383a6d4df8f7ce063.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ee658f200597ec725a0f1f14d1e1a957eb2ee865c1cf9143e6ae26fbd0389ca8",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/PrimeSideChi/Variant7be0edcf892154aaa300dc0bb7502b743ce9709067f095d383a6d4df8f7ce063.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e9cfcb22-4cea-346c-471e-1a7f9b86a259`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 661–686.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma muq_part_integrable (hΓq : GammaFactsChi κ q) (hq : 1 ≤ q) (hF : LocalHypsCoreW cϱ p F)
    {t : ℝ} (ht0 : 0 < t) :
    MeasureTheory.Integrable (fun r => F.phiHat r ^ 2 * muq κ q (t + r)) := by
  obtain ⟨M, hM0, hM⟩ := muq_linear_bound hΓq hq
  have hmeas : MeasureTheory.AEStronglyMeasurable (fun r => F.phiHat r ^ 2 * muq κ q (t + r))
      MeasureTheory.volume := by
    have hc' : Continuous fun r => F.phiHat r ^ 2 * muq κ q (t + r) := by
      have h1 := hΓq.smooth.continuous
      have h2 := hF.phiHat_cont
      fun_prop
    exact hc'.aestronglyMeasurable
  refine MeasureTheory.Integrable.mono'
    ((hF.phiHat_sq_integrable.const_mul (M + t)).add hF.phiHat_sq_mul_abs_integrable) hmeas ?_
  refine Filter.Eventually.of_forall fun r => ?_
  simp only [Real.norm_eq_abs, Pi.add_apply]
  rw [abs_mul, abs_of_nonneg (sq_nonneg _)]
  have htr : |t + r| ≤ t + |r| := by
    calc |t + r| ≤ |t| + |r| := abs_add_le _ _
      _ = t + |r| := by rw [abs_of_pos ht0]
  calc F.phiHat r ^ 2 * |muq κ q (t + r)| ≤ F.phiHat r ^ 2 * (M + |t + r|) := by
        gcongr
        exact hM _
    _ ≤ F.phiHat r ^ 2 * (M + (t + |r|)) := by gcongr
    _ = (M + t) * F.phiHat r ^ 2 + F.phiHat r ^ 2 * |r| := by ring

/-- Integrability of φ̂(r)² P_{X,c}(t+r) (bounded × integrable). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/PrimeSideChi/Variant7be0edcf892154aaa300dc0bb7502b743ce9709067f095d383a6d4df8f7ce063.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/PrimeSideChi/Variant7be0edcf892154aaa300dc0bb7502b743ce9709067f095d383a6d4df8f7ce063.lean#L661).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b7f058ea3d12e02b6f34456557fc66c69d693d9c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
