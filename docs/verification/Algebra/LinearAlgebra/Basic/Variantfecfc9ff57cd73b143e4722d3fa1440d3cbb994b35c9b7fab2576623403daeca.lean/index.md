# Verification target: GRWTSK.Algebra.LinearAlgebra.Basic.Variantfecfc9ff57cd73b143e4722d3fa1440d3cbb994b35c9b7fab2576623403daeca

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e98f73e26067ed056da92463b6791985ebabcf24",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantfecfc9ff57cd73b143e4722d3fa1440d3cbb994b35c9b7fab2576623403daeca.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfecfc9ff57cd73b143e4722d3fa1440d3cbb994b35c9b7fab2576623403daeca.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfecfc9ff57cd73b143e4722d3fa1440d3cbb994b35c9b7fab2576623403daeca.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e98f73e26067ed056da92463b6791985ebabcf24`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variantfecfc9ff57cd73b143e4722d3fa1440d3cbb994b35c9b7fab2576623403daeca.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variantfecfc9ff57cd73b143e4722d3fa1440d3cbb994b35c9b7fab2576623403daeca.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [LieAlgebra.commute_ad_of_commute](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfecfc9ff57cd73b143e4722d3fa1440d3cbb994b35c9b7fab2576623403daeca.lean/declarations/liealgebra-commute-ad-of-commute--d8c76c1337279cd89dc032f4.md) | 34 | `result-track:d8c76c1337279cd89dc032f40b0986d4b0a409aaf0fd6e8555dbf486e64ec268` |
| 2 | `theorem` | [LieAlgebra.ad_nilpotent_of_nilpotent](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfecfc9ff57cd73b143e4722d3fa1440d3cbb994b35c9b7fab2576623403daeca.lean/declarations/liealgebra-ad-nilpotent-of-nilpotent--65401d23fe403817a2eb5c78.md) | 40 | `result-track:65401d23fe403817a2eb5c786a259a96b1d0960b2233aa6cee36a23ff296d286` |
| 3 | `theorem` | [LieSubalgebra.isNilpotent_ad_of_isNilpotent_ad](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfecfc9ff57cd73b143e4722d3fa1440d3cbb994b35c9b7fab2576623403daeca.lean/declarations/liesubalgebra-isnilpotent-ad-of-isnilpotent-ad--5ad696b5daa3fd4d0677355a.md) | 47 | `result-track:5ad696b5daa3fd4d0677355aa3229478b678bee8de4e18a5c69c04c6b82fa3d3` |
| 4 | `theorem` | [LieAlgebra.isNilpotent_ad_of_isNilpotent](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfecfc9ff57cd73b143e4722d3fa1440d3cbb994b35c9b7fab2576623403daeca.lean/declarations/liealgebra-isnilpotent-ad-of-isnilpotent--289f2c64097775e86a1cc818.md) | 54 | `result-track:289f2c64097775e86a1cc818362a92925c479e038f5de2e5bc72723513020b08` |
| 5 | `theorem` | [LieAlgebra.ad_isSemisimple_of_isSemisimple](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfecfc9ff57cd73b143e4722d3fa1440d3cbb994b35c9b7fab2576623403daeca.lean/declarations/liealgebra-ad-issemisimple-of-issemisimple--6a28a78a193bb59caf034151.md) | 69 | `result-track:6a28a78a193bb59caf034151621a553132ff3b509c32a1a97d619b18c07db6c1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
