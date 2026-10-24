# _root_.GRWTSK.Algebra.GroupTheory.OrbitEqOrDisjoint.Variant1a5e20839c2220b1e9d5deb06cef7ffdcb199250b04521fd0c7d3d8a0101f5c3.AddAction.IsBlock.of_addSubgroup_of_conjugate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:05362346-558f-d6ce-7826-7147505214c5",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Algebra.GroupTheory.OrbitEqOrDisjoint.Variant1a5e20839c2220b1e9d5deb06cef7ffdcb199250b04521fd0c7d3d8a0101f5c3.AddAction.IsBlock.of_addSubgroup_of_conjugate",
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
  "slug": "root-grwtsk-algebra-grouptheory-orbiteqordisjoint-variant1a5e20839c2220b--011a4654ca0939d81d8261e8",
  "source": {
    "blob": "bca0d1f038cd60072528a4a505ef572dad1f7c78",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 395,
    "line": 378,
    "path": "GRWTSK/Algebra/GroupTheory/Blocks/Variantcfbccf611b26e2040bbfd661bd50d20eacec53b2d07ed92f29cf864da9e64bd9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:011a4654ca0939d81d8261e81ac1cf35f3c250f2da1081746ba6d89294a33604",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Blocks/Variantcfbccf611b26e2040bbfd661bd50d20eacec53b2d07ed92f29cf864da9e64bd9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:05362346-558f-d6ce-7826-7147505214c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 378–395.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Algebra.GroupTheory.OrbitEqOrDisjoint.Variant1a5e20839c2220b1e9d5deb06cef7ffdcb199250b04521fd0c7d3d8a0101f5c3.AddAction.IsBlock.of_addSubgroup_of_conjugate
    {G : Type*} [AddGroup G] {X : Type*} [AddAction G X] {B : Set X}
    {H : AddSubgroup G} (hB : AddAction.IsBlock H B) (g : G) :
    AddAction.IsBlock (H.map (AddAut.conj g).toMul.toAddMonoidHom) (g +ᵥ B) := by
  rw [AddAction.isBlock_iff_vadd_eq_or_disjoint]
  intro h'
  obtain ⟨h, hH, hh⟩ := AddSubgroup.mem_map.mp (SetLike.coe_mem h')
  simp only [AddEquiv.coe_toAddMonoidHom, AddAut.conj_apply] at hh
  suffices h' +ᵥ (g +ᵥ B) = g +ᵥ (h +ᵥ B) by
    simp only [this]
    apply (hB.vadd_eq_or_disjoint ⟨h, hH⟩).imp
    · intro hB'; congr
    · exact Set.disjoint_image_of_injective (AddAction.injective g)
  suffices (h' : G) +ᵥ (g +ᵥ B) = g +ᵥ (h +ᵥ B) by
    exact this
  rw [← hh, vadd_vadd, vadd_vadd]
  simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Blocks/Variantcfbccf611b26e2040bbfd661bd50d20eacec53b2d07ed92f29cf864da9e64bd9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Blocks/Variantcfbccf611b26e2040bbfd661bd50d20eacec53b2d07ed92f29cf864da9e64bd9.lean#L378).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bca0d1f038cd60072528a4a505ef572dad1f7c78` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
