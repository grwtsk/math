# Verification target: GRWTSK.Algebra.GroupTheory.Sum.Variant61eb9546f802c15106767ca14131bde753eddf599b7062fa62058d1e68b37874

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8f07678c12e11a7884c624095c2890768cfebcc0",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Sum/Variant61eb9546f802c15106767ca14131bde753eddf599b7062fa62058d1e68b37874.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Sum/Variant61eb9546f802c15106767ca14131bde753eddf599b7062fa62058d1e68b37874.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Sum/Variant61eb9546f802c15106767ca14131bde753eddf599b7062fa62058d1e68b37874.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8f07678c12e11a7884c624095c2890768cfebcc0`.

Source path: `GRWTSK/Algebra/GroupTheory/Sum/Variant61eb9546f802c15106767ca14131bde753eddf599b7062fa62058d1e68b37874.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Sum/Variant61eb9546f802c15106767ca14131bde753eddf599b7062fa62058d1e68b37874.lean.json)

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
| 1 | `instance` | [instSMul](../../../../../mathematics/Algebra/GroupTheory/Sum/Variant61eb9546f802c15106767ca14131bde753eddf599b7062fa62058d1e68b37874.lean/declarations/instsmul--e2e3025f59abb5b6d164e615.md) | 37 | `declaration-track:e2e3025f59abb5b6d164e61593b0f8de5666ffd9ec1bbc96c388eb323bcb94c8` |
| 2 | `theorem` | [smul_def](../../../../../mathematics/Algebra/GroupTheory/Sum/Variant61eb9546f802c15106767ca14131bde753eddf599b7062fa62058d1e68b37874.lean/declarations/smul-def--665a7c35865f4ab284c46071.md) | 41 | `result-track:665a7c35865f4ab284c46071426f92a729f4c4f4b250ac8bf9543cef9b71483a` |
| 3 | `theorem` | [smul_inl](../../../../../mathematics/Algebra/GroupTheory/Sum/Variant61eb9546f802c15106767ca14131bde753eddf599b7062fa62058d1e68b37874.lean/declarations/smul-inl--b2d8bed3e5d0673378bc9d6a.md) | 45 | `result-track:b2d8bed3e5d0673378bc9d6a2eb0eff6002ae8f0821cd9af94785dca565dc441` |
| 4 | `theorem` | [smul_inr](../../../../../mathematics/Algebra/GroupTheory/Sum/Variant61eb9546f802c15106767ca14131bde753eddf599b7062fa62058d1e68b37874.lean/declarations/smul-inr--02025535261fcefb87a21ff7.md) | 49 | `result-track:02025535261fcefb87a21ff7561615a73157507fd3c2ef599bf1bf873efaf07a` |
| 5 | `theorem` | [smul_swap](../../../../../mathematics/Algebra/GroupTheory/Sum/Variant61eb9546f802c15106767ca14131bde753eddf599b7062fa62058d1e68b37874.lean/declarations/smul-swap--4f81780824cba8474ed708c7.md) | 53 | `result-track:4f81780824cba8474ed708c72211d556fedd4afa71daebc0ea78f2b47cb76140` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Sum/Variant61eb9546f802c15106767ca14131bde753eddf599b7062fa62058d1e68b37874.lean/declarations/instance--0214cd1d2239c98a9ed8e175.md) | 55 | `declaration-track:0214cd1d2239c98a9ed8e1753757303fa8257306f7f555e51bc78465ad1aee77` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Sum/Variant61eb9546f802c15106767ca14131bde753eddf599b7062fa62058d1e68b37874.lean/declarations/instance--55b82a70719b6eae5f8c2b11.md) | 61 | `declaration-track:55b82a70719b6eae5f8c2b113d58cebdd64b6e619e38da376d16643ec911a623` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Sum/Variant61eb9546f802c15106767ca14131bde753eddf599b7062fa62058d1e68b37874.lean/declarations/instance--e7e28a508ef75c637e9f77da.md) | 67 | `declaration-track:e7e28a508ef75c637e9f77da10039c0782e6fe2e9b5a7cceb587d0522dc2ec99` |
| 9 | `instance` | [FaithfulSMulLeft](../../../../../mathematics/Algebra/GroupTheory/Sum/Variant61eb9546f802c15106767ca14131bde753eddf599b7062fa62058d1e68b37874.lean/declarations/faithfulsmulleft--68f273dcaf5865c973a0958f.md) | 74 | `declaration-track:68f273dcaf5865c973a0958f2d8d41a6533ceace7cd06869a734f9ac9ce9e556` |
| 10 | `instance` | [FaithfulSMulRight](../../../../../mathematics/Algebra/GroupTheory/Sum/Variant61eb9546f802c15106767ca14131bde753eddf599b7062fa62058d1e68b37874.lean/declarations/faithfulsmulright--bdb755a5e8a3f39c09436bfa.md) | 78 | `declaration-track:bdb755a5e8a3f39c09436bfa0379f7a9336cc4c72b622f095aa6ec630335b543` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Sum/Variant61eb9546f802c15106767ca14131bde753eddf599b7062fa62058d1e68b37874.lean/declarations/instance--434c8a5cb3bab84fa9c324ce.md) | 84 | `declaration-track:434c8a5cb3bab84fa9c324cec35902fc7bf1dca88816200d0a5e362a7be814d0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
