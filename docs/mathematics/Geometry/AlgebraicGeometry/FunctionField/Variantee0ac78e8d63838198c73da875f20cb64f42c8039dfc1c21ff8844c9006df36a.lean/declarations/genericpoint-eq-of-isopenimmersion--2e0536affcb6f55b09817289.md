# genericPoint_eq_of_isOpenImmersion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a7d752d1-01d4-343a-d265-377195f80ac7",
  "kind": "theorem",
  "lexical_name": "genericPoint_eq_of_isOpenImmersion",
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
  "slug": "genericpoint-eq-of-isopenimmersion--2e0536affcb6f55b09817289",
  "source": {
    "blob": "bd10119c702842ccc1338c995de01a8052a82e05",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 84,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/FunctionField/Variantee0ac78e8d63838198c73da875f20cb64f42c8039dfc1c21ff8844c9006df36a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2e0536affcb6f55b098172893e221568b5672ae7f5e03631a3f89479c60fd09b",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/FunctionField/Variantee0ac78e8d63838198c73da875f20cb64f42c8039dfc1c21ff8844c9006df36a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a7d752d1-01d4-343a-d265-377195f80ac7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem genericPoint_eq_of_isOpenImmersion {X Y : Scheme} (f : X ⟶ Y) [H : IsOpenImmersion f]
    [hX : IrreducibleSpace X] [IrreducibleSpace Y] :
    f.base (genericPoint X) = genericPoint Y := by
  apply ((genericPoint_spec Y).eq _).symm
  convert (genericPoint_spec X).image (show Continuous f.base by fun_prop)
  symm
  rw [← Set.univ_subset_iff]
  convert subset_closure_inter_of_isPreirreducible_of_isOpen _ H.base_open.isOpen_range _
  · rw [Set.univ_inter, Set.image_univ]
  · apply PreirreducibleSpace.isPreirreducible_univ (X := Y)
  · exact ⟨_, trivial, Set.mem_range_self hX.2.some⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/FunctionField/Variantee0ac78e8d63838198c73da875f20cb64f42c8039dfc1c21ff8844c9006df36a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/FunctionField/Variantee0ac78e8d63838198c73da875f20cb64f42c8039dfc1c21ff8844c9006df36a.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bd10119c702842ccc1338c995de01a8052a82e05` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
