# quartic_count_of_global_growth

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:33ae240f-ecd3-c270-02b5-6a7b6406c416",
  "kind": "theorem",
  "lexical_name": "quartic_count_of_global_growth",
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
  "slug": "quartic-count-of-global-growth--3ed112ff078f39bb23047e8c",
  "source": {
    "blob": "ba40df36eceb12db117a72b48c2e86522809582a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 211,
    "line": 187,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ZeroShellCount/Variantbbd561bbfcc47d024a7a7de138409d5aad8aec14724fa25cad462872f0677946.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3ed112ff078f39bb23047e8c2bb59ec04b28b2a16e8885f90f80b4ef900b009b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ZeroShellCount/Variantbbd561bbfcc47d024a7a7de138409d5aad8aec14724fa25cad462872f0677946.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:33ae240f-ecd3-c270-02b5-6a7b6406c416`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 187–211.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem quartic_count_of_global_growth (h : GlobalGrowthObligation) :
    QuarticCountObligation := by
  obtain ⟨A, hA, hbound⟩ := h
  have hlog : 0 < Real.log 2 := Real.log_pos (by norm_num)
  refine ⟨16 * A / Real.log 2, by positivity, ?_⟩
  intro n
  have hn : (0 : ℝ) ≤ n := Nat.cast_nonneg n
  have hr : 0 < (n : ℝ) + 2 := by positivity
  have hM : 1 ≤ Real.exp (A * ((n : ℝ)+2)^4) :=
    Real.one_le_exp (by positivity)
  have hj := jensen_count_bound hr hM (hbound ((n : ℝ)+2) (by linarith))
  rw [Real.log_exp, abs_of_pos hr] at hj
  have hp : ((n : ℝ)+2)^4 ≤ 16 * ((n : ℝ)+1)^4 := by
    calc
      ((n : ℝ)+2)^4 ≤ (2*((n : ℝ)+1))^4 :=
        pow_le_pow_left₀ (by positivity) (by linarith) 4
      _ = 16*((n : ℝ)+1)^4 := by ring
  calc
    (Nat.card (ZeroShell n) : ℝ) ≤ A * ((n : ℝ)+2)^4 / Real.log 2 :=
      (shell_card_le_divisor_real n).trans hj
    _ ≤ A * (16 * ((n : ℝ)+1)^4) / Real.log 2 :=
      div_le_div_of_nonneg_right (mul_le_mul_of_nonneg_left hp hA.le) hlog.le
    _ = (16 * A / Real.log 2) * ((n : ℝ)+1)^4 := by ring

/-- The exact growth obligation is proved from actual theta/Mellin and Gamma identities. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ZeroShellCount/Variantbbd561bbfcc47d024a7a7de138409d5aad8aec14724fa25cad462872f0677946.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ZeroShellCount/Variantbbd561bbfcc47d024a7a7de138409d5aad8aec14724fa25cad462872f0677946.lean#L187).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba40df36eceb12db117a72b48c2e86522809582a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
