# instTopologicalSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:87098787b923dbcadf7e0d8e104e2eec0a1a3ab52c355e145e0909fde0a855fb",
  "kind": "instance",
  "lexical_name": "instTopologicalSpace",
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
  "slug": "insttopologicalspace--aa0634c52ec87e265d33a016",
  "source": {
    "blob": "c2346508557ebdda735a7c1b318d920c3ba73839",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 65,
    "path": "GRWTSK/Topology/GeneralTopology/FrameAdjunction/Variante6bf8c21031aadf721ed0260896fe523ce3c2dd4a695d1295502a99fbedf0552.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:aa0634c52ec87e265d33a016da3a87f8f55416585ffef01cebdfa6c6780cba75",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/FrameAdjunction/Variante6bf8c21031aadf721ed0260896fe523ce3c2dd4a695d1295502a99fbedf0552.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:87098787b923dbcadf7e0d8e104e2eec0a1a3ab52c355e145e0909fde0a855fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instTopologicalSpace : TopologicalSpace (PT L) where
  IsOpen s := ∃ u, {x | x u} = s
  isOpen_univ := ⟨⊤, by simp⟩
  isOpen_inter := by rintro s t ⟨u, rfl⟩ ⟨v, rfl⟩; use u ⊓ v; simp_rw [map_inf]; rfl
  isOpen_sUnion S hS := by
    choose f hf using hS
    use ⨆ t, ⨆ ht, f t ht
    simp_rw [map_iSup, iSup_Prop_eq, setOf_exists, hf, sUnion_eq_biUnion]

/-- Characterization of when a subset of the space of points is open. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/FrameAdjunction/Variante6bf8c21031aadf721ed0260896fe523ce3c2dd4a695d1295502a99fbedf0552.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/FrameAdjunction/Variante6bf8c21031aadf721ed0260896fe523ce3c2dd4a695d1295502a99fbedf0552.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c2346508557ebdda735a7c1b318d920c3ba73839` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
