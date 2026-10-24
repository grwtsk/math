# density_closed_inventory_mul_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0f835fe1-326a-0d57-52c2-8a1e39166d00",
  "kind": "theorem",
  "lexical_name": "density_closed_inventory_mul_iff",
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
  "slug": "density-closed-inventory-mul-iff--a172e79ef924f3a2bbbbce4d",
  "source": {
    "blob": "5966c3f96ddc62762dcee0720f9dc8a1c1cf4d2b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 53,
    "path": "GRWTSK/NumberTheory/ArithmeticFunctions/DensityFiniteSums.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a172e79ef924f3a2bbbbce4ddb4125dcbaa7560fe0a0ca412262c44a49e73787",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityFiniteSums.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0f835fe1-326a-0d57-52c2-8a1e39166d00`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem density_closed_inventory_mul_iff {d n : ℕ} {t : ℝ} (hd : 0 < d) :
    d * n ∈ densityClosedInventory t ↔
      n ∈ densityClosedInventory (t - Real.log d) := by
  have hdR : (0 : ℝ) < d := by exact_mod_cast hd
  simp only [densityClosedInventory, Finset.mem_Icc]
  rw [Nat.le_floor_iff (Real.exp_pos t).le,
    Nat.le_floor_iff (Real.exp_pos (t - Real.log d)).le,
    Real.exp_sub, Real.exp_log hdR]
  constructor
  · intro h
    have hn : 1 ≤ n := by
      by_contra H
      have hz : n = 0 := by omega
      simp [hz] at h
    refine ⟨hn, (le_div_iff₀ hdR).mpr ?_⟩
    simpa only [Nat.cast_mul, mul_comm] using h.2
  · intro h
    refine ⟨Nat.mul_pos hd h.1, ?_⟩
    simpa only [Nat.cast_mul, mul_comm] using (le_div_iff₀ hdR).mp h.2


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityFiniteSums.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ArithmeticFunctions/DensityFiniteSums.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5966c3f96ddc62762dcee0720f9dc8a1c1cf4d2b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
