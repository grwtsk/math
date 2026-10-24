# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.Induction.Varianta16cb40bc212255bc2e88aa12c773aead9a14c16d31b5a68979e7dfab038d538

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3cf3ca0dd655ca03f26caf09712324089d321cfd",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Induction/Varianta16cb40bc212255bc2e88aa12c773aead9a14c16d31b5a68979e7dfab038d538.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Induction/Varianta16cb40bc212255bc2e88aa12c773aead9a14c16d31b5a68979e7dfab038d538.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Induction/Varianta16cb40bc212255bc2e88aa12c773aead9a14c16d31b5a68979e7dfab038d538.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3cf3ca0dd655ca03f26caf09712324089d321cfd`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/Induction/Varianta16cb40bc212255bc2e88aa12c773aead9a14c16d31b5a68979e7dfab038d538.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/Induction/Varianta16cb40bc212255bc2e88aa12c773aead9a14c16d31b5a68979e7dfab038d538.lean.json)

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
| 1 | `def` | [recOnPrimePow](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Induction/Varianta16cb40bc212255bc2e88aa12c773aead9a14c16d31b5a68979e7dfab038d538.lean/declarations/reconprimepow--c76d22e7fda8d5fc3bbdbcb5.md) | 27 | `declaration-track:c76d22e7fda8d5fc3bbdbcb5f6604301deef50213029d21465c78219e6604124` |
| 2 | `def` | [recOnPosPrimePosCoprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Induction/Varianta16cb40bc212255bc2e88aa12c773aead9a14c16d31b5a68979e7dfab038d538.lean/declarations/reconposprimeposcoprime--10686104d6a0bf61ebff847b.md) | 49 | `declaration-track:10686104d6a0bf61ebff847b84ebf707a19f784a3a364dca5018a5f119a81df6` |
| 3 | `def` | [recOnPrimeCoprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Induction/Varianta16cb40bc212255bc2e88aa12c773aead9a14c16d31b5a68979e7dfab038d538.lean/declarations/reconprimecoprime--45d7eb05d45d7ac558eabf55.md) | 68 | `declaration-track:45d7eb05d45d7ac558eabf55d012904cf738da3f0e76f26cccc018f788f08df9` |
| 4 | `def` | [recOnMul](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Induction/Varianta16cb40bc212255bc2e88aa12c773aead9a14c16d31b5a68979e7dfab038d538.lean/declarations/reconmul--73c80a4bcca7ab4a231497cb.md) | 77 | `declaration-track:73c80a4bcca7ab4a231497cb4d43d6a66f2a20cc77daa3910222b45c739ed22f` |
| 5 | `lemma` | [_root_.induction_on_primes](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Induction/Varianta16cb40bc212255bc2e88aa12c773aead9a14c16d31b5a68979e7dfab038d538.lean/declarations/root-induction-on-primes--97bf9ea84617d93cacadc055.md) | 84 | `result-track:97bf9ea84617d93cacadc055e2eebba14c20ec64592236e7026d0c25ed03b65c` |
| 6 | `lemma` | [prime_composite_induction](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Induction/Varianta16cb40bc212255bc2e88aa12c773aead9a14c16d31b5a68979e7dfab038d538.lean/declarations/prime-composite-induction--da45eac70b7793b12d6f1f0f.md) | 94 | `result-track:da45eac70b7793b12d6f1f0f028d3fc40b2e29f5305c65ddf8ba05510e1f2429` |
| 7 | `theorem` | [multiplicative_factorization](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Induction/Varianta16cb40bc212255bc2e88aa12c773aead9a14c16d31b5a68979e7dfab038d538.lean/declarations/multiplicative-factorization--b6fab90d70fbd2916552086e.md) | 108 | `result-track:b6fab90d70fbd2916552086ef32127d46e1c93e0a10972e61ef522ce675ccd52` |
| 8 | `theorem` | [multiplicative_factorization'](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Induction/Varianta16cb40bc212255bc2e88aa12c773aead9a14c16d31b5a68979e7dfab038d538.lean/declarations/multiplicative-factorization--89d8f532032777482fd1df0b.md) | 125 | `result-track:89d8f532032777482fd1df0beda5a2338555c73fbe2163d25052be75b6fb5340` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
