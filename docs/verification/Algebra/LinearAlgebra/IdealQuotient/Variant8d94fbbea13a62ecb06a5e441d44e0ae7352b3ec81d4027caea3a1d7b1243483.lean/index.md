# Verification target: GRWTSK.Algebra.LinearAlgebra.IdealQuotient.Variant8d94fbbea13a62ecb06a5e441d44e0ae7352b3ec81d4027caea3a1d7b1243483

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9955cfcefaa288ed978def452bf44bf5310e73e7",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/IdealQuotient/Variant8d94fbbea13a62ecb06a5e441d44e0ae7352b3ec81d4027caea3a1d7b1243483.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/IdealQuotient/Variant8d94fbbea13a62ecb06a5e441d44e0ae7352b3ec81d4027caea3a1d7b1243483.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/IdealQuotient/Variant8d94fbbea13a62ecb06a5e441d44e0ae7352b3ec81d4027caea3a1d7b1243483.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9955cfcefaa288ed978def452bf44bf5310e73e7`.

Source path: `GRWTSK/Algebra/LinearAlgebra/IdealQuotient/Variant8d94fbbea13a62ecb06a5e441d44e0ae7352b3ec81d4027caea3a1d7b1243483.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/IdealQuotient/Variant8d94fbbea13a62ecb06a5e441d44e0ae7352b3ec81d4027caea3a1d7b1243483.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.FreeModule.Finite.Quotient` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [quotientEquivPiSpan](../../../../../mathematics/Algebra/LinearAlgebra/IdealQuotient/Variant8d94fbbea13a62ecb06a5e441d44e0ae7352b3ec81d4027caea3a1d7b1243483.lean/declarations/quotientequivpispan--fb5a3431330b2084162615eb.md) | 26 | `declaration-track:fb5a3431330b2084162615eb23a48f68d8febca54184afdd1314bda7bce93f49` |
| 2 | `def` | [quotientEquivPiZMod](../../../../../mathematics/Algebra/LinearAlgebra/IdealQuotient/Variant8d94fbbea13a62ecb06a5e441d44e0ae7352b3ec81d4027caea3a1d7b1243483.lean/declarations/quotientequivpizmod--01dd1d98f92936ba05b1020e.md) | 32 | `declaration-track:01dd1d98f92936ba05b1020ed145588576ed52142e0621ccaabc3519b7d771fd` |
| 3 | `theorem` | [finiteQuotientOfFreeOfNeBot](../../../../../mathematics/Algebra/LinearAlgebra/IdealQuotient/Variant8d94fbbea13a62ecb06a5e441d44e0ae7352b3ec81d4027caea3a1d7b1243483.lean/declarations/finitequotientoffreeofnebot--fc022a3ecc4bf2dd6e6b181f.md) | 40 | `result-track:fc022a3ecc4bf2dd6e6b181f91295278937302e06aa3f22f7fea8ab30c4e5d09` |
| 4 | `def` | [quotientEquivDirectSum](../../../../../mathematics/Algebra/LinearAlgebra/IdealQuotient/Variant8d94fbbea13a62ecb06a5e441d44e0ae7352b3ec81d4027caea3a1d7b1243483.lean/declarations/quotientequivdirectsum--706b388c5eaa0a4a7744e563.md) | 53 | `declaration-track:706b388c5eaa0a4a7744e563aded39cfd83fba605c0498de35e7ad858f3987f9` |
| 5 | `theorem` | [finrank_quotient_eq_sum](../../../../../mathematics/Algebra/LinearAlgebra/IdealQuotient/Variant8d94fbbea13a62ecb06a5e441d44e0ae7352b3ec81d4027caea3a1d7b1243483.lean/declarations/finrank-quotient-eq-sum--2961ed1bd4a3ee583e38c72b.md) | 57 | `result-track:2961ed1bd4a3ee583e38c72bd86f783b1aeeb60f70b5deab245e9237880cc590` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
