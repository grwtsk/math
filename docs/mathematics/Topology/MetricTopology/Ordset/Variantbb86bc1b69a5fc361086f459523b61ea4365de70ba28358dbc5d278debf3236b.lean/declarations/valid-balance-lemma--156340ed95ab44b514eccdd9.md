# Valid'.balance'_lemma

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e616de16-e235-ffe9-3384-360775478099",
  "kind": "theorem",
  "lexical_name": "Valid'.balance'_lemma",
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
  "slug": "valid-balance-lemma--156340ed95ab44b514eccdd9",
  "source": {
    "blob": "3711a3aff68ab5153bdf75e832afd173540a8e4f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1340,
    "line": 1322,
    "path": "GRWTSK/Topology/MetricTopology/Ordset/Variantbb86bc1b69a5fc361086f459523b61ea4365de70ba28358dbc5d278debf3236b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:156340ed95ab44b514eccdd97c76470dee8ccb4d686beacdb96a09131e76d3ea",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Ordset/Variantbb86bc1b69a5fc361086f459523b61ea4365de70ba28358dbc5d278debf3236b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e616de16-e235-ffe9-3384-360775478099`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1322–1340.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Valid'.balance'_lemma {α l l' r r'} (H1 : BalancedSz l' r')
    (H2 : Nat.dist (@size α l) l' ≤ 1 ∧ size r = r' ∨ Nat.dist (size r) r' ≤ 1 ∧ size l = l') :
    2 * @size α r ≤ 9 * size l + 5 ∨ size r ≤ 3 := by
  suffices @size α r ≤ 3 * (size l + 1) by
    cases' Nat.eq_zero_or_pos (size l) with l0 l0
    · apply Or.inr; rwa [l0] at this
    change 1 ≤ _ at l0; apply Or.inl; linarith
  rcases H2 with (⟨hl, rfl⟩ | ⟨hr, rfl⟩) <;> rcases H1 with (h | ⟨_, h₂⟩)
  · exact le_trans (Nat.le_add_left _ _) (le_trans h (Nat.le_add_left _ _))
  · exact
      le_trans h₂
        (Nat.mul_le_mul_left _ <| le_trans (Nat.dist_tri_right _ _) (Nat.add_le_add_left hl _))
  · exact
      le_trans (Nat.dist_tri_left' _ _)
        (le_trans (add_le_add hr (le_trans (Nat.le_add_left _ _) h)) (by linarith))
  · rw [Nat.mul_succ]
    exact le_trans (Nat.dist_tri_right' _ _) (add_le_add h₂ (le_trans hr (by decide)))
#align ordnode.valid'.balance'_lemma Ordnode.Valid'.balance'_lemma

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Ordset/Variantbb86bc1b69a5fc361086f459523b61ea4365de70ba28358dbc5d278debf3236b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Ordset/Variantbb86bc1b69a5fc361086f459523b61ea4365de70ba28358dbc5d278debf3236b.lean#L1322).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3711a3aff68ab5153bdf75e832afd173540a8e4f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
