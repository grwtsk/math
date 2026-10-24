# term_negative_compact_upper

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3f8645ac-012c-65da-ad16-4c22a26b7479",
  "kind": "theorem",
  "lexical_name": "term_negative_compact_upper",
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
  "slug": "term-negative-compact-upper--8bbeb1c98b6f4337a6acd7f4",
  "source": {
    "blob": "21d83efdc4b30195703e97c3fa59fb77ebba3961",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 66,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/CompensatedGammaProfile/Variant9be0c4c075d35da515244853e67b5c564187ab60186a694c92fcea5d9e7e0362.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8bbeb1c98b6f4337a6acd7f4deb520d5913ad642e18b48e633e74b06610a9632",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/CompensatedGammaProfile/Variant9be0c4c075d35da515244853e67b5c564187ab60186a694c92fcea5d9e7e0362.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3f8645ac-012c-65da-ad16-4c22a26b7479`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem term_negative_compact_upper {r x : ℝ} (hr : 0 ≤ r) (hr2 : r < 2)
    (hx : -r ≤ x) (_hx0 : x ≤ 0) (n : ℕ) :
    term x n ≤ x ^ 2 / (4 * (1 - r / 2)) * ((n : ℝ) + 1) ^ (-2 : ℝ) := by
  have hn : 0 ≤ (n : ℝ) := Nat.cast_nonneg n
  have hd : 0 < 1 - r / 2 := by linarith
  have hx2 : -2 < x := by linarith
  have ha : 1 - r / 2 ≤ 1 + x / (2 * ((n : ℝ) + 1)) := by
    have he : 1 + x / (2 * ((n : ℝ) + 1)) =
        (2 * ((n : ℝ) + 1) + x) / (2 * ((n : ℝ) + 1)) := by field_simp
    rw [he]
    apply (le_div_iff₀ (by positivity : 0 < 2 * ((n : ℝ) + 1))).2
    nlinarith [mul_nonneg hr hn]
  have h := compensated_log_le_square_div (log_argument_pos hx2 n)
  change x / (2 * ((n : ℝ) + 1)) - Real.log (1 + x / (2 * ((n : ℝ) + 1))) ≤ _
  calc
    _ ≤ (x / (2 * ((n : ℝ) + 1))) ^ 2 / (1 + x / (2 * ((n : ℝ) + 1))) := h
    _ ≤ (x / (2 * ((n : ℝ) + 1))) ^ 2 / (1 - r / 2) :=
      div_le_div_of_nonneg_left (sq_nonneg _) hd ha
    _ = _ := by
      rw [show (-2 : ℝ) = -(2 : ℕ) by norm_num, Real.rpow_neg (by positivity), Real.rpow_natCast]
      field_simp
      ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/CompensatedGammaProfile/Variant9be0c4c075d35da515244853e67b5c564187ab60186a694c92fcea5d9e7e0362.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/CompensatedGammaProfile/Variant9be0c4c075d35da515244853e67b5c564187ab60186a694c92fcea5d9e7e0362.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `21d83efdc4b30195703e97c3fa59fb77ebba3961` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
