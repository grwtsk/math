# lowSimilarityKernel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7a8129a7aa58a7112d9c344ab063ed5293870fb7bc8792426e0bcd9f016a2fee",
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
  "slug": "lowsimilaritykernel--a248acadcb896d7a893019e0",
  "source": {
    "blob": "a7ca12c46ac151a409b8f7e1f58cbe827d7022ce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 94,
    "path": "GRWTSK/Algebra/LinearAlgebra/RhetoricalFormalIntegration/Variante0203ed804703e22039d2442d1f7925f3995a4bb0f8c8793922a0d58f2a274c3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a248acadcb896d7a893019e0ebb58c6af8a01e3c706f3dd2aeeca804d33a6c4c",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/RhetoricalFormalIntegration/Variante0203ed804703e22039d2442d1f7925f3995a4bb0f8c8793922a0d58f2a274c3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7a8129a7aa58a7112d9c344ab063ed5293870fb7bc8792426e0bcd9f016a2fee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev lowSimilarityKernel : PositiveKernel RhetoricalIndex :=
  kroneckerKernel (Index := RhetoricalIndex)

/-- Orthogonal base vectors have exact zero similarity in this fixture. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/RhetoricalFormalIntegration/Variante0203ed804703e22039d2442d1f7925f3995a4bb0f8c8793922a0d58f2a274c3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/RhetoricalFormalIntegration/Variante0203ed804703e22039d2442d1f7925f3995a4bb0f8c8793922a0d58f2a274c3.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a7ca12c46ac151a409b8f7e1f58cbe827d7022ce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
