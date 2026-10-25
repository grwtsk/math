# PositiveAmplitude.transport

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5650598a8d3978377cd32845d2fc209bf4e4a5b86ed68df127adae329f2a9c97",
  "kind": "def",
  "lexical_name": "PositiveAmplitude.transport",
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
  "slug": "positiveamplitude-transport--1113fda60cf4415eff85450b",
  "source": {
    "blob": "76d93b9ed8565b2b2900e44ef6536ff1a1403372",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 60,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AmplitudeTransport/Variant61dbfe87fcdcd44e333e6fd40c22e0ba870c155d1f67138dfe87d24811fc9364.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1113fda60cf4415eff85450b3b09d92d75d2f9dfb3c654827da1e2e098bca8a1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AmplitudeTransport/Variant61dbfe87fcdcd44e333e6fd40c22e0ba870c155d1f67138dfe87d24811fc9364.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5650598a8d3978377cd32845d2fc209bf4e4a5b86ed68df127adae329f2a9c97`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def PositiveAmplitude.transport
    {graph : GraphCut}
    {source target : graph.Node}
    (amplitude : PositiveAmplitude)
    (transport :
      PositiveAmplitudeTransport graph)
    (path :
      DeflectionPath graph source target) :
    PositiveAmplitude where
  value :=
    path.amplitudeWeight transport *
      amplitude.value
  positive :=
    mul_pos
      (path.amplitudeWeight_positive transport)
      amplitude.positive

end Mathematics.SemiLocalDefect.ResidueDeflection
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AmplitudeTransport/Variant61dbfe87fcdcd44e333e6fd40c22e0ba870c155d1f67138dfe87d24811fc9364.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AmplitudeTransport/Variant61dbfe87fcdcd44e333e6fd40c22e0ba870c155d1f67138dfe87d24811fc9364.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `76d93b9ed8565b2b2900e44ef6536ff1a1403372` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
