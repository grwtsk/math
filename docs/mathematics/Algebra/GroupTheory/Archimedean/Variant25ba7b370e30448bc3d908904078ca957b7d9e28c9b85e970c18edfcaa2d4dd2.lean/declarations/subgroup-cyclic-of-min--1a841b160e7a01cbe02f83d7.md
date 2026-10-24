# Subgroup.cyclic_of_min

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e23a4c88-2bad-1686-99d1-f90513fa2945",
  "kind": "theorem",
  "lexical_name": "Subgroup.cyclic_of_min",
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
  "slug": "subgroup-cyclic-of-min--1a841b160e7a01cbe02f83d7",
  "source": {
    "blob": "a11edc39e181fd45068909d137a20cdb15eba9bc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 52,
    "path": "GRWTSK/Algebra/GroupTheory/Archimedean/Variant25ba7b370e30448bc3d908904078ca957b7d9e28c9b85e970c18edfcaa2d4dd2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1a841b160e7a01cbe02f83d729c570470f3aad5ca32dfa44d9ed9707400a2e51",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Archimedean/Variant25ba7b370e30448bc3d908904078ca957b7d9e28c9b85e970c18edfcaa2d4dd2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e23a4c88-2bad-1686-99d1-f90513fa2945`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Subgroup.cyclic_of_min {H : Subgroup G} {a : G}
    (ha : IsLeast { g : G | g ∈ H ∧ 1 < g } a) : H = closure {a} := by
  obtain ⟨⟨a_in, a_pos⟩, a_min⟩ := ha
  refine le_antisymm ?_ (H.closure_le.mpr <| by simp [a_in])
  intro g g_in
  obtain ⟨k, ⟨nonneg, lt⟩, _⟩ := existsUnique_zpow_near_of_one_lt a_pos g
  have h_zero : g / (a ^ k) = 1 := by
    by_contra h
    have h : a ≤ g / (a ^ k) := by
      refine a_min ⟨?_, ?_⟩
      · exact Subgroup.div_mem H g_in (Subgroup.zpow_mem H a_in k)
      · exact lt_of_le_of_ne (by simpa using nonneg) (Ne.symm h)
    have h' : ¬a ≤ g / (a ^ k) := not_le.mpr (by simpa [zpow_add_one, div_lt_iff_lt_mul'] using lt)
    contradiction
  simp [div_eq_one.mp h_zero, mem_closure_singleton]

/-- If a nontrivial subgroup of a linear ordered commutative group is disjoint
with the interval `Set.Ioo 1 a` for some `1 < a`, then the set of elements greater than 1 of this
group admits the least element. -/
@[to_additive "If a nontrivial additive subgroup of a linear ordered additive commutative group is
disjoint with the interval `Set.Ioo 0 a` for some positive `a`, then the set of positive elements of
this group admits the least element."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Archimedean/Variant25ba7b370e30448bc3d908904078ca957b7d9e28c9b85e970c18edfcaa2d4dd2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Archimedean/Variant25ba7b370e30448bc3d908904078ca957b7d9e28c9b85e970c18edfcaa2d4dd2.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a11edc39e181fd45068909d137a20cdb15eba9bc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
