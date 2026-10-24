# constantBaseRingEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:541258eaca77e77945be38a911cbf596e21ae8952abd7993460173da95e8c3f4",
  "kind": "def",
  "lexical_name": "constantBaseRingEquiv",
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
  "slug": "constantbaseringequiv--1e31739df072ed934ca16ca6",
  "source": {
    "blob": "0d5750977eb4c5af74a0bd12294708f5a37bb49f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 302,
    "line": 279,
    "path": "GRWTSK/Algebra/LinearAlgebra/PiTensorProduct/Variantaf7e44884c2da6fa943e0baf2125c80ef581ec8b15bc1d6af2678fd07efcea1d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1e31739df072ed934ca16ca66bed67707db910bb41fcbdbe90c34bd4b3b3c78a",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/PiTensorProduct/Variantaf7e44884c2da6fa943e0baf2125c80ef581ec8b15bc1d6af2678fd07efcea1d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:541258eaca77e77945be38a911cbf596e21ae8952abd7993460173da95e8c3f4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 279–302.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def constantBaseRingEquiv : (⨂[R] _ : ι, R) ≃ₐ[R] R :=
  letI toFun := lift (MultilinearMap.mkPiAlgebra R ι R)
  AlgEquiv.ofAlgHom
    (AlgHom.ofLinearMap
      toFun
      ((lift.tprod _).trans Finset.prod_const_one)
      (by
        -- one of these is required, the other is a performance optimization
        let : IsScalarTower R (⨂[R] x : ι, R) (⨂[R] x : ι, R) :=
          IsScalarTower.right (R := R) (A := ⨂[R] (x : ι), R)
        let : SMulCommClass R (⨂[R] x : ι, R) (⨂[R] x : ι, R) :=
          Algebra.to_smulCommClass (R := R) (A := ⨂[R] x : ι, R)
        rw [LinearMap.map_mul_iff]
        ext
        change toFun (tprod R _ * tprod R _) = toFun (tprod R _) * toFun (tprod R _)
        simp_rw [tprod_mul_tprod, toFun, lift.tprod, MultilinearMap.mkPiAlgebra_apply,
          Pi.mul_apply, Finset.prod_mul_distrib]))
    (Algebra.ofId _ _)
    (by ext)
    (by classical ext)

variable {R ι}

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/PiTensorProduct/Variantaf7e44884c2da6fa943e0baf2125c80ef581ec8b15bc1d6af2678fd07efcea1d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/PiTensorProduct/Variantaf7e44884c2da6fa943e0baf2125c80ef581ec8b15bc1d6af2678fd07efcea1d.lean#L279).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0d5750977eb4c5af74a0bd12294708f5a37bb49f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
