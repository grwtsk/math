# isEmbedding_toContinuousMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:842755b4-e50f-bd1e-0484-a9e0bf20e75d",
  "kind": "theorem",
  "lexical_name": "isEmbedding_toContinuousMap",
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
  "slug": "isembedding-tocontinuousmap--2620454a937858a602316b06",
  "source": {
    "blob": "590ae39e7aab26e6d3953f21e6e38a9938ce61dd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 44,
    "path": "GRWTSK/Topology/GeneralTopology/CompactOpen/Variantda77117ea183bc7ce038669a8de437fd647157f9d18c618e6cc2944d3659ec42.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2620454a937858a602316b06880cd8678fab3fc9acc8780f3dac2fb67132eccf",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CompactOpen/Variantda77117ea183bc7ce038669a8de437fd647157f9d18c618e6cc2944d3659ec42.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:842755b4-e50f-bd1e-0484-a9e0bf20e75d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isEmbedding_toContinuousMap :
    IsEmbedding (toContinuousMap : ContinuousMonoidHom A B → C(A, B)) :=
  ⟨isInducing_toContinuousMap A B, toContinuousMap_injective⟩

@[deprecated (since := "2024-10-26")]
alias embedding_toContinuousMap := isEmbedding_toContinuousMap

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CompactOpen/Variantda77117ea183bc7ce038669a8de437fd647157f9d18c618e6cc2944d3659ec42.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CompactOpen/Variantda77117ea183bc7ce038669a8de437fd647157f9d18c618e6cc2944d3659ec42.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `590ae39e7aab26e6d3953f21e6e38a9938ce61dd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
