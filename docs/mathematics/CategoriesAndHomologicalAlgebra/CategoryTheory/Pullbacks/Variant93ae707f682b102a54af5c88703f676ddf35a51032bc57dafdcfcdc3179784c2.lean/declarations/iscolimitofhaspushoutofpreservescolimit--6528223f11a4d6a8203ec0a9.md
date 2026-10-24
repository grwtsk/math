# isColimitOfHasPushoutOfPreservesColimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:951151c74b250218e7fe23012d4bf6f2858a98dee8e98328066fb2dc057673a5",
  "kind": "def",
  "lexical_name": "isColimitOfHasPushoutOfPreservesColimit",
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
  "slug": "iscolimitofhaspushoutofpreservescolimit--6528223f11a4d6a8203ec0a9",
  "source": {
    "blob": "03553f923fc40546c1b2cf1f551d034b0f12ea7a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 248,
    "line": 242,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variant93ae707f682b102a54af5c88703f676ddf35a51032bc57dafdcfcdc3179784c2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6528223f11a4d6a8203ec0a9a27451f490bd4fe988a0ef732b2f515d9158a782",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variant93ae707f682b102a54af5c88703f676ddf35a51032bc57dafdcfcdc3179784c2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:951151c74b250218e7fe23012d4bf6f2858a98dee8e98328066fb2dc057673a5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 242–248.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isColimitOfHasPushoutOfPreservesColimit [i : HasPushout f g] :
    IsColimit (PushoutCocone.mk (G.map (pushout.inl _ _)) (G.map (@pushout.inr _ _ _ _ _ f g i))
    (show G.map f ≫ G.map (pushout.inl _ _) = G.map g ≫ G.map (pushout.inr _ _) by
      simp only [← G.map_comp, pushout.condition])) :=
  isColimitPushoutCoconeMapOfIsColimit G _ (pushoutIsPushout f g)

/-- If `F` preserves the pushout of `f, g`, it also preserves the pushout of `g, f`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variant93ae707f682b102a54af5c88703f676ddf35a51032bc57dafdcfcdc3179784c2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variant93ae707f682b102a54af5c88703f676ddf35a51032bc57dafdcfcdc3179784c2.lean#L242).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `03553f923fc40546c1b2cf1f551d034b0f12ea7a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
