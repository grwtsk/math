# actualFiniteMoebiusDirichlet_abs_le_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ed26daee-fa58-fa33-7fa7-39ef10be85b2",
  "kind": "theorem",
  "lexical_name": "actualFiniteMoebiusDirichlet_abs_le_one",
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
  "slug": "actualfinitemoebiusdirichlet-abs-le-one--9859ddcd599d487c93413e5f",
  "source": {
    "blob": "4947863537398ff3aa18501f6eb384d004d7ae04",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 99,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/C2ffc1c016abf240c332SourceActualFiniteMoebiusDirichlet/Variant3c5efbb013c482d1d5aaf47ebca0eba4de18e5b283aa072ddd13972632ead634.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9859ddcd599d487c93413e5fda87bc367fcc2872658e67c9e3ac546f05f292c2",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/C2ffc1c016abf240c332SourceActualFiniteMoebiusDirichlet/Variant3c5efbb013c482d1d5aaf47ebca0eba4de18e5b283aa072ddd13972632ead634.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ed26daee-fa58-fa33-7fa7-39ef10be85b2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualFiniteMoebiusDirichlet_abs_le_one (N : ℕ) {sigma : ℝ} (hsigma : 1 ≤ sigma) :
    |actualFiniteMoebiusDirichlet N sigma| ≤ 1 := by
  by_cases hN : N = 0
  · subst N
    simp [actualFiniteMoebiusDirichlet]
  have hn : 1 ≤ N := by omega
  let w : ℕ → ℝ := fun n => (n : ℝ) ^ (1 - sigma)
  have he : actualFiniteMoebiusDirichlet N sigma =
      ∑ n ∈ Finset.Icc 1 N, (moebius n : ℝ) / n * w n := by
    unfold actualFiniteMoebiusDirichlet
    apply Finset.sum_congr rfl
    intro n hmem
    have hp : 0 < (n : ℝ) := by exact_mod_cast (Finset.mem_Icc.mp hmem).1
    dsimp [w]
    rw [Real.rpow_sub hp, Real.rpow_one]
    field_simp
  have hw (n : ℕ) : 0 ≤ w n := Real.rpow_nonneg (Nat.cast_nonneg _) _
  have hd (n : ℕ) (hm : n ∈ Finset.Icc 1 (N - 1)) : 0 ≤ w n - w (n + 1) := by
    have hp : 0 < (n : ℝ) := by exact_mod_cast (Finset.mem_Icc.mp hm).1
    exact sub_nonneg.mpr (Real.rpow_le_rpow_of_nonpos hp
      (by exact_mod_cast (Nat.le_succ n)) (by linarith))
  rw [he]
  calc
    _ ≤ |w N| + ∑ n ∈ Finset.Icc 1 (N - 1), |w n - w (n + 1)| :=
      actual_weighted_alpha_variation_bound N w
    _ = w N + ∑ n ∈ Finset.Icc 1 (N - 1), (w n - w (n + 1)) := by
      rw [abs_of_nonneg (hw N)]
      congr 1
      apply Finset.sum_congr rfl
      intro n hm
      exact abs_of_nonneg (hd n hm)
    _ = w 1 := by rw [finite_weight_differences_telescope N w hn]; ring
    _ = 1 := by simp [w]

/-- Every actual real Vaughan scale keeps the same signed closed finite coefficient bound. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/C2ffc1c016abf240c332SourceActualFiniteMoebiusDirichlet/Variant3c5efbb013c482d1d5aaf47ebca0eba4de18e5b283aa072ddd13972632ead634.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/C2ffc1c016abf240c332SourceActualFiniteMoebiusDirichlet/Variant3c5efbb013c482d1d5aaf47ebca0eba4de18e5b283aa072ddd13972632ead634.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4947863537398ff3aa18501f6eb384d004d7ae04` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
