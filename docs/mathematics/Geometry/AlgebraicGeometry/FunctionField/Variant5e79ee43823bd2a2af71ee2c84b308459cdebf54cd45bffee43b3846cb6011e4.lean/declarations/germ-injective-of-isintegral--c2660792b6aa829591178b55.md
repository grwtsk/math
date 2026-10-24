# germ_injective_of_isIntegral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:daba169e-0c93-2763-fc4f-5605272a4fcb",
  "kind": "theorem",
  "lexical_name": "germ_injective_of_isIntegral",
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
  "slug": "germ-injective-of-isintegral--c2660792b6aa829591178b55",
  "source": {
    "blob": "d6ebb148ae7cd4bc824b35bfc00b26d72ee87e8c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 73,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/FunctionField/Variant5e79ee43823bd2a2af71ee2c84b308459cdebf54cd45bffee43b3846cb6011e4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c2660792b6aa829591178b557ac47bc641a11b5549b85f545dedfe711fc32af6",
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

Occurrence: `result:daba169e-0c93-2763-fc4f-5605272a4fcb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem germ_injective_of_isIntegral [IsIntegral X] {U : Opens X.carrier} (x : U) :
    Function.Injective (X.presheaf.germ x) := by
  rw [injective_iff_map_eq_zero]
  intro y hy
  rw [← (X.presheaf.germ x).map_zero] at hy
  obtain ⟨W, hW, iU, iV, e⟩ := X.presheaf.germ_eq _ x.prop x.prop _ _ hy
  cases show iU = iV from Subsingleton.elim _ _
  haveI : Nonempty W := ⟨⟨_, hW⟩⟩
  exact map_injective_of_isIntegral X iU e
#align algebraic_geometry.germ_injective_of_is_integral AlgebraicGeometry.germ_injective_of_isIntegral

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/FunctionField/Variant5e79ee43823bd2a2af71ee2c84b308459cdebf54cd45bffee43b3846cb6011e4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/FunctionField/Variant5e79ee43823bd2a2af71ee2c84b308459cdebf54cd45bffee43b3846cb6011e4.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d6ebb148ae7cd4bc824b35bfc00b26d72ee87e8c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
