# upperPeanoAntiderivative_hasDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "021e5c6870a385a142b9f53ba1217bc76273517a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 101,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3d/3d8396119840795f976f9d26e39e5497b9faad72b8ed330fe45c671093748054.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8f461c8c-9eb8-af16-e7b8-ea261058d35d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a79cbab0-e1cc-93dd-5e26-31ac60a41b92",
  "kind": "theorem",
  "lexical_name": "upperPeanoAntiderivative_hasDerivAt",
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
  "slug": "upperpeanoantiderivative-hasderivat--aea46e3b212cd0021ce23953",
  "source": {
    "blob": "021e5c6870a385a142b9f53ba1217bc76273517a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 101,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/3d8396119840795f976fSourcePeanoUpperContinuousRow/Variant3d8396119840795f976f9d26e39e5497b9faad72b8ed330fe45c671093748054.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aea46e3b212cd0021ce2395336714371bb8a45a6d214823a25a69f47ca4a91fe",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/3d8396119840795f976fSourcePeanoUpperContinuousRow/Variant3d8396119840795f976f9d26e39e5497b9faad72b8ed330fe45c671093748054.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a79cbab0-e1cc-93dd-5e26-31ac60a41b92`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem upperPeanoAntiderivative_hasDerivAt {A d x : ℝ} (hA : 0 < A)
    (hd : 0 < d) (hx : 0 < x) :
    HasDerivAt (upperPeanoAntiderivative A d) (continuousDivisorIntegrand A d x) x := by
  have hc := sourcePeanoPrimitive_contDiff_two hA
  have hp (t : ℝ) : HasDerivAt (sourcePeanoPrimitive A)
      (deriv (sourcePeanoPrimitive A) t) t :=
    (hc.differentiable (by norm_num) t).hasDerivAt
  have hc1 : ContDiff ℝ 1 (deriv (sourcePeanoPrimitive A)) := hc.deriv'
  have hpp (t : ℝ) : HasDerivAt (deriv (sourcePeanoPrimitive A))
      (deriv (deriv (sourcePeanoPrimitive A)) t) t :=
    (hc1.differentiable (by norm_num) t).hasDerivAt
  have hl := Real.hasDerivAt_log hx.ne'
  have hh := ((hl.sub_const (Real.log d)).mul ((hpp (Real.log x)).comp x hl)).sub
    ((hp (Real.log x)).comp x hl)
  change HasDerivAt (upperPeanoAntiderivative A d) _ x at hh
  apply hh.congr_deriv
  rw [sourcePeanoPrimitive_second_deriv hA]
  unfold continuousDivisorIntegrand
  rw [plainProfile_eq_of_pos A 1 hx,
    sourcePlainSamplingTerm_eq_source_weight A (by norm_num : (0 : ℝ) < 1) hx,
    one_mul, Real.log_div hx.ne' hd.ne']
  have he : Real.exp (Real.log x / 2) = Real.sqrt x := by
    rw [Real.exp_half, Real.exp_log hx]
  rw [he]
  have hs : Real.sqrt x ≠ 0 := (Real.sqrt_pos.2 hx).ne'
  have hs2 := Real.sq_sqrt hx.le
  simp only [Function.comp_apply]
  field_simp
  ring_nf
  simp only [hs2]
  ring

/-- Genuine FTC gives the full upper divisor integral, including its touching boundary. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/3d8396119840795f976fSourcePeanoUpperContinuousRow/Variant3d8396119840795f976f9d26e39e5497b9faad72b8ed330fe45c671093748054.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/3d8396119840795f976fSourcePeanoUpperContinuousRow/Variant3d8396119840795f976f9d26e39e5497b9faad72b8ed330fe45c671093748054.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `021e5c6870a385a142b9f53ba1217bc76273517a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
