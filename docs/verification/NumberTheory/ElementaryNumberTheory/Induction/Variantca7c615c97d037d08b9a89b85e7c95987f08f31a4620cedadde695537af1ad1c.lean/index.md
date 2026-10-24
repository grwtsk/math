# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.Induction.Variantca7c615c97d037d08b9a89b85e7c95987f08f31a4620cedadde695537af1ad1c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2801c6419578eed4c6880c1a0ca852e8101b81f4",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Induction/Variantca7c615c97d037d08b9a89b85e7c95987f08f31a4620cedadde695537af1ad1c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Induction/Variantca7c615c97d037d08b9a89b85e7c95987f08f31a4620cedadde695537af1ad1c.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Induction/Variantca7c615c97d037d08b9a89b85e7c95987f08f31a4620cedadde695537af1ad1c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2801c6419578eed4c6880c1a0ca852e8101b81f4`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/Induction/Variantca7c615c97d037d08b9a89b85e7c95987f08f31a4620cedadde695537af1ad1c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/Induction/Variantca7c615c97d037d08b9a89b85e7c95987f08f31a4620cedadde695537af1ad1c.lean.json)

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
| 1 | `def` | [recOnPrimePow](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Induction/Variantca7c615c97d037d08b9a89b85e7c95987f08f31a4620cedadde695537af1ad1c.lean/declarations/reconprimepow--adaee1ec0a68ebaaab143d62.md) | 35 | `declaration-track:adaee1ec0a68ebaaab143d620178b762cf9e42e03555f0824cbb7b316776594d` |
| 2 | `def` | [recOnPosPrimePosCoprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Induction/Variantca7c615c97d037d08b9a89b85e7c95987f08f31a4620cedadde695537af1ad1c.lean/declarations/reconposprimeposcoprime--b4836a3fffa6cbd666ddfdd8.md) | 57 | `declaration-track:b4836a3fffa6cbd666ddfdd8d04facbe8ee4f0578e2951486c439688a1cfc7ef` |
| 3 | `def` | [recOnPrimeCoprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Induction/Variantca7c615c97d037d08b9a89b85e7c95987f08f31a4620cedadde695537af1ad1c.lean/declarations/reconprimecoprime--2d42d1aa35dd0bad2ddf6c9b.md) | 76 | `declaration-track:2d42d1aa35dd0bad2ddf6c9bf6edd99299217751c80f85849f2650c245f5c741` |
| 4 | `def` | [recOnMul](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Induction/Variantca7c615c97d037d08b9a89b85e7c95987f08f31a4620cedadde695537af1ad1c.lean/declarations/reconmul--a71eac800ed140efdb259986.md) | 85 | `declaration-track:a71eac800ed140efdb259986b3e7ca62b9aca587373f1e36328842c4a4086a12` |
| 5 | `lemma` | [_root_.GRWTSK.NumberTheory.ElementaryNumberTheory.RecOnPrimePow.Varianta16cb40bc212255bc2e88aa12c773aead9a14c16d31b5a68979e7dfab038d538.induction_on_primes](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Induction/Variantca7c615c97d037d08b9a89b85e7c95987f08f31a4620cedadde695537af1ad1c.lean/declarations/root-grwtsk-numbertheory-elementarynumbertheory-reconprimepow-varianta16--7d9bab52f598c17cc703fdb1.md) | 92 | `result-track:7d9bab52f598c17cc703fdb113d1d8737a4b894f0d21144886ea0d1f363f4360` |
| 6 | `lemma` | [prime_composite_induction](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Induction/Variantca7c615c97d037d08b9a89b85e7c95987f08f31a4620cedadde695537af1ad1c.lean/declarations/prime-composite-induction--1ede773f36318e0aaa644c0c.md) | 102 | `result-track:1ede773f36318e0aaa644c0c3965fa44ad432249ce6351fba8509c75b35f8fb8` |
| 7 | `theorem` | [multiplicative_factorization](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Induction/Variantca7c615c97d037d08b9a89b85e7c95987f08f31a4620cedadde695537af1ad1c.lean/declarations/multiplicative-factorization--afc80bac6b50e515134d9c71.md) | 116 | `result-track:afc80bac6b50e515134d9c71e6f9d6c0a9e9baf7025bcacf98a5e8bf23a06757` |
| 8 | `theorem` | [multiplicative_factorization'](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Induction/Variantca7c615c97d037d08b9a89b85e7c95987f08f31a4620cedadde695537af1ad1c.lean/declarations/multiplicative-factorization--5442257543713dfda3ee9f80.md) | 133 | `result-track:5442257543713dfda3ee9f80906427ebc9813721dd5079675acbf7f1ce3357e4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
