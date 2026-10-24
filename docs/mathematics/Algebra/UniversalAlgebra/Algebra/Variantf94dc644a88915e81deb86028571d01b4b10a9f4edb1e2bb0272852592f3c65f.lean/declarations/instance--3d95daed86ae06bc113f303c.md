# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:65d4f5b479c8cae4aed55dab189eb4563e241ac5422af6ad185f4446ecb33e03",
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
  "slug": "instance--3d95daed86ae06bc113f303c",
  "source": {
    "blob": "993956c18b570f2cb09880ba3e9a2db59e64bc98",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 70,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Algebra/Variantf94dc644a88915e81deb86028571d01b4b10a9f4edb1e2bb0272852592f3c65f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3d95daed86ae06bc113f303cfa342aafcacceddebd8596e21fdf2d7437ec19d0",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Algebra/Variantf94dc644a88915e81deb86028571d01b4b10a9f4edb1e2bb0272852592f3c65f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:65d4f5b479c8cae4aed55dab189eb4563e241ac5422af6ad185f4446ecb33e03`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : Algebra R (⨁ i, A i) where
  algebraMap :=
  { toFun := (DirectSum.of A 0).comp GAlgebra.toFun
    map_zero' := AddMonoidHom.map_zero _
    map_add' := AddMonoidHom.map_add _
    map_one' := DFunLike.congr_arg (DirectSum.of A 0) GAlgebra.map_one
    map_mul' a b := by
      simp only [AddMonoidHom.comp_apply]
      rw [of_mul_of]
      apply DFinsupp.single_eq_of_sigma_eq (GAlgebra.map_mul a b) }
  commutes' r x := by
    change AddMonoidHom.mul (DirectSum.of _ _ _) x = AddMonoidHom.mul.flip (DirectSum.of _ _ _) x
    apply DFunLike.congr_fun _ x
    ext i xi : 2
    dsimp only [AddMonoidHom.comp_apply, AddMonoidHom.mul_apply, AddMonoidHom.flip_apply]
    rw [of_mul_of, of_mul_of]
    apply DFinsupp.single_eq_of_sigma_eq (GAlgebra.commutes r ⟨i, xi⟩)
  smul_def' r x := by
    change DistribMulAction.toAddMonoidHom _ r x = AddMonoidHom.mul (DirectSum.of _ _ _) x
    apply DFunLike.congr_fun _ x
    ext i xi : 2
    dsimp only [AddMonoidHom.comp_apply, DistribMulAction.toAddMonoidHom_apply,
      AddMonoidHom.mul_apply]
    rw [DirectSum.of_mul_of, ← of_smul]
    apply DFinsupp.single_eq_of_sigma_eq (GAlgebra.smul_def r ⟨i, xi⟩)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Algebra/Variantf94dc644a88915e81deb86028571d01b4b10a9f4edb1e2bb0272852592f3c65f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Algebra/Variantf94dc644a88915e81deb86028571d01b4b10a9f4edb1e2bb0272852592f3c65f.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `993956c18b570f2cb09880ba3e9a2db59e64bc98` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
