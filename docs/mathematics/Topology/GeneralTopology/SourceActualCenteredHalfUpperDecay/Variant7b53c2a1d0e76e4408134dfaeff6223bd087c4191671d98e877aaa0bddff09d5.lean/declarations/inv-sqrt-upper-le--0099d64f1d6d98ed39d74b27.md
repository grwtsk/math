# inv_sqrt_upper_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9c186e21-59fa-5995-95be-26ed360bf081",
  "kind": "theorem",
  "lexical_name": "inv_sqrt_upper_le",
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
  "slug": "inv-sqrt-upper-le--0099d64f1d6d98ed39d74b27",
  "source": {
    "blob": "ea6c74caf857dda2c40546f5d880720bf440a79d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 103,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualCenteredHalfUpperDecay/Variant7b53c2a1d0e76e4408134dfaeff6223bd087c4191671d98e877aaa0bddff09d5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0099d64f1d6d98ed39d74b2709f6818373b891f60cf4379261358c6fbc827990",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceActualCenteredHalfUpperDecay/Variant7b53c2a1d0e76e4408134dfaeff6223bd087c4191671d98e877aaa0bddff09d5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9c186e21-59fa-5995-95be-26ed360bf081`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem inv_sqrt_upper_le {A : ℝ} (hA : 4 ≤ A) :
    1 / Real.sqrt ((sourceKernelCutoff A / (vaughanCutoff A + 1) - 1 : ℕ) : ℝ) ≤
      2 * Real.sqrt ((vaughanCutoff A + 1 : ℕ) : ℝ) * Real.exp (-A) := by
  have hK := actual_column_window_nonempty (by linarith : 1 ≤ A)
  have hU := vaughanCutoff_pos A (by linarith : 1 ≤ A)
  have hL : 0 < ((sourceKernelCutoff A / (vaughanCutoff A + 1) - 1 : ℕ) : ℝ) := by
    exact_mod_cast (show 0 < sourceKernelCutoff A / (vaughanCutoff A + 1) - 1 by omega)
  rw [Real.exp_neg, div_le_iff₀ (Real.sqrt_pos.2 hL)]
  have he := sqrt_upper_gap hA
  have hx : (1 : ℝ) ≤ (2 * Real.sqrt ((vaughanCutoff A + 1 : ℕ) : ℝ) *
      Real.sqrt ((sourceKernelCutoff A / (vaughanCutoff A + 1) - 1 : ℕ) : ℝ)) /
        Real.exp A := (le_div_iff₀ (Real.exp_pos A)).2 (by simpa using he)
  simpa only [div_eq_mul_inv, mul_assoc, mul_left_comm, mul_comm] using hx

/-- The complete actual finite upper harmonic error has an explicit real-scale decay budget. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualCenteredHalfUpperDecay/Variant7b53c2a1d0e76e4408134dfaeff6223bd087c4191671d98e877aaa0bddff09d5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualCenteredHalfUpperDecay/Variant7b53c2a1d0e76e4408134dfaeff6223bd087c4191671d98e877aaa0bddff09d5.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ea6c74caf857dda2c40546f5d880720bf440a79d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
