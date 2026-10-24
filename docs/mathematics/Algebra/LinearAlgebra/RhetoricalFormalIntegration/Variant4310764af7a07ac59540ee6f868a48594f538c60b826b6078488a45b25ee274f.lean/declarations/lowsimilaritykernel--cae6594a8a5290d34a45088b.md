# lowSimilarityKernel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3f6119803fd454ee584eed360becc77f372ea76a731c6241278ebc210de35fc0",
  "kind": "abbrev",
  "lexical_name": "lowSimilarityKernel",
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
  "slug": "lowsimilaritykernel--cae6594a8a5290d34a45088b",
  "source": {
    "blob": "cd5731640badabb55113119f2b76df81be5519bc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 86,
    "path": "GRWTSK/Algebra/LinearAlgebra/RhetoricalFormalIntegration/Variant4310764af7a07ac59540ee6f868a48594f538c60b826b6078488a45b25ee274f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cae6594a8a5290d34a45088b6a7af8774b79ee3c2f026928f991c761978c7827",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/RhetoricalFormalIntegration/Variant4310764af7a07ac59540ee6f868a48594f538c60b826b6078488a45b25ee274f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3f6119803fd454ee584eed360becc77f372ea76a731c6241278ebc210de35fc0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev lowSimilarityKernel : PositiveKernel RhetoricalIndex :=
  kroneckerKernel (Index := RhetoricalIndex)

/-- Orthogonal base vectors have exact zero similarity in this fixture. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/RhetoricalFormalIntegration/Variant4310764af7a07ac59540ee6f868a48594f538c60b826b6078488a45b25ee274f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/RhetoricalFormalIntegration/Variant4310764af7a07ac59540ee6f868a48594f538c60b826b6078488a45b25ee274f.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd5731640badabb55113119f2b76df81be5519bc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
