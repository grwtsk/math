# nhdsNE_infty_neBot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:167b94fd12506a1b0ff736f2e1bafb8d35de98acb9e46e8cb8d9953f3702a064",
  "kind": "instance",
  "lexical_name": "nhdsNE_infty_neBot",
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
  "slug": "nhdsne-infty-nebot--7c629ce7296b15f62b6013bf",
  "source": {
    "blob": "d5f9fb250d6f477448cb9589dbca5563feacfc5c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 328,
    "line": 322,
    "path": "GRWTSK/Topology/GeneralTopology/OnePoint/Variantd239fba9dcce885b84e236aa165efe4a4826c016212b2a0dee35d9a5eb60b936.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7c629ce7296b15f62b6013bf66515a0998c4bae0d946976b2b7d009cb43e9c5d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/OnePoint/Variantd239fba9dcce885b84e236aa165efe4a4826c016212b2a0dee35d9a5eb60b936.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:167b94fd12506a1b0ff736f2e1bafb8d35de98acb9e46e8cb8d9953f3702a064`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 322–328.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance nhdsNE_infty_neBot [NoncompactSpace X] : NeBot (𝓝[≠] (∞ : OnePoint X)) := by
  rw [nhdsNE_infty_eq]
  infer_instance

@[deprecated (since := "2025-03-02")]
alias nhdsWithin_compl_infty_neBot := nhdsNE_infty_neBot

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/OnePoint/Variantd239fba9dcce885b84e236aa165efe4a4826c016212b2a0dee35d9a5eb60b936.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/OnePoint/Variantd239fba9dcce885b84e236aa165efe4a4826c016212b2a0dee35d9a5eb60b936.lean#L322).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d5f9fb250d6f477448cb9589dbca5563feacfc5c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
