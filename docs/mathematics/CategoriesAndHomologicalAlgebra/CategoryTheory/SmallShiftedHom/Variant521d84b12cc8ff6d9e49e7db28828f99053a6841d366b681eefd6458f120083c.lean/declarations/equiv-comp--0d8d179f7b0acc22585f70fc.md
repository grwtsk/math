# equiv_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "210b81819fbcc85569fdb61efbc5940a002bd4d7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 194,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/52/521d84b12cc8ff6d9e49e7db28828f99053a6841d366b681eefd6458f120083c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b77ad834-380b-7f00-8203-61b9670f2b24",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:55a2a283-6641-78f5-db4b-5dc7043d6fe6",
  "kind": "lemma",
  "lexical_name": "equiv_comp",
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
  "slug": "equiv-comp--0d8d179f7b0acc22585f70fc",
  "source": {
    "blob": "210b81819fbcc85569fdb61efbc5940a002bd4d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 207,
    "line": 194,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SmallShiftedHom/Variant521d84b12cc8ff6d9e49e7db28828f99053a6841d366b681eefd6458f120083c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0d8d179f7b0acc22585f70fc20a0fe749d81bb9393a86fe091c970d6465a80f3",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SmallShiftedHom/Variant521d84b12cc8ff6d9e49e7db28828f99053a6841d366b681eefd6458f120083c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:55a2a283-6641-78f5-db4b-5dc7043d6fe6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 194–207.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma equiv_comp [HasSmallLocalizedShiftedHom.{w} W M X Y]
    [HasSmallLocalizedShiftedHom.{w} W M Y Z] [HasSmallLocalizedShiftedHom.{w} W M X Z]
    [HasSmallLocalizedShiftedHom.{w} W M Z Z] {a b c : M}
    (f : SmallShiftedHom.{w} W X Y a) (g : SmallShiftedHom.{w} W Y Z b) (h : b + a = c) :
    equiv W L (f.comp g h) = (equiv W L f).comp (equiv W L g) h := by
  dsimp [comp, equiv, ShiftedHom.comp]
  erw [Iso.homToEquiv_apply, Iso.homToEquiv_apply, Iso.homToEquiv_apply, SmallHom.equiv_comp]
  simp only [equiv_shift', Functor.comp_obj, Iso.app_hom, assoc, Iso.inv_hom_id_app,
    comp_id, Functor.map_comp]
  rfl

end

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SmallShiftedHom/Variant521d84b12cc8ff6d9e49e7db28828f99053a6841d366b681eefd6458f120083c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SmallShiftedHom/Variant521d84b12cc8ff6d9e49e7db28828f99053a6841d366b681eefd6458f120083c.lean#L194).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `210b81819fbcc85569fdb61efbc5940a002bd4d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
