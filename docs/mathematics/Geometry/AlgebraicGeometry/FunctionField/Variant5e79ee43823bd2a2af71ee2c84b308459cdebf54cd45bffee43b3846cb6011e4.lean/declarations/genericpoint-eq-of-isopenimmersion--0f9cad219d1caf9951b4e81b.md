# genericPoint_eq_of_isOpenImmersion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:34c53db1-fba5-e91c-774b-e0f686b871c8",
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
  "slug": "genericpoint-eq-of-isopenimmersion--0f9cad219d1caf9951b4e81b",
  "source": {
    "blob": "d6ebb148ae7cd4bc824b35bfc00b26d72ee87e8c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 89,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/FunctionField/Variant5e79ee43823bd2a2af71ee2c84b308459cdebf54cd45bffee43b3846cb6011e4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0f9cad219d1caf9951b4e81b96ef37f940d2e0445d5d91f77f6d24f5edf1aca9",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/FunctionField/Variant5e79ee43823bd2a2af71ee2c84b308459cdebf54cd45bffee43b3846cb6011e4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:34c53db1-fba5-e91c-774b-e0f686b871c8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem genericPoint_eq_of_isOpenImmersion {X Y : Scheme} (f : X ⟶ Y) [H : IsOpenImmersion f]
    [hX : IrreducibleSpace X.carrier] [IrreducibleSpace Y.carrier] :
    f.1.base (genericPoint X.carrier : _) = (genericPoint Y.carrier : _) := by
  apply ((genericPoint_spec Y).eq _).symm
  -- Porting note: the continuity argument used to be `by continuity`
  convert (genericPoint_spec X.carrier).image
    (show Continuous f.1.base from ContinuousMap.continuous_toFun _)
  symm
  rw [eq_top_iff, Set.top_eq_univ, Set.top_eq_univ]
  convert subset_closure_inter_of_isPreirreducible_of_isOpen _ H.base_open.open_range _
  rw [Set.univ_inter, Set.image_univ]
  apply PreirreducibleSpace.isPreirreducible_univ (α := Y.carrier)
  exact ⟨_, trivial, Set.mem_range_self hX.2.some⟩
#align algebraic_geometry.generic_point_eq_of_is_open_immersion AlgebraicGeometry.genericPoint_eq_of_isOpenImmersion

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/FunctionField/Variant5e79ee43823bd2a2af71ee2c84b308459cdebf54cd45bffee43b3846cb6011e4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/FunctionField/Variant5e79ee43823bd2a2af71ee2c84b308459cdebf54cd45bffee43b3846cb6011e4.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d6ebb148ae7cd4bc824b35bfc00b26d72ee87e8c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
