# conductorThreePrefixWeight_cost

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fa1c009e-115b-b992-a314-2b84ebe42cd7",
  "kind": "theorem",
  "lexical_name": "conductorThreePrefixWeight_cost",
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
  "slug": "conductorthreeprefixweight-cost--184db1b7033d497a4447a4f2",
  "source": {
    "blob": "2cc6943dbc28d767b787ae0aec2de37101ab3926",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 77,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ConductorThreePacketUnsmoothing/Variant37b67747d7e393ec385740d7b0be2748326c407f9f5b3ee203210c4a7ffa786b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:184db1b7033d497a4447a4f25aeaf8e2da885ebbe6d366fdb000dd9f699867f8",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ConductorThreePacketUnsmoothing/Variant37b67747d7e393ec385740d7b0be2748326c407f9f5b3ee203210c4a7ffa786b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fa1c009e-115b-b992-a314-2b84ebe42cd7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem conductorThreePrefixWeight_cost (x : ℕ) (hx : 1 ≤ x) :
    DiscretePacketWeightCost x (conductorThreePrefixWeight x) = 2 := by
  unfold DiscretePacketWeightCost conductorThreePrefixWeight
  simp only [Nat.zero_le, ↓reduceIte, abs_one]
  have hsplit : Finset.range (2 * x) =
      Finset.range x ∪ Finset.Ico x (2 * x) := by
    ext n
    simp
    omega
  rw [hsplit, Finset.sum_union]
  · have hfirst : ∀ n ∈ Finset.range x,
        |(if n + 1 ≤ x then (1 : ℝ) else 0) -
          (if n ≤ x then 1 else 0)| = 0 := by
      intro n hn
      simp only [Finset.mem_range] at hn
      simp [show n ≤ x by omega, show n + 1 ≤ x by omega]
    rw [show (∑ n ∈ Finset.range x,
        |(if n + 1 ≤ x then (1 : ℝ) else 0) -
          (if n ≤ x then 1 else 0)|) = 0 by
      exact Finset.sum_eq_zero hfirst]
    have hxmem : x ∈ Finset.Ico x (2 * x) := by
      simp
      omega
    rw [Finset.sum_eq_single x]
    · simp
      norm_num
    · intro b hb hbx
      simp only [Finset.mem_Ico] at hb
      have hxb : x < b := lt_of_le_of_ne hb.1 (Ne.symm hbx)
      simp [show ¬b ≤ x by omega, show ¬b + 1 ≤ x by omega]
    · exact fun hxnot ↦ (hxnot hxmem).elim
  · exact Finset.disjoint_left.2 (by
      intro n hn hni
      simp only [Finset.mem_range] at hn
      simp only [Finset.mem_Ico] at hni
      omega)

/-- The BV readout of the prefix multiplier is exactly `Ψχ₃(x)`. -/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ConductorThreePacketUnsmoothing/Variant37b67747d7e393ec385740d7b0be2748326c407f9f5b3ee203210c4a7ffa786b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ConductorThreePacketUnsmoothing/Variant37b67747d7e393ec385740d7b0be2748326c407f9f5b3ee203210c4a7ffa786b.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2cc6943dbc28d767b787ae0aec2de37101ab3926` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
