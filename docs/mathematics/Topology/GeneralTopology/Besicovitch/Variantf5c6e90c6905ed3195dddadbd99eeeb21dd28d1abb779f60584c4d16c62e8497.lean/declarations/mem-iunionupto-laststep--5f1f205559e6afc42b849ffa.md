# mem_iUnionUpTo_lastStep

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:462b9945-02c7-14d5-0934-8d25574957fc",
  "kind": "theorem",
  "lexical_name": "mem_iUnionUpTo_lastStep",
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
  "slug": "mem-iunionupto-laststep--5f1f205559e6afc42b849ffa",
  "source": {
    "blob": "999c868f4720485989fcdd7dda1ab5b4cb7b5af4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 353,
    "line": 326,
    "path": "GRWTSK/Topology/GeneralTopology/Besicovitch/Variantf5c6e90c6905ed3195dddadbd99eeeb21dd28d1abb779f60584c4d16c62e8497.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5f1f205559e6afc42b849ffaacebc6d1932e692518e32cb9899c5e9d1cde767c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Besicovitch/Variantf5c6e90c6905ed3195dddadbd99eeeb21dd28d1abb779f60584c4d16c62e8497.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:462b9945-02c7-14d5-0934-8d25574957fc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 326–353.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_iUnionUpTo_lastStep (x : β) : p.c x ∈ p.iUnionUpTo p.lastStep := by
  have A : ∀ z : β, p.c z ∈ p.iUnionUpTo p.lastStep ∨ p.τ * p.r z < p.R p.lastStep := by
    have : p.lastStep ∈ {i | ¬∃ b : β, p.c b ∉ p.iUnionUpTo i ∧ p.R i ≤ p.τ * p.r b} :=
      csInf_mem p.lastStep_nonempty
    simpa only [not_exists, mem_setOf_eq, not_and_or, not_le, not_not_mem]
  by_contra h
  rcases A x with (H | H); · exact h H
  have Rpos : 0 < p.R p.lastStep := by
    apply lt_trans (mul_pos (_root_.zero_lt_one.trans p.one_lt_tau) (p.rpos _)) H
  have B : p.τ⁻¹ * p.R p.lastStep < p.R p.lastStep := by
    conv_rhs => rw [← one_mul (p.R p.lastStep)]
    exact mul_lt_mul (inv_lt_one p.one_lt_tau) le_rfl Rpos zero_le_one
  obtain ⟨y, hy1, hy2⟩ :
      ∃ y : β, p.c y ∉ p.iUnionUpTo p.lastStep ∧ p.τ⁻¹ * p.R p.lastStep < p.r y := by
    have := exists_lt_of_lt_csSup ?_ B
    · simpa only [exists_prop, mem_range, exists_exists_and_eq_and, Subtype.exists,
      Subtype.coe_mk]
    rw [← image_univ, nonempty_image_iff]
    exact ⟨⟨_, h⟩, mem_univ _⟩
  rcases A y with (Hy | Hy)
  · exact hy1 Hy
  · rw [← div_eq_inv_mul] at hy2
    have := (div_le_iff' (_root_.zero_lt_one.trans p.one_lt_tau)).1 hy2.le
    exact lt_irrefl _ (Hy.trans_le this)
#align besicovitch.tau_package.mem_Union_up_to_last_step Besicovitch.TauPackage.mem_iUnionUpTo_lastStep

/-- If there are no configurations of satellites with `N+1` points, one never uses more than `N`
distinct families in the Besicovitch inductive construction. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Besicovitch/Variantf5c6e90c6905ed3195dddadbd99eeeb21dd28d1abb779f60584c4d16c62e8497.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Besicovitch/Variantf5c6e90c6905ed3195dddadbd99eeeb21dd28d1abb779f60584c4d16c62e8497.lean#L326).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `999c868f4720485989fcdd7dda1ab5b4cb7b5af4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
