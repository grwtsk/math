# of_hasPullback

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2e12a54f-32a7-4e64-8683-f02491bf6349",
  "kind": "theorem",
  "lexical_name": "of_hasPullback",
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
  "slug": "of-haspullback--df761c5333986d2b63c2e133",
  "source": {
    "blob": "81ee2692793fc4480da730ceddae3eb654b7daa7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 257,
    "line": 251,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CommSq/Variantf6be991b82ed88c8b54cc3f5a4c0a4b6339ab97cf756050b4245bee41a84ba50.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:df761c5333986d2b63c2e133db0062691a5226ac70ec496d6ecbbbe3ab639cbc",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CommSq/Variantf6be991b82ed88c8b54cc3f5a4c0a4b6339ab97cf756050b4245bee41a84ba50.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2e12a54f-32a7-4e64-8683-f02491bf6349`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 251–257.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem of_hasPullback (f : X ⟶ Z) (g : Y ⟶ Z) [HasPullback f g] :
    IsPullback (pullback.fst f g) (pullback.snd f g) f g :=
  of_isLimit (limit.isLimit (cospan f g))

/-- If `c` is a limiting binary product cone, and we have a terminal object,
then we have `IsPullback c.fst c.snd 0 0`
(where each `0` is the unique morphism to the terminal object). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CommSq/Variantf6be991b82ed88c8b54cc3f5a4c0a4b6339ab97cf756050b4245bee41a84ba50.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CommSq/Variantf6be991b82ed88c8b54cc3f5a4c0a4b6339ab97cf756050b4245bee41a84ba50.lean#L251).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `81ee2692793fc4480da730ceddae3eb654b7daa7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
