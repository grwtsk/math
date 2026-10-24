# density_half_range_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ded88a84-866c-0b15-261a-13a48bed2981",
  "kind": "theorem",
  "lexical_name": "density_half_range_bound",
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
  "slug": "density-half-range-bound--51230ec1ba0da0cad173a1ec",
  "source": {
    "blob": "d5c31a9fbb58ce18c0ad5a0f62f38d4b36cea412",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 147,
    "line": 121,
    "path": "GRWTSK/NumberTheory/FunctionFieldArithmetic/DensityHalfMoment.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:51230ec1ba0da0cad173a1ec1b455f411c22d70c299d51935bac25f68d35e89b",
  "verification": {
    "reference": "docs/verification/NumberTheory/FunctionFieldArithmetic/DensityHalfMoment.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ded88a84-866c-0b15-261a-13a48bed2981`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–147.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem density_half_range_bound (N : ℕ) :
    (∑ n ∈ Finset.range N, densityCorrectionHalf n) ≤
      Real.exp (4 * ∑' n : ℕ, reciprocalThreeHalf n) := by
  let s := Finset.range N
  let P := Nat.factoredNumbers s
  have hf := density_half_factored_hasSum s
  have hi : Summable (P.indicator densityCorrectionHalf) :=
    summable_subtype_iff_indicator.mp hf.summable
  have he : (∑ n ∈ Finset.range N, densityCorrectionHalf n) =
      ∑ n ∈ Finset.range N, P.indicator densityCorrectionHalf n := by
    apply Finset.sum_congr rfl
    intro n hn
    by_cases hn0 : n=0
    · subst n
      have h0 : (0 : ℕ) ∉ P := fun h => (Nat.ne_zero_of_mem_factoredNumbers h) rfl
      rw [Set.indicator_of_notMem h0]
      simp [densityCorrectionHalf]
    · exact (Set.indicator_of_mem (Nat.mem_factoredNumbers_iff_forall_le.mpr
        ⟨hn0, fun p hpn _ _ => Finset.mem_range.mpr (lt_of_le_of_lt hpn (Finset.mem_range.mp hn))⟩)
        densityCorrectionHalf).symm
  rw [he]
  calc
    _ ≤ ∑' n : ℕ, P.indicator densityCorrectionHalf n :=
      hi.sum_le_tsum _ (fun n _ => Set.indicator_nonneg (fun n _ => density_half_nonneg n) n)
    _ = ∑' n : P, densityCorrectionHalf n := (tsum_subtype P _).symm
    _ ≤ Real.exp (4 * ∑' n : ℕ, reciprocalThreeHalf n) := density_half_factored_bound s

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/FunctionFieldArithmetic/DensityHalfMoment.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/FunctionFieldArithmetic/DensityHalfMoment.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d5c31a9fbb58ce18c0ad5a0f62f38d4b36cea412` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
