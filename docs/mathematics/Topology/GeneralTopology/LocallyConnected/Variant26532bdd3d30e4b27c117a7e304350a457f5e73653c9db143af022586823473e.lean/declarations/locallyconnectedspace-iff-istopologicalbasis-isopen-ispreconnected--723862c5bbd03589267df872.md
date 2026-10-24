# locallyConnectedSpace_iff_isTopologicalBasis_isOpen_isPreconnected

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5aee3b73-20db-63ab-99a0-993aa18aa74b",
  "kind": "theorem",
  "lexical_name": "locallyConnectedSpace_iff_isTopologicalBasis_isOpen_isPreconnected",
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
  "slug": "locallyconnectedspace-iff-istopologicalbasis-isopen-ispreconnected--723862c5bbd03589267df872",
  "source": {
    "blob": "a3aa777c0ad45710068f358fd6b6906337d28efc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 143,
    "path": "GRWTSK/Topology/GeneralTopology/LocallyConnected/Variant26532bdd3d30e4b27c117a7e304350a457f5e73653c9db143af022586823473e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:723862c5bbd03589267df872365017c27eeee7e49d3cb92a008175684e7295dc",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LocallyConnected/Variant26532bdd3d30e4b27c117a7e304350a457f5e73653c9db143af022586823473e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5aee3b73-20db-63ab-99a0-993aa18aa74b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem locallyConnectedSpace_iff_isTopologicalBasis_isOpen_isPreconnected :
    LocallyConnectedSpace α ↔
      TopologicalSpace.IsTopologicalBasis {s : Set α | IsOpen s ∧ IsPreconnected s} where
  mp _ := .isOpen_isPreconnected
  mpr h := ⟨fun _ => h.nhds_hasBasis.congr (by grind [IsConnected, Set.Nonempty]) (fun _ _ => rfl)⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LocallyConnected/Variant26532bdd3d30e4b27c117a7e304350a457f5e73653c9db143af022586823473e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LocallyConnected/Variant26532bdd3d30e4b27c117a7e304350a457f5e73653c9db143af022586823473e.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a3aa777c0ad45710068f358fd6b6906337d28efc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
