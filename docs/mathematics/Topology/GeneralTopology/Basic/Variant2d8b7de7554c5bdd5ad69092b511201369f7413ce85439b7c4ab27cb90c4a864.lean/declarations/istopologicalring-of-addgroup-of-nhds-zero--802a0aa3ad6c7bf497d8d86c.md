# IsTopologicalRing.of_addGroup_of_nhds_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b02c7216-b504-cb05-f2b6-c29faba6bce0",
  "kind": "theorem",
  "lexical_name": "IsTopologicalRing.of_addGroup_of_nhds_zero",
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
  "slug": "istopologicalring-of-addgroup-of-nhds-zero--802a0aa3ad6c7bf497d8d86c",
  "source": {
    "blob": "b381e3e7d7e0ce805971183c733e534f797f5311",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 264,
    "line": 257,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant2d8b7de7554c5bdd5ad69092b511201369f7413ce85439b7c4ab27cb90c4a864.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:802a0aa3ad6c7bf497d8d86ca0656981c3cfc67ef203fa21264cda8a02ff0aa0",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant2d8b7de7554c5bdd5ad69092b511201369f7413ce85439b7c4ab27cb90c4a864.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b02c7216-b504-cb05-f2b6-c29faba6bce0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 257–264.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsTopologicalRing.of_addGroup_of_nhds_zero [IsTopologicalAddGroup R]
    (hmul : Tendsto (uncurry ((· * ·) : R → R → R)) (𝓝 0 ×ˢ 𝓝 0) <| 𝓝 0)
    (hmul_left : ∀ x₀ : R, Tendsto (fun x : R => x₀ * x) (𝓝 0) <| 𝓝 0)
    (hmul_right : ∀ x₀ : R, Tendsto (fun x : R => x * x₀) (𝓝 0) <| 𝓝 0) : IsTopologicalRing R where
  continuous_mul := by
    refine continuous_of_continuousAt_zero₂ (AddMonoidHom.mul (R := R)) ?_ ?_ ?_ <;>
      simpa only [ContinuousAt, mul_zero, zero_mul, nhds_prod_eq, AddMonoidHom.mul_apply]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant2d8b7de7554c5bdd5ad69092b511201369f7413ce85439b7c4ab27cb90c4a864.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant2d8b7de7554c5bdd5ad69092b511201369f7413ce85439b7c4ab27cb90c4a864.lean#L257).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b381e3e7d7e0ce805971183c733e534f797f5311` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
