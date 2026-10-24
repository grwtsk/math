# discreteTopology_iff_locallyInjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f6c9c335-ffe3-657e-1f26-b75d426c9d62",
  "kind": "theorem",
  "lexical_name": "discreteTopology_iff_locallyInjective",
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
  "slug": "discretetopology-iff-locallyinjective--1f52d9445ccb087c2ff3a96d",
  "source": {
    "blob": "1354addf21a01f90bc7cd0a7e8dc4b50b7c7e520",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 173,
    "line": 167,
    "path": "GRWTSK/Topology/GeneralTopology/SeparatedMap/Variante6473740a66d05d49186dde85e679f9b482d8080fd47a85ffb052fabf8ee9bd7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1f52d9445ccb087c2ff3a96deaeba69a2e6323b3f9bd7ec56e68925167ec6d2e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SeparatedMap/Variante6473740a66d05d49186dde85e679f9b482d8080fd47a85ffb052fabf8ee9bd7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f6c9c335-ffe3-657e-1f26-b75d426c9d62`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 167–173.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem discreteTopology_iff_locallyInjective (y : Y) :
    DiscreteTopology X ↔ IsLocallyInjective fun _ : X ↦ y := by
  rw [discreteTopology_iff_singleton_mem_nhds, isLocallyInjective_iff_nhds]
  refine forall_congr' fun x ↦ ⟨fun h ↦ ⟨{x}, h, Set.injOn_singleton _ _⟩, fun ⟨U, hU, inj⟩ ↦ ?_⟩
  convert hU; ext x'; refine ⟨?_, fun h ↦ inj h (mem_of_mem_nhds hU) rfl⟩
  rintro rfl; exact mem_of_mem_nhds hU

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SeparatedMap/Variante6473740a66d05d49186dde85e679f9b482d8080fd47a85ffb052fabf8ee9bd7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SeparatedMap/Variante6473740a66d05d49186dde85e679f9b482d8080fd47a85ffb052fabf8ee9bd7.lean#L167).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1354addf21a01f90bc7cd0a7e8dc4b50b7c7e520` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
