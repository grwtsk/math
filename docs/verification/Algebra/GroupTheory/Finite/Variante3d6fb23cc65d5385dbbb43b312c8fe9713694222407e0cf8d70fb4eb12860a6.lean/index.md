# Verification target: GRWTSK.Algebra.GroupTheory.Finite.Variante3d6fb23cc65d5385dbbb43b312c8fe9713694222407e0cf8d70fb4eb12860a6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d5545203335274ac0b38efd67816bf430e4f2fff",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Finite/Variante3d6fb23cc65d5385dbbb43b312c8fe9713694222407e0cf8d70fb4eb12860a6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Finite/Variante3d6fb23cc65d5385dbbb43b312c8fe9713694222407e0cf8d70fb4eb12860a6.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Finite/Variante3d6fb23cc65d5385dbbb43b312c8fe9713694222407e0cf8d70fb4eb12860a6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d5545203335274ac0b38efd67816bf430e4f2fff`.

Source path: `GRWTSK/Algebra/GroupTheory/Finite/Variante3d6fb23cc65d5385dbbb43b312c8fe9713694222407e0cf8d70fb4eb12860a6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Finite/Variante3d6fb23cc65d5385dbbb43b312c8fe9713694222407e0cf8d70fb4eb12860a6.lean.json)

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
| 1 | `theorem` | [finite_one](../../../../../mathematics/Algebra/GroupTheory/Finite/Variante3d6fb23cc65d5385dbbb43b312c8fe9713694222407e0cf8d70fb4eb12860a6.lean/declarations/finite-one--6116aa9bb3aba41a4d772f91.md) | 37 | `result-track:6116aa9bb3aba41a4d772f9131aa8ec9ebc7b43cb2fbcb0865ba7ebf4e2aff0c` |
| 2 | `theorem` | [Finite.mul](../../../../../mathematics/Algebra/GroupTheory/Finite/Variante3d6fb23cc65d5385dbbb43b312c8fe9713694222407e0cf8d70fb4eb12860a6.lean/declarations/finite-mul--676786fe69d6b1fe29f97a60.md) | 47 | `result-track:676786fe69d6b1fe29f97a60adbe46a65449e97a3f2219ca1d8a4bdb3376cd66` |
| 3 | `instance` | [fintypeMul](../../../../../mathematics/Algebra/GroupTheory/Finite/Variante3d6fb23cc65d5385dbbb43b312c8fe9713694222407e0cf8d70fb4eb12860a6.lean/declarations/fintypemul--41385e20338315c8b40504f9.md) | 52 | `declaration-track:41385e20338315c8b40504f9d3801c6978cc2c23610ec0ef3ee4799e9a898dbe` |
| 4 | `instance` | [decidableMemMul](../../../../../mathematics/Algebra/GroupTheory/Finite/Variante3d6fb23cc65d5385dbbb43b312c8fe9713694222407e0cf8d70fb4eb12860a6.lean/declarations/decidablememmul--c35c767c9a5e7bd6439f0b7c.md) | 62 | `declaration-track:c35c767c9a5e7bd6439f0b7c57382187cbf2de89940cc0e6663529a5519c95aa` |
| 5 | `instance` | [decidableMemPow](../../../../../mathematics/Algebra/GroupTheory/Finite/Variante3d6fb23cc65d5385dbbb43b312c8fe9713694222407e0cf8d70fb4eb12860a6.lean/declarations/decidablemempow--a9396dc7fd1ea53272e36c29.md) | 66 | `declaration-track:a9396dc7fd1ea53272e36c29d4317730134aed1e54f5ea5f0042ad28a4b0521d` |
| 6 | `theorem` | [Finite.smul](../../../../../mathematics/Algebra/GroupTheory/Finite/Variante3d6fb23cc65d5385dbbb43b312c8fe9713694222407e0cf8d70fb4eb12860a6.lean/declarations/finite-smul--f92069e039c04ba881ae112e.md) | 83 | `result-track:f92069e039c04ba881ae112e80de5c3e5e317327c5daefac3e5d61f6fa3666a3` |
| 7 | `theorem` | [Finite.smul_set](../../../../../mathematics/Algebra/GroupTheory/Finite/Variante3d6fb23cc65d5385dbbb43b312c8fe9713694222407e0cf8d70fb4eb12860a6.lean/declarations/finite-smul-set--af020db6fdfb5754934754ac.md) | 93 | `result-track:af020db6fdfb5754934754ac17d7bdeca0dbce18396efcf9db355fed352b884f` |
| 8 | `theorem` | [Infinite.of_smul_set](../../../../../mathematics/Algebra/GroupTheory/Finite/Variante3d6fb23cc65d5385dbbb43b312c8fe9713694222407e0cf8d70fb4eb12860a6.lean/declarations/infinite-of-smul-set--3371da7ae2c2a8353d3cf53a.md) | 97 | `result-track:3371da7ae2c2a8353d3cf53af7f6bb2f330687bb7a569207ff04edc9c06ed549` |
| 9 | `theorem` | [Finite.sdiv](../../../../../mathematics/Algebra/GroupTheory/Finite/Variante3d6fb23cc65d5385dbbb43b312c8fe9713694222407e0cf8d70fb4eb12860a6.lean/declarations/finite-sdiv--5039649afd2b090fea7b35e7.md) | 107 | `result-track:5039649afd2b090fea7b35e7c46a4fd0789200dd44a2e206be457bc0c1e0d1da` |
| 10 | `lemma` | [finite_mul](../../../../../mathematics/Algebra/GroupTheory/Finite/Variante3d6fb23cc65d5385dbbb43b312c8fe9713694222407e0cf8d70fb4eb12860a6.lean/declarations/finite-mul--3d12da5d95c13fe5e63dd2f0.md) | 117 | `result-track:3d12da5d95c13fe5e63dd2f08f6645156b27a8fc2ddbfac5cf0cc272a08e962f` |
| 11 | `lemma` | [infinite_mul](../../../../../mathematics/Algebra/GroupTheory/Finite/Variante3d6fb23cc65d5385dbbb43b312c8fe9713694222407e0cf8d70fb4eb12860a6.lean/declarations/infinite-mul--575636bbc358156106dc2a84.md) | 121 | `result-track:575636bbc358156106dc2a8449cd512803caf03b1afa0d106fd6882d48a3f66f` |
| 12 | `lemma` | [finite_inv](../../../../../mathematics/Algebra/GroupTheory/Finite/Variante3d6fb23cc65d5385dbbb43b312c8fe9713694222407e0cf8d70fb4eb12860a6.lean/declarations/finite-inv--71293f8bf5fcdb313e725851.md) | 129 | `result-track:71293f8bf5fcdb313e72585125ba235d3ca715fd5093548840ac99fc37f9ff10` |
| 13 | `lemma` | [infinite_inv](../../../../../mathematics/Algebra/GroupTheory/Finite/Variante3d6fb23cc65d5385dbbb43b312c8fe9713694222407e0cf8d70fb4eb12860a6.lean/declarations/infinite-inv--545c0a668186bfbcefa9dbbf.md) | 132 | `result-track:545c0a668186bfbcefa9dbbfe43398c6d4445932c899a012f3d383972ae6a9c1` |
| 14 | `lemma` | [Finite.div](../../../../../mathematics/Algebra/GroupTheory/Finite/Variante3d6fb23cc65d5385dbbb43b312c8fe9713694222407e0cf8d70fb4eb12860a6.lean/declarations/finite-div--8c72f0402013fc5becee82cc.md) | 141 | `result-track:8c72f0402013fc5becee82cc5f6d0100813a998a190e62d506a956ed0c75788c` |
| 15 | `instance` | [fintypeDiv](../../../../../mathematics/Algebra/GroupTheory/Finite/Variante3d6fb23cc65d5385dbbb43b312c8fe9713694222407e0cf8d70fb4eb12860a6.lean/declarations/fintypediv--5a969f1da29ab3280b6a902c.md) | 145 | `declaration-track:5a969f1da29ab3280b6a902c3752a00cec8b2c785c22b2e5279cb1643ea1ad19` |
| 16 | `lemma` | [finite_div](../../../../../mathematics/Algebra/GroupTheory/Finite/Variante3d6fb23cc65d5385dbbb43b312c8fe9713694222407e0cf8d70fb4eb12860a6.lean/declarations/finite-div--0da4d71eb0e8724e556d6421.md) | 155 | `result-track:0da4d71eb0e8724e556d6421e5a0df4dff5abb4df3d47a510aac0b7cf0568a34` |
| 17 | `lemma` | [infinite_div](../../../../../mathematics/Algebra/GroupTheory/Finite/Variante3d6fb23cc65d5385dbbb43b312c8fe9713694222407e0cf8d70fb4eb12860a6.lean/declarations/infinite-div--3a598c59b1a86de5f420360f.md) | 159 | `result-track:3a598c59b1a86de5f420360f3a32a745cdd9953b3c18fa459fa7c1ee6b7ba81c` |
| 18 | `theorem` | [card_pow_eq_card_pow_card_univ](../../../../../mathematics/Algebra/GroupTheory/Finite/Variante3d6fb23cc65d5385dbbb43b312c8fe9713694222407e0cf8d70fb4eb12860a6.lean/declarations/card-pow-eq-card-pow-card-univ--a7ac942aff05b12eb9a7a04e.md) | 173 | `result-track:a7ac942aff05b12eb9a7a04ea66e603efcc458ec86a1e731774dc218213c43cf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
