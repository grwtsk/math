# Pregroupoid.groupoid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4113459a7932a7707c570a22ad4ed5323bd631c3c6f065e3d485c391a42b5d67",
  "kind": "def",
  "lexical_name": "Pregroupoid.groupoid",
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
  "slug": "pregroupoid-groupoid--fd96c9e8f12fb00d3b65a4ec",
  "source": {
    "blob": "abd81ea31de08f385703acb1d45d7dc424966258",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 407,
    "line": 369,
    "path": "GRWTSK/Topology/GeneralTopology/ChartedSpace/Variantfa26c5b9ef653120f7791f59e04cf4d069f62974cf7252b32937bfe3ca37840b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fd96c9e8f12fb00d3b65a4ecdf62dd17d0c9ea7d2fcc5314519057aa6cf9abd8",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ChartedSpace/Variantfa26c5b9ef653120f7791f59e04cf4d069f62974cf7252b32937bfe3ca37840b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4113459a7932a7707c570a22ad4ed5323bd631c3c6f065e3d485c391a42b5d67`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 369–407.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Pregroupoid.groupoid (PG : Pregroupoid H) : StructureGroupoid H where
  members := { e : PartialHomeomorph H H | PG.property e e.source ∧ PG.property e.symm e.target }
  trans' e e' he he' := by
    constructor
    · apply PG.comp he.1 he'.1 e.open_source e'.open_source
      apply e.continuousOn_toFun.isOpen_inter_preimage e.open_source e'.open_source
    · apply PG.comp he'.2 he.2 e'.open_target e.open_target
      apply e'.continuousOn_invFun.isOpen_inter_preimage e'.open_target e.open_target
  symm' _ he := ⟨he.2, he.1⟩
  id_mem' := ⟨PG.id_mem, PG.id_mem⟩
  locality' e he := by
    constructor
    · refine PG.locality e.open_source fun x xu ↦ ?_
      rcases he x xu with ⟨s, s_open, xs, hs⟩
      refine ⟨s, s_open, xs, ?_⟩
      convert hs.1 using 1
      dsimp [PartialHomeomorph.restr]
      rw [s_open.interior_eq]
    · refine PG.locality e.open_target fun x xu ↦ ?_
      rcases he (e.symm x) (e.map_target xu) with ⟨s, s_open, xs, hs⟩
      refine ⟨e.target ∩ e.symm ⁻¹' s, ?_, ⟨xu, xs⟩, ?_⟩
      · exact ContinuousOn.isOpen_inter_preimage e.continuousOn_invFun e.open_target s_open
      · rw [← inter_assoc, inter_self]
        convert hs.2 using 1
        dsimp [PartialHomeomorph.restr]
        rw [s_open.interior_eq]
  mem_of_eqOnSource' e e' he ee' := by
    constructor
    · apply PG.congr e'.open_source ee'.2
      simp only [ee'.1, he.1]
    · have A := EqOnSource.symm' ee'
      apply PG.congr e'.symm.open_source A.2
      -- Porting note: was
      -- convert he.2
      -- rw [A.1]
      -- rfl
      rw [A.1, symm_toPartialEquiv, PartialEquiv.symm_source]
      exact he.2

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ChartedSpace/Variantfa26c5b9ef653120f7791f59e04cf4d069f62974cf7252b32937bfe3ca37840b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ChartedSpace/Variantfa26c5b9ef653120f7791f59e04cf4d069f62974cf7252b32937bfe3ca37840b.lean#L369).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `abd81ea31de08f385703acb1d45d7dc424966258` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
