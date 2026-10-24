# ofMon_Comon_

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dfd4215200dc0835ccd3b7217799707ace2a1266409796599e3cf8a7fcef2128",
  "kind": "def",
  "lexical_name": "ofMon_Comon_",
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
  "slug": "ofmon-comon--0db88111b229278ceebc54cb",
  "source": {
    "blob": "4ccbff7643ed0e5046c06ea7abfe8dd44e699568",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 140,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bimon/Variantab64aff2a02f9f2da0f3e024cc3cf528a8dddf41b0715de0ed203508b8094db4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0db88111b229278ceebc54cbb40c4804734d6bee837d6dee45574b430d1e156c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Bimon/Variantab64aff2a02f9f2da0f3e024cc3cf528a8dddf41b0715de0ed203508b8094db4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dfd4215200dc0835ccd3b7217799707ace2a1266409796599e3cf8a7fcef2128`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 140–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ofMon_Comon_ : Mon_ (Comon_ C) ⥤ Bimon_ C where
  obj := ofMon_Comon_obj C
  map f :=
  { hom := (Comon_.forget C).mapMon.map f }

/-- The equivalence `Comon_ (Mon_ C) ≌ Mon_ (Comon_ C)` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Bimon/Variantab64aff2a02f9f2da0f3e024cc3cf528a8dddf41b0715de0ed203508b8094db4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bimon/Variantab64aff2a02f9f2da0f3e024cc3cf528a8dddf41b0715de0ed203508b8094db4.lean#L140).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4ccbff7643ed0e5046c06ea7abfe8dd44e699568` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
