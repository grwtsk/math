# Matrix.isAdjointPair_equiv'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:54e682e4-c682-5f8b-649d-398abda93317",
  "kind": "theorem",
  "lexical_name": "Matrix.isAdjointPair_equiv'",
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
  "slug": "matrix-isadjointpair-equiv--ef6c19d771c2db3dbed6fe9d",
  "source": {
    "blob": "5c446134845b5873fa5d6f1cbda1ad4a91953108",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 505,
    "line": 478,
    "path": "GRWTSK/Algebra/LinearAlgebra/BilinearForm/Variant97cfdadbf2e13ea88fee67621367eb984599300c08ae83fe0ea9fd2043531fea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ef6c19d771c2db3dbed6fe9d4899a8b013275de1198b33599d33d237ce19cb8a",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/BilinearForm/Variant97cfdadbf2e13ea88fee67621367eb984599300c08ae83fe0ea9fd2043531fea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:54e682e4-c682-5f8b-649d-398abda93317`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 478–505.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Matrix.isAdjointPair_equiv' [DecidableEq n] (P : Matrix n n R₃) (h : IsUnit P) :
    (Pᵀ * J * P).IsAdjointPair (Pᵀ * J * P) A A' ↔
      J.IsAdjointPair J (P * A * P⁻¹) (P * A' * P⁻¹) := by
  have h' : IsUnit P.det := P.isUnit_iff_isUnit_det.mp h
  -- Porting note: the original proof used a complicated conv and timed out
  let u := P.nonsingInvUnit h'
  have coe_u : (u : Matrix n n R₃) = P := rfl
  have coe_u_inv : (↑u⁻¹ : Matrix n n R₃) = P⁻¹ := rfl
  let v := Pᵀ.nonsingInvUnit (P.isUnit_det_transpose h')
  have coe_v : (v : Matrix n n R₃) = Pᵀ := rfl
  have coe_v_inv : (↑v⁻¹ : Matrix n n R₃) = P⁻¹ᵀ := P.transpose_nonsing_inv.symm
  set x := Aᵀ * Pᵀ * J with x_def
  set y := J * P * A' with y_def
  simp only [Matrix.IsAdjointPair]
  calc (Aᵀ * (Pᵀ * J * P) = Pᵀ * J * P * A')
         ↔ (x * ↑u = ↑v * y) := ?_
       _ ↔ (↑v⁻¹ * x = y * ↑u⁻¹) := ?_
       _ ↔ ((P * A * P⁻¹)ᵀ * J = J * (P * A' * P⁻¹)) := ?_
  · simp only [mul_assoc, x_def, y_def, coe_u, coe_v]
  · rw [Units.eq_mul_inv_iff_mul_eq, mul_assoc ↑v⁻¹ x, Units.inv_mul_eq_iff_eq_mul]
  · rw [x_def, y_def, coe_u_inv, coe_v_inv]
    simp only [Matrix.mul_assoc, Matrix.transpose_mul]
#align matrix.is_adjoint_pair_equiv' Matrix.isAdjointPair_equiv'

variable [DecidableEq n]

/-- The submodule of pair-self-adjoint matrices with respect to bilinear forms corresponding to
given matrices `J`, `J₂`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/BilinearForm/Variant97cfdadbf2e13ea88fee67621367eb984599300c08ae83fe0ea9fd2043531fea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/BilinearForm/Variant97cfdadbf2e13ea88fee67621367eb984599300c08ae83fe0ea9fd2043531fea.lean#L478).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c446134845b5873fa5d6f1cbda1ad4a91953108` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
