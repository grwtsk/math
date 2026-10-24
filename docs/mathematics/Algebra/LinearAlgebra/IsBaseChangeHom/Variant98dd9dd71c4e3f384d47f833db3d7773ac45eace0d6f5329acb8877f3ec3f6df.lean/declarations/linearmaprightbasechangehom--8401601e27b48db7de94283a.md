# linearMapRightBaseChangeHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0a4f137c1d30c088175be01aab2b7f588c36f9ba25f948acd7eadae4a27bd786",
  "kind": "def",
  "lexical_name": "linearMapRightBaseChangeHom",
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
  "slug": "linearmaprightbasechangehom--8401601e27b48db7de94283a",
  "source": {
    "blob": "3b9e10078783ac83d857572e475599c5382d8f95",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 49,
    "path": "GRWTSK/Algebra/LinearAlgebra/IsBaseChangeHom/Variant98dd9dd71c4e3f384d47f833db3d7773ac45eace0d6f5329acb8877f3ec3f6df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8401601e27b48db7de94283ac7df8a38085f4a6f5fa7974173edff84a0cc9818",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/IsBaseChangeHom/Variant98dd9dd71c4e3f384d47f833db3d7773ac45eace0d6f5329acb8877f3ec3f6df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0a4f137c1d30c088175be01aab2b7f588c36f9ba25f948acd7eadae4a27bd786`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def linearMapRightBaseChangeHom (ε : N →ₗ[R] P) :
    (S ⊗[R] (M →ₗ[R] N)) →ₗ[S] (M →ₗ[R] P) where
  toAddHom := (TensorProduct.lift {
    toFun s := s • (LinearMap.compRight R ε (M := M))
    map_add' x y := by ext; simp [add_smul]
    map_smul' r s := by simp }).toAddHom
  map_smul' s x := by
    simp only [AddHom.toFun_eq_coe, coe_toAddHom, RingHom.id_apply]
    induction x using TensorProduct.inductionOn with
    | add x y hx hy => simp [smul_add, hx, hy]
    | tmul t f => simp [TensorProduct.smul_tmul', mul_smul]

variable [Free R M] [Module.Finite R M]

variable {S}

/-- The base change isomorphism underlying `IsBaseChange.linearMapRight` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/IsBaseChangeHom/Variant98dd9dd71c4e3f384d47f833db3d7773ac45eace0d6f5329acb8877f3ec3f6df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/IsBaseChangeHom/Variant98dd9dd71c4e3f384d47f833db3d7773ac45eace0d6f5329acb8877f3ec3f6df.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3b9e10078783ac83d857572e475599c5382d8f95` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
