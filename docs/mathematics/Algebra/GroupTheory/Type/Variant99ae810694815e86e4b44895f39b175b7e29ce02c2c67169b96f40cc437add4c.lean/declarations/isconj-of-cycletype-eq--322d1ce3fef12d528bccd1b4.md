# isConj_of_cycleType_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:88948804-f0f3-89b2-1528-170a2363d20e",
  "kind": "theorem",
  "lexical_name": "isConj_of_cycleType_eq",
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
  "slug": "isconj-of-cycletype-eq--322d1ce3fef12d528bccd1b4",
  "source": {
    "blob": "af97715d678218318df33e17c0ede8dad02f2b0f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 300,
    "line": 274,
    "path": "GRWTSK/Algebra/GroupTheory/Type/Variant99ae810694815e86e4b44895f39b175b7e29ce02c2c67169b96f40cc437add4c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:322d1ce3fef12d528bccd1b45e8ba459a2aa052d79b455efad995b43cbbcdbe2",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Type/Variant99ae810694815e86e4b44895f39b175b7e29ce02c2c67169b96f40cc437add4c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:88948804-f0f3-89b2-1528-170a2363d20e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 274–300.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isConj_of_cycleType_eq {σ τ : Perm α} (h : cycleType σ = cycleType τ) : IsConj σ τ := by
  induction σ using cycle_induction_on generalizing τ with
  | base_one =>
    rw [cycleType_one, eq_comm, cycleType_eq_zero] at h
    rw [h]
  | base_cycles σ hσ =>
    have hτ := card_cycleType_eq_one.2 hσ
    rw [h, card_cycleType_eq_one] at hτ
    apply hσ.isConj hτ
    rwa [hσ.cycleType, hτ.cycleType, Multiset.singleton_inj] at h
  | induction_disjoint σ π hd hc hσ hπ =>
    rw [hd.cycleType_mul] at h
    have h' : #σ.support ∈ τ.cycleType := by
      simp [← h, hc.cycleType]
    obtain ⟨σ', hσ'l, hσ'⟩ := Multiset.mem_map.mp h'
    have key : IsConj (σ' * τ * σ'⁻¹) τ := (isConj_iff.2 ⟨σ', rfl⟩).symm
    refine IsConj.trans ?_ key
    rw [mul_assoc]
    have hs : σ.cycleType = σ'.cycleType := by
      rw [← Finset.mem_def, mem_cycleFactorsFinset_iff] at hσ'l
      rw [hc.cycleType, ← hσ', hσ'l.left.cycleType]; rfl
    refine hd.isConj_mul (hσ hs) (hπ ?_) ?_
    · rw [cycleType_mul_inv_mem_cycleFactorsFinset_eq_sub, ← h, add_comm, hs,
        add_tsub_cancel_right]
      rwa [Finset.mem_def]
    · exact (disjoint_mul_inv_of_mem_cycleFactorsFinset hσ'l).symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Type/Variant99ae810694815e86e4b44895f39b175b7e29ce02c2c67169b96f40cc437add4c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Type/Variant99ae810694815e86e4b44895f39b175b7e29ce02c2c67169b96f40cc437add4c.lean#L274).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `af97715d678218318df33e17c0ede8dad02f2b0f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
