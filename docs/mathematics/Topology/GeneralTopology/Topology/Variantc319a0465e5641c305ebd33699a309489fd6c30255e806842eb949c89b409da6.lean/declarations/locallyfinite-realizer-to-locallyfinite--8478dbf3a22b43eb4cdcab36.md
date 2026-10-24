# LocallyFinite.Realizer.to_locallyFinite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:99e381f5-dd0b-3d6e-b8a3-2b49020351a2",
  "kind": "theorem",
  "lexical_name": "LocallyFinite.Realizer.to_locallyFinite",
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
  "slug": "locallyfinite-realizer-to-locallyfinite--8478dbf3a22b43eb4cdcab36",
  "source": {
    "blob": "31cc82fe9b3c960d38fe7af3a586fd9f43692d3a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 260,
    "line": 256,
    "path": "GRWTSK/Topology/GeneralTopology/Topology/Variantc319a0465e5641c305ebd33699a309489fd6c30255e806842eb949c89b409da6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8478dbf3a22b43eb4cdcab367bf1c88cb093220ce211d0ec96968f46339699d7",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Topology/Variantc319a0465e5641c305ebd33699a309489fd6c30255e806842eb949c89b409da6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:99e381f5-dd0b-3d6e-b8a3-2b49020351a2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 256–260.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem LocallyFinite.Realizer.to_locallyFinite [TopologicalSpace α] {F : Ctop.Realizer α}
  {f : β → Set α} (R : LocallyFinite.Realizer F f) : LocallyFinite f := fun a ↦
  ⟨_, F.mem_nhds.2 ⟨(R.bas a).1, (R.bas a).2, Subset.refl _⟩, ⟨R.sets a⟩⟩
#align locally_finite.realizer.to_locally_finite LocallyFinite.Realizer.to_locallyFinite

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Topology/Variantc319a0465e5641c305ebd33699a309489fd6c30255e806842eb949c89b409da6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Topology/Variantc319a0465e5641c305ebd33699a309489fd6c30255e806842eb949c89b409da6.lean#L256).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `31cc82fe9b3c960d38fe7af3a586fd9f43692d3a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
