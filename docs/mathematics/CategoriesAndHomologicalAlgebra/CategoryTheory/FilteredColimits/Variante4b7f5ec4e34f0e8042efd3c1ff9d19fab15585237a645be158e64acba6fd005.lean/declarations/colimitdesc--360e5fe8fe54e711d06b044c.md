# colimitDesc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ae93f2b08efdee34b0ceea31a4e5a8f772ddce8a99e9d2014ec49bfad0e956c3",
  "kind": "def",
  "lexical_name": "colimitDesc",
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
  "slug": "colimitdesc--360e5fe8fe54e711d06b044c",
  "source": {
    "blob": "a054c5f50fbde6e04d0036e5accece2a9ab1a5de",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 178,
    "line": 166,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variante4b7f5ec4e34f0e8042efd3c1ff9d19fab15585237a645be158e64acba6fd005.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:360e5fe8fe54e711d06b044c34f97f52b4cb4d676cf77f5fd049a20a8d40d93c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variante4b7f5ec4e34f0e8042efd3c1ff9d19fab15585237a645be158e64acba6fd005.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ae93f2b08efdee34b0ceea31a4e5a8f772ddce8a99e9d2014ec49bfad0e956c3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 166–178.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def colimitDesc (t : Cocone F) : colimit F ⟶ t.pt :=
  let h := (AddCommGrpCat.FilteredColimits.colimitCoconeIsColimit (F ⋙ forget₂ _ _))
  let f : colimit F →+ t.pt := (h.desc ((forget₂ _ _).mapCocone t)).hom
  have hf {j : J} (x : F.obj j) : f (M.mk _ ⟨j, x⟩) = t.ι.app j x :=
    congr_hom ((forget AddCommGrpCat).congr_map (h.fac ((forget₂ _ _).mapCocone t) j)) x
  ofHom
    { f with
      map_smul' := fun r x => by
        obtain ⟨j, x, rfl⟩ := M.mk_surjective F x
        simp [hf] }

set_option backward.defeqAttrib.useBackward true in
@[reassoc (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variante4b7f5ec4e34f0e8042efd3c1ff9d19fab15585237a645be158e64acba6fd005.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variante4b7f5ec4e34f0e8042efd3c1ff9d19fab15585237a645be158e64acba6fd005.lean#L166).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a054c5f50fbde6e04d0036e5accece2a9ab1a5de` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
