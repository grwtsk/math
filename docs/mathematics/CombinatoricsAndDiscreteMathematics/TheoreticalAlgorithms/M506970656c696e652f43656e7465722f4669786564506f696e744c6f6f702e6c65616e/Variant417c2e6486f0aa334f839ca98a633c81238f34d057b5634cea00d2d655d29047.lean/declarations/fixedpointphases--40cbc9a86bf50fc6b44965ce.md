# fixedPointPhases

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e97cfb6a2675b8bc071dd49b27baa5927b3faa3a3b1a7a87966c75f1d83a2143",
  "kind": "def",
  "lexical_name": "fixedPointPhases",
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
  "slug": "fixedpointphases--40cbc9a86bf50fc6b44965ce",
  "source": {
    "blob": "c203c98291612359d115d7a4ea8611fc09e5c818",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 19,
    "line": 10,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M506970656c696e652f43656e7465722f4669786564506f696e744c6f6f702e6c65616e/Variant417c2e6486f0aa334f839ca98a633c81238f34d057b5634cea00d2d655d29047.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:40cbc9a86bf50fc6b44965cef350340399966f500ad8d0b7cbd2c7ba8e385565",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M506970656c696e652f43656e7465722f4669786564506f696e744c6f6f702e6c65616e/Variant417c2e6486f0aa334f839ca98a633c81238f34d057b5634cea00d2d655d29047.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e97cfb6a2675b8bc071dd49b27baa5927b3faa3a3b1a7a87966c75f1d83a2143`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 10–19.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def fixedPointPhases : List Think.PhaseId := [
  FWR.Pipeline.CenterWeighted.Phase.residueExtraction,
  FWR.Pipeline.CenterWeighted.Phase.residueContainment,
  FWR.Pipeline.CenterWeighted.Phase.cleanProjection,
  FWR.Pipeline.CenterWeighted.Phase.reverseSectionReplay,
  FWR.Pipeline.CenterWeighted.Phase.forwardReplay,
  FWR.Pipeline.CenterWeighted.Phase.fixedPointComparison,
  FWR.Pipeline.CenterWeighted.Phase.boundaryReport
]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M506970656c696e652f43656e7465722f4669786564506f696e744c6f6f702e6c65616e/Variant417c2e6486f0aa334f839ca98a633c81238f34d057b5634cea00d2d655d29047.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M506970656c696e652f43656e7465722f4669786564506f696e744c6f6f702e6c65616e/Variant417c2e6486f0aa334f839ca98a633c81238f34d057b5634cea00d2d655d29047.lean#L10).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c203c98291612359d115d7a4ea8611fc09e5c818` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
