# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Comap.Variantfe516c73e115f48100a6293359ce43bbd29079cf447509f624490649bddcd57b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d96f69a74a2efb9c10fdb0faf5d8c4e798b922d9",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Comap/Variantfe516c73e115f48100a6293359ce43bbd29079cf447509f624490649bddcd57b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Comap/Variantfe516c73e115f48100a6293359ce43bbd29079cf447509f624490649bddcd57b.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Comap/Variantfe516c73e115f48100a6293359ce43bbd29079cf447509f624490649bddcd57b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d96f69a74a2efb9c10fdb0faf5d8c4e798b922d9`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Comap/Variantfe516c73e115f48100a6293359ce43bbd29079cf447509f624490649bddcd57b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Comap/Variantfe516c73e115f48100a6293359ce43bbd29079cf447509f624490649bddcd57b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.MvPolynomial.Rename` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [comap](../../../../../mathematics/Algebra/CommutativeAlgebra/Comap/Variantfe516c73e115f48100a6293359ce43bbd29079cf447509f624490649bddcd57b.lean/declarations/comap--b68a5f974a598fbc057afa14.md) | 43 | `declaration-track:b68a5f974a598fbc057afa14658bad4365003ff098d00356d9e43e3726ef7d52` |
| 2 | `theorem` | [comap_apply](../../../../../mathematics/Algebra/CommutativeAlgebra/Comap/Variantfe516c73e115f48100a6293359ce43bbd29079cf447509f624490649bddcd57b.lean/declarations/comap-apply--06b59c68029720bf75548ead.md) | 47 | `result-track:06b59c68029720bf75548eadcd0e817893a13f13dfb5258c15fbb23ed3f4e012` |
| 3 | `theorem` | [comap_id_apply](../../../../../mathematics/Algebra/CommutativeAlgebra/Comap/Variantfe516c73e115f48100a6293359ce43bbd29079cf447509f624490649bddcd57b.lean/declarations/comap-id-apply--2f3bf8e60c02008f0d46ed24.md) | 52 | `result-track:2f3bf8e60c02008f0d46ed240dfbcbf9b82a426a307e58592377afeb4e8fb0c0` |
| 4 | `theorem` | [comap_id](../../../../../mathematics/Algebra/CommutativeAlgebra/Comap/Variantfe516c73e115f48100a6293359ce43bbd29079cf447509f624490649bddcd57b.lean/declarations/comap-id--9c61a2b4146ff7a5fe584edd.md) | 58 | `result-track:9c61a2b4146ff7a5fe584edde1a31e378d97a065372cd044d565ab8fe2419584` |
| 5 | `theorem` | [comap_comp_apply](../../../../../mathematics/Algebra/CommutativeAlgebra/Comap/Variantfe516c73e115f48100a6293359ce43bbd29079cf447509f624490649bddcd57b.lean/declarations/comap-comp-apply--d07878945ad54d31b2502ce4.md) | 64 | `result-track:d07878945ad54d31b2502ce4960d347a6aac012bbcdd5581d14394a7a398cc38` |
| 6 | `theorem` | [comap_comp](../../../../../mathematics/Algebra/CommutativeAlgebra/Comap/Variantfe516c73e115f48100a6293359ce43bbd29079cf447509f624490649bddcd57b.lean/declarations/comap-comp--17e75679cf93992450851e8c.md) | 78 | `result-track:17e75679cf93992450851e8c0502e29198f0f500e9e3a907eb03d31551b7f763` |
| 7 | `theorem` | [comap_eq_id_of_eq_id](../../../../../mathematics/Algebra/CommutativeAlgebra/Comap/Variantfe516c73e115f48100a6293359ce43bbd29079cf447509f624490649bddcd57b.lean/declarations/comap-eq-id-of-eq-id--300324e6a0a76235512ec4a5.md) | 83 | `result-track:300324e6a0a76235512ec4a5297c0219d59fc398444f92921a1c692c72419292` |
| 8 | `theorem` | [comap_rename](../../../../../mathematics/Algebra/CommutativeAlgebra/Comap/Variantfe516c73e115f48100a6293359ce43bbd29079cf447509f624490649bddcd57b.lean/declarations/comap-rename--ca590aa250cf0836f6fdc9ee.md) | 89 | `result-track:ca590aa250cf0836f6fdc9eeee992f83d5f9f505ba5094aa2be569cad4d65a1b` |
| 9 | `def` | [comapEquiv](../../../../../mathematics/Algebra/CommutativeAlgebra/Comap/Variantfe516c73e115f48100a6293359ce43bbd29079cf447509f624490649bddcd57b.lean/declarations/comapequiv--86518f4b60a58df0f87fb9a9.md) | 96 | `declaration-track:86518f4b60a58df0f87fb9a920d48d0035a2b4b0476c892e8bfd2b18e67544a4` |
| 10 | `theorem` | [comapEquiv_coe](../../../../../mathematics/Algebra/CommutativeAlgebra/Comap/Variantfe516c73e115f48100a6293359ce43bbd29079cf447509f624490649bddcd57b.lean/declarations/comapequiv-coe--077004b746bcd659e632e12c.md) | 113 | `result-track:077004b746bcd659e632e12cf61f509c5a7af40f8a508f7b1be8d69c8680caf2` |
| 11 | `theorem` | [comapEquiv_symm_coe](../../../../../mathematics/Algebra/CommutativeAlgebra/Comap/Variantfe516c73e115f48100a6293359ce43bbd29079cf447509f624490649bddcd57b.lean/declarations/comapequiv-symm-coe--88145ea1d0cb4454525e0bb8.md) | 118 | `result-track:88145ea1d0cb4454525e0bb8e9de268e058be726dd7935238fa61b1d15e27d41` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
