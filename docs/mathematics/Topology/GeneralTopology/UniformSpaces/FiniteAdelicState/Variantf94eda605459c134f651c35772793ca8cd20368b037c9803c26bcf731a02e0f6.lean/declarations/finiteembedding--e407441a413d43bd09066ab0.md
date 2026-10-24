# finiteEmbedding

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:339b6dbee16c4004e9e1d206027a6d54a25afe67abf14b200d77c4ffdc3cd10f",
  "kind": "def",
  "lexical_name": "finiteEmbedding",
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
  "slug": "finiteembedding--e407441a413d43bd09066ab0",
  "source": {
    "blob": "fbdb5beca9bfa4992aa8ac8ce9af1d4e398ca806",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 77,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/FiniteAdelicState/Variantf94eda605459c134f651c35772793ca8cd20368b037c9803c26bcf731a02e0f6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e407441a413d43bd09066ab0309eefde4157c87786b9240f99b86b5a8dbc462d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/FiniteAdelicState/Variantf94eda605459c134f651c35772793ca8cd20368b037c9803c26bcf731a02e0f6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:339b6dbee16c4004e9e1d206027a6d54a25afe67abf14b200d77c4ffdc3cd10f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def finiteEmbedding
    (completion : RestrictedAdelicCompletion.{u, v} finiteState) :
    FiniteCarrier → completion.completion.space :=
  completion.completion.coe

/--
The represented point is embedded by the same structural map as every other
finite point; it is not represented by a detached address.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/FiniteAdelicState/Variantf94eda605459c134f651c35772793ca8cd20368b037c9803c26bcf731a02e0f6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/FiniteAdelicState/Variantf94eda605459c134f651c35772793ca8cd20368b037c9803c26bcf731a02e0f6.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fbdb5beca9bfa4992aa8ac8ce9af1d4e398ca806` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
