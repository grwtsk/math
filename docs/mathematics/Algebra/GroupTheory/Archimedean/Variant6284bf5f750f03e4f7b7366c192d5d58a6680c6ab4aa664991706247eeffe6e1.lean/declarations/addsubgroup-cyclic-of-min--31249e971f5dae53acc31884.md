# AddSubgroup.cyclic_of_min

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4d25a3c7-628f-4495-7191-89dbec7b5ed3",
  "kind": "theorem",
  "lexical_name": "AddSubgroup.cyclic_of_min",
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
  "slug": "addsubgroup-cyclic-of-min--31249e971f5dae53acc31884",
  "source": {
    "blob": "ccef7cdf2cd284f25863fda53347efa4bf38d917",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 47,
    "path": "GRWTSK/Algebra/GroupTheory/Archimedean/Variant6284bf5f750f03e4f7b7366c192d5d58a6680c6ab4aa664991706247eeffe6e1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:31249e971f5dae53acc318846f5f8a4bd1a6e55761a7d3a4582e3d8f15fdf8f9",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Archimedean/Variant6284bf5f750f03e4f7b7366c192d5d58a6680c6ab4aa664991706247eeffe6e1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4d25a3c7-628f-4495-7191-89dbec7b5ed3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem AddSubgroup.cyclic_of_min {H : AddSubgroup G} {a : G}
    (ha : IsLeast { g : G | g ∈ H ∧ 0 < g } a) : H = AddSubgroup.closure {a} := by
  obtain ⟨⟨a_in, a_pos⟩, a_min⟩ := ha
  refine' le_antisymm _ (H.closure_le.mpr <| by simp [a_in])
  intro g g_in
  obtain ⟨k, ⟨nonneg, lt⟩, _⟩ := existsUnique_zsmul_near_of_pos' a_pos g
  have h_zero : g - k • a = 0 := by
    by_contra h
    have h : a ≤ g - k • a := by
      refine' a_min ⟨_, _⟩
      · exact AddSubgroup.sub_mem H g_in (AddSubgroup.zsmul_mem H a_in k)
      · exact lt_of_le_of_ne nonneg (Ne.symm h)
    have h' : ¬a ≤ g - k • a := not_le.mpr lt
    contradiction
  simp [sub_eq_zero.mp h_zero, AddSubgroup.mem_closure_singleton]
#align add_subgroup.cyclic_of_min AddSubgroup.cyclic_of_min

/-- If a nontrivial additive subgroup of a linear ordered additive commutative group is disjoint
with the interval `Set.Ioo 0 a` for some positive `a`, then the set of positive elements of this
group admits the least element. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Archimedean/Variant6284bf5f750f03e4f7b7366c192d5d58a6680c6ab4aa664991706247eeffe6e1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Archimedean/Variant6284bf5f750f03e4f7b7366c192d5d58a6680c6ab4aa664991706247eeffe6e1.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ccef7cdf2cd284f25863fda53347efa4bf38d917` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
