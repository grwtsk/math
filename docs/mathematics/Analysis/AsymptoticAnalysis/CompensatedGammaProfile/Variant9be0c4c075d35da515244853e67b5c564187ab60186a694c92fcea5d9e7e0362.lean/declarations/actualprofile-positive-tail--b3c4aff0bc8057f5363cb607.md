# actualProfile_positive_tail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6f31b9cc-99cd-12ff-15e6-75f7d5fc5307",
  "kind": "theorem",
  "lexical_name": "actualProfile_positive_tail",
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
  "slug": "actualprofile-positive-tail--b3c4aff0bc8057f5363cb607",
  "source": {
    "blob": "21d83efdc4b30195703e97c3fa59fb77ebba3961",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 221,
    "line": 205,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/CompensatedGammaProfile/Variant9be0c4c075d35da515244853e67b5c564187ab60186a694c92fcea5d9e7e0362.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b3c4aff0bc8057f5363cb607484349e2b85429d2efbe03029836159b93e05b2f",
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

Occurrence: `result:6f31b9cc-99cd-12ff-15e6-75f7d5fc5307`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 205–221.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualProfile_positive_tail {x : ℝ} (hx : 0 ≤ x) (N : ℕ) (hN : 1 ≤ N) :
    0 ≤ actualProfile x - partialProfile x N ∧
      actualProfile x - partialProfile x N ≤ x ^ 2 / (8 * (N : ℝ)) := by
  have hx2 : -2 < x := by linarith
  refine ⟨actualProfile_sub_prefix_nonneg hx2 N, ?_⟩
  rw [actualProfile_prefix_tail hx2 N, add_sub_cancel_left]
  calc
    _ ≤ ∑' n : ℕ, x ^ 2 / 8 * ((n : ℝ) + N + 1) ^ (-2 : ℝ) := by
      apply Summable.tsum_le_tsum
        (fun n ↦ by simpa only [Nat.cast_add, add_assoc] using term_nonneg_upper hx (n + N))
        ((summable_nat_add_iff N).mpr (term_summable hx2))
        ((inverse_square_tail_summable N).mul_left _)
    _ = x ^ 2 / 8 * ∑' n : ℕ, ((n : ℝ) + N + 1) ^ (-2 : ℝ) := tsum_mul_left
    _ ≤ x ^ 2 / 8 * (1 / (N : ℝ)) :=
      mul_le_mul_of_nonneg_left (inverse_square_tail_le N hN) (by positivity)
    _ = _ := by ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/CompensatedGammaProfile/Variant9be0c4c075d35da515244853e67b5c564187ab60186a694c92fcea5d9e7e0362.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/CompensatedGammaProfile/Variant9be0c4c075d35da515244853e67b5c564187ab60186a694c92fcea5d9e7e0362.lean#L205).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `21d83efdc4b30195703e97c3fa59fb77ebba3961` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
