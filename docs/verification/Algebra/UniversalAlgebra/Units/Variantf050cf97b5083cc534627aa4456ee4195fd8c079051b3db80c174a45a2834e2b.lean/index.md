# Verification target: GRWTSK.Algebra.UniversalAlgebra.Units.Variantf050cf97b5083cc534627aa4456ee4195fd8c079051b3db80c174a45a2834e2b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a871578a458beb41d551e389e83f315597f583cb",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Units/Variantf050cf97b5083cc534627aa4456ee4195fd8c079051b3db80c174a45a2834e2b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Units/Variantf050cf97b5083cc534627aa4456ee4195fd8c079051b3db80c174a45a2834e2b.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Units/Variantf050cf97b5083cc534627aa4456ee4195fd8c079051b3db80c174a45a2834e2b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a871578a458beb41d551e389e83f315597f583cb`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Units/Variantf050cf97b5083cc534627aa4456ee4195fd8c079051b3db80c174a45a2834e2b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Units/Variantf050cf97b5083cc534627aa4456ee4195fd8c079051b3db80c174a45a2834e2b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Ring.Abs` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isUnit_iff_abs_eq](../../../../../mathematics/Algebra/UniversalAlgebra/Units/Variantf050cf97b5083cc534627aa4456ee4195fd8c079051b3db80c174a45a2834e2b.lean/declarations/isunit-iff-abs-eq--bec5826003c5db1074c67ab9.md) | 23 | `result-track:bec5826003c5db1074c67ab95b58f8319ff684c9e2df0b9bb5bb3b85dcf63de9` |
| 2 | `theorem` | [isUnit_sq](../../../../../mathematics/Algebra/UniversalAlgebra/Units/Variantf050cf97b5083cc534627aa4456ee4195fd8c079051b3db80c174a45a2834e2b.lean/declarations/isunit-sq--3ddf381189c61cea69a91ae3.md) | 26 | `result-track:3ddf381189c61cea69a91ae356c5dcc2ec7381e2713d3586147ce3e1b969adc5` |
| 3 | `theorem` | [units_sq](../../../../../mathematics/Algebra/UniversalAlgebra/Units/Variantf050cf97b5083cc534627aa4456ee4195fd8c079051b3db80c174a45a2834e2b.lean/declarations/units-sq--ea55634e3f3573d9a034c94d.md) | 29 | `result-track:ea55634e3f3573d9a034c94d7f4fb5926a389715e0392c712653a5541e32dcb5` |
| 4 | `theorem` | [units_mul_self](../../../../../mathematics/Algebra/UniversalAlgebra/Units/Variantf050cf97b5083cc534627aa4456ee4195fd8c079051b3db80c174a45a2834e2b.lean/declarations/units-mul-self--5aed0d0dca8c6e40e5767224.md) | 35 | `result-track:5aed0d0dca8c6e40e57672243d0d92d845f50f4c7355698f300830a8c2f59846` |
| 5 | `theorem` | [units_inv_eq_self](../../../../../mathematics/Algebra/UniversalAlgebra/Units/Variantf050cf97b5083cc534627aa4456ee4195fd8c079051b3db80c174a45a2834e2b.lean/declarations/units-inv-eq-self--a601fdb85246303b82dc1e1c.md) | 38 | `result-track:a601fdb85246303b82dc1e1cc0231a35e71149e1895703b51c66b232e087a49c` |
| 6 | `theorem` | [units_div_eq_mul](../../../../../mathematics/Algebra/UniversalAlgebra/Units/Variantf050cf97b5083cc534627aa4456ee4195fd8c079051b3db80c174a45a2834e2b.lean/declarations/units-div-eq-mul--7c681e1608ce07572a443e0d.md) | 40 | `result-track:7c681e1608ce07572a443e0d51317b8521e790ee54db401eabade1ea185c3d76` |
| 7 | `theorem` | [units_coe_mul_self](../../../../../mathematics/Algebra/UniversalAlgebra/Units/Variantf050cf97b5083cc534627aa4456ee4195fd8c079051b3db80c174a45a2834e2b.lean/declarations/units-coe-mul-self--45959675ed629f52606439f9.md) | 45 | `result-track:45959675ed629f52606439f97a113130c44d9f227b006a9f46c31a9fab52f4ed` |
| 8 | `theorem` | [neg_one_pow_ne_zero](../../../../../mathematics/Algebra/UniversalAlgebra/Units/Variantf050cf97b5083cc534627aa4456ee4195fd8c079051b3db80c174a45a2834e2b.lean/declarations/neg-one-pow-ne-zero--27ce41e4cbc49cbfa96e66dd.md) | 48 | `result-track:27ce41e4cbc49cbfa96e66dd31c9faa176d672b5e79903524f0d1837f45aad1c` |
| 9 | `theorem` | [sq_eq_one_of_sq_lt_four](../../../../../mathematics/Algebra/UniversalAlgebra/Units/Variantf050cf97b5083cc534627aa4456ee4195fd8c079051b3db80c174a45a2834e2b.lean/declarations/sq-eq-one-of-sq-lt-four--dcacc4c69a870b34f0d9a051.md) | 50 | `result-track:dcacc4c69a870b34f0d9a051ecc25e9f66a152b766462d58b94f6fae21cb17e3` |
| 10 | `theorem` | [sq_eq_one_of_sq_le_three](../../../../../mathematics/Algebra/UniversalAlgebra/Units/Variantf050cf97b5083cc534627aa4456ee4195fd8c079051b3db80c174a45a2834e2b.lean/declarations/sq-eq-one-of-sq-le-three--d5ff9c79c8e09c75a567558e.md) | 56 | `result-track:d5ff9c79c8e09c75a567558e62c7b5cb120a49660b9cf61765cad5cd21483f0d` |
| 11 | `theorem` | [units_pow_eq_pow_mod_two](../../../../../mathematics/Algebra/UniversalAlgebra/Units/Variantf050cf97b5083cc534627aa4456ee4195fd8c079051b3db80c174a45a2834e2b.lean/declarations/units-pow-eq-pow-mod-two--409f488856fec288ce94b72c.md) | 59 | `result-track:409f488856fec288ce94b72c3c21f88da303f1084306614e1317e9cf69bb035a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
