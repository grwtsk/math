# Verification target: GRWTSK.Algebra.CommutativeAlgebra.AEval.Variant1013e49c4e70ffc79d887f70f5b287e0b4f0017ad5668026ae74f784b5903f52

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "540ef8e6d695134837e9b8f4c15447411786e3ff",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/AEval/Variant1013e49c4e70ffc79d887f70f5b287e0b4f0017ad5668026ae74f784b5903f52.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/AEval/Variant1013e49c4e70ffc79d887f70f5b287e0b4f0017ad5668026ae74f784b5903f52.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/AEval/Variant1013e49c4e70ffc79d887f70f5b287e0b4f0017ad5668026ae74f784b5903f52.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `540ef8e6d695134837e9b8f4c15447411786e3ff`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/AEval/Variant1013e49c4e70ffc79d887f70f5b287e0b4f0017ad5668026ae74f784b5903f52.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/AEval/Variant1013e49c4e70ffc79d887f70f5b287e0b4f0017ad5668026ae74f784b5903f52.lean.json)

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
| 1 | `def` | [AEval](../../../../../mathematics/Algebra/CommutativeAlgebra/AEval/Variant1013e49c4e70ffc79d887f70f5b287e0b4f0017ad5668026ae74f784b5903f52.lean/declarations/aeval--1d6a0211d72c219d4047d570.md) | 40 | `declaration-track:1d6a0211d72c219d4047d5709f11bb860eae668fd6aaf4e9b51d7ad88c6a716f` |
| 2 | `instance` | [AEval.instAddCommGroup](../../../../../mathematics/Algebra/CommutativeAlgebra/AEval/Variant1013e49c4e70ffc79d887f70f5b287e0b4f0017ad5668026ae74f784b5903f52.lean/declarations/aeval-instaddcommgroup--c8be5761e07e4e88f2a31aba.md) | 44 | `declaration-track:c8be5761e07e4e88f2a31aba69278434719bfdcc428f91317e61f1bbce9b3e26` |
| 3 | `instance` | [instFiniteOrig](../../../../../mathematics/Algebra/CommutativeAlgebra/AEval/Variant1013e49c4e70ffc79d887f70f5b287e0b4f0017ad5668026ae74f784b5903f52.lean/declarations/instfiniteorig--d167c70e4f0f7f7db939a1d7.md) | 53 | `declaration-track:d167c70e4f0f7f7db939a1d79ab3ab798a2b4b1f706ef95526ff83244bc943e8` |
| 4 | `instance` | [instModulePolynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/AEval/Variant1013e49c4e70ffc79d887f70f5b287e0b4f0017ad5668026ae74f784b5903f52.lean/declarations/instmodulepolynomial--f90f28fd5e8104a3f67f54ca.md) | 56 | `declaration-track:f90f28fd5e8104a3f67f54ca0bef4d99e4561bf9fcf356378f63aec611881028` |
| 5 | `def` | [of](../../../../../mathematics/Algebra/CommutativeAlgebra/AEval/Variant1013e49c4e70ffc79d887f70f5b287e0b4f0017ad5668026ae74f784b5903f52.lean/declarations/of--01e766a2a54a8ec6162b4031.md) | 63 | `declaration-track:01e766a2a54a8ec6162b4031923744fe67c0482fbdd222cb219d2ba255ae5a42` |
| 6 | `lemma` | [of_aeval_smul](../../../../../mathematics/Algebra/CommutativeAlgebra/AEval/Variant1013e49c4e70ffc79d887f70f5b287e0b4f0017ad5668026ae74f784b5903f52.lean/declarations/of-aeval-smul--f7a3718c071920e5cab0eff7.md) | 68 | `result-track:f7a3718c071920e5cab0eff7e2e5d4b65a6fdf2ae204d572af1f113c3a55e76d` |
| 7 | `lemma` | [of_symm_smul](../../../../../mathematics/Algebra/CommutativeAlgebra/AEval/Variant1013e49c4e70ffc79d887f70f5b287e0b4f0017ad5668026ae74f784b5903f52.lean/declarations/of-symm-smul--83276c496a5f36f171fde1c1.md) | 70 | `result-track:83276c496a5f36f171fde1c1b30e0908b477d0e91fa9e27f2612fcae540669d4` |
| 8 | `lemma` | [C_smul](../../../../../mathematics/Algebra/CommutativeAlgebra/AEval/Variant1013e49c4e70ffc79d887f70f5b287e0b4f0017ad5668026ae74f784b5903f52.lean/declarations/c-smul--7dc7b90f35dced85736ac336.md) | 73 | `result-track:7dc7b90f35dced85736ac3362e440d1091191fd980b709c708a9275ffd7b46bf` |
| 9 | `lemma` | [X_smul_of](../../../../../mathematics/Algebra/CommutativeAlgebra/AEval/Variant1013e49c4e70ffc79d887f70f5b287e0b4f0017ad5668026ae74f784b5903f52.lean/declarations/x-smul-of--b68418fbd0065ca1114a2552.md) | 76 | `result-track:b68418fbd0065ca1114a2552bb815ea5ab2f973bcec487a42be4f2eb1c450b0d` |
| 10 | `lemma` | [X_pow_smul_of](../../../../../mathematics/Algebra/CommutativeAlgebra/AEval/Variant1013e49c4e70ffc79d887f70f5b287e0b4f0017ad5668026ae74f784b5903f52.lean/declarations/x-pow-smul-of--dec4b89fdff3638da694f5b8.md) | 79 | `result-track:dec4b89fdff3638da694f5b86243e144e83ba425395a9cb7caa7ae1a035204e3` |
| 11 | `lemma` | [of_symm_X_smul](../../../../../mathematics/Algebra/CommutativeAlgebra/AEval/Variant1013e49c4e70ffc79d887f70f5b287e0b4f0017ad5668026ae74f784b5903f52.lean/declarations/of-symm-x-smul--9cc2bcf263a68cb8b14096f9.md) | 82 | `result-track:9cc2bcf263a68cb8b14096f9867bf676fee50ebd066e9f1d68c178029e78f527` |
| 12 | `instance` | [instIsScalarTowerOrigPolynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/AEval/Variant1013e49c4e70ffc79d887f70f5b287e0b4f0017ad5668026ae74f784b5903f52.lean/declarations/instisscalartowerorigpolynomial--6e6558a90bd4243bb92dd516.md) | 86 | `declaration-track:6e6558a90bd4243bb92dd5164c5b8cfe4d2c8121a104334afd5afc1de381b9ca` |
| 13 | `instance` | [instFinitePolynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/AEval/Variant1013e49c4e70ffc79d887f70f5b287e0b4f0017ad5668026ae74f784b5903f52.lean/declarations/instfinitepolynomial--6c889f986cc4b76e160bb94b.md) | 91 | `declaration-track:6c889f986cc4b76e160bb94bd51959407f3d4ea8e2c3e5163fcb2a49fc9538f9` |
| 14 | `def` | [_root_.LinearMap.ofAEval](../../../../../mathematics/Algebra/CommutativeAlgebra/AEval/Variant1013e49c4e70ffc79d887f70f5b287e0b4f0017ad5668026ae74f784b5903f52.lean/declarations/root-linearmap-ofaeval--c142ee803937199dace20a07.md) | 95 | `declaration-track:c142ee803937199dace20a07d0bd264ed53ff7b63ab44067df27eb122507f7ba` |
| 15 | `def` | [_root_.LinearEquiv.ofAEval](../../../../../mathematics/Algebra/CommutativeAlgebra/AEval/Variant1013e49c4e70ffc79d887f70f5b287e0b4f0017ad5668026ae74f784b5903f52.lean/declarations/root-linearequiv-ofaeval--443ebac0b8d25a7885e646e9.md) | 107 | `declaration-track:443ebac0b8d25a7885e646e9eb485b36827092984afe2bbe73dc6ccf6d97c166` |
| 16 | `lemma` | [annihilator_eq_ker_aeval](../../../../../mathematics/Algebra/CommutativeAlgebra/AEval/Variant1013e49c4e70ffc79d887f70f5b287e0b4f0017ad5668026ae74f784b5903f52.lean/declarations/annihilator-eq-ker-aeval--e751773446295277896e1c77.md) | 115 | `result-track:e751773446295277896e1c77564918739ff9a24260c8df3162ddaecc6ed11a01` |
| 17 | `lemma` | [annihilator_top_eq_ker_aeval](../../../../../mathematics/Algebra/CommutativeAlgebra/AEval/Variant1013e49c4e70ffc79d887f70f5b287e0b4f0017ad5668026ae74f784b5903f52.lean/declarations/annihilator-top-eq-ker-aeval--473b8d834ea6d3b5a17a43b0.md) | 123 | `result-track:473b8d834ea6d3b5a17a43b0bf8e05bc64a1b14be3ca4a814de74b57ea7665e5` |
| 18 | `def` | [mapSubmodule](../../../../../mathematics/Algebra/CommutativeAlgebra/AEval/Variant1013e49c4e70ffc79d887f70f5b287e0b4f0017ad5668026ae74f784b5903f52.lean/declarations/mapsubmodule--e3267759e7ecf193364d448d.md) | 136 | `declaration-track:e3267759e7ecf193364d448d0ee5e46f8339e66adf94106f0609a5f299f9caba` |
| 19 | `lemma` | [mem_mapSubmodule_apply](../../../../../mathematics/Algebra/CommutativeAlgebra/AEval/Variant1013e49c4e70ffc79d887f70f5b287e0b4f0017ad5668026ae74f784b5903f52.lean/declarations/mem-mapsubmodule-apply--1245a2e24ff52ed1d0f5bab6.md) | 151 | `result-track:1245a2e24ff52ed1d0f5bab647c8d4153ed85f0e20d4f993df021712bf0556d4` |
| 20 | `lemma` | [mem_mapSubmodule_symm_apply](../../../../../mathematics/Algebra/CommutativeAlgebra/AEval/Variant1013e49c4e70ffc79d887f70f5b287e0b4f0017ad5668026ae74f784b5903f52.lean/declarations/mem-mapsubmodule-symm-apply--2ee975cd503778c8b29966b2.md) | 155 | `result-track:2ee975cd503778c8b29966b2a15926de36cad2b24bda8a4f0b1c87df21f1eb01` |
| 21 | `def` | [equiv_mapSubmodule](../../../../../mathematics/Algebra/CommutativeAlgebra/AEval/Variant1013e49c4e70ffc79d887f70f5b287e0b4f0017ad5668026ae74f784b5903f52.lean/declarations/equiv-mapsubmodule--b26123090048471f73dd490c.md) | 163 | `declaration-track:b26123090048471f73dd490c757301a6f845bba35de64d3a4804086ba7ced28b` |
| 22 | `def` | [restrict_equiv_mapSubmodule](../../../../../mathematics/Algebra/CommutativeAlgebra/AEval/Variant1013e49c4e70ffc79d887f70f5b287e0b4f0017ad5668026ae74f784b5903f52.lean/declarations/restrict-equiv-mapsubmodule--43db0029d2edc5d806e504e7.md) | 173 | `declaration-track:43db0029d2edc5d806e504e7a8155e3de717b106d6c1b85e39a60f8fbbad71b1` |
| 23 | `abbrev` | [AEval'](../../../../../mathematics/Algebra/CommutativeAlgebra/AEval/Variant1013e49c4e70ffc79d887f70f5b287e0b4f0017ad5668026ae74f784b5903f52.lean/declarations/aeval--725de06d2a664afe85649675.md) | 194 | `declaration-track:725de06d2a664afe85649675f5c68a2b76580afe24077e6f7ff8033459cd7708` |
| 24 | `abbrev` | [AEval'.of](../../../../../mathematics/Algebra/CommutativeAlgebra/AEval/Variant1013e49c4e70ffc79d887f70f5b287e0b4f0017ad5668026ae74f784b5903f52.lean/declarations/aeval-of--54c9912a18749105848d8fe1.md) | 199 | `declaration-track:54c9912a18749105848d8fe1d26e3c1d90b79b9fedfd28ad608ccab8d88390e2` |
| 25 | `lemma` | [AEval'_def](../../../../../mathematics/Algebra/CommutativeAlgebra/AEval/Variant1013e49c4e70ffc79d887f70f5b287e0b4f0017ad5668026ae74f784b5903f52.lean/declarations/aeval-def--ee4f21f9f906817b76bb1230.md) | 201 | `result-track:ee4f21f9f906817b76bb123071f60c709e5240b4e0e8b32a60ee6cc26251337d` |
| 26 | `lemma` | [AEval'.X_smul_of](../../../../../mathematics/Algebra/CommutativeAlgebra/AEval/Variant1013e49c4e70ffc79d887f70f5b287e0b4f0017ad5668026ae74f784b5903f52.lean/declarations/aeval-x-smul-of--7c0c24e2485defecaccf9463.md) | 203 | `result-track:7c0c24e2485defecaccf9463582c9f7fddcf0e324b76d896913ab313ee4b55c9` |
| 27 | `lemma` | [AEval'.X_pow_smul_of](../../../../../mathematics/Algebra/CommutativeAlgebra/AEval/Variant1013e49c4e70ffc79d887f70f5b287e0b4f0017ad5668026ae74f784b5903f52.lean/declarations/aeval-x-pow-smul-of--dd10b9077ec6d90f71f951d7.md) | 206 | `result-track:dd10b9077ec6d90f71f951d7186247d98165377dfd32a90e9251bbf4eb14c5c1` |
| 28 | `lemma` | [AEval'.of_symm_X_smul](../../../../../mathematics/Algebra/CommutativeAlgebra/AEval/Variant1013e49c4e70ffc79d887f70f5b287e0b4f0017ad5668026ae74f784b5903f52.lean/declarations/aeval-of-symm-x-smul--a1818ff7e672d083a749f8ad.md) | 209 | `result-track:a1818ff7e672d083a749f8ad04e596693c17fb5e12fa7e023db4ed999e863369` |
| 29 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/AEval/Variant1013e49c4e70ffc79d887f70f5b287e0b4f0017ad5668026ae74f784b5903f52.lean/declarations/instance--ecfeeb258bd383a9450c4e97.md) | 212 | `declaration-track:ecfeeb258bd383a9450c4e97fae39f8d77c60486e89626db6965b75166c2a306` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
