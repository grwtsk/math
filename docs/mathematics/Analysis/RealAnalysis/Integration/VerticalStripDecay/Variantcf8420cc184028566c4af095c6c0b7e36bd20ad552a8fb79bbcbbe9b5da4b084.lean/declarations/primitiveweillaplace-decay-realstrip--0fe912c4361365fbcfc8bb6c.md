# primitiveWeilLaplace_decay_realStrip

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "98df6a476039a71003749d50827ceb08d75ca311",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 433,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cf/cf8420cc184028566c4af095c6c0b7e36bd20ad552a8fb79bbcbbe9b5da4b084.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2ff12285-fb2e-a6e6-b2db-ba99c671add4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:88c64d1c-c2bf-4fe9-7ca1-9cf197341618",
  "kind": "theorem",
  "lexical_name": "primitiveWeilLaplace_decay_realStrip",
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
  "slug": "primitiveweillaplace-decay-realstrip--0fe912c4361365fbcfc8bb6c",
  "source": {
    "blob": "98df6a476039a71003749d50827ceb08d75ca311",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 498,
    "line": 433,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/VerticalStripDecay/Variantcf8420cc184028566c4af095c6c0b7e36bd20ad552a8fb79bbcbbe9b5da4b084.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0fe912c4361365fbcfc8bb6c155329597c9e07003efe3ae6950e55608d0a8970",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/VerticalStripDecay/Variantcf8420cc184028566c4af095c6c0b7e36bd20ad552a8fb79bbcbbe9b5da4b084.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:88c64d1c-c2bf-4fe9-7ca1-9cf197341618`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 433–498.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem primitiveWeilLaplace_decay_realStrip
    (g : PrimitiveWeilTestFunction) {sigma₀ sigma₁ : ℝ}
    (hsigma : sigma₀ ≤ sigma₁) (k : ℕ) :
    ∃ C : ℝ, 0 ≤ C ∧
      ∀ sigma ∈ Set.Icc sigma₀ sigma₁, ∀ t : ℝ,
        ‖primitiveWeilLaplace g
          ((sigma : ℂ) + Complex.I * (t : ℂ))‖ ≤
          C / (1 + |t|) ^ k := by
  obtain ⟨C₀, hC₀, hzero⟩ :=
    primitiveWeilLaplace_vertical_pow_bound_uniform g hsigma 0
  obtain ⟨Cₖ, hCₖ, hk⟩ :=
    primitiveWeilLaplace_vertical_pow_bound_uniform g hsigma k
  let C := (2 : ℝ) ^ k * (C₀ + Cₖ)
  have hC : 0 ≤ C := by
    dsimp [C]
    positivity
  refine ⟨C, hC, ?_⟩
  intro sigma hsigmaMem t
  rw [le_div_iff₀' (pow_pos (by positivity : 0 < 1 + |t|) k)]
  have hnorm :
      ‖primitiveWeilLaplace g
        ((sigma : ℂ) + Complex.I * (t : ℂ))‖ ≤ C₀ := by
    simpa only [pow_zero, one_mul] using
      hzero sigma hsigmaMem t
  by_cases ht : |t| ≤ 1
  · calc
      (1 + |t|) ^ k *
          ‖primitiveWeilLaplace g
            ((sigma : ℂ) + Complex.I * (t : ℂ))‖ ≤
        (1 + |t|) ^ k * C₀ :=
          mul_le_mul_of_nonneg_left hnorm
            (pow_nonneg (by positivity) k)
      _ ≤ 2 ^ k * C₀ := by
        gcongr
        nlinarith
      _ ≤ C := by
        dsimp [C]
        nlinarith [pow_nonneg (by norm_num : (0 : ℝ) ≤ 2) k]
  · have htOne : 1 ≤ |t| := le_of_not_ge ht
    have hsum : 1 + |t| ≤ 2 * |t| := by nlinarith
    calc
      (1 + |t|) ^ k *
          ‖primitiveWeilLaplace g
            ((sigma : ℂ) + Complex.I * (t : ℂ))‖ ≤
        (2 * |t|) ^ k *
          ‖primitiveWeilLaplace g
            ((sigma : ℂ) + Complex.I * (t : ℂ))‖ := by
          gcongr
      _ = 2 ^ k *
          (|t| ^ k *
            ‖primitiveWeilLaplace g
              ((sigma : ℂ) + Complex.I * (t : ℂ))‖) := by
        rw [mul_pow]
        ring
      _ ≤ 2 ^ k * Cₖ :=
        mul_le_mul_of_nonneg_left (hk sigma hsigmaMem t)
          (pow_nonneg (by norm_num) k)
      _ ≤ C := by
        dsimp [C]
        nlinarith [pow_nonneg (by norm_num : (0 : ℝ) ≤ 2) k]

end PrimitiveWeilTestFunction

end

end Surface.Core.Weil
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/VerticalStripDecay/Variantcf8420cc184028566c4af095c6c0b7e36bd20ad552a8fb79bbcbbe9b5da4b084.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/VerticalStripDecay/Variantcf8420cc184028566c4af095c6c0b7e36bd20ad552a8fb79bbcbbe9b5da4b084.lean#L433).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `98df6a476039a71003749d50827ceb08d75ca311` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
