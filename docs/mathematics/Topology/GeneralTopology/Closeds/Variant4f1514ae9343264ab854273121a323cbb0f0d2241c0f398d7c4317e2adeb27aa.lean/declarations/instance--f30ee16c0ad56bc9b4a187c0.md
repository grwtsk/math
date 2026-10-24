# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8a9a5ed893133df08334c04fd5bb64db57c11f366b15f514a93d3c2745e2b44b",
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
  "slug": "instance--f30ee16c0ad56bc9b4a187c0",
  "source": {
    "blob": "02ff56e1bbd12b4113503553480f6178b41fae92",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 347,
    "line": 334,
    "path": "GRWTSK/Topology/GeneralTopology/Closeds/Variant4f1514ae9343264ab854273121a323cbb0f0d2241c0f398d7c4317e2adeb27aa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f30ee16c0ad56bc9b4a187c064a9413b02f7dae8143d47bafdd5a021514d3f0e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Closeds/Variant4f1514ae9343264ab854273121a323cbb0f0d2241c0f398d7c4317e2adeb27aa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8a9a5ed893133df08334c04fd5bb64db57c11f366b15f514a93d3c2745e2b44b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 334–347.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance [CompactSpace α] : CompactSpace (Set α) where
  isCompact_univ := by
    rw [isCompact_iff_ultrafilter_le_nhds]
    rintro f -
    let := TopologicalSpace.vietoris α
    -- `f.lim` is the limit of `f` in the Vietoris topology
    refine ⟨closure f.lim, Set.mem_univ _, ?_⟩
    grw [isClosed_closure.isCompact.nhds_hausdorff_eq_nhds_vietoris,
      ← TopologicalSpace.vietoris.specializes_closure.nhds_le_nhds, f.le_nhds_lim]

end UniformSpace.hausdorff

namespace TopologicalSpace.Closeds

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Closeds/Variant4f1514ae9343264ab854273121a323cbb0f0d2241c0f398d7c4317e2adeb27aa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Closeds/Variant4f1514ae9343264ab854273121a323cbb0f0d2241c0f398d7c4317e2adeb27aa.lean#L334).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `02ff56e1bbd12b4113503553480f6178b41fae92` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
