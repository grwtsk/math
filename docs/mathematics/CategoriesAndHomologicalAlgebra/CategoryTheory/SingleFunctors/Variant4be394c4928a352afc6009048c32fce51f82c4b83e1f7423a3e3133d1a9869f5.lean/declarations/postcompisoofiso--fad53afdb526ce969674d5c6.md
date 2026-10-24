# postcompIsoOfIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e3b798bc421c64b2050c8ca4f7c7de36e806f0a81f80dc693367aba87a0bea56",
  "kind": "def",
  "lexical_name": "postcompIsoOfIso",
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
  "slug": "postcompisoofiso--fad53afdb526ce969674d5c6",
  "source": {
    "blob": "c8240c4ccaf3ed7ac78988a2b46090abe0b696dd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 274,
    "line": 265,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleFunctors/Variant4be394c4928a352afc6009048c32fce51f82c4b83e1f7423a3e3133d1a9869f5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fad53afdb526ce969674d5c654ffb9efc7e2451a2a5e875a8ac744079f41840e",
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

Occurrence: `declaration:e3b798bc421c64b2050c8ca4f7c7de36e806f0a81f80dc693367aba87a0bea56`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 265–274.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def postcompIsoOfIso {G G' : D ⥤ E} (e : G ≅ G') [G.CommShift A] [G'.CommShift A]
    [NatTrans.CommShift e.hom A] :
    F.postcomp G ≅ F.postcomp G' :=
  isoMk (fun a => isoWhiskerLeft (F.functor a) e) (fun n a a' ha' => by
    ext X
    simp [NatTrans.shift_app e.hom n])

end SingleFunctors

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleFunctors/Variant4be394c4928a352afc6009048c32fce51f82c4b83e1f7423a3e3133d1a9869f5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleFunctors/Variant4be394c4928a352afc6009048c32fce51f82c4b83e1f7423a3e3133d1a9869f5.lean#L265).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c8240c4ccaf3ed7ac78988a2b46090abe0b696dd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
