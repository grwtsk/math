# isCommMonObj_of_isProper_of_geometricallyIntegral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:37189eb0-b75e-22f0-9162-be106ff4c9cf",
  "kind": "theorem",
  "lexical_name": "isCommMonObj_of_isProper_of_geometricallyIntegral",
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
  "slug": "iscommmonobj-of-isproper-of-geometricallyintegral--b78696eeddc2cf7fe800e09e",
  "source": {
    "blob": "27b1b0e37f211507e7aa78c3bc2430091c145d8b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 156,
    "line": 140,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Abelian/Variant2ad5e364558c09bf52b50d040dc25e0ac7337570cc127f06a17301b9e513d69d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b78696eeddc2cf7fe800e09e0f25bf8026465e93ba0268a7534faa277406e485",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Abelian/Variant2ad5e364558c09bf52b50d040dc25e0ac7337570cc127f06a17301b9e513d69d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:37189eb0-b75e-22f0-9162-be106ff4c9cf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 140–156.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isCommMonObj_of_isProper_of_geometricallyIntegral
    (G : Over (Spec (.of K))) [IsProper G.hom] [GeometricallyIntegral G.hom] [GrpObj G] :
    IsCommMonObj G := by
  let f := Spec.map (CommRingCat.ofHom <| algebraMap K (AlgebraicClosure K))
  let G' := (Over.pullback f).obj G
  have : IsProper G'.hom := by dsimp [G']; infer_instance
  have : IsIntegral (G' ⊗ G').left := by dsimp [G']; infer_instance
  let : GrpObj G' := Functor.grpObjObj
  have := isCommMonObj_of_isProper_of_isIntegral_tensorObj_of_isAlgClosed G'
  rw [isCommMonObj_iff_commutator_eq_toUnit_η] at this ⊢
  apply (Over.pullback f).map_injective
  rw [← cancel_epi (Functor.Monoidal.μIso (Over.pullback f) G G).hom]
  dsimp [GrpObj.commutator] at this ⊢
  simpa only [Functor.map_mul, one_eq_one, comp_one, Functor.map_one, Functor.map_inv',
    comp_mul, GrpObj.comp_inv, Functor.Monoidal.μ_fst, Functor.Monoidal.μ_snd]

end AlgebraicGeometry
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Abelian/Variant2ad5e364558c09bf52b50d040dc25e0ac7337570cc127f06a17301b9e513d69d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Abelian/Variant2ad5e364558c09bf52b50d040dc25e0ac7337570cc127f06a17301b9e513d69d.lean#L140).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `27b1b0e37f211507e7aa78c3bc2430091c145d8b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
