# Verification target: GRWTSK.Algebra.LinearAlgebra.Basic.Variant9038d0c4ba7e74f4d9b9c6cd1f14dc72626adf5b882d41240acb6956b6488b25

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f4c4471b0bce51b1a30d98761d0e26abfeb8b0d6",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant9038d0c4ba7e74f4d9b9c6cd1f14dc72626adf5b882d41240acb6956b6488b25.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9038d0c4ba7e74f4d9b9c6cd1f14dc72626adf5b882d41240acb6956b6488b25.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9038d0c4ba7e74f4d9b9c6cd1f14dc72626adf5b882d41240acb6956b6488b25.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f4c4471b0bce51b1a30d98761d0e26abfeb8b0d6`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variant9038d0c4ba7e74f4d9b9c6cd1f14dc72626adf5b882d41240acb6956b6488b25.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variant9038d0c4ba7e74f4d9b9c6cd1f14dc72626adf5b882d41240acb6956b6488b25.lean.json)

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
| 1 | `structure` | [Basis](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9038d0c4ba7e74f4d9b9c6cd1f14dc72626adf5b882d41240acb6956b6488b25.lean/declarations/basis--612481d8b32be5def9555322.md) | 60 | `declaration-track:612481d8b32be5def9555322ab70a50f6064ac084ed218395bf555b9d72e40da` |
| 2 | `lemma` | [A_diag_eq_two](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9038d0c4ba7e74f4d9b9c6cd1f14dc72626adf5b882d41240acb6956b6488b25.lean/declarations/a-diag-eq-two--a21ed9934e267ff5610cce35.md) | 87 | `result-track:a21ed9934e267ff5610cce35a6531c221f46c55da4a8cf115bd0685b4466f998` |
| 3 | `lemma` | [coe_cartan_eq_span](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9038d0c4ba7e74f4d9b9c6cd1f14dc72626adf5b882d41240acb6956b6488b25.lean/declarations/coe-cartan-eq-span--cc4c67a981d0b92d091eb185.md) | 93 | `result-track:cc4c67a981d0b92d091eb185cba2aaa51e47fe140fd80945e2bb1c87d3a444dd` |
| 4 | `theorem` | [isLieAbelian_cartan](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9038d0c4ba7e74f4d9b9c6cd1f14dc72626adf5b882d41240acb6956b6488b25.lean/declarations/islieabelian-cartan--ad4b3e4b9232b7494575522c.md) | 101 | `result-track:ad4b3e4b9232b7494575522c3aecff192dbb51bd03e52dbb003cd50cf43fcc26` |
| 5 | `def` | [symm](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9038d0c4ba7e74f4d9b9c6cd1f14dc72626adf5b882d41240acb6956b6488b25.lean/declarations/symm--ab725837c913c2af8e775891.md) | 108 | `declaration-track:ab725837c913c2af8e775891a440d6b3efcef387c395c04e1f880fd256938bc2` |
| 6 | `lemma` | [symm_symm](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9038d0c4ba7e74f4d9b9c6cd1f14dc72626adf5b882d41240acb6956b6488b25.lean/declarations/symm-symm--4776863fd7803e4a820d770d.md) | 125 | `result-track:4776863fd7803e4a820d770dd16bbf604fbfd5867172c459d5f1e0e0e720cd5e` |
| 7 | `def` | [h'](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9038d0c4ba7e74f4d9b9c6cd1f14dc72626adf5b882d41240acb6956b6488b25.lean/declarations/h--49fb58287ba66bddf68a096f.md) | 128 | `declaration-track:49fb58287ba66bddf68a096f1d6ec3538c59170c3a50671383a6654f567f7e89` |
| 8 | `lemma` | [symm_h'](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9038d0c4ba7e74f4d9b9c6cd1f14dc72626adf5b882d41240acb6956b6488b25.lean/declarations/symm-h--8b4fb95d3fc8ab3f1e9927a3.md) | 130 | `result-track:8b4fb95d3fc8ab3f1e9927a3ad8691af3b5cd236c5b3aa8433066eb25e7ff3d8` |
| 9 | `lemma` | [cartan_lie_mem_lieSpan_e](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9038d0c4ba7e74f4d9b9c6cd1f14dc72626adf5b882d41240acb6956b6488b25.lean/declarations/cartan-lie-mem-liespan-e--dd149eb4ad98c38ff4fa1804.md) | 132 | `result-track:dd149eb4ad98c38ff4fa18046852caf1984b04252e766d4be3fe77f0266de7eb` |
| 10 | `def` | [borelUpper](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9038d0c4ba7e74f4d9b9c6cd1f14dc72626adf5b882d41240acb6956b6488b25.lean/declarations/borelupper--b44567cc35fa200beb18b82f.md) | 155 | `declaration-track:b44567cc35fa200beb18b82fa874a8db141a2857e46dd6537d8cd47e675311f1` |
| 11 | `def` | [borelLower](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9038d0c4ba7e74f4d9b9c6cd1f14dc72626adf5b882d41240acb6956b6488b25.lean/declarations/borellower--00548e1ffe5a6912d7fe59e6.md) | 162 | `declaration-track:00548e1ffe5a6912d7fe59e6d8f3a55f0644584730f3d9119cfe914703e7def0` |
| 12 | `lemma` | [iSup_cartan_borelLower_borelUpper_eq_top_aux](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9038d0c4ba7e74f4d9b9c6cd1f14dc72626adf5b882d41240acb6956b6488b25.lean/declarations/isup-cartan-borellower-borelupper-eq-top-aux--b1ca40143a562acd27962dc3.md) | 166 | `result-track:b1ca40143a562acd27962dc3dc225f461d64840b0587f1be5e111577cf34288d` |
| 13 | `lemma` | [iSup_cartan_borelLower_borelUpper_eq_top](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9038d0c4ba7e74f4d9b9c6cd1f14dc72626adf5b882d41240acb6956b6488b25.lean/declarations/isup-cartan-borellower-borelupper-eq-top--401c79e38a747eb239b4b154.md) | 228 | `result-track:401c79e38a747eb239b4b154d47dca86b28a51e95198fd7709511df291c6e4f7` |
| 14 | `def` | [baseSupp](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9038d0c4ba7e74f4d9b9c6cd1f14dc72626adf5b882d41240acb6956b6488b25.lean/declarations/basesupp--6680f41daa7cd88a723bf94f.md) | 269 | `declaration-track:6680f41daa7cd88a723bf94f8d9314a217871518352d236845504479749b2421` |
| 15 | `lemma` | [baseSupp_apply_h'](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9038d0c4ba7e74f4d9b9c6cd1f14dc72626adf5b882d41240acb6956b6488b25.lean/declarations/basesupp-apply-h--a06f276fb0282f2b630c8308.md) | 273 | `result-track:a06f276fb0282f2b630c830869963167e0ee4507362e1028e4a4e4e3360352c9` |
| 16 | `lemma` | [symm_baseSupp](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9038d0c4ba7e74f4d9b9c6cd1f14dc72626adf5b882d41240acb6956b6488b25.lean/declarations/symm-basesupp--70b1dbd81ae94a4d1409988d.md) | 287 | `result-track:70b1dbd81ae94a4d1409988ddd4c728afebbf68dc268e0853e8a5160efa49de9` |
| 17 | `lemma` | [linearIndependent_baseSupp](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9038d0c4ba7e74f4d9b9c6cd1f14dc72626adf5b882d41240acb6956b6488b25.lean/declarations/linearindependent-basesupp--60b1ee50c6d77ede68796d3b.md) | 300 | `result-track:60b1ee50c6d77ede68796d3b259c1104bf21285fb1d90bef2300449a4b4b6816` |
| 18 | `lemma` | [baseSupp_apply_smul_e](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9038d0c4ba7e74f4d9b9c6cd1f14dc72626adf5b882d41240acb6956b6488b25.lean/declarations/basesupp-apply-smul-e--297dd8982c3a3d3211a373fd.md) | 311 | `result-track:297dd8982c3a3d3211a373fdca680236ec3e1975da49110b58d3fedb9fd5fdc7` |
| 19 | `lemma` | [baseSupp_apply_smul_f](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9038d0c4ba7e74f4d9b9c6cd1f14dc72626adf5b882d41240acb6956b6488b25.lean/declarations/basesupp-apply-smul-f--39979b9898ae023b061d9cb0.md) | 332 | `result-track:39979b9898ae023b061d9cb0606862535d709a52de09cb10fe693fd7d69005da` |
| 20 | `lemma` | [borelUpper_le_biSup](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9038d0c4ba7e74f4d9b9c6cd1f14dc72626adf5b882d41240acb6956b6488b25.lean/declarations/borelupper-le-bisup--350546640574d918353e550b.md) | 342 | `result-track:350546640574d918353e550b0b94507632d0fcdd933a8dacefb9ca1a2c6ede37` |
| 21 | `lemma` | [borelLower_le_biSup](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9038d0c4ba7e74f4d9b9c6cd1f14dc72626adf5b882d41240acb6956b6488b25.lean/declarations/borellower-le-bisup--200acf015b80b77535fa84d8.md) | 386 | `result-track:200acf015b80b77535fa84d83af20db7ce2ff2e3283a4ff5aa48bd62e991b98b` |
| 22 | `lemma` | [cartan_borelLower_borelUpper_le](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9038d0c4ba7e74f4d9b9c6cd1f14dc72626adf5b882d41240acb6956b6488b25.lean/declarations/cartan-borellower-borelupper-le--2da64a6504cc35eb0e7cee7d.md) | 391 | `result-track:2da64a6504cc35eb0e7cee7d3f37709284007ac70a9fd3acc074aeb70372bc95` |
| 23 | `lemma` | [iSupIndep_rootSpace](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9038d0c4ba7e74f4d9b9c6cd1f14dc72626adf5b882d41240acb6956b6488b25.lean/declarations/isupindep-rootspace--2c81280603ab239d8d4feea6.md) | 405 | `result-track:2c81280603ab239d8d4feea665fd1f01278b6e5b5b0135e8b42d50dae6039daf` |
| 24 | `lemma` | [cartan_eq](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9038d0c4ba7e74f4d9b9c6cd1f14dc72626adf5b882d41240acb6956b6488b25.lean/declarations/cartan-eq--f268d5120e1a27e34abff5ac.md) | 478 | `result-track:f268d5120e1a27e34abff5ac2fa5dd34e9f30bb46092d345b65a2b09275e4e45` |
| 25 | `lemma` | [borelLower_eq](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9038d0c4ba7e74f4d9b9c6cd1f14dc72626adf5b882d41240acb6956b6488b25.lean/declarations/borellower-eq--bc858955eed4492222eca866.md) | 484 | `result-track:bc858955eed4492222eca866968de98e31f127a4d48d053c24e62036f142908e` |
| 26 | `lemma` | [borelUpper_eq](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9038d0c4ba7e74f4d9b9c6cd1f14dc72626adf5b882d41240acb6956b6488b25.lean/declarations/borelupper-eq--61e68b8221ebdb035d08ec80.md) | 490 | `result-track:61e68b8221ebdb035d08ec80663b33d048e1c30fa29a0ffd26459e224d6ea6ca` |
| 27 | `lemma` | [isCartanSubalgebra](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9038d0c4ba7e74f4d9b9c6cd1f14dc72626adf5b882d41240acb6956b6488b25.lean/declarations/iscartansubalgebra--1f017b4685b86218968713cd.md) | 498 | `result-track:1f017b4685b86218968713cd007f38d40be17db3ff736698ff99f5522156f2be` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
