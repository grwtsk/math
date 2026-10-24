# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:397be3e0adc37b131a6b894be96527121284fd503661d7d5f17d1d0ce90ef2d5",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--d94658fb429f3acbcfae5e3e",
  "source": {
    "blob": "1693e86cdeed0b96333abda923a718394744719a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 176,
    "line": 161,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/FunctionField/Variant6b4158ee6384b3d563abe8c5dd615fe42d5ade2106213c598f418a5a0e101aac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d94658fb429f3acbcfae5e3eed85d9a4352b21c0d92a2b24663f01323d731dd7",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/FunctionField/Variant6b4158ee6384b3d563abe8c5dd615fe42d5ade2106213c598f418a5a0e101aac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:397be3e0adc37b131a6b894be96527121284fd503661d7d5f17d1d0ce90ef2d5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 161–176.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance [IsIntegral X] (x : X) :
    IsFractionRing (X.presheaf.stalk x) X.functionField :=
  let U : X.Opens := (X.affineCover.map x).opensRange
  have hU : IsAffineOpen U := isAffineOpen_opensRange (X.affineCover.map x)
  let x : U := ⟨x, X.affineCover.covers x⟩
  have : Nonempty U := ⟨x⟩
  let M := (hU.primeIdealOf x).asIdeal.primeCompl
  have := hU.isLocalization_stalk x
  have := functionField_isFractionRing_of_isAffineOpen X U hU
  -- Porting note: the following two lines were not needed.
  let _hA := Presheaf.algebra_section_stalk X.presheaf x
  have := functionField_isScalarTower X U x
  .isFractionRing_of_isDomain_of_isLocalization M ↑(Presheaf.stalk X.presheaf x)
    (Scheme.functionField X)

end AlgebraicGeometry
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/FunctionField/Variant6b4158ee6384b3d563abe8c5dd615fe42d5ade2106213c598f418a5a0e101aac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/FunctionField/Variant6b4158ee6384b3d563abe8c5dd615fe42d5ade2106213c598f418a5a0e101aac.lean#L161).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1693e86cdeed0b96333abda923a718394744719a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
