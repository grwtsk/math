# integralTail_logSlope_positive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "33344b7a94a578a5b27e03f9e0eccd5f6e641f53",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 48,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f4/f4c881eb8bb799b277d20bb8704250a305c8f7495b876e9f8a4cf26c002d1c43.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f682b03d-ff68-56be-25c4-e35b18898c43",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8e8c08de-39d8-99ce-f47b-189b9a81aaa1",
  "kind": "theorem",
  "lexical_name": "integralTail_logSlope_positive",
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
  "slug": "integraltail-logslope-positive--16b73434f4844d2a09a5ada2",
  "source": {
    "blob": "33344b7a94a578a5b27e03f9e0eccd5f6e641f53",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 48,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantf4c881eb8bb799b277d20bb8704250a305c8f7495b876e9f8a4cf26c002d1c43.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:16b73434f4844d2a09a5ada24fa6a2e8026659bebc71e46850caa01b22469cce",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantf4c881eb8bb799b277d20bb8704250a305c8f7495b876e9f8a4cf26c002d1c43.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8e8c08de-39d8-99ce-f47b-189b9a81aaa1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integralTail_logSlope_positive {f : ℝ → ℝ}
    (hd : Differentiable ℝ f)
    (hi : IntegrableOn f (Ici (0 : ℝ)))
    (hdi : IntegrableOn (deriv f) (Ici (0 : ℝ)))
    (hz : Filter.Tendsto f Filter.atTop (𝓝 0))
    (hp : ∀ u : ℝ, 0 ≤ u → 0 < f u)
    (ha : StrictAntiOn (fun u => deriv f u / f u) (Ici (0 : ℝ)))
    {t : ℝ} (ht : 0 ≤ t) :
    0 < f t ^ 2 + integralTail f t * deriv f t := by
  rw [integralTail_logSlope_identity hd hi hdi hz ht]
  have hint := strictLogSlope_integrand_integrable hi hdi ht
  apply (setIntegral_pos_iff_support_of_nonneg_ae ?_ hint).mpr
  · have hpos : (0 : ENNReal) < volume (Ioo (t + 1) (t + 2)) := by simp
    apply hpos.trans_le (measure_mono ?_)
    intro u hu
    have htu : t < u := by have := hu.1; linarith
    exact ⟨(strictLogSlope_cross_positive hp ha ht htu).ne', htu.le⟩
  · filter_upwards [ae_restrict_mem measurableSet_Ici] with u hu
    exact logSlope_cross_nonnegative hp ha.antitoneOn ht hu

/-- Strict log-slope makes the first-tail/source ratio strictly antitone. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantf4c881eb8bb799b277d20bb8704250a305c8f7495b876e9f8a4cf26c002d1c43.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantf4c881eb8bb799b277d20bb8704250a305c8f7495b876e9f8a4cf26c002d1c43.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `33344b7a94a578a5b27e03f9e0eccd5f6e641f53` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
