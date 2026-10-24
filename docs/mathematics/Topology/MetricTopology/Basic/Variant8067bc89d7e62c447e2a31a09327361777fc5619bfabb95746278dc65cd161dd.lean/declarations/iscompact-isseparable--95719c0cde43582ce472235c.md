# IsCompact.isSeparable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:821a7bf0-5613-715e-f341-cda103323774",
  "kind": "theorem",
  "lexical_name": "IsCompact.isSeparable",
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
  "slug": "iscompact-isseparable--95719c0cde43582ce472235c",
  "source": {
    "blob": "2f2f519ce058863da937de627e501864f1a3664e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 252,
    "line": 242,
    "path": "GRWTSK/Topology/MetricTopology/Basic/Variant8067bc89d7e62c447e2a31a09327361777fc5619bfabb95746278dc65cd161dd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:95719c0cde43582ce472235c679d6c647ed36abb67af75242b198b9523a783d1",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Basic/Variant8067bc89d7e62c447e2a31a09327361777fc5619bfabb95746278dc65cd161dd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:821a7bf0-5613-715e-f341-cda103323774`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 242–252.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsCompact.isSeparable {α : Type*} [TopologicalSpace α] [PseudoMetrizableSpace α]
    {s : Set α} (hs : IsCompact s) : IsSeparable s :=
  haveI : CompactSpace s := isCompact_iff_compactSpace.mp hs
  .of_subtype s

namespace Metric

section SecondCountable

/-- A pseudometric space is second countable if, for every `ε > 0`, there is a countable set which
is `ε`-dense. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Basic/Variant8067bc89d7e62c447e2a31a09327361777fc5619bfabb95746278dc65cd161dd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Basic/Variant8067bc89d7e62c447e2a31a09327361777fc5619bfabb95746278dc65cd161dd.lean#L242).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2f2f519ce058863da937de627e501864f1a3664e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
