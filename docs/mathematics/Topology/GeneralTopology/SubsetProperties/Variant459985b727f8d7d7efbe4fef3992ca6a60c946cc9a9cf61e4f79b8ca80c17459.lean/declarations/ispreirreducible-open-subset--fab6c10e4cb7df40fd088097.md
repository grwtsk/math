# IsPreirreducible.open_subset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e52814ff071f39927c50c6b77ea81c348738f4dd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1992,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/45/459985b727f8d7d7efbe4fef3992ca6a60c946cc9a9cf61e4f79b8ca80c17459.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:52e075b3-a414-a88f-c8b1-bc74a41e1b51",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bebc0f44-399d-f6eb-23ab-c60250ecda01",
  "kind": "theorem",
  "lexical_name": "IsPreirreducible.open_subset",
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
  "slug": "ispreirreducible-open-subset--fab6c10e4cb7df40fd088097",
  "source": {
    "blob": "e52814ff071f39927c50c6b77ea81c348738f4dd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1997,
    "line": 1992,
    "path": "GRWTSK/Topology/GeneralTopology/SubsetProperties/Variant459985b727f8d7d7efbe4fef3992ca6a60c946cc9a9cf61e4f79b8ca80c17459.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fab6c10e4cb7df40fd088097cf110c8a524beac79535a2cbba96a2eae561175e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SubsetProperties/Variant459985b727f8d7d7efbe4fef3992ca6a60c946cc9a9cf61e4f79b8ca80c17459.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bebc0f44-399d-f6eb-23ab-c60250ecda01`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1992–1997.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsPreirreducible.open_subset {Z U : Set α} (hZ : IsPreirreducible Z) (hU : IsOpen U)
    (hU' : U ⊆ Z) : IsPreirreducible U :=
  U.eq_empty_or_nonempty.elim (fun h => h.symm ▸ isPreirreducible_empty) fun h =>
    (hZ.subset_irreducible h hU (fun _ => id) hU').2
#align is_preirreducible.open_subset IsPreirreducible.open_subset

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SubsetProperties/Variant459985b727f8d7d7efbe4fef3992ca6a60c946cc9a9cf61e4f79b8ca80c17459.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SubsetProperties/Variant459985b727f8d7d7efbe4fef3992ca6a60c946cc9a9cf61e4f79b8ca80c17459.lean#L1992).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e52814ff071f39927c50c6b77ea81c348738f4dd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
