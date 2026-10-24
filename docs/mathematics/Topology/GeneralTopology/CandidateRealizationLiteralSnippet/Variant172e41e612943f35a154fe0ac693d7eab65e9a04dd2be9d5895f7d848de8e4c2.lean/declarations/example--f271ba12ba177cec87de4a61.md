# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4f5ee4b96bf7df3dc14c22238bd86090b431403f847d7a5a40eaa3c66cb435ea",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--f271ba12ba177cec87de4a61",
  "source": {
    "blob": "6aef39c1a26c953b4cccbcfc45317a9f29eb0514",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 34,
    "line": 32,
    "path": "GRWTSK/Topology/GeneralTopology/CandidateRealizationLiteralSnippet/Variant172e41e612943f35a154fe0ac693d7eab65e9a04dd2be9d5895f7d848de8e4c2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f271ba12ba177cec87de4a6180c77ac640998667314798f25cba6870cf7394a9",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CandidateRealizationLiteralSnippet/Variant172e41e612943f35a154fe0ac693d7eab65e9a04dd2be9d5895f7d848de8e4c2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4f5ee4b96bf7df3dc14c22238bd86090b431403f847d7a5a40eaa3c66cb435ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–34.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example : fullBoundaryVector X hX ε h hε hh hh1 =ᵐ[volume]
    boundaryInverse (candidate X ε h) := fullBoundaryVector_ae X hX ε h hε hh hh1

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CandidateRealizationLiteralSnippet/Variant172e41e612943f35a154fe0ac693d7eab65e9a04dd2be9d5895f7d848de8e4c2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CandidateRealizationLiteralSnippet/Variant172e41e612943f35a154fe0ac693d7eab65e9a04dd2be9d5895f7d848de8e4c2.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6aef39c1a26c953b4cccbcfc45317a9f29eb0514` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
