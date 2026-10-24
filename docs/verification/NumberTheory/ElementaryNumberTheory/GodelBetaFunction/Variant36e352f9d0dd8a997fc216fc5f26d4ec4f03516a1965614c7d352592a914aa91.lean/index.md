# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.GodelBetaFunction.Variant36e352f9d0dd8a997fc216fc5f26d4ec4f03516a1965614c7d352592a914aa91

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "68bd7e3e60920361d6cb515fab9aea764f0a3e05",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/GodelBetaFunction/Variant36e352f9d0dd8a997fc216fc5f26d4ec4f03516a1965614c7d352592a914aa91.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GodelBetaFunction/Variant36e352f9d0dd8a997fc216fc5f26d4ec4f03516a1965614c7d352592a914aa91.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GodelBetaFunction/Variant36e352f9d0dd8a997fc216fc5f26d4ec4f03516a1965614c7d352592a914aa91.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `68bd7e3e60920361d6cb515fab9aea764f0a3e05`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/GodelBetaFunction/Variant36e352f9d0dd8a997fc216fc5f26d4ec4f03516a1965614c7d352592a914aa91.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/GodelBetaFunction/Variant36e352f9d0dd8a997fc216fc5f26d4ec4f03516a1965614c7d352592a914aa91.lean.json)

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
| 1 | `lemma` | [coprime_mul_succ](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GodelBetaFunction/Variant36e352f9d0dd8a997fc216fc5f26d4ec4f03516a1965614c7d352592a914aa91.lean/declarations/coprime-mul-succ--2a78a4d66daaea1dd7f642a5.md) | 60 | `result-track:2a78a4d66daaea1dd7f642a513114b5d56b9f1c42a7912066858fe1b3d18eebb` |
| 2 | `def` | [supOfSeq](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GodelBetaFunction/Variant36e352f9d0dd8a997fc216fc5f26d4ec4f03516a1965614c7d352592a914aa91.lean/declarations/supofseq--7be87c5cc6eb0e2133d36c46.md) | 74 | `declaration-track:7be87c5cc6eb0e2133d36c46e41c1e37efeb0d69bec335ce23598495348e8535` |
| 3 | `def` | [coprimes](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GodelBetaFunction/Variant36e352f9d0dd8a997fc216fc5f26d4ec4f03516a1965614c7d352592a914aa91.lean/declarations/coprimes--3a32a2d99d3680305315a68e.md) | 76 | `declaration-track:3a32a2d99d3680305315a68eb31038a80b5f7b09da086a98d242871a69ad71a9` |
| 4 | `lemma` | [coprimes_lt](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GodelBetaFunction/Variant36e352f9d0dd8a997fc216fc5f26d4ec4f03516a1965614c7d352592a914aa91.lean/declarations/coprimes-lt--012be70728c387c13a4b11b9.md) | 78 | `result-track:012be70728c387c13a4b11b9d122d07e9650598e65f33611e07b4e7993af12ad` |
| 5 | `lemma` | [pairwise_coprime_coprimes](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GodelBetaFunction/Variant36e352f9d0dd8a997fc216fc5f26d4ec4f03516a1965614c7d352592a914aa91.lean/declarations/pairwise-coprime-coprimes--d37a3ffae9a8abbc1865aaf0.md) | 87 | `result-track:d37a3ffae9a8abbc1865aaf0b74a11abc87c7f9553200c4b4b1d517fb9825b7c` |
| 6 | `def` | [beta](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GodelBetaFunction/Variant36e352f9d0dd8a997fc216fc5f26d4ec4f03516a1965614c7d352592a914aa91.lean/declarations/beta--108edbebbeca56717ae4d206.md) | 99 | `declaration-track:108edbebbeca56717ae4d20655d97d2fa2a067de3dd63036b2cebe68d0fcd39c` |
| 7 | `def` | [unbeta](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GodelBetaFunction/Variant36e352f9d0dd8a997fc216fc5f26d4ec4f03516a1965614c7d352592a914aa91.lean/declarations/unbeta--3c6a9344882755f13b9b1eb4.md) | 103 | `declaration-track:3c6a9344882755f13b9b1eb4572f929eb0eed1f43ad55d8804bef93415dc9f36` |
| 8 | `lemma` | [beta_unbeta_coe](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GodelBetaFunction/Variant36e352f9d0dd8a997fc216fc5f26d4ec4f03516a1965614c7d352592a914aa91.lean/declarations/beta-unbeta-coe--e68e3c146c71645adc57697f.md) | 110 | `result-track:e68e3c146c71645adc57697f4f2cc16349367dd8749cb664d1507d7993a94a02` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
