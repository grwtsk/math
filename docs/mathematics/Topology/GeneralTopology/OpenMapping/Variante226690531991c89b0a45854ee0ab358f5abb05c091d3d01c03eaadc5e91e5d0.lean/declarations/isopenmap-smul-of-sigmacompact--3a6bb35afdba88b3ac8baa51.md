# isOpenMap_smul_of_sigmaCompact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:62bc78bf-34b7-d2b2-8696-e929870811e1",
  "kind": "theorem",
  "lexical_name": "isOpenMap_smul_of_sigmaCompact",
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
  "slug": "isopenmap-smul-of-sigmacompact--3a6bb35afdba88b3ac8baa51",
  "source": {
    "blob": "ad409123b1773bf5505ee735be16adc9ea7320cd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 102,
    "path": "GRWTSK/Topology/GeneralTopology/OpenMapping/Variante226690531991c89b0a45854ee0ab358f5abb05c091d3d01c03eaadc5e91e5d0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3a6bb35afdba88b3ac8baa5126c05f32bae113ad66208458e821d06c5cd64719",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/OpenMapping/Variante226690531991c89b0a45854ee0ab358f5abb05c091d3d01c03eaadc5e91e5d0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:62bc78bf-34b7-d2b2-8696-e929870811e1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isOpenMap_smul_of_sigmaCompact (x : X) : IsOpenMap (fun (g : G) ↦ g • x) := by
  /- We have already proved the theorem around the basepoint of the orbit, in
  `smul_singleton_mem_nhds_of_sigmaCompact`. The general statement follows around an arbitrary
  point by changing basepoints. -/
  simp_rw [isOpenMap_iff_nhds_le, Filter.le_map_iff]
  intro g U hU
  have : (· • x) = (· • (g • x)) ∘ (· * g⁻¹) := by
    ext g
    simp [smul_smul]
  rw [this, image_comp, ← smul_singleton]
  apply smul_singleton_mem_nhds_of_sigmaCompact
  simpa using isOpenMap_mul_right g⁻¹ |>.image_mem_nhds hU

/-- A surjective morphism of topological groups is open when the source group is sigma-compact and
the target group is a Baire space (for instance a locally compact group). -/
@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/OpenMapping/Variante226690531991c89b0a45854ee0ab358f5abb05c091d3d01c03eaadc5e91e5d0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/OpenMapping/Variante226690531991c89b0a45854ee0ab358f5abb05c091d3d01c03eaadc5e91e5d0.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ad409123b1773bf5505ee735be16adc9ea7320cd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
