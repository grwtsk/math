# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Vieta.Variant94eb62007d819d04bf6b775626c4fe10e3c2b693655b4c388bb2ab6d5ffd38e8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a75eb755c405ca72caaf40d001064a81a0ac13c3",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Vieta/Variant94eb62007d819d04bf6b775626c4fe10e3c2b693655b4c388bb2ab6d5ffd38e8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Vieta/Variant94eb62007d819d04bf6b775626c4fe10e3c2b693655b4c388bb2ab6d5ffd38e8.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Vieta/Variant94eb62007d819d04bf6b775626c4fe10e3c2b693655b4c388bb2ab6d5ffd38e8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a75eb755c405ca72caaf40d001064a81a0ac13c3`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Vieta/Variant94eb62007d819d04bf6b775626c4fe10e3c2b693655b4c388bb2ab6d5ffd38e8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Vieta/Variant94eb62007d819d04bf6b775626c4fe10e3c2b693655b4c388bb2ab6d5ffd38e8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.Splits` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.MvPolynomial.Symmetric.Defs` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [prod_X_add_C_eq_sum_esymm](../../../../../mathematics/Algebra/CommutativeAlgebra/Vieta/Variant94eb62007d819d04bf6b775626c4fe10e3c2b693655b4c388bb2ab6d5ffd38e8.lean/declarations/prod-x-add-c-eq-sum-esymm--1e1e372521988e173c927788.md) | 36 | `result-track:1e1e372521988e173c927788b572c3fe96bf330a331a4cd8c814c4c4e2ce9171` |
| 2 | `theorem` | [prod_X_add_C_coeff](../../../../../mathematics/Algebra/CommutativeAlgebra/Vieta/Variant94eb62007d819d04bf6b775626c4fe10e3c2b693655b4c388bb2ab6d5ffd38e8.lean/declarations/prod-x-add-c-coeff--cbff3fcfaca485f7931db917.md) | 52 | `result-track:cbff3fcfaca485f7931db9177127eec8cd71c7dcb2c300a56c60d6a5ba49147d` |
| 3 | `theorem` | [prod_X_add_C_coeff'](../../../../../mathematics/Algebra/CommutativeAlgebra/Vieta/Variant94eb62007d819d04bf6b775626c4fe10e3c2b693655b4c388bb2ab6d5ffd38e8.lean/declarations/prod-x-add-c-coeff--323d8e36f22284e455e3bf57.md) | 66 | `result-track:323d8e36f22284e455e3bf57f4e594b49e5a8e747ec3a9678a3a5385e6109dcd` |
| 4 | `theorem` | [_root_.Finset.prod_X_add_C_coeff](../../../../../mathematics/Algebra/CommutativeAlgebra/Vieta/Variant94eb62007d819d04bf6b775626c4fe10e3c2b693655b4c388bb2ab6d5ffd38e8.lean/declarations/root-finset-prod-x-add-c-coeff--572d3cc2f7a02b75d90ba4fb.md) | 71 | `result-track:572d3cc2f7a02b75d90ba4fb9889f5631af142fb778d9ca6293fe0ec97556b85` |
| 5 | `theorem` | [esymm_neg](../../../../../mathematics/Algebra/CommutativeAlgebra/Vieta/Variant94eb62007d819d04bf6b775626c4fe10e3c2b693655b4c388bb2ab6d5ffd38e8.lean/declarations/esymm-neg--017a47b0097d64ff91e02a81.md) | 82 | `result-track:017a47b0097d64ff91e02a81dea9d1b734a0cf369a1ef8d3f2605b53c637e65f` |
| 6 | `theorem` | [prod_X_sub_X_eq_sum_esymm](../../../../../mathematics/Algebra/CommutativeAlgebra/Vieta/Variant94eb62007d819d04bf6b775626c4fe10e3c2b693655b4c388bb2ab6d5ffd38e8.lean/declarations/prod-x-sub-x-eq-sum-esymm--80222d2f5fe988563a4aa9cf.md) | 91 | `result-track:80222d2f5fe988563a4aa9cf93761b277bce616fef99d208b48a34fba0bc8c95` |
| 7 | `theorem` | [prod_X_sub_C_coeff](../../../../../mathematics/Algebra/CommutativeAlgebra/Vieta/Variant94eb62007d819d04bf6b775626c4fe10e3c2b693655b4c388bb2ab6d5ffd38e8.lean/declarations/prod-x-sub-c-coeff--ff83a5032b3de195eee09308.md) | 105 | `result-track:ff83a5032b3de195eee0930801ae35ff5ddfd8056ead1ddb08da28a95063efea` |
| 8 | `theorem` | [_root_.Polynomial.coeff_eq_esymm_roots_of_card](../../../../../mathematics/Algebra/CommutativeAlgebra/Vieta/Variant94eb62007d819d04bf6b775626c4fe10e3c2b693655b4c388bb2ab6d5ffd38e8.lean/declarations/root-polynomial-coeff-eq-esymm-roots-of-card--a5c081dde2b9e1f4ef9a0c13.md) | 122 | `result-track:a5c081dde2b9e1f4ef9a0c13175ab820479a680ff2b330fe1d20b69dbd19be37` |
| 9 | `theorem` | [_root_.Polynomial.coeff_eq_esymm_roots_of_splits](../../../../../mathematics/Algebra/CommutativeAlgebra/Vieta/Variant94eb62007d819d04bf6b775626c4fe10e3c2b693655b4c388bb2ab6d5ffd38e8.lean/declarations/root-polynomial-coeff-eq-esymm-roots-of-splits--e3dc8106fa72826a64dd0d25.md) | 131 | `result-track:e3dc8106fa72826a64dd0d257fcdde6b51d51bb2f186ca44a2e3e8a20d18677f` |
| 10 | `theorem` | [MvPolynomial.prod_C_add_X_eq_sum_esymm](../../../../../mathematics/Algebra/CommutativeAlgebra/Vieta/Variant94eb62007d819d04bf6b775626c4fe10e3c2b693655b4c388bb2ab6d5ffd38e8.lean/declarations/mvpolynomial-prod-c-add-x-eq-sum-esymm--6a986113a47e1b69aa3dec20.md) | 149 | `result-track:6a986113a47e1b69aa3dec20e458a8a42fffc086be6d046db5469a0ca0df823b` |
| 11 | `theorem` | [MvPolynomial.prod_X_add_C_coeff](../../../../../mathematics/Algebra/CommutativeAlgebra/Vieta/Variant94eb62007d819d04bf6b775626c4fe10e3c2b693655b4c388bb2ab6d5ffd38e8.lean/declarations/mvpolynomial-prod-x-add-c-coeff--88bd10f258732fa5cc1ccd3a.md) | 160 | `result-track:88bd10f258732fa5cc1ccd3aa033f18dfe3cd168906f87815dedd967f0c644f1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
