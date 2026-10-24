# actual_small_prime_mean_increases

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d15b879f-21dd-d742-2e63-cac07d007b11",
  "kind": "theorem",
  "lexical_name": "actual_small_prime_mean_increases",
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
  "slug": "actual-small-prime-mean-increases--7f2fe65eedd0f663f9e1d07a",
  "source": {
    "blob": "34ae4eabc303ce6239fe00d976186eb152b6e4cd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 328,
    "line": 297,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SourcePrimeCumulative/Variantcee69f961e7fcddd776a6eb7f78d0c2a8d04094e9f5ec02b0c2ca104cc55fed0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7f2fe65eedd0f663f9e1d07a1ef93ac8536f58ebed3a43a1be75126c11587d87",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/SourcePrimeCumulative/Variantcee69f961e7fcddd776a6eb7f78d0c2a8d04094e9f5ec02b0c2ca104cc55fed0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d15b879f-21dd-d742-2e63-cac07d007b11`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 297–328.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_small_prime_mean_increases :
    vaughanCutoff (9 : ℝ) = 81 ∧
    weightedDivisors {2, 3, 5, 7} (81 / 11) (fun d => 1 / (d : ℝ)) =
      -(1 / 105 : ℝ) ∧
    weightedDivisors (insert 11 {2, 3, 5, 7}) 81 (fun d => 1 / (d : ℝ)) -
      weightedDivisors {2, 3, 5, 7} 81 (fun d => 1 / (d : ℝ)) = (1 / 1155 : ℝ) := by
  have hP : ∀ r ∈ ({2, 3, 5, 7} : Finset ℕ), r.Prime := by
    intro r hr
    simp only [Finset.mem_insert, Finset.mem_singleton] at hr
    rcases hr with rfl | rfl | rfl | rfl <;> norm_num
  have hE : primeDivisors {2, 3, 5, 7} (81 / 11) = {1, 2, 3, 5, 6, 7} := by decide
  have hmu6 : ArithmeticFunction.moebius 6 = (1 : ℤ) := by
    change ArithmeticFunction.moebius (2 * 3) = (1 : ℤ)
    rw [ArithmeticFunction.isMultiplicative_moebius.map_mul_of_coprime (by decide : Nat.Coprime 2 3)]
    norm_num [ArithmeticFunction.moebius_apply_prime Nat.prime_two,
      ArithmeticFunction.moebius_apply_prime (by norm_num : Nat.Prime 3)]
  have hmean : weightedDivisors {2, 3, 5, 7} (81 / 11)
      (fun d => 1 / (d : ℝ)) = -(1 / 105 : ℝ) := by
    unfold weightedDivisors
    rw [hE]
    norm_num [hmu6, ArithmeticFunction.moebius_apply_prime Nat.prime_two,
      ArithmeticFunction.moebius_apply_prime (by norm_num : Nat.Prime 3),
      ArithmeticFunction.moebius_apply_prime (by norm_num : Nat.Prime 5),
      ArithmeticFunction.moebius_apply_prime (by norm_num : Nat.Prime 7)]
  constructor
  · norm_num [vaughanCutoff]
  · refine ⟨hmean, ?_⟩
    rw [weightedDivisors_reciprocal_insert _ _ _ hP (by norm_num) (by decide), hmean]
    norm_num


/-- Signed arithmetic primitive for a specific disclosed inventory, with its actual short horizon. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/SourcePrimeCumulative/Variantcee69f961e7fcddd776a6eb7f78d0c2a8d04094e9f5ec02b0c2ca104cc55fed0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/SourcePrimeCumulative/Variantcee69f961e7fcddd776a6eb7f78d0c2a8d04094e9f5ec02b0c2ca104cc55fed0.lean#L297).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `34ae4eabc303ce6239fe00d976186eb152b6e4cd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
