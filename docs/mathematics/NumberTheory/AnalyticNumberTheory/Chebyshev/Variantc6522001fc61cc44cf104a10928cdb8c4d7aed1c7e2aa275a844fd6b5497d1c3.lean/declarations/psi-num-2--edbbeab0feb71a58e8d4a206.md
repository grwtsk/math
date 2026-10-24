# psi_num_2

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a9434b78-d196-f8a5-98b6-57e336da84cc",
  "kind": "theorem",
  "lexical_name": "psi_num_2",
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
  "slug": "psi-num-2--edbbeab0feb71a58e8d4a206",
  "source": {
    "blob": "045466a6d1938b36edf6ae23c75be1b0d2dda31f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 620,
    "line": 603,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantc6522001fc61cc44cf104a10928cdb8c4d7aed1c7e2aa275a844fd6b5497d1c3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:edbbeab0feb71a58e8d4a206fac9e259468ea793c9812d80ca07a34d38287c69",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantc6522001fc61cc44cf104a10928cdb8c4d7aed1c7e2aa275a844fd6b5497d1c3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a9434b78-d196-f8a5-98b6-57e336da84cc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 603–620.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem psi_num_2 (x : ℝ) (hx : x > 0) (hx2 : x ≤ 11723) : ψ x ≤ 1.11 * x := by
  open LeanCert.Engine.ChebyshevPsi in
  rw [psi_eq_psi_coe_floor x]
  have hnn : (0 : ℝ) ≤ x := le_of_lt hx
  have hfloor_le : ⌊x⌋₊ ≤ 11723 := Nat.floor_le_of_le hx2
  rcases Nat.eq_zero_or_pos ⌊x⌋₊ with hf | hf
  · simp only [hf, Nat.cast_zero]
    rw [psi_eq_zero_of_lt_two (by norm_num : (0:ℝ) < 2)]
    linarith
  · have hcheck := checkAllPsiLeMulWith_implies_checkPsiLeMulWith
      11723 (111 / 100) 20 allChecks_11723 ⌊x⌋₊ hf hfloor_le
    have h1 := psi_le_of_checkPsiLeMulWith ⌊x⌋₊ 20 (111 / 100) hcheck
    have hcast : ((111 / 100 : ℚ) : ℝ) = 111 / 100 := by norm_num
    rw [hcast] at h1
    calc ψ (⌊x⌋₊ : ℝ) ≤ 111 / 100 * ⌊x⌋₊ := h1
      _ ≤ 111 / 100 * x := by gcongr; exact Nat.floor_le hnn
      _ = 1.11 * x := by norm_num

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantc6522001fc61cc44cf104a10928cdb8c4d7aed1c7e2aa275a844fd6b5497d1c3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantc6522001fc61cc44cf104a10928cdb8c4d7aed1c7e2aa275a844fd6b5497d1c3.lean#L603).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `045466a6d1938b36edf6ae23c75be1b0d2dda31f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
