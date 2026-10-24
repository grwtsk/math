# Verification target: GRWTSK.Analysis.Complex.ClosedCurveFactorIndex

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d5c51f41b28b47f0db26cb7fe86c9994049654bd",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Complex/ClosedCurveFactorIndex.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ComplexAnalysis/ClosedCurveFactorIndex.lean/index.md) · [Full source](../../../../mathematics/Analysis/ComplexAnalysis/ClosedCurveFactorIndex.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d5c51f41b28b47f0db26cb7fe86c9994049654bd`.

Source path: `GRWTSK/Analysis/Complex/ClosedCurveFactorIndex.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Complex/ClosedCurveFactorIndex.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.LoopIndexOperations`](../../../../mathematics/Analysis/ComplexAnalysis/LoopIndexOperations.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Topology.ContinuousMap.Algebra` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [lift](../../../../mathematics/Analysis/ComplexAnalysis/ClosedCurveFactorIndex.lean/declarations/lift--8a095b5d03d6092e251fe13d.md) | 25 | `declaration-track:8a095b5d03d6092e251fe13d8b25dd999ee294291da403fb2a00539c4581e31c` |
| 2 | `theorem` | [lift_closed](../../../../mathematics/Analysis/ComplexAnalysis/ClosedCurveFactorIndex.lean/declarations/lift-closed--c8ff7d8c1baf87f2a8848feb.md) | 29 | `result-track:c8ff7d8c1baf87f2a8848feb24fe263e2b7c014dfde5152784a4ce049a6a10c2` |
| 3 | `def` | [index](../../../../mathematics/Analysis/ComplexAnalysis/ClosedCurveFactorIndex.lean/declarations/index--8b1661dbb362b7a138a6caf3.md) | 33 | `declaration-track:8b1661dbb362b7a138a6caf3fef1671ece4b7648e08a6058ca23ef1abe907a9a` |
| 4 | `theorem` | [index_eq_winding](../../../../mathematics/Analysis/ComplexAnalysis/ClosedCurveFactorIndex.lean/declarations/index-eq-winding--35d1757ec0bc22de3947decc.md) | 36 | `result-track:35d1757ec0bc22de3947decc81601269076f60fd3954ac467f3b11e793a5629f` |
| 5 | `theorem` | [index_congr](../../../../mathematics/Analysis/ComplexAnalysis/ClosedCurveFactorIndex.lean/declarations/index-congr--408b7ad153fb2326cb5cff58.md) | 43 | `result-track:408b7ad153fb2326cb5cff589b1782e90668413310356fcee1964b2af9aa94c8` |
| 6 | `theorem` | [index_homotopy](../../../../mathematics/Analysis/ComplexAnalysis/ClosedCurveFactorIndex.lean/declarations/index-homotopy--758ec1ec5de02d7ad640b74c.md) | 51 | `result-track:758ec1ec5de02d7ad640b74cd779c052718dac2254ecbf2a9d4c7a3f3e28ab48` |
| 7 | `theorem` | [index_const](../../../../mathematics/Analysis/ComplexAnalysis/ClosedCurveFactorIndex.lean/declarations/index-const--e287320e3acd77cbc1f9e1c2.md) | 63 | `result-track:e287320e3acd77cbc1f9e1c293ea66920ddfb9a67ceda142e8de89f714b85096` |
| 8 | `theorem` | [mul_closed](../../../../mathematics/Analysis/ComplexAnalysis/ClosedCurveFactorIndex.lean/declarations/mul-closed--335f0ed2767eb6265006e86b.md) | 69 | `result-track:335f0ed2767eb6265006e86bfec8da5f2be4804a9d79f9f96bc8832394dc6755` |
| 9 | `theorem` | [mul_nonzero](../../../../mathematics/Analysis/ComplexAnalysis/ClosedCurveFactorIndex.lean/declarations/mul-nonzero--bdb29e9c0a478f33bae8dbf3.md) | 72 | `result-track:bdb29e9c0a478f33bae8dbf37179bfa6edeb87b5cc8f132691514873f7622e01` |
| 10 | `theorem` | [index_mul](../../../../mathematics/Analysis/ComplexAnalysis/ClosedCurveFactorIndex.lean/declarations/index-mul--a664b289ee76fa80e2c3a52b.md) | 75 | `result-track:a664b289ee76fa80e2c3a52b62f75fb47dcb80ac6632315cd0a534cf020d19ae` |
| 11 | `theorem` | [pow_closed](../../../../mathematics/Analysis/ComplexAnalysis/ClosedCurveFactorIndex.lean/declarations/pow-closed--29aedeb3e7e144c8df30a5c5.md) | 86 | `result-track:29aedeb3e7e144c8df30a5c58673b91bfa4dcc30786f6ca0517a8c8e0a1aa3ae` |
| 12 | `theorem` | [pow_nonzero](../../../../mathematics/Analysis/ComplexAnalysis/ClosedCurveFactorIndex.lean/declarations/pow-nonzero--41b57f47fcf857a51e1214c1.md) | 89 | `result-track:41b57f47fcf857a51e1214c17f59e6607cedc06acfec37774b5f2ecaf0a311c0` |
| 13 | `theorem` | [index_pow](../../../../mathematics/Analysis/ComplexAnalysis/ClosedCurveFactorIndex.lean/declarations/index-pow--623b88ced6ee9ca73a69ae79.md) | 93 | `result-track:623b88ced6ee9ca73a69ae79f569df6d78954606bbe9e5da0ce5952fb435061b` |
| 14 | `theorem` | [product_apply](../../../../mathematics/Analysis/ComplexAnalysis/ClosedCurveFactorIndex.lean/declarations/product-apply--f7c7a609e28854e5ae7af2ff.md) | 104 | `result-track:f7c7a609e28854e5ae7af2ff6623188aafd13419d63590ab04776c65501b42d7` |
| 15 | `theorem` | [prod_closed](../../../../mathematics/Analysis/ComplexAnalysis/ClosedCurveFactorIndex.lean/declarations/prod-closed--d232c3281c9c2c59dd5ea732.md) | 111 | `result-track:d232c3281c9c2c59dd5ea7321a9f9569d5085c0fee8eb99118f28e28f08f8f8a` |
| 16 | `theorem` | [prod_nonzero](../../../../mathematics/Analysis/ComplexAnalysis/ClosedCurveFactorIndex.lean/declarations/prod-nonzero--740ca46162e00642dbca0f4e.md) | 116 | `result-track:740ca46162e00642dbca0f4ee7f57862979f6ae67f0f113ebddcd245775d7fb9` |
| 17 | `theorem` | [index_prod](../../../../mathematics/Analysis/ComplexAnalysis/ClosedCurveFactorIndex.lean/declarations/index-prod--332e170e1452b8fc1ce206c0.md) | 124 | `result-track:332e170e1452b8fc1ce206c08dec76d9dea465f8f192b711d4a41c169d5fd928` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
