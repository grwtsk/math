# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.Prime.Variant6a8440e687956d8fb316940891dcdb765ae28de5bc180e745e9e16b34a9db8c3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dfa877dcf830418707e2715d984b5d2da708f119",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Prime/Variant6a8440e687956d8fb316940891dcdb765ae28de5bc180e745e9e16b34a9db8c3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/FoundationsLogicAndTypeTheory/Prime/Variant6a8440e687956d8fb316940891dcdb765ae28de5bc180e745e9e16b34a9db8c3.lean/index.md) · [Full source](../../../../mathematics/FoundationsLogicAndTypeTheory/Prime/Variant6a8440e687956d8fb316940891dcdb765ae28de5bc180e745e9e16b34a9db8c3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dfa877dcf830418707e2715d984b5d2da708f119`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Prime/Variant6a8440e687956d8fb316940891dcdb765ae28de5bc180e745e9e16b34a9db8c3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Prime/Variant6a8440e687956d8fb316940891dcdb765ae28de5bc180e745e9e16b34a9db8c3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [minFacAux](../../../../mathematics/FoundationsLogicAndTypeTheory/Prime/Variant6a8440e687956d8fb316940891dcdb765ae28de5bc180e745e9e16b34a9db8c3.lean/declarations/minfacaux--e46b28dfc8e0c2e5cba52e5b.md) | 46 | `declaration-track:e46b28dfc8e0c2e5cba52e5b78a337d6a3734458de98d5ca18adaa5c38950b93` |
| 2 | `theorem` | [minFacAux_to_nat](../../../../mathematics/FoundationsLogicAndTypeTheory/Prime/Variant6a8440e687956d8fb316940891dcdb765ae28de5bc180e745e9e16b34a9db8c3.lean/declarations/minfacaux-to-nat--e741b2c0932085fb9225e96c.md) | 51 | `result-track:e741b2c0932085fb9225e96ce4ffd72426a25de152a1d766eed8c4ad3c1d4514` |
| 3 | `def` | [minFac](../../../../mathematics/FoundationsLogicAndTypeTheory/Prime/Variant6a8440e687956d8fb316940891dcdb765ae28de5bc180e745e9e16b34a9db8c3.lean/declarations/minfac--aef8e7cdc85cc379acfd4dd7.md) | 66 | `declaration-track:aef8e7cdc85cc379acfd4dd7759e53bef277a0f2b86342e0d1699437da1778db` |
| 4 | `theorem` | [minFac_to_nat](../../../../mathematics/FoundationsLogicAndTypeTheory/Prime/Variant6a8440e687956d8fb316940891dcdb765ae28de5bc180e745e9e16b34a9db8c3.lean/declarations/minfac-to-nat--bbfa129a76bdd15e510caa3b.md) | 72 | `result-track:bbfa129a76bdd15e510caa3bb0729b34f98f8d68158aca5d4715623edbe3c44a` |
| 5 | `def` | [Prime](../../../../mathematics/FoundationsLogicAndTypeTheory/Prime/Variant6a8440e687956d8fb316940891dcdb765ae28de5bc180e745e9e16b34a9db8c3.lean/declarations/prime--ac1b79768ec90447fff52236.md) | 92 | `declaration-track:ac1b79768ec90447fff522368eafed29c38e0b3a069e9ce28e338cf731a537d3` |
| 6 | `instance` | [decidablePrime](../../../../mathematics/FoundationsLogicAndTypeTheory/Prime/Variant6a8440e687956d8fb316940891dcdb765ae28de5bc180e745e9e16b34a9db8c3.lean/declarations/decidableprime--412f34c407fe080f15e31f87.md) | 95 | `declaration-track:412f34c407fe080f15e31f87898cc17d9c7936f6f4e3803c16a1b4494dd9c770` |
| 7 | `def` | [minFac](../../../../mathematics/FoundationsLogicAndTypeTheory/Prime/Variant6a8440e687956d8fb316940891dcdb765ae28de5bc180e745e9e16b34a9db8c3.lean/declarations/minfac--e351264d82822db3df415d14.md) | 117 | `declaration-track:e351264d82822db3df415d14b828e95366c425f03e71b62fc702af9dc9f45667` |
| 8 | `theorem` | [minFac_to_nat](../../../../mathematics/FoundationsLogicAndTypeTheory/Prime/Variant6a8440e687956d8fb316940891dcdb765ae28de5bc180e745e9e16b34a9db8c3.lean/declarations/minfac-to-nat--75865b013a4f52b8349ef76b.md) | 122 | `result-track:75865b013a4f52b8349ef76b569f3214cfda451b39b013dc489b530958cb8376` |
| 9 | `def` | [Prime](../../../../mathematics/FoundationsLogicAndTypeTheory/Prime/Variant6a8440e687956d8fb316940891dcdb765ae28de5bc180e745e9e16b34a9db8c3.lean/declarations/prime--9b85130265be19396f676104.md) | 128 | `declaration-track:9b85130265be19396f676104791da95034d0bc3979d6fc3b43ac036cba4261b3` |
| 10 | `instance` | [decidablePrime](../../../../mathematics/FoundationsLogicAndTypeTheory/Prime/Variant6a8440e687956d8fb316940891dcdb765ae28de5bc180e745e9e16b34a9db8c3.lean/declarations/decidableprime--2efeb78dc8ad76fa6a01ee72.md) | 131 | `declaration-track:2efeb78dc8ad76fa6a01ee726390c3c3747294884ad206fb22fdf9d85d5ac2cc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
