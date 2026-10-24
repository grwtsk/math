# separatingLeft_dualProd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3df94cce-1cba-1059-a106-8a205edb7aa1",
  "kind": "theorem",
  "lexical_name": "separatingLeft_dualProd",
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
  "slug": "separatingleft-dualprod--50c136b582d41bbc0780330e",
  "source": {
    "blob": "fb9ab0ca8ee90cbc118ba2715d60fa34669597c0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 56,
    "path": "GRWTSK/Algebra/LinearAlgebra/Dual/Variant554dc909cff220151555c1cd96c941642ac91a61716beba848ead4948a033551.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:50c136b582d41bbc0780330e950efc594e43ec7016efc5655775dbf8c62bd172",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Dual/Variant554dc909cff220151555c1cd96c941642ac91a61716beba848ead4948a033551.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3df94cce-1cba-1059-a106-8a205edb7aa1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem separatingLeft_dualProd :
    (dualProd R M).SeparatingLeft ↔ Function.Injective (Module.Dual.eval R M) := by
  classical
  rw [separatingLeft_iff_ker_eq_bot, ker_eq_bot]
  let e := LinearEquiv.prodComm R _ _ ≪≫ₗ Module.dualProdDualEquivDual R (Module.Dual R M) M
  let h_d := e.symm.toLinearMap.comp (dualProd R M)
  refine (Function.Injective.of_comp_iff e.symm.injective
    (dualProd R M)).symm.trans ?_
  rw [← LinearEquiv.coe_toLinearMap, ← coe_comp]
  change Function.Injective h_d ↔ _
  have : h_d = prodMap id (Module.Dual.eval R M) := by
    refine ext fun x => Prod.ext ?_ ?_
    · ext
      dsimp [e, h_d, Module.Dual.eval, LinearEquiv.prodComm]
      simp
    · ext
      dsimp [e, h_d, Module.Dual.eval, LinearEquiv.prodComm]
      simp
  rw [this, coe_prodMap]
  refine Prod.map_injective.trans ?_
  exact and_iff_right Function.injective_id

end Ring

end LinearMap

namespace QuadraticForm

open QuadraticMap

section Semiring

variable [CommSemiring R] [AddCommMonoid M] [AddCommMonoid N] [Module R M] [Module R N]

/-- The quadratic form on `Module.Dual R M × M` defined as `Q (f, x) = f x`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Dual/Variant554dc909cff220151555c1cd96c941642ac91a61716beba848ead4948a033551.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Dual/Variant554dc909cff220151555c1cd96c941642ac91a61716beba848ead4948a033551.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fb9ab0ca8ee90cbc118ba2715d60fa34669597c0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
