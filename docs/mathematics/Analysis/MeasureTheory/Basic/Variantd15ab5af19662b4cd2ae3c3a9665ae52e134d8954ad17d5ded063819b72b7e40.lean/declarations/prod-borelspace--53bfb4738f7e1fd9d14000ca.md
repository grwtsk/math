# Prod.borelSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1618fb96ad9bb86c16e29a5573780047ea2a9b3fe4fa4ca45a0ce151bb6e981a",
  "kind": "instance",
  "lexical_name": "Prod.borelSpace",
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
  "slug": "prod-borelspace--53bfb4738f7e1fd9d14000ca",
  "source": {
    "blob": "7c7da67bdb2729e65b1245a11c800f945ee6214e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 662,
    "line": 657,
    "path": "GRWTSK/Analysis/MeasureTheory/Basic/Variantd15ab5af19662b4cd2ae3c3a9665ae52e134d8954ad17d5ded063819b72b7e40.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:53bfb4738f7e1fd9d14000ca9c882f40fce64a41c73c2efc30b1c8930391dcd6",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Basic/Variantd15ab5af19662b4cd2ae3c3a9665ae52e134d8954ad17d5ded063819b72b7e40.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1618fb96ad9bb86c16e29a5573780047ea2a9b3fe4fa4ca45a0ce151bb6e981a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 657–662.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Prod.borelSpace [SecondCountableTopologyEither α β] :
    BorelSpace (α × β) :=
  ⟨le_antisymm prod_le_borel_prod OpensMeasurableSpace.borel_le⟩

/-- Given a measurable embedding to a Borel space which is also a topological embedding, then the
source space is also a Borel space. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Basic/Variantd15ab5af19662b4cd2ae3c3a9665ae52e134d8954ad17d5ded063819b72b7e40.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Basic/Variantd15ab5af19662b4cd2ae3c3a9665ae52e134d8954ad17d5ded063819b72b7e40.lean#L657).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7c7da67bdb2729e65b1245a11c800f945ee6214e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
