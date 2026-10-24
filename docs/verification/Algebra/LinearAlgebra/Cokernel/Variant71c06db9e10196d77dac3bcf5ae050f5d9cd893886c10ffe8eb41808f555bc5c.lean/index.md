# Verification target: GRWTSK.Algebra.LinearAlgebra.Cokernel.Variant71c06db9e10196d77dac3bcf5ae050f5d9cd893886c10ffe8eb41808f555bc5c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7592851ac71278bf572c87df45b4167fe44bac2f",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Cokernel/Variant71c06db9e10196d77dac3bcf5ae050f5d9cd893886c10ffe8eb41808f555bc5c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Cokernel/Variant71c06db9e10196d77dac3bcf5ae050f5d9cd893886c10ffe8eb41808f555bc5c.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Cokernel/Variant71c06db9e10196d77dac3bcf5ae050f5d9cd893886c10ffe8eb41808f555bc5c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7592851ac71278bf572c87df45b4167fe44bac2f`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Cokernel/Variant71c06db9e10196d77dac3bcf5ae050f5d9cd893886c10ffe8eb41808f555bc5c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Cokernel/Variant71c06db9e10196d77dac3bcf5ae050f5d9cd893886c10ffe8eb41808f555bc5c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Presentation.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CokernelData](../../../../../mathematics/Algebra/LinearAlgebra/Cokernel/Variant71c06db9e10196d77dac3bcf5ae050f5d9cd893886c10ffe8eb41808f555bc5c.lean/declarations/cokerneldata--d451fd252d0e546bc62aa633.md) | 53 | `declaration-track:d451fd252d0e546bc62aa633d6deb3ad238fdce9f3f91d900d6b400c5650cf44` |
| 2 | `def` | [CokernelData.ofSection](../../../../../mathematics/Algebra/LinearAlgebra/Cokernel/Variant71c06db9e10196d77dac3bcf5ae050f5d9cd893886c10ffe8eb41808f555bc5c.lean/declarations/cokerneldata-ofsection--18d083918ad4a45cbbce1735.md) | 61 | `declaration-track:18d083918ad4a45cbbce173518a91c4698c05e4355ce28535d8a5cb4c4ca4930` |
| 3 | `instance` | [nonempty_cokernelData](../../../../../mathematics/Algebra/LinearAlgebra/Cokernel/Variant71c06db9e10196d77dac3bcf5ae050f5d9cd893886c10ffe8eb41808f555bc5c.lean/declarations/nonempty-cokerneldata--c550991db1ca37b63234bdc4.md) | 67 | `declaration-track:c550991db1ca37b63234bdc4fbffd58c740001dac3a27ef3e887310d78c38f6a` |
| 4 | `def` | [cokernelRelations](../../../../../mathematics/Algebra/LinearAlgebra/Cokernel/Variant71c06db9e10196d77dac3bcf5ae050f5d9cd893886c10ffe8eb41808f555bc5c.lean/declarations/cokernelrelations--cc5771ba98a30d2d4766b0df.md) | 79 | `declaration-track:cc5771ba98a30d2d4766b0df73d399b1473a815cdc11189f142bef5266990c5e` |
| 5 | `def` | [cokernelSolution](../../../../../mathematics/Algebra/LinearAlgebra/Cokernel/Variant71c06db9e10196d77dac3bcf5ae050f5d9cd893886c10ffe8eb41808f555bc5c.lean/declarations/cokernelsolution--29489d8f6237324ce8b57ccb.md) | 89 | `declaration-track:29489d8f6237324ce8b57ccbdb1023bb82d36452b85ab5dd20539f086ce01e4b` |
| 6 | `def` | [isPresentationCore](../../../../../mathematics/Algebra/LinearAlgebra/Cokernel/Variant71c06db9e10196d77dac3bcf5ae050f5d9cd893886c10ffe8eb41808f555bc5c.lean/declarations/ispresentationcore--8c24019b9130d4800194c615.md) | 106 | `declaration-track:8c24019b9130d4800194c6151dc9ca4f53c9486c072bff0b0a4cc0598b146314` |
| 7 | `lemma` | [isPresentation](../../../../../mathematics/Algebra/LinearAlgebra/Cokernel/Variant71c06db9e10196d77dac3bcf5ae050f5d9cd893886c10ffe8eb41808f555bc5c.lean/declarations/ispresentation--9654709d5c912bad944428e6.md) | 127 | `result-track:9654709d5c912bad944428e6d4e6dd0e60930c24813016cdd6f4c8aa320ae3a4` |
| 8 | `def` | [cokernel](../../../../../mathematics/Algebra/LinearAlgebra/Cokernel/Variant71c06db9e10196d77dac3bcf5ae050f5d9cd893886c10ffe8eb41808f555bc5c.lean/declarations/cokernel--562824bc702641588fa1e9ee.md) | 136 | `declaration-track:562824bc702641588fa1e9ee26445cbcc73289f73e682c9f0a90a7933d2cecf1` |
| 9 | `def` | [ofExact](../../../../../mathematics/Algebra/LinearAlgebra/Cokernel/Variant71c06db9e10196d77dac3bcf5ae050f5d9cd893886c10ffe8eb41808f555bc5c.lean/declarations/ofexact--9df5b9283367e3c06a938ccc.md) | 145 | `declaration-track:9df5b9283367e3c06a938cccb46a4476d766a13f434d9d99400507c3b478f281` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
