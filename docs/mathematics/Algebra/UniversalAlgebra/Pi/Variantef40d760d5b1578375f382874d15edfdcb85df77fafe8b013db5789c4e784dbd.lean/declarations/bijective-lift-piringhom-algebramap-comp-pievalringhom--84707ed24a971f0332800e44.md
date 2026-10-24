# bijective_lift_piRingHom_algebraMap_comp_piEvalRingHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6cf0dc18-4637-be2d-0bd4-3a5af85384f5",
  "kind": "theorem",
  "lexical_name": "bijective_lift_piRingHom_algebraMap_comp_piEvalRingHom",
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
  "slug": "bijective-lift-piringhom-algebramap-comp-pievalringhom--84707ed24a971f0332800e44",
  "source": {
    "blob": "913273fc947139481c302b1193e6cb790dbf82ef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 81,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Pi/Variantef40d760d5b1578375f382874d15edfdcb85df77fafe8b013db5789c4e784dbd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:84707ed24a971f0332800e4414a7104c72fac95320c8b528794742c55de41aeb",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Pi/Variantef40d760d5b1578375f382874d15edfdcb85df77fafe8b013db5789c4e784dbd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6cf0dc18-4637-be2d-0bd4-3a5af85384f5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bijective_lift_piRingHom_algebraMap_comp_piEvalRingHom [IsLocalization M S'] [Finite ι] :
    Function.Bijective (lift (S := S') (isUnit_piRingHom_algebraMap_comp_piEvalRingHom R S M)) :=
  have := (iff_map_piEvalRingHom R (Π i, S i) M).mpr inferInstance
  (ringEquivOfRingEquiv (M := M) (T := M) _ _ (.refl _) <|
    Submonoid.map_equiv_eq_comap_symm _ _).bijective

end IsLocalization
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Pi/Variantef40d760d5b1578375f382874d15edfdcb85df77fafe8b013db5789c4e784dbd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Pi/Variantef40d760d5b1578375f382874d15edfdcb85df77fafe8b013db5789c4e784dbd.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `913273fc947139481c302b1193e6cb790dbf82ef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
