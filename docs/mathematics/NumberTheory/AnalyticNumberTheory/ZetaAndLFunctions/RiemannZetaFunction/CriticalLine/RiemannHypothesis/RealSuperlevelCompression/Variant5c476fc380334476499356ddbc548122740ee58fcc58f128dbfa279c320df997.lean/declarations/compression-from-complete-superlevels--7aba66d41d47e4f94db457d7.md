# compression_from_complete_superlevels

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3ab0a86d-a8af-74fe-563d-6482351f3299",
  "kind": "theorem",
  "lexical_name": "compression_from_complete_superlevels",
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
  "slug": "compression-from-complete-superlevels--7aba66d41d47e4f94db457d7",
  "source": {
    "blob": "a812d71e46d92a315ebe58d52bfed9ad87dc5d7f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 68,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RealSuperlevelCompression/Variant5c476fc380334476499356ddbc548122740ee58fcc58f128dbfa279c320df997.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7aba66d41d47e4f94db457d765e5851f880890b4c497290bef6fd204c3a42bcf",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RealSuperlevelCompression/Variant5c476fc380334476499356ddbc548122740ee58fcc58f128dbfa279c320df997.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3ab0a86d-a8af-74fe-563d-6482351f3299`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem compression_from_complete_superlevels {ι : Type*} [MeasurableSpace ι]
    [MeasurableSingletonClass ι] {s : Finset ι} {w f : ι → ℝ} {p : ℝ}
    (hs : s.Nonempty) (hw : ∀ i, 0 < w i) (hf : Measurable f)
    (hf0 : ∀ i, 0 ≤ f i) (hf1 : ∀ i ∈ s, f i ≤ 1) (hp : 1 ≤ p)
    (hE : 0 < moment s w f p) :
    compressionFactor s w f p =
      ((∫⁻ t in Set.Ioc (0 : ℝ) 1, normalizedCurve s w f t).toReal) ^ p /
        (p * (∫⁻ t in Set.Ioc (0 : ℝ) 1,
          normalizedCurve s w f t * ENNReal.ofReal (t ^ (p - 1))).toReal) := by
  have hW := mass_pos hs hw
  have hV : 0 ≤ load s w f := Finset.sum_nonneg (fun i _ => mul_nonneg (hw i).le (hf0 i))
  have hp0 : 0 < p := lt_of_lt_of_le (by norm_num : (0 : ℝ) < 1) hp
  have hmoment := normalized_superlevel_moment s w f (fun i => (hw i).le) hW hf hf0 hf1 hp0
  have hfirst := normalized_superlevel_moment s w f (fun i => (hw i).le) hW hf hf0 hf1
    (by norm_num : (0 : ℝ) < 1)
  have hload : load s w f / mass s w =
      (∫⁻ t in Set.Ioc (0 : ℝ) 1, normalizedCurve s w f t).toReal := by
    simpa only [moment, load, Real.rpow_one, sub_self, Real.rpow_zero,
      ENNReal.ofReal_one, mul_one, one_mul] using hfirst
  rw [compression_factor_is_normalized_moment_ratio hW hV hE.ne', hmoment, hload]

end
end GRWTSK.RiemannHypothesis.Conversation.RealSuperlevelCompression
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RealSuperlevelCompression/Variant5c476fc380334476499356ddbc548122740ee58fcc58f128dbfa279c320df997.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RealSuperlevelCompression/Variant5c476fc380334476499356ddbc548122740ee58fcc58f128dbfa279c320df997.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a812d71e46d92a315ebe58d52bfed9ad87dc5d7f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
