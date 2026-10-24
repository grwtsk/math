# zero_cap_envelope_eq_distance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e21b0da8-ce75-7d75-9c9f-84df3e0226c7",
  "kind": "theorem",
  "lexical_name": "zero_cap_envelope_eq_distance",
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
  "slug": "zero-cap-envelope-eq-distance--f1e5a134093b40b6b54a30ff",
  "source": {
    "blob": "d2f7066b9e4f2cee0cb3580efb30244b043198a6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 109,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LipschitzSampleEnvelope/Variant20ac2dc8c9231950598fe87d8b6d1e05378a8c78de3647f1ae9f86cbb6e6e89f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f1e5a134093b40b6b54a30ffaf11f54135d9aa83d98f175d68eedabc8ca099c8",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LipschitzSampleEnvelope/Variant20ac2dc8c9231950598fe87d8b6d1e05378a8c78de3647f1ae9f86cbb6e6e89f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e21b0da8-ce75-7d75-9c9f-84df3e0226c7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem zero_cap_envelope_eq_distance {S : Set ℝ} [Nonempty S] {L : ℝ}
    (hL : 0 < L) (x : ℝ) :
    envelope S (fun _ => 0) L x = L * sampleDistance S x := by
  have hb : ∀ s : S, (0 : ℝ) ≤ 0 := fun _ => le_refl _
  apply le_antisymm
  · have hdiv : envelope S (fun _ => 0) L x / L ≤ sampleDistance S x := by
      apply le_ciInf
      intro s
      apply (div_le_iff₀ hL).mpr
      simpa only [zero_add, mul_comm] using envelope_le_sample_cone hb hL.le x s
    simpa only [mul_comm] using (div_le_iff₀ hL).mp hdiv
  · apply le_ciInf
    intro s
    have hd : sampleDistance S x ≤ |x - (s : ℝ)| := by
      apply ciInf_le
      refine ⟨0, ?_⟩
      rintro z ⟨t, rfl⟩
      exact abs_nonneg _
    simpa only [zero_add] using mul_le_mul_of_nonneg_left hd hL.le

/-- The next consumer converts every permitted zero-cap inference into metric coverage. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LipschitzSampleEnvelope/Variant20ac2dc8c9231950598fe87d8b6d1e05378a8c78de3647f1ae9f86cbb6e6e89f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LipschitzSampleEnvelope/Variant20ac2dc8c9231950598fe87d8b6d1e05378a8c78de3647f1ae9f86cbb6e6e89f.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d2f7066b9e4f2cee0cb3580efb30244b043198a6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
