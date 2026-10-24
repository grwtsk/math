# weighted_coprime_divisor_quadratic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4c8696a8-3295-2730-6909-c87946e0d26a",
  "kind": "theorem",
  "lexical_name": "weighted_coprime_divisor_quadratic",
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
  "slug": "weighted-coprime-divisor-quadratic--c4d96685178e4cfa7fd83c5c",
  "source": {
    "blob": "d821966992a8b2805b2e392e1074ba7960cf065f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 19,
    "path": "GRWTSK/NumberTheory/ArithmeticFunctions/CoprimeReciprocalForm.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c4d96685178e4cfa7fd83c5ce197ba071c61879ff495bf01fe247662d0ccf3d0",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/CoprimeReciprocalForm.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4c8696a8-3295-2730-6909-c87946e0d26a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 19–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weighted_coprime_divisor_quadratic (T : ℝ) (c : ℕ → ℝ) :
    (∑ m ∈ densityClosedInventory T, ∑ n ∈ densityClosedInventory T,
      if m.Coprime n then c m * c n else 0) =
    ∑ d ∈ densityClosedInventory T, moebiusReal d *
      (∑ n ∈ densityClosedInventory T, if d ∣ n then c n else 0) ^ 2 := by
  classical
  have pair (m n : ℕ) (hm : m ∈ densityClosedInventory T)
      (hn : n ∈ densityClosedInventory T) :
      (if m.Coprime n then c m * c n else 0) =
        ∑ d ∈ densityClosedInventory T, moebiusReal d *
          ((if d ∣ m then c m else 0) * (if d ∣ n then c n else 0)) := by
    have he (d : ℕ) : moebiusReal d *
        ((if d ∣ m then c m else 0) * (if d ∣ n then c n else 0)) =
        (if d ∣ m ∧ d ∣ n then moebiusReal d else 0) * (c m * c n) := by
      by_cases hdm : d ∣ m <;> by_cases hdn : d ∣ n <;> simp [hdm, hdn]
    simp_rw [he]
    rw [← Finset.sum_mul, density_coprime_indicator_moebius_sum hm hn]
    split_ifs <;> simp
  calc
    _ = ∑ m ∈ densityClosedInventory T, ∑ n ∈ densityClosedInventory T,
        ∑ d ∈ densityClosedInventory T, moebiusReal d *
          ((if d ∣ m then c m else 0) * (if d ∣ n then c n else 0)) := by
      apply Finset.sum_congr rfl
      intro m hm
      apply Finset.sum_congr rfl
      intro n hn
      exact pair m n hm hn
    _ = ∑ m ∈ densityClosedInventory T, ∑ d ∈ densityClosedInventory T,
        ∑ n ∈ densityClosedInventory T, moebiusReal d *
          ((if d ∣ m then c m else 0) * (if d ∣ n then c n else 0)) := by
      apply Finset.sum_congr rfl
      intro m _
      exact Finset.sum_comm
    _ = ∑ d ∈ densityClosedInventory T, ∑ m ∈ densityClosedInventory T,
        ∑ n ∈ densityClosedInventory T, moebiusReal d *
          ((if d ∣ m then c m else 0) * (if d ∣ n then c n else 0)) := Finset.sum_comm
    _ = _ := by
      apply Finset.sum_congr rfl
      intro d _
      rw [pow_two, Finset.sum_mul_sum, Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro m _
      rw [Finset.mul_sum]

end GRWTSK.NumberTheory.ArithmeticFunctions
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/CoprimeReciprocalForm.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ArithmeticFunctions/CoprimeReciprocalForm.lean#L19).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d821966992a8b2805b2e392e1074ba7960cf065f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
