# tendsto_W_nhds_pi_div_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:916ae521-b62b-ad81-9e2a-f4c2c511c21f",
  "kind": "theorem",
  "lexical_name": "tendsto_W_nhds_pi_div_two",
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
  "slug": "tendsto-w-nhds-pi-div-two--5d6b317b3752248a63885717",
  "source": {
    "blob": "bb82347a1d73a9cff822b1f851ccba6b6c2adfe3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 97,
    "path": "GRWTSK/Topology/GeneralTopology/Wallis/Variante9a0e9c78637f0e2f520e084e40a380c51947dc5898bbe29df6abebc43cf88a4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5d6b317b3752248a638857177837e18d8e484f3cf444b7432a4e55b7ad3ff6c0",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Wallis/Variante9a0e9c78637f0e2f520e084e40a380c51947dc5898bbe29df6abebc43cf88a4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:916ae521-b62b-ad81-9e2a-f4c2c511c21f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_W_nhds_pi_div_two : Tendsto W atTop (𝓝 <| π / 2) := by
  refine tendsto_of_tendsto_of_tendsto_of_le_of_le ?_ tendsto_const_nhds le_W W_le
  have : 𝓝 (π / 2) = 𝓝 ((1 - 0) * (π / 2)) := by rw [sub_zero, one_mul]
  rw [this]
  refine Tendsto.mul ?_ tendsto_const_nhds
  have h : ∀ n : ℕ, ((2 : ℝ) * n + 1) / (2 * n + 2) = 1 - 1 / (2 * n + 2) := by
    intro n
    rw [sub_div' (ne_of_gt (add_pos_of_nonneg_of_pos (mul_nonneg
      (two_pos : 0 < (2 : ℝ)).le (Nat.cast_nonneg _)) two_pos)), one_mul]
    congr 1; ring
  simp_rw [h]
  refine (tendsto_const_nhds.div_atTop ?_).const_sub _
  refine Tendsto.atTop_add ?_ tendsto_const_nhds
  exact tendsto_natCast_atTop_atTop.const_mul_atTop two_pos

end Wallis

end Real

/-- Wallis' product formula for `π / 2`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Wallis/Variante9a0e9c78637f0e2f520e084e40a380c51947dc5898bbe29df6abebc43cf88a4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Wallis/Variante9a0e9c78637f0e2f520e084e40a380c51947dc5898bbe29df6abebc43cf88a4.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb82347a1d73a9cff822b1f851ccba6b6c2adfe3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
