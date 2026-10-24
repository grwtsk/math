# rankFourGaussianFromFour_succ_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c79b8a1f-414a-6958-62a2-9ecfc34d3dd2",
  "kind": "theorem",
  "lexical_name": "rankFourGaussianFromFour_succ_le",
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
  "slug": "rankfourgaussianfromfour-succ-le--46167d36c6a1ebdc052779c4",
  "source": {
    "blob": "53f7e80df93e1e728d9a6fcf39b42acfafbc9445",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 226,
    "line": 165,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variantf5cc119c23d04102c6925b38a6970b43cf493d39666185d47e895e869e966726.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:46167d36c6a1ebdc052779c44dc48db28cf7b03a6c8fea5e4f4839d223f78f5b",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variantf5cc119c23d04102c6925b38a6970b43cf493d39666185d47e895e869e966726.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c79b8a1f-414a-6958-62a2-9ecfc34d3dd2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 165–226.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem rankFourGaussianFromFour_succ_le
    {A : ℝ} (hA : 3 ≤ A)
    (p : ℕ) (hp : p ≤ 16) (m : ℕ) :
    rankFourGaussianFromFour A p (m + 1) ≤
      (1 / 2) *
        rankFourGaussianFromFour A p m := by
  have hm : (0 : ℝ) ≤ m := Nat.cast_nonneg m
  have hp0 :
      ((m : ℝ) + 5) ^ p ≤
        (2 * ((m : ℝ) + 4)) ^ p :=
    pow_le_pow_left₀ (by positivity) (by linarith) _
  have hp1 : (2 : ℝ) ^ p ≤ 2 ^ 16 :=
    pow_le_pow_right₀ (by norm_num) hp
  have hpow :
      ((m : ℝ) + 5) ^ p ≤
        (2 : ℝ) ^ 16 *
          ((m : ℝ) + 4) ^ p := by
    rw [mul_pow] at hp0
    exact hp0.trans
      (mul_le_mul_of_nonneg_right
        hp1 (by positivity))
  have hgap :
      27 ≤ A * (2 * (m : ℝ) + 9) := by
    nlinarith [
      mul_nonneg
        (show 0 ≤ A - 3 by linarith) hm]
  have he :
      Real.exp
          (-A * (((m : ℝ) + 5) ^ 2 - 1)) ≤
        Real.exp
          (-A * (((m : ℝ) + 4) ^ 2 - 1) -
            27) := by
    apply Real.exp_le_exp.mpr
    nlinarith only [hgap]
  unfold rankFourGaussianFromFour
  push_cast
  calc
    _ = ((m : ℝ) + 5) ^ p *
        Real.exp
          (-A * (((m : ℝ) + 5) ^ 2 - 1)) := by
      ring_nf
    _ ≤
        ((2 : ℝ) ^ 16 *
          ((m : ℝ) + 4) ^ p) *
        Real.exp
          (-A * (((m : ℝ) + 4) ^ 2 - 1) -
            27) :=
      mul_le_mul hpow he
        (by positivity) (by positivity)
    _ =
        ((2 : ℝ) ^ 16 * Real.exp (-27)) *
          rankFourGaussianFromFour A p m := by
      rw [Real.exp_sub, Real.exp_neg]
      unfold rankFourGaussianFromFour
      ring
    _ ≤ _ :=
      mul_le_mul_of_nonneg_right
        rankFourGaussianFromFour_ratio_half
        (by
          unfold rankFourGaussianFromFour
          positivity)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variantf5cc119c23d04102c6925b38a6970b43cf493d39666185d47e895e869e966726.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variantf5cc119c23d04102c6925b38a6970b43cf493d39666185d47e895e869e966726.lean#L165).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `53f7e80df93e1e728d9a6fcf39b42acfafbc9445` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
