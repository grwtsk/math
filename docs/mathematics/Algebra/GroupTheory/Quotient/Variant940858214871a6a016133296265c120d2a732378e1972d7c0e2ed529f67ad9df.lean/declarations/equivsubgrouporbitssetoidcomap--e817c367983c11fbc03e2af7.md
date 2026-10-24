# equivSubgroupOrbitsSetoidComap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3c2f91d527f05fc9cba3b6af583f82dde3a181d92dee8ae50aced83e024469ad",
  "kind": "def",
  "lexical_name": "equivSubgroupOrbitsSetoidComap",
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
  "slug": "equivsubgrouporbitssetoidcomap--e817c367983c11fbc03e2af7",
  "source": {
    "blob": "6392262fb9f727f48726cba67bde4e46dcbc3248",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 354,
    "line": 323,
    "path": "GRWTSK/Algebra/GroupTheory/Quotient/Variant940858214871a6a016133296265c120d2a732378e1972d7c0e2ed529f67ad9df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e817c367983c11fbc03e2af7bb344a770b75671c2ff978e7f9555d9e504436f9",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Quotient/Variant940858214871a6a016133296265c120d2a732378e1972d7c0e2ed529f67ad9df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3c2f91d527f05fc9cba3b6af583f82dde3a181d92dee8ae50aced83e024469ad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 323–354.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def equivSubgroupOrbitsSetoidComap (H : Subgroup α) (ω : Ω) :
    orbitRel.Quotient H (orbitRel.Quotient.orbit ω) ≃
      Quotient ((orbitRel H β).comap (Subtype.val : Quotient.mk (orbitRel α β) ⁻¹' {ω} → β)) where
  toFun := fun q ↦ q.liftOn' (fun x ↦ ⟦⟨↑x, by
    simp only [Set.mem_preimage, Set.mem_singleton_iff]
    have hx := x.property
    rwa [orbitRel.Quotient.mem_orbit] at hx⟩⟧) fun a b h ↦ by
      simp only [← Quotient.eq, orbitRel.Quotient.subgroup_quotient_eq_iff] at h
      simp only [Quotient.eq] at h ⊢
      exact h
  invFun := fun q ↦ q.liftOn' (fun x ↦ ⟦⟨↑x, by
    have hx := x.property
    simp only [Set.mem_preimage, Set.mem_singleton_iff] at hx
    rwa [orbitRel.Quotient.mem_orbit, @Quotient.mk''_eq_mk]⟩⟧) fun a b h ↦ by
      rw [Setoid.comap_rel, ← Quotient.eq'', @Quotient.mk''_eq_mk] at h
      simp only [orbitRel.Quotient.subgroup_quotient_eq_iff]
      exact h
  left_inv := by
    simp only [LeftInverse]
    intro q
    induction q using Quotient.inductionOn'
    rfl
  right_inv := by
    simp only [Function.RightInverse, LeftInverse]
    intro q
    induction q using Quotient.inductionOn'
    rfl

/-- A bijection between the orbits under the action of a subgroup `H` on `β`, and the orbits
under the action of `H` on each orbit under the action of `G`. -/
@[to_additive "A bijection between the orbits under the action of an additive subgroup `H` on `β`,
and the orbits under the action of `H` on each orbit under the action of `G`."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Quotient/Variant940858214871a6a016133296265c120d2a732378e1972d7c0e2ed529f67ad9df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Quotient/Variant940858214871a6a016133296265c120d2a732378e1972d7c0e2ed529f67ad9df.lean#L323).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6392262fb9f727f48726cba67bde4e46dcbc3248` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
