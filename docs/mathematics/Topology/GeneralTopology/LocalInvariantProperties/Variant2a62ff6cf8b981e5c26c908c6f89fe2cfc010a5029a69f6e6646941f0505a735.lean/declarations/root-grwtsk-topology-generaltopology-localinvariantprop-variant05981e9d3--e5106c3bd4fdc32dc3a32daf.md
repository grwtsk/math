# _root_.GRWTSK.Topology.GeneralTopology.LocalInvariantProp.Variant05981e9d35cb27c57a4aaae8316a4b0680d209fe049523eca918d04d8027062b.OpenPartialHomeomorph.isLocalStructomorphWithinAt_source_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fbcf92e4-f27e-8e87-bee8-98f3bb6d1e46",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Topology.GeneralTopology.LocalInvariantProp.Variant05981e9d35cb27c57a4aaae8316a4b0680d209fe049523eca918d04d8027062b.OpenPartialHomeomorph.isLocalStructomorphWithinAt_source_iff",
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
  "slug": "root-grwtsk-topology-generaltopology-localinvariantprop-variant05981e9d3--e5106c3bd4fdc32dc3a32daf",
  "source": {
    "blob": "f5331c9ae9bf2531410ac53149121976f8da9d41",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 688,
    "line": 677,
    "path": "GRWTSK/Topology/GeneralTopology/LocalInvariantProperties/Variant2a62ff6cf8b981e5c26c908c6f89fe2cfc010a5029a69f6e6646941f0505a735.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e5106c3bd4fdc32dc3a32daf39441496785184e43b447c0e6deed8b5c6d2a766",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LocalInvariantProperties/Variant2a62ff6cf8b981e5c26c908c6f89fe2cfc010a5029a69f6e6646941f0505a735.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fbcf92e4-f27e-8e87-bee8-98f3bb6d1e46`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 677–688.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Topology.GeneralTopology.LocalInvariantProp.Variant05981e9d35cb27c57a4aaae8316a4b0680d209fe049523eca918d04d8027062b.OpenPartialHomeomorph.isLocalStructomorphWithinAt_source_iff
    {G : StructureGroupoid H} [ClosedUnderRestriction G] (f : OpenPartialHomeomorph H H) {x : H} :
    G.IsLocalStructomorphWithinAt (⇑f) f.source x ↔
      x ∈ f.source → ∃ e : OpenPartialHomeomorph H H,
      e ∈ G ∧ e.source ⊆ f.source ∧ EqOn f (⇑e) e.source ∧ x ∈ e.source :=
  haveI : x ∈ f.source ∪ f.sourceᶜ := by simp_rw [union_compl_self, mem_univ]
  f.isLocalStructomorphWithinAt_iff' Subset.rfl this

variable {H₁ : Type*} [TopologicalSpace H₁] {H₂ : Type*} [TopologicalSpace H₂] {H₃ : Type*}
  [TopologicalSpace H₃] [ChartedSpace H₁ H₂] [ChartedSpace H₂ H₃] {G₁ : StructureGroupoid H₁}
  [HasGroupoid H₂ G₁] [ClosedUnderRestriction G₁] (G₂ : StructureGroupoid H₂) [HasGroupoid H₃ G₂]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LocalInvariantProperties/Variant2a62ff6cf8b981e5c26c908c6f89fe2cfc010a5029a69f6e6646941f0505a735.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LocalInvariantProperties/Variant2a62ff6cf8b981e5c26c908c6f89fe2cfc010a5029a69f6e6646941f0505a735.lean#L677).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f5331c9ae9bf2531410ac53149121976f8da9d41` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
