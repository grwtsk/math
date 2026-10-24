# liftNCAlgHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:89a077e914373f5545b2c6563747c18e89198b643bc2a64bdee3aa8a051f7b0b",
  "kind": "def",
  "lexical_name": "liftNCAlgHom",
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
  "slug": "liftncalghom--24acc065aec4803ac3926f0a",
  "source": {
    "blob": "505163d603c369fd89805cdd652c5a9491856b5f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 871,
    "line": 863,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Varianta03233f5e5f069b1f3d37c5a8957143327a85d05d50f62b74ecbb9f75a7b6bb3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:24acc065aec4803ac3926f0aa4e3b6b69574b67b20bdd9fcfd70729f1a6a81bd",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Varianta03233f5e5f069b1f3d37c5a8957143327a85d05d50f62b74ecbb9f75a7b6bb3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:89a077e914373f5545b2c6563747c18e89198b643bc2a64bdee3aa8a051f7b0b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 863–871.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def liftNCAlgHom (f : A →ₐ[k] B) (g : G →* B) (h_comm : ∀ x y, Commute (f x) (g y)) :
    MonoidAlgebra A G →ₐ[k] B :=
  { liftNCRingHom (f : A →+* B) g h_comm with
    toFun := liftNCRingHom (f : A →+* B) g h_comm
    commutes' := by simp [liftNCRingHom] }
#align monoid_algebra.lift_nc_alg_hom MonoidAlgebra.liftNCAlgHom

/-- A `k`-algebra homomorphism from `MonoidAlgebra k G` is uniquely defined by its
values on the functions `single a 1`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Varianta03233f5e5f069b1f3d37c5a8957143327a85d05d50f62b74ecbb9f75a7b6bb3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Varianta03233f5e5f069b1f3d37c5a8957143327a85d05d50f62b74ecbb9f75a7b6bb3.lean#L863).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `505163d603c369fd89805cdd652c5a9491856b5f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
