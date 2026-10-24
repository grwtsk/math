# geometricFiber

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:48e872e109f70d04e15de156d07317f09edf4bfd9f6d242b96942e7f9c6c2222",
  "kind": "def",
  "lexical_name": "geometricFiber",
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
  "slug": "geometricfiber--8941d0ce08f1bc76dd5624f5",
  "source": {
    "blob": "20113b23ee739db88e88fcdbff841fee67671a1e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 104,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Etale/Variant6cbf377ac817f736c6a3a9bdc7e1a5b2c8a73473a726e9ae356a10b30c4224bc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8941d0ce08f1bc76dd5624f57e8a89e1fc1eb25fd010910bf7b78227703276e3",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Etale/Variant6cbf377ac817f736c6a3a9bdc7e1a5b2c8a73473a726e9ae356a10b30c4224bc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:48e872e109f70d04e15de156d07317f09edf4bfd9f6d242b96942e7f9c6c2222`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def geometricFiber (Ω : Type u) [Field Ω] [IsSepClosed Ω] : etaleTopology.Point where
  fiber := coyoneda.obj ⟨Spec (.of Ω)⟩
  jointly_surjective {S} R hR (f : Spec (.of Ω) ⟶ S) := by
    obtain ⟨⟨x, a⟩, rfl⟩ := (Scheme.SpecToEquivOfField Ω S).symm.surjective f
    rw [mem_grothendieckTopology_iff] at hR
    obtain ⟨𝒰, hle⟩ := hR
    obtain ⟨i, y, rfl⟩ := 𝒰.exists_eq x
    refine ⟨𝒰.X i, 𝒰.f i, hle _ _ ⟨i⟩, ?_⟩
    let k := (𝒰.X i).residueField y
    let m : S.residueField (𝒰.f i y) ⟶ (𝒰.X i).residueField y :=
      (𝒰.f i).residueFieldMap y
    algebraize [((𝒰.f i).residueFieldMap y).hom, a.hom]
    let b : (𝒰.X i).residueField y →ₐ[S.residueField (𝒰.f i y)] Ω :=
      IsSepClosed.lift
    have hfac : (𝒰.f i).residueFieldMap y ≫ CommRingCat.ofHom b.toRingHom = a := by
      ext1; exact b.comp_algebraMap
    use Spec.map (CommRingCat.ofHom b.toRingHom) ≫ (𝒰.X i).fromSpecResidueField y
    simp [SpecToEquivOfField, ← hfac]

end AlgebraicGeometry.Scheme
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Etale/Variant6cbf377ac817f736c6a3a9bdc7e1a5b2c8a73473a726e9ae356a10b30c4224bc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Etale/Variant6cbf377ac817f736c6a3a9bdc7e1a5b2c8a73473a726e9ae356a10b30c4224bc.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `20113b23ee739db88e88fcdbff841fee67671a1e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
