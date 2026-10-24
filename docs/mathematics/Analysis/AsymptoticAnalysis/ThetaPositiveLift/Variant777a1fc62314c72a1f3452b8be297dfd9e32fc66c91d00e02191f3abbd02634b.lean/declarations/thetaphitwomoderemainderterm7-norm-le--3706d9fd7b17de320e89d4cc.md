# thetaPhiTwoModeRemainderTerm7_norm_le

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
      "line": 245,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/77/777a1fc62314c72a1f3452b8be297dfd9e32fc66c91d00e02191f3abbd02634b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9bd4bcc0-0d09-5987-a1e7-3dd27f13570c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:476b50ae-2717-1742-ee1d-ab20b038f4f4",
  "kind": "theorem",
  "lexical_name": "thetaPhiTwoModeRemainderTerm7_norm_le",
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
  "slug": "thetaphitwomoderemainderterm7-norm-le--3706d9fd7b17de320e89d4cc",
  "source": {
    "blob": "ecff9a43e20af87850b295688ad1230f77624b0a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 282,
    "line": 245,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant777a1fc62314c72a1f3452b8be297dfd9e32fc66c91d00e02191f3abbd02634b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3706d9fd7b17de320e89d4cceb4a8a3702f3d8260bff6cb57f2ba63e8ada1bb1",
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

Occurrence: `result:476b50ae-2717-1742-ee1d-ab20b038f4f4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 245–282.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem thetaPhiTwoModeRemainderTerm7_norm_le
    (k : Fin 7) {A : ℝ} (hA : 3 ≤ A) (m : ℕ) :
    ‖thetaPhiTwoModeRemainderTerm7 k A m‖ ≤
      (2 * 4 ^ k.val * A ^ (k.val + 1)) *
        (((m : ℝ) + 3) ^ (2 * k.val + 4) *
          Real.exp
            (-A * (((m : ℝ) + 3) ^ 2 - 1))) := by
  have hm : (0 : ℝ) ≤ m := Nat.cast_nonneg m
  have hn : 1 ≤ ((m : ℝ) + 3) ^ 2 := by
    nlinarith
  have hy :
      3 ≤ A * ((m : ℝ) + 3) ^ 2 := by
    nlinarith [
      mul_nonneg (show 0 ≤ A by linarith)
        (sub_nonneg.mpr hn)]
  have hp := thetaPhiJetPolynomial7_abs_le k hy
  unfold thetaPhiTwoModeRemainderTerm7
  rw [norm_mul, norm_mul,
    Real.norm_of_nonneg (sq_nonneg _),
    Real.norm_eq_abs,
    Real.norm_of_nonneg (Real.exp_pos _).le]
  calc
    _ ≤ ((m : ℝ) + 3) ^ 2 *
        (2 * 4 ^ k.val *
          (A * ((m : ℝ) + 3) ^ 2) ^
            (k.val + 1)) *
        Real.exp
          (-A * (((m : ℝ) + 3) ^ 2 - 1)) :=
      mul_le_mul_of_nonneg_right
        (mul_le_mul_of_nonneg_left hp
          (sq_nonneg _))
        (Real.exp_pos _).le
    _ = _ := by
      simp only [mul_pow, pow_add, pow_mul]
      ring

/-- Every literal n >= 3 compact remainder coordinate is absolutely
summable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant777a1fc62314c72a1f3452b8be297dfd9e32fc66c91d00e02191f3abbd02634b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant777a1fc62314c72a1f3452b8be297dfd9e32fc66c91d00e02191f3abbd02634b.lean#L245).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ecff9a43e20af87850b295688ad1230f77624b0a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
