# postcompPostcompIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:58c55f5f5294544be9c584015f7893778de813f37ea02d9a293f191f72c182a8",
  "kind": "def",
  "lexical_name": "postcompPostcompIso",
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
  "slug": "postcomppostcompiso--8dba1b9d130da10e00856538",
  "source": {
    "blob": "c8240c4ccaf3ed7ac78988a2b46090abe0b696dd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 264,
    "line": 256,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleFunctors/Variant4be394c4928a352afc6009048c32fce51f82c4b83e1f7423a3e3133d1a9869f5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8dba1b9d130da10e008565386a24368a120872ce5e7a4cc6e9d7d101d65795b4",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleFunctors/Variant4be394c4928a352afc6009048c32fce51f82c4b83e1f7423a3e3133d1a9869f5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:58c55f5f5294544be9c584015f7893778de813f37ea02d9a293f191f72c182a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 256–264.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def postcompPostcompIso (G : D ⥤ E) (G' : E ⥤ E') [G.CommShift A] [G'.CommShift A] :
    (F.postcomp G).postcomp G' ≅ F.postcomp (G ⋙ G') :=
  isoMk (fun _ => Functor.associator _ _ _) (fun n a a' ha' => by
    ext X
    simp [Functor.commShiftIso_comp_inv_app])

/-- The isomorphism `F.postcomp G ≅ F.postcomp G'` induced by an isomorphism `e : G ≅ G'`
which commutes with the shift. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleFunctors/Variant4be394c4928a352afc6009048c32fce51f82c4b83e1f7423a3e3133d1a9869f5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleFunctors/Variant4be394c4928a352afc6009048c32fce51f82c4b83e1f7423a3e3133d1a9869f5.lean#L256).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c8240c4ccaf3ed7ac78988a2b46090abe0b696dd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
