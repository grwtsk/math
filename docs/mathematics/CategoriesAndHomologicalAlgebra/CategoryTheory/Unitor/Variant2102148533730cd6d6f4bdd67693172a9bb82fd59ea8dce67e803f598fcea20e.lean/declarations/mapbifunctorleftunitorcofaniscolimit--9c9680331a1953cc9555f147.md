# mapBifunctorLeftUnitorCofanIsColimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bca4f6c3afdbc60e0edce0533b345d10780f6edf68f362d3c7cbffcb12b5636b",
  "kind": "def",
  "lexical_name": "mapBifunctorLeftUnitorCofanIsColimit",
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
  "slug": "mapbifunctorleftunitorcofaniscolimit--9c9680331a1953cc9555f147",
  "source": {
    "blob": "2c1c0f32c74e689805edc257606f3a3c2f9500b8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 86,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Unitor/Variant2102148533730cd6d6f4bdd67693172a9bb82fd59ea8dce67e803f598fcea20e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9c9680331a1953cc9555f147e256e802711788a847c0adc438cb952074d2a2b9",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Unitor/Variant2102148533730cd6d6f4bdd67693172a9bb82fd59ea8dce67e803f598fcea20e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bca4f6c3afdbc60e0edce0533b345d10780f6edf68f362d3c7cbffcb12b5636b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def mapBifunctorLeftUnitorCofanIsColimit (j : J) :
    IsColimit (mapBifunctorLeftUnitorCofan F X e p hp Y j) :=
  Cofan.IsColimit.mk _
    (fun s => e.inv.app (Y j) ≫
      (F.map (singleObjApplyIso (0 : I) X).inv).app (Y j) ≫ s.inj ⟨⟨0, j⟩, hp j⟩)
    (fun s => by
      rintro ⟨⟨i, j'⟩, h⟩
      by_cases hi : i = 0
      · subst hi
        simp only [Set.mem_preimage, hp, Set.mem_singleton_iff] at h
        subst h
        simp
      · apply IsInitial.hom_ext
        exact mapBifunctorObjSingle₀ObjIsInitial _ _ _ _ hi)
    (fun s m hm => by simp [← hm ⟨⟨0, j⟩, hp j⟩])

include e hp in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Unitor/Variant2102148533730cd6d6f4bdd67693172a9bb82fd59ea8dce67e803f598fcea20e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Unitor/Variant2102148533730cd6d6f4bdd67693172a9bb82fd59ea8dce67e803f598fcea20e.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2c1c0f32c74e689805edc257606f3a3c2f9500b8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
