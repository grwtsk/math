# rawAmplitude

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:032f8572406bef7692b6e282a0fadbab39e56bb9f09752a1d092fc50ea88d880",
  "kind": "def",
  "lexical_name": "rawAmplitude",
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
  "slug": "rawamplitude--d89de5089247b0185c5ef87e",
  "source": {
    "blob": "c5a06acdb4c72e7ff26b5893b012c5501abed36d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 37,
    "line": 33,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/SpectralPacket/Variant3c0ec4423f3cd7ff7a1640e41178a7c729bbd60518a840a9ae1d9cb2e9966b4a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d89de5089247b0185c5ef87e6b34320d1a3f4cb924f2ea48ca22d8b0c01db623",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/SpectralPacket/Variant3c0ec4423f3cd7ff7a1640e41178a7c729bbd60518a840a9ae1d9cb2e9966b4a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:032f8572406bef7692b6e282a0fadbab39e56bb9f09752a1d092fc50ea88d880`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–37.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def rawAmplitude (packet : SpectralPacketData Grid) (index : Grid) : ℝ :=
  Real.exp (-((packet.spectralValue index - packet.center) ^ 2) /
    (2 * packet.width ^ 2))

omit [Fintype Grid] [Nonempty Grid] in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/SpectralPacket/Variant3c0ec4423f3cd7ff7a1640e41178a7c729bbd60518a840a9ae1d9cb2e9966b4a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/SpectralPacket/Variant3c0ec4423f3cd7ff7a1640e41178a7c729bbd60518a840a9ae1d9cb2e9966b4a.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c5a06acdb4c72e7ff26b5893b012c5501abed36d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
