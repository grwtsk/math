# LinearEquiv.ofIsUnitDet

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5b4ccdb6dc9286db96bf5cc8f290bb0f290d20cffec5b7969ba4b9698684608b",
  "kind": "def",
  "lexical_name": "LinearEquiv.ofIsUnitDet",
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
  "slug": "linearequiv-ofisunitdet--c2e9ae47bfcc3d484d2d7741",
  "source": {
    "blob": "563c3690a5fe84f8960a7696bf0810bf6ea964c4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 466,
    "line": 447,
    "path": "GRWTSK/Algebra/LinearAlgebra/Determinant/Variant6ba0d96f87855040785013ba49c533040bb66af6033a55fd63581489013e0e76.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c2e9ae47bfcc3d484d2d774184ceb1747b2cd835ff1991dfcef59653201b5e2c",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Determinant/Variant6ba0d96f87855040785013ba49c533040bb66af6033a55fd63581489013e0e76.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5b4ccdb6dc9286db96bf5cc8f290bb0f290d20cffec5b7969ba4b9698684608b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 447–466.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def LinearEquiv.ofIsUnitDet {f : M →ₗ[R] M'} {v : Basis ι R M} {v' : Basis ι R M'}
    (h : IsUnit (LinearMap.toMatrix v v' f).det) : M ≃ₗ[R] M' where
  toFun := f
  map_add' := f.map_add
  map_smul' := f.map_smul
  invFun := toLin v' v (toMatrix v v' f)⁻¹
  left_inv x :=
    calc
      toLin v' v (toMatrix v v' f)⁻¹ (f x) = toLin v v ((toMatrix v v' f)⁻¹ * toMatrix v v' f) x :=
        by rw [toLin_mul v v' v, toLin_toMatrix, LinearMap.comp_apply]
      _ = x := by simp [h]
  right_inv x :=
    calc
      f (toLin v' v (toMatrix v v' f)⁻¹ x) =
          toLin v' v' (toMatrix v v' f * (toMatrix v v' f)⁻¹) x :=
        by rw [toLin_mul v' v v', LinearMap.comp_apply, toLin_toMatrix v v']
      _ = x := by simp [h]
#align linear_equiv.of_is_unit_det LinearEquiv.ofIsUnitDet

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Determinant/Variant6ba0d96f87855040785013ba49c533040bb66af6033a55fd63581489013e0e76.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Determinant/Variant6ba0d96f87855040785013ba49c533040bb66af6033a55fd63581489013e0e76.lean#L447).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `563c3690a5fe84f8960a7696bf0810bf6ea964c4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
