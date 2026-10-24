# LinearOrderedAddCommGroup.isAddCyclic_iff_nonempty_equiv_int

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:33bf59c6-64ee-1bec-20f0-eb4ab338dc3c",
  "kind": "lemma",
  "lexical_name": "LinearOrderedAddCommGroup.isAddCyclic_iff_nonempty_equiv_int",
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
  "slug": "linearorderedaddcommgroup-isaddcyclic-iff-nonempty-equiv-int--fe09512c82367a7b8ad7412b",
  "source": {
    "blob": "ecf625e54b46b367425daf33ac8da34d2308bc83",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 332,
    "line": 314,
    "path": "GRWTSK/Algebra/GroupTheory/Cyclic/Variant9cafb2941c1c48fec9b28e4fcec489be3cb504484129154d272a10770a4970ff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fe09512c82367a7b8ad7412b0dd6027c0de286277b31b78182b5dbd0b21a2a1b",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Cyclic/Variant9cafb2941c1c48fec9b28e4fcec489be3cb504484129154d272a10770a4970ff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:33bf59c6-64ee-1bec-20f0-eb4ab338dc3c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 314–332.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma LinearOrderedAddCommGroup.isAddCyclic_iff_nonempty_equiv_int {A : Type*}
    [AddCommGroup A] [LinearOrder A] [IsOrderedAddMonoid A] [Nontrivial A] :
    IsAddCyclic A ↔ Nonempty (A ≃+o ℤ) := by
  refine ⟨?_, fun ⟨e⟩ ↦ e.isAddCyclic.mpr inferInstance⟩
  rintro ⟨g, hs⟩
  have h_ne : g ≠ 0 := by
    obtain ⟨a, ha⟩ := exists_ne (0 : A)
    obtain ⟨m, rfl⟩ := hs a
    aesop
  wlog hg' : 0 < g
  · exact this (g := -g) (by simpa using! neg_surjective.comp hs) (by grind) (by grind)
  have hi : (fun n : ℤ ↦ n • g).Injective := injective_zsmul_iff_not_isOfFinAddOrder.mpr
      <| not_isOfFinAddOrder_of_isAddTorsionFree h_ne
  exact ⟨.symm { Equiv.ofBijective _ ⟨hi, hs⟩ with
    map_add' := add_zsmul g
    map_le_map_iff' := zsmul_le_zsmul_iff_left hg' }⟩

/-- A linearly-ordered abelian group is cyclic iff it is isomorphic to `Multiplicative ℤ` as an
ordered monoid. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Cyclic/Variant9cafb2941c1c48fec9b28e4fcec489be3cb504484129154d272a10770a4970ff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Cyclic/Variant9cafb2941c1c48fec9b28e4fcec489be3cb504484129154d272a10770a4970ff.lean#L314).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ecf625e54b46b367425daf33ac8da34d2308bc83` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
