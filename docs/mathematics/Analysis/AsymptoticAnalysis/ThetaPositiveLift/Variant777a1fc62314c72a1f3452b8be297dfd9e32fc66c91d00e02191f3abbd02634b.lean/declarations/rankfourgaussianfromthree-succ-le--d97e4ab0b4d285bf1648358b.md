# rankFourGaussianFromThree_succ_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ecff9a43e20af87850b295688ad1230f77624b0a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 122,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/77/777a1fc62314c72a1f3452b8be297dfd9e32fc66c91d00e02191f3abbd02634b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f598eace-be02-5f6c-27bb-657525f198b9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0eb35eda-2278-7a06-408e-df71f1724fcc",
  "kind": "theorem",
  "lexical_name": "rankFourGaussianFromThree_succ_le",
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
  "slug": "rankfourgaussianfromthree-succ-le--d97e4ab0b4d285bf1648358b",
  "source": {
    "blob": "ecff9a43e20af87850b295688ad1230f77624b0a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 170,
    "line": 122,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant777a1fc62314c72a1f3452b8be297dfd9e32fc66c91d00e02191f3abbd02634b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d97e4ab0b4d285bf1648358bf833c77813a44d1f352bcd2610d0077d706f4e75",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant777a1fc62314c72a1f3452b8be297dfd9e32fc66c91d00e02191f3abbd02634b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0eb35eda-2278-7a06-408e-df71f1724fcc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–170.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem rankFourGaussianFromThree_succ_le
    {A : ℝ} (hA : 3 ≤ A)
    (p : ℕ) (hp : p ≤ 16) (m : ℕ) :
    rankFourGaussianFromThree A p (m + 1) ≤
      (1 / 2) * rankFourGaussianFromThree A p m := by
  have hm : (0 : ℝ) ≤ m := Nat.cast_nonneg m
  have hp0 :
      ((m : ℝ) + 4) ^ p ≤
        (2 * ((m : ℝ) + 3)) ^ p :=
    pow_le_pow_left₀ (by positivity) (by linarith) _
  have hp1 : (2 : ℝ) ^ p ≤ 2 ^ 16 :=
    pow_le_pow_right₀ (by norm_num) hp
  have hpow :
      ((m : ℝ) + 4) ^ p ≤
        (2 : ℝ) ^ 16 * ((m : ℝ) + 3) ^ p := by
    rw [mul_pow] at hp0
    exact hp0.trans
      (mul_le_mul_of_nonneg_right hp1 (by positivity))
  have hgap : 21 ≤ A * (2 * (m : ℝ) + 7) := by
    nlinarith [
      mul_nonneg (show 0 ≤ A - 3 by linarith) hm]
  have he :
      Real.exp (-A * (((m : ℝ) + 4) ^ 2 - 1)) ≤
        Real.exp
          (-A * (((m : ℝ) + 3) ^ 2 - 1) - 21) := by
    apply Real.exp_le_exp.mpr
    nlinarith only [hgap]
  unfold rankFourGaussianFromThree
  push_cast
  calc
    _ = ((m : ℝ) + 4) ^ p *
        Real.exp (-A * (((m : ℝ) + 4) ^ 2 - 1)) := by
      ring_nf
    _ ≤ ((2 : ℝ) ^ 16 * ((m : ℝ) + 3) ^ p) *
        Real.exp
          (-A * (((m : ℝ) + 3) ^ 2 - 1) - 21) :=
      mul_le_mul hpow he (by positivity) (by positivity)
    _ = ((2 : ℝ) ^ 16 * Real.exp (-21)) *
        rankFourGaussianFromThree A p m := by
      rw [Real.exp_sub, Real.exp_neg]
      unfold rankFourGaussianFromThree
      ring
    _ ≤ _ :=
      mul_le_mul_of_nonneg_right
        rankFourGaussianFromThree_ratio_half
        (by
          unfold rankFourGaussianFromThree
          positivity)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant777a1fc62314c72a1f3452b8be297dfd9e32fc66c91d00e02191f3abbd02634b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant777a1fc62314c72a1f3452b8be297dfd9e32fc66c91d00e02191f3abbd02634b.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ecff9a43e20af87850b295688ad1230f77624b0a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
