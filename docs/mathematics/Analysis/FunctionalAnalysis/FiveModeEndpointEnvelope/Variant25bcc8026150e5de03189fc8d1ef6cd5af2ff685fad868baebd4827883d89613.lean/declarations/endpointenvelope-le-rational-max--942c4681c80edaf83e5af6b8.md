# endpointEnvelope_le_rational_max

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:190d69a0-d6ab-aee7-9db6-ecf36e3ceafb",
  "kind": "theorem",
  "lexical_name": "endpointEnvelope_le_rational_max",
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
  "slug": "endpointenvelope-le-rational-max--942c4681c80edaf83e5af6b8",
  "source": {
    "blob": "99466a3e5461282fdeb9d1e5e7753901ee0701a5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 71,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/FiveModeEndpointEnvelope/Variant25bcc8026150e5de03189fc8d1ef6cd5af2ff685fad868baebd4827883d89613.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:942c4681c80edaf83e5af6b88be29f636eec5dddc1244718bae318231befd466",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/FiveModeEndpointEnvelope/Variant25bcc8026150e5de03189fc8d1ef6cd5af2ff685fad868baebd4827883d89613.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:190d69a0-d6ab-aee7-9db6-ecf36e3ceafb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem endpointEnvelope_le_rational_max (A : ℝ) (hA : 1 ≤ A) (hA160 : A ≤ 160) :
    endpointEnvelope A ≤ max (6 : ℝ) (((2719/1000 : ℝ)^160+3)/160^9) := by
  apply (endpointEnvelope_le_endpoint_max A hA hA160).trans
  apply max_le_max
  · unfold endpointEnvelope
    norm_num only [one_pow, div_one]
    linarith [Real.exp_one_lt_three]
  · unfold endpointEnvelope
    apply div_le_div_of_nonneg_right _ (by positivity)
    refine add_le_add ?_ (le_refl (3 : ℝ))
    have he : Real.exp (160 : ℝ) = (Real.exp 1)^160 := by
      rw [← Real.exp_nat_mul]
      congr 1
      norm_num
    rw [he]
    apply pow_le_pow_left₀ (Real.exp_pos 1).le
    have h := Real.exp_one_lt_d9
    norm_num at h ⊢
    linarith

end CommonMeanScratch
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/FiveModeEndpointEnvelope/Variant25bcc8026150e5de03189fc8d1ef6cd5af2ff685fad868baebd4827883d89613.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/FiveModeEndpointEnvelope/Variant25bcc8026150e5de03189fc8d1ef6cd5af2ff685fad868baebd4827883d89613.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `99466a3e5461282fdeb9d1e5e7753901ee0701a5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
