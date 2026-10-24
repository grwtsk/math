# Verification target: GRWTSK.Algebra.GroupTheory.Centralizer.Variantae43e2435a3862f51144c7a68a56fca6aa05b11519afb35c9a16fb75aacb4f2a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5c93781c3a874fa951213bc204c8f0d6c4b1a61b",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Centralizer/Variantae43e2435a3862f51144c7a68a56fca6aa05b11519afb35c9a16fb75aacb4f2a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variantae43e2435a3862f51144c7a68a56fca6aa05b11519afb35c9a16fb75aacb4f2a.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variantae43e2435a3862f51144c7a68a56fca6aa05b11519afb35c9a16fb75aacb4f2a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5c93781c3a874fa951213bc204c8f0d6c4b1a61b`.

Source path: `GRWTSK/Algebra/GroupTheory/Centralizer/Variantae43e2435a3862f51144c7a68a56fca6aa05b11519afb35c9a16fb75aacb4f2a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Centralizer/Variantae43e2435a3862f51144c7a68a56fca6aa05b11519afb35c9a16fb75aacb4f2a.lean.json)

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
| 1 | `def` | [centralizer](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variantae43e2435a3862f51144c7a68a56fca6aa05b11519afb35c9a16fb75aacb4f2a.lean/declarations/centralizer--d702da9111ee3b9bbd904e19.md) | 47 | `declaration-track:d702da9111ee3b9bbd904e197cbb4a54cb88b9d2b6f1e035bdfe018848652740` |
| 2 | `theorem` | [coe_centralizer](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variantae43e2435a3862f51144c7a68a56fca6aa05b11519afb35c9a16fb75aacb4f2a.lean/declarations/coe-centralizer--320da77a1b598a0879dd4fd2.md) | 52 | `result-track:320da77a1b598a0879dd4fd205e3b02a737b5518090bb7ee8e240355109f6138` |
| 3 | `theorem` | [mem_centralizer_iff](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variantae43e2435a3862f51144c7a68a56fca6aa05b11519afb35c9a16fb75aacb4f2a.lean/declarations/mem-centralizer-iff--de1cad250d2a946a8a19a1ea.md) | 58 | `result-track:de1cad250d2a946a8a19a1ea7ff491926eb19499f17e182dbf2681c62aef242a` |
| 4 | `instance` | [decidableMemCentralizer](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variantae43e2435a3862f51144c7a68a56fca6aa05b11519afb35c9a16fb75aacb4f2a.lean/declarations/decidablememcentralizer--f5ab528be170e86b5e3e086e.md) | 62 | `declaration-track:f5ab528be170e86b5e3e086ef2dcf4e0c1ae7268ccfc5e92624a7e9577a22c2d` |
| 5 | `theorem` | [center_le_centralizer](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variantae43e2435a3862f51144c7a68a56fca6aa05b11519afb35c9a16fb75aacb4f2a.lean/declarations/center-le-centralizer--17871df5385b8d0df49b7e99.md) | 67 | `result-track:17871df5385b8d0df49b7e992b833e9241c3609df0bb5c7d17e826a96ca2e6af` |
| 6 | `theorem` | [centralizer_le](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variantae43e2435a3862f51144c7a68a56fca6aa05b11519afb35c9a16fb75aacb4f2a.lean/declarations/centralizer-le--cb9791f025045c907e6153b9.md) | 71 | `result-track:cb9791f025045c907e6153b9ce0867f8bbd97c6543817244b35599289ec44334` |
| 7 | `theorem` | [centralizer_eq_top_iff_subset](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variantae43e2435a3862f51144c7a68a56fca6aa05b11519afb35c9a16fb75aacb4f2a.lean/declarations/centralizer-eq-top-iff-subset--70a30252b8829083f92e0968.md) | 75 | `result-track:70a30252b8829083f92e0968e6ef1693133664e56e592f37a301c525d383b06c` |
| 8 | `theorem` | [centralizer_univ](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variantae43e2435a3862f51144c7a68a56fca6aa05b11519afb35c9a16fb75aacb4f2a.lean/declarations/centralizer-univ--6c1714164442c61b0d32322a.md) | 80 | `result-track:6c1714164442c61b0d32322aaa99da5e990c5de38d869b67f9e937d8d815f825` |
| 9 | `lemma` | [closure_le_centralizer_centralizer](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variantae43e2435a3862f51144c7a68a56fca6aa05b11519afb35c9a16fb75aacb4f2a.lean/declarations/closure-le-centralizer-centralizer--7584d70d87baeb90fefdca03.md) | 85 | `result-track:7584d70d87baeb90fefdca03dd50b5ca7901c849e1d7d6bb85eb4d9ef75b3fe4` |
| 10 | `theorem` | [isMulCommutative_closure](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variantae43e2435a3862f51144c7a68a56fca6aa05b11519afb35c9a16fb75aacb4f2a.lean/declarations/ismulcommutative-closure--562129456a383a6482b5cc1e.md) | 92 | `result-track:562129456a383a6482b5cc1e31c5e72e7c880063ce421834011b4cfdf66f448b` |
| 11 | `abbrev` | [closureCommSemigroupOfComm](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variantae43e2435a3862f51144c7a68a56fca6aa05b11519afb35c9a16fb75aacb4f2a.lean/declarations/closurecommsemigroupofcomm--27c4d5f056478e7c6f3732e7.md) | 103 | `declaration-track:27c4d5f056478e7c6f3732e7eaa163192a7bc4ff53a5a97b35280e12437138a9` |
| 12 | `instance` | [instIsMulCommutative_closure](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variantae43e2435a3862f51144c7a68a56fca6aa05b11519afb35c9a16fb75aacb4f2a.lean/declarations/instismulcommutative-closure--5ce0ed01a1c8eb00466c868a.md) | 109 | `declaration-track:5ce0ed01a1c8eb00466c868a00564436c837f8cb5bcb06fba1356c3671f5a88e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
