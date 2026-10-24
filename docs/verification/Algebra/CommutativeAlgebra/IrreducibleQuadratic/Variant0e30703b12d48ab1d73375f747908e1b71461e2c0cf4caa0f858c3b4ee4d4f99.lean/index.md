# Verification target: GRWTSK.Algebra.CommutativeAlgebra.IrreducibleQuadratic.Variant0e30703b12d48ab1d73375f747908e1b71461e2c0cf4caa0f858c3b4ee4d4f99

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b9a1f98a815fcdcc95022e750c7ba7be479d4b81",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/IrreducibleQuadratic/Variant0e30703b12d48ab1d73375f747908e1b71461e2c0cf4caa0f858c3b4ee4d4f99.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/IrreducibleQuadratic/Variant0e30703b12d48ab1d73375f747908e1b71461e2c0cf4caa0f858c3b4ee4d4f99.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/IrreducibleQuadratic/Variant0e30703b12d48ab1d73375f747908e1b71461e2c0cf4caa0f858c3b4ee4d4f99.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b9a1f98a815fcdcc95022e750c7ba7be479d4b81`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/IrreducibleQuadratic/Variant0e30703b12d48ab1d73375f747908e1b71461e2c0cf4caa0f858c3b4ee4d4f99.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/IrreducibleQuadratic/Variant0e30703b12d48ab1d73375f747908e1b71461e2c0cf4caa0f858c3b4ee4d4f99.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.MvPolynomial.Nilpotent` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [irreducible_mul_X_add](../../../../../mathematics/Algebra/CommutativeAlgebra/IrreducibleQuadratic/Variant0e30703b12d48ab1d73375f747908e1b71461e2c0cf4caa0f858c3b4ee4d4f99.lean/declarations/irreducible-mul-x-add--f0fcf66d55d2cd8d566a9234.md) | 78 | `result-track:f0fcf66d55d2cd8d566a92344949ba53ad1a08fdd74d4109be52ca6a6a35149a` |
| 2 | `lemma` | [irreducible_of_disjoint_support](../../../../../mathematics/Algebra/CommutativeAlgebra/IrreducibleQuadratic/Variant0e30703b12d48ab1d73375f747908e1b71461e2c0cf4caa0f858c3b4ee4d4f99.lean/declarations/irreducible-of-disjoint-support--21542dfe775f8290078cf36b.md) | 98 | `result-track:21542dfe775f8290078cf36b5fea7bd4b596eb017ccaa23af3c984223b29184b` |
| 3 | `theorem` | [irreducible_of_totalDegree_eq_one](../../../../../mathematics/Algebra/CommutativeAlgebra/IrreducibleQuadratic/Variant0e30703b12d48ab1d73375f747908e1b71461e2c0cf4caa0f858c3b4ee4d4f99.lean/declarations/irreducible-of-totaldegree-eq-one--0018acfd966bce5c5f685dda.md) | 142 | `result-track:0018acfd966bce5c5f685ddacfe1bfb094909c1dce68bd371e5595b881eaad0e` |
| 4 | `instance` | [instModuleSelf](../../../../../mathematics/Algebra/CommutativeAlgebra/IrreducibleQuadratic/Variant0e30703b12d48ab1d73375f747908e1b71461e2c0cf4caa0f858c3b4ee4d4f99.lean/declarations/instmoduleself--aa1936f25ca72282ab26f8ce.md) | 162 | `declaration-track:aa1936f25ca72282ab26f8ce756eb1b022d021512fefc19117b127b48d059f2c` |
| 5 | `def` | [sumSMulX](../../../../../mathematics/Algebra/CommutativeAlgebra/IrreducibleQuadratic/Variant0e30703b12d48ab1d73375f747908e1b71461e2c0cf4caa0f858c3b4ee4d4f99.lean/declarations/sumsmulx--4eee11e81ee236805a9ca28c.md) | 166 | `declaration-track:4eee11e81ee236805a9ca28c23ef93fb7736a3f3f1c9e9082cbe24562de30018` |
| 6 | `theorem` | [coeff_sumSMulX](../../../../../mathematics/Algebra/CommutativeAlgebra/IrreducibleQuadratic/Variant0e30703b12d48ab1d73375f747908e1b71461e2c0cf4caa0f858c3b4ee4d4f99.lean/declarations/coeff-sumsmulx--fa0effb9008c5c772ec16100.md) | 170 | `result-track:fa0effb9008c5c772ec161003fa419e4aab0695e57850bedcb0d00aefa33767d` |
| 7 | `theorem` | [irreducible_sumSMulX](../../../../../mathematics/Algebra/CommutativeAlgebra/IrreducibleQuadratic/Variant0e30703b12d48ab1d73375f747908e1b71461e2c0cf4caa0f858c3b4ee4d4f99.lean/declarations/irreducible-sumsmulx--c9481e5edd5b0e4a57878d39.md) | 181 | `result-track:c9481e5edd5b0e4a57878d395e16e30b49f49bcc40836e209e844b785a3f9110` |
| 8 | `def` | [sumSMulXSMulY](../../../../../mathematics/Algebra/CommutativeAlgebra/IrreducibleQuadratic/Variant0e30703b12d48ab1d73375f747908e1b71461e2c0cf4caa0f858c3b4ee4d4f99.lean/declarations/sumsmulxsmuly--2f12da622e7f2d348714d5f9.md) | 205 | `declaration-track:2f12da622e7f2d348714d5f92a43520a76fe514546ebb12c1055abaff02c40ea` |
| 9 | `theorem` | [irreducible_sumSMulXSMulY](../../../../../mathematics/Algebra/CommutativeAlgebra/IrreducibleQuadratic/Variant0e30703b12d48ab1d73375f747908e1b71461e2c0cf4caa0f858c3b4ee4d4f99.lean/declarations/irreducible-sumsmulxsmuly--3b77b7525fba33fa2b6ce1a0.md) | 212 | `result-track:3b77b7525fba33fa2b6ce1a083ca446d866fed5637cb6061de5ec160021301ff` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
