# FinitePowerEnclosure.ofNegativePowerDisks

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8a2147bddd96f8833bbb5f2bc78d0ec31fa824ac22b701e865eb5392a09bdd73",
  "kind": "def",
  "lexical_name": "FinitePowerEnclosure.ofNegativePowerDisks",
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
  "slug": "finitepowerenclosure-ofnegativepowerdisks--f042a029e14aed3ebad26eb1",
  "source": {
    "blob": "60f8a09a1e02a58652ffa4aecef27a59df933e7a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 225,
    "line": 199,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripPowerTaylor.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f042a029e14aed3ebad26eb1c6941379ed6413c7fe6484bd0a8371200d0af15d",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripPowerTaylor.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8a2147bddd96f8833bbb5f2bc78d0ec31fa824ac22b701e865eb5392a09bdd73`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 199–225.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def FinitePowerEnclosure.ofNegativePowerDisks (N : ℕ) (hN : 1 ≤ N) (s : ℂ)
    (disk : ∀ k ∈ Finset.Icc 1 N, ComplexPowerEnclosure (k : ℝ) (-s)) :
    FinitePowerEnclosure N s := by
  classical
  have hNN : N ∈ Finset.Icc 1 N := Finset.mem_Icc.mpr ⟨hN, le_rfl⟩
  refine {
    value := fun k => if hk : k ∈ Finset.Icc 1 N then (disk k hk).value else 0,
    error := fun k => if hk : k ∈ Finset.Icc 1 N then (disk k hk).error else 0,
    error_nonneg := ?_,
    encloses := ?_,
    endpoint := (N : ℂ) * (disk N hNN).value,
    endpoint_error := (N : ℝ) * (disk N hNN).error,
    endpoint_error_nonneg := mul_nonneg (Nat.cast_nonneg _) (disk N hNN).error_nonneg,
    endpoint_encloses := ?_ }
  · intro k hk
    simpa only [dif_pos hk] using (disk k hk).error_nonneg
  · intro k hk
    simpa only [dif_pos hk, Complex.ofReal_natCast] using (disk k hk).encloses
  · have hpos : 0 < (N : ℝ) := by exact_mod_cast (lt_of_lt_of_le Nat.zero_lt_one hN)
    have heq := positive_base_endpoint_power hpos s
    simp only [Complex.ofReal_natCast] at heq
    rw [heq, ← mul_sub, norm_mul, Complex.norm_natCast]
    simpa only [Complex.ofReal_natCast] using
      mul_le_mul_of_nonneg_left (disk N hNN).encloses (Nat.cast_nonneg N)

/-- The finite enclosure can now be produced from proven log/exp bounds and finite
arithmetic checks, and the existing Mellin source tail remains explicit. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripPowerTaylor.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripPowerTaylor.lean#L199).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `60f8a09a1e02a58652ffa4aecef27a59df933e7a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
