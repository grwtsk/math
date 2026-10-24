# covered_blocks_nodup_disjoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:aad71bcd-b550-e500-87e7-5511d3ba9906",
  "kind": "theorem",
  "lexical_name": "covered_blocks_nodup_disjoint",
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
  "slug": "covered-blocks-nodup-disjoint--44906fb637f636437e295e51",
  "source": {
    "blob": "88fa7ca48ac7fb7d5b3b606006e76a0ac2eb7069",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 43,
    "path": "GRWTSK/Algebra/SourceSchedulingReconstruction/Variantae5982fa666bd790ce41ffc09aa7362ca6e3ac7cd7fecbcd60995819ad067732.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:44906fb637f636437e295e512a2c978b5ba75d82ca1e838e4a54eb9dfedbd98f",
  "verification": {
    "reference": "docs/verification/Algebra/SourceSchedulingReconstruction/Variantae5982fa666bd790ce41ffc09aa7362ca6e3ac7cd7fecbcd60995819ad067732.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aad71bcd-b550-e500-87e7-5511d3ba9906`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem covered_blocks_nodup_disjoint (source : List α) (blocks : List (List α))
    (hcover : blocks.flatten.Perm source) (hsource : source.Nodup) :
    (∀ block ∈ blocks, block.Nodup) ∧ blocks.Pairwise List.Disjoint :=
  List.nodup_flatten.mp (hcover.symm.nodup hsource)

/-- Flattening and summing equals summing complete block readouts, including empty blocks. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/SourceSchedulingReconstruction/Variantae5982fa666bd790ce41ffc09aa7362ca6e3ac7cd7fecbcd60995819ad067732.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/SourceSchedulingReconstruction/Variantae5982fa666bd790ce41ffc09aa7362ca6e3ac7cd7fecbcd60995819ad067732.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `88fa7ca48ac7fb7d5b3b606006e76a0ac2eb7069` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
