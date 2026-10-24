# fixingSubgroup_fixedField

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "785413e9073c845e3058211914f7b568a4b81f9d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 222,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/64/64ab39f4f7ee3abaf563c23dbbbb385480a9b6e7223dfc9242d4449d9fac589d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:23945736-6576-6674-9188-92678dc67d71",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b961318c-540a-76f6-e241-e11f9471c0d4",
  "kind": "theorem",
  "lexical_name": "fixingSubgroup_fixedField",
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
  "slug": "fixingsubgroup-fixedfield--24cc1aeb6adb9d94e7cc0e2f",
  "source": {
    "blob": "785413e9073c845e3058211914f7b568a4b81f9d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 235,
    "line": 222,
    "path": "GRWTSK/Algebra/Galois/Variant64ab39f4f7ee3abaf563c23dbbbb385480a9b6e7223dfc9242d4449d9fac589d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:24cc1aeb6adb9d94e7cc0e2f2e3d7cba2bfbf77ed86475c62956d0986963c059",
  "verification": {
    "reference": "docs/verification/Algebra/Galois/Variant64ab39f4f7ee3abaf563c23dbbbb385480a9b6e7223dfc9242d4449d9fac589d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b961318c-540a-76f6-e241-e11f9471c0d4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 222–235.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fixingSubgroup_fixedField [FiniteDimensional F E] : fixingSubgroup (fixedField H) = H := by
  have H_le : H ≤ fixingSubgroup (fixedField H) := (le_iff_le _ _).mp le_rfl
  classical
  suffices Fintype.card H = Fintype.card (fixingSubgroup (fixedField H)) by
    exact SetLike.coe_injective (Set.eq_of_inclusion_surjective
      ((Fintype.bijective_iff_injective_and_card (Set.inclusion H_le)).mpr
        ⟨Set.inclusion_injective H_le, this⟩).2).symm
  apply Fintype.card_congr
  refine' (FixedPoints.toAlgHomEquiv H E).trans _
  refine' (algEquivEquivAlgHom (fixedField H) E).toEquiv.symm.trans _
  exact (fixingSubgroupEquiv (fixedField H)).toEquiv.symm
#align intermediate_field.fixing_subgroup_fixed_field IntermediateField.fixingSubgroup_fixedField

-- Porting note: added `fixedField.smul` for `fixedField.isScalarTower`
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Galois/Variant64ab39f4f7ee3abaf563c23dbbbb385480a9b6e7223dfc9242d4449d9fac589d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Galois/Variant64ab39f4f7ee3abaf563c23dbbbb385480a9b6e7223dfc9242d4449d9fac589d.lean#L222).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `785413e9073c845e3058211914f7b568a4b81f9d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
