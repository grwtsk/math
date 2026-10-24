# network_activation_refines_service

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "47cd28fdc2144d8175c3cd3b753c9a7f5ec946c9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 32,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f6/f64636a6832345dda5bac7940b2d7242f949a42a55297c10a0ab6ac7e0ebc521.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7fd241a2-7dbf-cf61-1f43-547759f22fea",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7b2b28c4-88a0-f1ed-cbcd-3e91867cf4ee",
  "kind": "theorem",
  "lexical_name": "network_activation_refines_service",
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
  "slug": "network-activation-refines-service--3240a3bd55bc4b9917da46b1",
  "source": {
    "blob": "47cd28fdc2144d8175c3cd3b753c9a7f5ec946c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 32,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Refinement/Variantf64636a6832345dda5bac7940b2d7242f949a42a55297c10a0ab6ac7e0ebc521.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3240a3bd55bc4b9917da46b1b40a47f17cba715fc5eb9c878337cbf0350d5bc6",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Refinement/Variantf64636a6832345dda5bac7940b2d7242f949a42a55297c10a0ab6ac7e0ebc521.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7b2b28c4-88a0-f1ed-cbcd-3e91867cf4ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem network_activation_refines_service
    (service : ServiceState)
    (candidate : RefreshCandidate)
    (remaining : List RefreshCandidate)
    (decision :
      decideActivation service = .activate candidate remaining) :
    (tryActivate service).status = .activated ∧
      (tryActivate service).state.active = candidate.successor ∧
      (tryActivate service).state.refreshQueue = remaining ∧
      (tryActivate service).state.rasterBit = service.rasterBit ∧
      (tryActivate service).state.seenEvents = service.seenEvents ∧
      (tryActivate service).state.authority = service.authority :=
  successful_activation_is_atomic service candidate remaining decision

/-- Duplicate network delivery has no second service effect. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Refinement/Variantf64636a6832345dda5bac7940b2d7242f949a42a55297c10a0ab6ac7e0ebc521.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Refinement/Variantf64636a6832345dda5bac7940b2d7242f949a42a55297c10a0ab6ac7e0ebc521.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `47cd28fdc2144d8175c3cd3b753c9a7f5ec946c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
