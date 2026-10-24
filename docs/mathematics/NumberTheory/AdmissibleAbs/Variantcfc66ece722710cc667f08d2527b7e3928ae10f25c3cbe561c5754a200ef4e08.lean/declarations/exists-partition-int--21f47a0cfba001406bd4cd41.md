# exists_partition_int

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:31277166-278a-e1d5-7f22-da324b35de8b",
  "kind": "theorem",
  "lexical_name": "exists_partition_int",
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
  "slug": "exists-partition-int--21f47a0cfba001406bd4cd41",
  "source": {
    "blob": "71f09327ac50529eb3ace201eb9b69e99ddcad4d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 38,
    "path": "GRWTSK/NumberTheory/AdmissibleAbs/Variantcfc66ece722710cc667f08d2527b7e3928ae10f25c3cbe561c5754a200ef4e08.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:21f47a0cfba001406bd4cd41b2827eb1b22e39455129e1d1ca69304f23954824",
  "verification": {
    "reference": "docs/verification/NumberTheory/AdmissibleAbs/Variantcfc66ece722710cc667f08d2527b7e3928ae10f25c3cbe561c5754a200ef4e08.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:31277166-278a-e1d5-7f22-da324b35de8b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_partition_int (n : ℕ) {ε : ℝ} (hε : 0 < ε) {b : ℤ} (hb : b ≠ 0) (A : Fin n → ℤ) :
    ∃ t : Fin n → Fin ⌈1 / ε⌉₊,
    ∀ i₀ i₁, t i₀ = t i₁ → ↑(abs (A i₁ % b - A i₀ % b)) < abs b • ε := by
  have hb' : (0 : ℝ) < ↑(abs b) := Int.cast_pos.mpr (abs_pos.mpr hb)
  have hbε : 0 < abs b • ε := by
    rw [Algebra.smul_def]
    exact mul_pos hb' hε
  have hfloor : ∀ i, 0 ≤ floor ((A i % b : ℤ) / abs b • ε : ℝ) :=
    fun _ ↦ floor_nonneg.mpr (div_nonneg (cast_nonneg.mpr (emod_nonneg _ hb)) hbε.le)
  refine' ⟨fun i ↦ ⟨natAbs (floor ((A i % b : ℤ) / abs b • ε : ℝ)), _⟩, _⟩
  · rw [← ofNat_lt, natAbs_of_nonneg (hfloor i), floor_lt]
    apply lt_of_lt_of_le _ (Nat.le_ceil _)
    rw [Algebra.smul_def, eq_intCast, ← div_div, div_lt_div_right hε, div_lt_iff hb', one_mul,
      cast_lt]
    exact Int.emod_lt _ hb
  intro i₀ i₁ hi
  have hi : (⌊↑(A i₀ % b) / abs b • ε⌋.natAbs : ℤ) = ⌊↑(A i₁ % b) / abs b • ε⌋.natAbs :=
    congr_arg ((↑) : ℕ → ℤ) (Fin.mk_eq_mk.mp hi)
  rw [natAbs_of_nonneg (hfloor i₀), natAbs_of_nonneg (hfloor i₁)] at hi
  have hi := abs_sub_lt_one_of_floor_eq_floor hi
  rw [abs_sub_comm, ← sub_div, abs_div, abs_of_nonneg hbε.le, div_lt_iff hbε, one_mul] at hi
  rwa [Int.cast_abs, Int.cast_sub]
#align absolute_value.exists_partition_int AbsoluteValue.exists_partition_int

/-- `abs : ℤ → ℤ` is an admissible absolute value. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/AdmissibleAbs/Variantcfc66ece722710cc667f08d2527b7e3928ae10f25c3cbe561c5754a200ef4e08.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AdmissibleAbs/Variantcfc66ece722710cc667f08d2527b7e3928ae10f25c3cbe561c5754a200ef4e08.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `71f09327ac50529eb3ace201eb9b69e99ddcad4d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
