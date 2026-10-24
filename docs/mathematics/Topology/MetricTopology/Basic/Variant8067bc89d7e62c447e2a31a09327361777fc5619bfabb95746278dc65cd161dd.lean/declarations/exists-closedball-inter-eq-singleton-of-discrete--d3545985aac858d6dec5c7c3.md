# exists_closedBall_inter_eq_singleton_of_discrete

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:118c6095-ae55-4821-17e0-3adce49d5921",
  "kind": "theorem",
  "lexical_name": "exists_closedBall_inter_eq_singleton_of_discrete",
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
  "slug": "exists-closedball-inter-eq-singleton-of-discrete--d3545985aac858d6dec5c7c3",
  "source": {
    "blob": "2f2f519ce058863da937de627e501864f1a3664e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 193,
    "line": 186,
    "path": "GRWTSK/Topology/MetricTopology/Basic/Variant8067bc89d7e62c447e2a31a09327361777fc5619bfabb95746278dc65cd161dd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d3545985aac858d6dec5c7c384ba754cc1cdd756bfd5c4192cd685b361a98e1c",
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

Occurrence: `result:118c6095-ae55-4821-17e0-3adce49d5921`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 186–193.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_closedBall_inter_eq_singleton_of_discrete (hs : IsDiscrete s) {x : α} (hx : x ∈ s) :
    ∃ ε > 0, Metric.closedBall x ε ∩ s = {x} :=
  nhds_basis_closedBall.exists_inter_eq_singleton_of_mem_discrete hs hx

end Metric

open Metric

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Basic/Variant8067bc89d7e62c447e2a31a09327361777fc5619bfabb95746278dc65cd161dd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Basic/Variant8067bc89d7e62c447e2a31a09327361777fc5619bfabb95746278dc65cd161dd.lean#L186).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2f2f519ce058863da937de627e501864f1a3664e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
