# toDualProd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9318f0e04c9b7f67c3269fe1b6da722dfb4db09fb7b698d3a9e50f40acdb8859",
  "kind": "def",
  "lexical_name": "toDualProd",
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
  "slug": "todualprod--6ebb3ffc2d213b2d54942a96",
  "source": {
    "blob": "28d212c6b6db64a7a65a3102691c5cd1ab5341fe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 131,
    "path": "GRWTSK/Algebra/LinearAlgebra/Dual/Varianta80033e92a7bb9045db0fb6cf4de3c15a6f845501ad3b5f0a98cb83594a73f64.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6ebb3ffc2d213b2d54942a960888c0bab4b14baad71bffb8f0bb67125820564c",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Dual/Varianta80033e92a7bb9045db0fb6cf4de3c15a6f845501ad3b5f0a98cb83594a73f64.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9318f0e04c9b7f67c3269fe1b6da722dfb4db09fb7b698d3a9e50f40acdb8859`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toDualProd (Q : QuadraticForm R M) [Invertible (2 : R)] :
    (Q.prod <| -Q) →qᵢ QuadraticForm.dualProd R M where
  toLinearMap := LinearMap.prod
    (Q.associated.comp (LinearMap.fst _ _ _) + Q.associated.comp (LinearMap.snd _ _ _))
    (LinearMap.fst _ _ _ - LinearMap.snd _ _ _)
  map_app' x := by
    dsimp only [associated, associatedHom]
    dsimp only [LinearMap.smul_apply, LinearMap.coe_mk, AddHom.coe_mk, AddHom.toFun_eq_coe,
      LinearMap.coe_toAddHom, LinearMap.prod_apply, Pi.prod, LinearMap.add_apply,
      LinearMap.coe_comp, Function.comp_apply, LinearMap.fst_apply, LinearMap.snd_apply,
      LinearMap.sub_apply, dualProd_apply, polarBilin_apply_apply, prod_apply, neg_apply]
    simp only [polar_sub_right, polar_self, nsmul_eq_mul, Nat.cast_ofNat, polar_comm _ x.1 x.2,
      smul_sub, Module.End.smul_def, sub_add_sub_cancel, ← sub_eq_add_neg (Q x.1) (Q x.2)]
    rw [← LinearMap.map_sub (⅟ 2 : Module.End R R), ← mul_sub, ← Module.End.smul_def]
    simp only [Module.End.smul_def, half_moduleEnd_apply_eq_half_smul, smul_eq_mul,
      invOf_mul_cancel_left']

/-!
TODO: show that `QuadraticForm.toDualProd` is an `QuadraticForm.IsometryEquiv`
-/

end Ring

end QuadraticForm
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Dual/Varianta80033e92a7bb9045db0fb6cf4de3c15a6f845501ad3b5f0a98cb83594a73f64.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Dual/Varianta80033e92a7bb9045db0fb6cf4de3c15a6f845501ad3b5f0a98cb83594a73f64.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `28d212c6b6db64a7a65a3102691c5cd1ab5341fe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
