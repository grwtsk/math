# walshCharacter_orthogonal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b596b01e-602c-fc1c-e31c-c1e77bfb1a85",
  "kind": "theorem",
  "lexical_name": "walshCharacter_orthogonal",
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
  "slug": "walshcharacter-orthogonal--0672b037121b8e680fda1f59",
  "source": {
    "blob": "db7588d5942e06806a1ba0e04314fedaec839be3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 60,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshOrthogonality.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0672b037121b8e680fda1f599362e3ec6855b843c0d6d2b33bdb788583783ade",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshOrthogonality.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b596b01e-602c-fc1c-e31c-c1e77bfb1a85`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem walshCharacter_orthogonal (S T : Finset ι) (hST : S ≠ T) :
    (∑ a : ι → Bool, walshCharacter S a * walshCharacter T a) = 0 := by
  classical
  obtain ⟨j, hj⟩ : ∃ j : ι, ¬ (j ∈ S ↔ j ∈ T) := by
    by_contra h
    apply hST
    apply Finset.ext
    intro i
    by_contra hi
    exact h ⟨i, hi⟩
  have hzero :
      (∑ b : Bool,
        (if j ∈ S then boolSign b else (1 : ℚ)) *
          (if j ∈ T then boolSign b else (1 : ℚ))) = 0 := by
    by_cases hs : j ∈ S
    · have ht : j ∉ T := by
        intro ht
        exact hj ⟨fun _ => ht, fun _ => hs⟩
      simp [hs, ht, boolSign]
    · have ht : j ∈ T := by
        by_contra ht
        exact hj ⟨fun h => (hs h).elim, fun h => (ht h).elim⟩
      simp [hs, ht, boolSign]
  calc
    (∑ a : ι → Bool, walshCharacter S a * walshCharacter T a) =
        ∑ a : ι → Bool, ∏ i : ι,
          (if i ∈ S then boolSign (a i) else (1 : ℚ)) *
          (if i ∈ T then boolSign (a i) else (1 : ℚ)) := by
      apply Finset.sum_congr rfl
      intro a _
      rw [Finset.prod_mul_distrib]
      simp only [Finset.prod_ite_mem_eq, walshCharacter]
    _ = ∏ i : ι, ∑ b : Bool,
          (if i ∈ S then boolSign b else (1 : ℚ)) *
          (if i ∈ T then boolSign b else (1 : ℚ)) := by
      exact (Fintype.prod_sum (fun i (b : Bool) =>
        (if i ∈ S then boolSign b else (1 : ℚ)) *
        (if i ∈ T then boolSign b else (1 : ℚ)))).symm
    _ = 0 := by
      exact Finset.prod_eq_zero (Finset.mem_univ j) hzero

/-- Complete Walsh Gram matrix, with the equality case and the
different-character case kept as separate proved inputs. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshOrthogonality.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshOrthogonality.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `db7588d5942e06806a1ba0e04314fedaec839be3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
