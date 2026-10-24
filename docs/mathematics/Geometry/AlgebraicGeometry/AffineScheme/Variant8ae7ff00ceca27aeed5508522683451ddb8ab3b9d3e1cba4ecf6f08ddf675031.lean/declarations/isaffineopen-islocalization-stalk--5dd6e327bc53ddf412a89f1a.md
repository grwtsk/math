# IsAffineOpen.isLocalization_stalk'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "941355433d09b45c53809ac658b279827279d001",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 661,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8a/8ae7ff00ceca27aeed5508522683451ddb8ab3b9d3e1cba4ecf6f08ddf675031.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7109309c-f2bf-75ee-4046-28d6ec8deea7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:585d61f2-b0af-d33a-b5a9-30ef23a8fe9b",
  "kind": "theorem",
  "lexical_name": "IsAffineOpen.isLocalization_stalk'",
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
  "slug": "isaffineopen-islocalization-stalk--5dd6e327bc53ddf412a89f1a",
  "source": {
    "blob": "941355433d09b45c53809ac658b279827279d001",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 684,
    "line": 661,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/AffineScheme/Variant8ae7ff00ceca27aeed5508522683451ddb8ab3b9d3e1cba4ecf6f08ddf675031.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5dd6e327bc53ddf412a89f1af116cda9346a078a294a20541493e9b03f4b7c50",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/AffineScheme/Variant8ae7ff00ceca27aeed5508522683451ddb8ab3b9d3e1cba4ecf6f08ddf675031.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:585d61f2-b0af-d33a-b5a9-30ef23a8fe9b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 661–684.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsAffineOpen.isLocalization_stalk' {X : Scheme} {U : Opens X} (hU : IsAffineOpen U)
    (y : PrimeSpectrum (X.presheaf.obj <| op U)) (hy : hU.fromSpec.1.base y ∈ U) :
  haveI : IsAffine _ := hU
  -- haveI : Nonempty U := ⟨hU.fromSpec.1.base y⟩
  @IsLocalization.AtPrime
    (R := X.presheaf.obj <| op U)
    (S := X.presheaf.stalk <| hU.fromSpec.1.base y) _ _
    ((TopCat.Presheaf.algebra_section_stalk X.presheaf _)) y.asIdeal _ := by
  apply
    (@IsLocalization.isLocalization_iff_of_ringEquiv (R := X.presheaf.obj <| op U)
      (S := X.presheaf.stalk (hU.fromSpec.1.base y)) _ y.asIdeal.primeCompl _
      (TopCat.Presheaf.algebra_section_stalk X.presheaf ⟨hU.fromSpec.1.base y, hy⟩) _ _
      (asIso <| PresheafedSpace.stalkMap hU.fromSpec.1 y).commRingCatIsoToRingEquiv).mpr
  -- Porting note : need to know what the ring is and after convert, instead of equality
  -- we get an `iff`.
  convert StructureSheaf.IsLocalization.to_stalk (X.presheaf.obj <| op U) y using 1
  delta IsLocalization.AtPrime StructureSheaf.stalkAlgebra
  rw [iff_iff_eq]
  congr 2
  rw [RingHom.algebraMap_toAlgebra]
  refine' (PresheafedSpace.stalkMap_germ hU.fromSpec.1 _ ⟨_, hy⟩).trans _
  apply hU.isLocalization_stalk_aux' y hy

-- Porting note : I have splitted this into two lemmas
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/AffineScheme/Variant8ae7ff00ceca27aeed5508522683451ddb8ab3b9d3e1cba4ecf6f08ddf675031.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/AffineScheme/Variant8ae7ff00ceca27aeed5508522683451ddb8ab3b9d3e1cba4ecf6f08ddf675031.lean#L661).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `941355433d09b45c53809ac658b279827279d001` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
