# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:94d48612b55bb4a809132dc5854ff22bc2922bc4f07859c5055579b574678064",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--8c096518bab9ea5753bf8fb4",
  "source": {
    "blob": "cf2191ec8dcca4ee9d086d594ffbbc28bc578870",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 229,
    "line": 218,
    "path": "GRWTSK/Topology/GeneralTopology/Perfect/Variantd2e1f478097533263e54b77c45228744edace3bb510133ec876ac039e0c80477.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8c096518bab9ea5753bf8fb465739bab2736f90797587b8380d18b60617ae4a4",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Perfect/Variantd2e1f478097533263e54b77c45228744edace3bb510133ec876ac039e0c80477.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:94d48612b55bb4a809132dc5854ff22bc2922bc4f07859c5055579b574678064`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 218–229.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance [T1Space α] [ConnectedSpace α] [Nontrivial α] : PerfectSpace α := by
  constructor
  apply isPreconnected_univ.preperfect_of_nontrivial
  rw [Set.nontrivial_univ_iff]
  infer_instance

end Preperfect

section Kernel

/-- The **Cantor-Bendixson Theorem**: Any closed subset of a second countable space
can be written as the union of a countable set and a perfect set. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Perfect/Variantd2e1f478097533263e54b77c45228744edace3bb510133ec876ac039e0c80477.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Perfect/Variantd2e1f478097533263e54b77c45228744edace3bb510133ec876ac039e0c80477.lean#L218).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cf2191ec8dcca4ee9d086d594ffbbc28bc578870` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
