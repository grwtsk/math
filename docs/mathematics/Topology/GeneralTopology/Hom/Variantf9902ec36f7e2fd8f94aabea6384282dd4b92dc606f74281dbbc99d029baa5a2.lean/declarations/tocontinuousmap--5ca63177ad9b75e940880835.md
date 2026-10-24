# toContinuousMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:707b9a9b4ea90a0c0f45d20d967269f8a7f62c83c25ecb0b82d316aa6da5b819",
  "kind": "def",
  "lexical_name": "toContinuousMap",
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
  "slug": "tocontinuousmap--5ca63177ad9b75e940880835",
  "source": {
    "blob": "3c1466d21f02cfda3d84dcf6305c33168bef33d0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 108,
    "path": "GRWTSK/Topology/GeneralTopology/Hom/Variantf9902ec36f7e2fd8f94aabea6384282dd4b92dc606f74281dbbc99d029baa5a2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5ca63177ad9b75e9408808352eecd41ede39f0a8fc58866ea55534b0d6c213c1",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Hom/Variantf9902ec36f7e2fd8f94aabea6384282dd4b92dc606f74281dbbc99d029baa5a2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:707b9a9b4ea90a0c0f45d20d967269f8a7f62c83c25ecb0b82d316aa6da5b819`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toContinuousMap (f : SpectralMap α β) : ContinuousMap α β :=
  ⟨_, f.spectral'.continuous⟩
#align spectral_map.to_continuous_map SpectralMap.toContinuousMap

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Hom/Variantf9902ec36f7e2fd8f94aabea6384282dd4b92dc606f74281dbbc99d029baa5a2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Hom/Variantf9902ec36f7e2fd8f94aabea6384282dd4b92dc606f74281dbbc99d029baa5a2.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3c1466d21f02cfda3d84dcf6305c33168bef33d0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
