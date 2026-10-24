# Verification target: GRWTSK.Algebra.Kleene.Variant8b10234c020a741a2cfb92bf6a149575a92b96eb34c723b5ab7b7b99dcc8a5e0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e997a9d785530c4423087c71dd2b3ce3229ba11a",
  "lexical_observation_count": 48,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Kleene/Variant8b10234c020a741a2cfb92bf6a149575a92b96eb34c723b5ab7b7b99dcc8a5e0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Kleene/Variant8b10234c020a741a2cfb92bf6a149575a92b96eb34c723b5ab7b7b99dcc8a5e0.lean/index.md) · [Full source](../../../../mathematics/Algebra/Kleene/Variant8b10234c020a741a2cfb92bf6a149575a92b96eb34c723b5ab7b7b99dcc8a5e0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e997a9d785530c4423087c71dd2b3ce3229ba11a`.

Source path: `GRWTSK/Algebra/Kleene/Variant8b10234c020a741a2cfb92bf6a149575a92b96eb34c723b5ab7b7b99dcc8a5e0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Kleene/Variant8b10234c020a741a2cfb92bf6a149575a92b96eb34c723b5ab7b7b99dcc8a5e0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Ring.Canonical` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Pi` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Prod` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Hom.CompleteLattice` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IdemSemiring](../../../../mathematics/Algebra/Kleene/Variant8b10234c020a741a2cfb92bf6a149575a92b96eb34c723b5ab7b7b99dcc8a5e0.lean/declarations/idemsemiring--8ccdc84416a355839c7ce420.md) | 61 | `declaration-track:8ccdc84416a355839c7ce4203eead5dc72d36474b2cbdadf6a455a86fb37a43f` |
| 2 | `class` | [IdemCommSemiring](../../../../mathematics/Algebra/Kleene/Variant8b10234c020a741a2cfb92bf6a149575a92b96eb34c723b5ab7b7b99dcc8a5e0.lean/declarations/idemcommsemiring--425237b0470f78afebdb16d7.md) | 72 | `declaration-track:425237b0470f78afebdb16d7663970114f4b2971c86efa3317b8ac266f670fe7` |
| 3 | `class` | [KStar](../../../../mathematics/Algebra/Kleene/Variant8b10234c020a741a2cfb92bf6a149575a92b96eb34c723b5ab7b7b99dcc8a5e0.lean/declarations/kstar--432cb90dba660216c4aa5719.md) | 76 | `declaration-track:432cb90dba660216c4aa5719b59464c54a4b68076489a4a21fdc9c5d14346117` |
| 4 | `class` | [KleeneAlgebra](../../../../mathematics/Algebra/Kleene/Variant8b10234c020a741a2cfb92bf6a149575a92b96eb34c723b5ab7b7b99dcc8a5e0.lean/declarations/kleenealgebra--12559bd50f155d15cde90399.md) | 91 | `declaration-track:12559bd50f155d15cde90399da6694b7d6eda4a9b3c3628e878f7a9c7a800c4b` |
| 5 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Kleene/Variant8b10234c020a741a2cfb92bf6a149575a92b96eb34c723b5ab7b7b99dcc8a5e0.lean/declarations/instance--712a047d69aa6dcca7982e73.md) | 100 | `declaration-track:712a047d69aa6dcca7982e73b3da2551619380f0f67715d62b0965febf013f7e` |
| 6 | `def` | [IdemSemiring.ofSemiring](../../../../mathematics/Algebra/Kleene/Variant8b10234c020a741a2cfb92bf6a149575a92b96eb34c723b5ab7b7b99dcc8a5e0.lean/declarations/idemsemiring-ofsemiring--3fc34a7a28807bd553c6a90f.md) | 107 | `declaration-track:3fc34a7a28807bd553c6a90f1482c71752fbd1b5d79aec4acd0d0d4fe0e0a290` |
| 7 | `theorem` | [add_eq_sup](../../../../mathematics/Algebra/Kleene/Variant8b10234c020a741a2cfb92bf6a149575a92b96eb34c723b5ab7b7b99dcc8a5e0.lean/declarations/add-eq-sup--88485274b7ffe2666761dc6d.md) | 133 | `result-track:88485274b7ffe2666761dc6d18f8f2718861861e408145b69db2e1eed607b518` |
| 8 | `theorem` | [add_idem](../../../../mathematics/Algebra/Kleene/Variant8b10234c020a741a2cfb92bf6a149575a92b96eb34c723b5ab7b7b99dcc8a5e0.lean/declarations/add-idem--69150f0715126bc4171f5457.md) | 141 | `result-track:69150f0715126bc4171f5457da804d6b4f16ed463d36db6d0366551361656979` |
| 9 | `theorem` | [nsmul_eq_self](../../../../mathematics/Algebra/Kleene/Variant8b10234c020a741a2cfb92bf6a149575a92b96eb34c723b5ab7b7b99dcc8a5e0.lean/declarations/nsmul-eq-self--5447e5bfa9c3831ccb0948b1.md) | 144 | `result-track:5447e5bfa9c3831ccb0948b19ececea850f10bf712d941628d535ea48d98817f` |
| 10 | `theorem` | [add_eq_left_iff_le](../../../../mathematics/Algebra/Kleene/Variant8b10234c020a741a2cfb92bf6a149575a92b96eb34c723b5ab7b7b99dcc8a5e0.lean/declarations/add-eq-left-iff-le--b6be8150ea4a378e4c6af020.md) | 150 | `result-track:b6be8150ea4a378e4c6af020395cdc4e789b6999ad74dd49fc698f0ca850441e` |
| 11 | `theorem` | [add_eq_right_iff_le](../../../../mathematics/Algebra/Kleene/Variant8b10234c020a741a2cfb92bf6a149575a92b96eb34c723b5ab7b7b99dcc8a5e0.lean/declarations/add-eq-right-iff-le--e99c949a7ce9ed39ecd377f6.md) | 153 | `result-track:e99c949a7ce9ed39ecd377f6dda21e29c839b8429521412b5d592511f6f10821` |
| 12 | `theorem` | [add_le_iff](../../../../mathematics/Algebra/Kleene/Variant8b10234c020a741a2cfb92bf6a149575a92b96eb34c723b5ab7b7b99dcc8a5e0.lean/declarations/add-le-iff--715eac82e89e7e2034be2a3e.md) | 162 | `result-track:715eac82e89e7e2034be2a3e6df24a3cc539fd47b82843e9ac98cf1e52e0d70f` |
| 13 | `theorem` | [add_le](../../../../mathematics/Algebra/Kleene/Variant8b10234c020a741a2cfb92bf6a149575a92b96eb34c723b5ab7b7b99dcc8a5e0.lean/declarations/add-le--b738bb118f9ead2976972270.md) | 165 | `result-track:b738bb118f9ead2976972270c28abb13e8c42c994586bde559eb59f4509a22da` |
| 14 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Kleene/Variant8b10234c020a741a2cfb92bf6a149575a92b96eb34c723b5ab7b7b99dcc8a5e0.lean/declarations/instance--d8ca95a85385f4fdd682d316.md) | 170 | `declaration-track:d8ca95a85385f4fdd682d316e2046998c94645d068af0614999818eaec65dd71` |
| 15 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Kleene/Variant8b10234c020a741a2cfb92bf6a149575a92b96eb34c723b5ab7b7b99dcc8a5e0.lean/declarations/instance--4aa51527577ba96b3877014e.md) | 181 | `declaration-track:4aa51527577ba96b3877014e5227d91543a36ebfe7f7872242d14f8f49caf880` |
| 16 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Kleene/Variant8b10234c020a741a2cfb92bf6a149575a92b96eb34c723b5ab7b7b99dcc8a5e0.lean/declarations/instance--8a8686c771b46d7c6c53e1a2.md) | 187 | `declaration-track:8a8686c771b46d7c6c53e1a2fdc68f5aab3849f28a2e66d60ee3f7d044864d71` |
| 17 | `theorem` | [one_le_kstar](../../../../mathematics/Algebra/Kleene/Variant8b10234c020a741a2cfb92bf6a149575a92b96eb34c723b5ab7b7b99dcc8a5e0.lean/declarations/one-le-kstar--91a2108db156c03152b9310f.md) | 199 | `result-track:91a2108db156c03152b9310f9c177fada391f0042ecda40abadbaf8d8e2c7803` |
| 18 | `theorem` | [mul_kstar_le_kstar](../../../../mathematics/Algebra/Kleene/Variant8b10234c020a741a2cfb92bf6a149575a92b96eb34c723b5ab7b7b99dcc8a5e0.lean/declarations/mul-kstar-le-kstar--2f333b264d53d4df7d28882f.md) | 203 | `result-track:2f333b264d53d4df7d28882f3b7196d964069dbc5e9c5e54374a5bf9526642d0` |
| 19 | `theorem` | [kstar_mul_le_kstar](../../../../mathematics/Algebra/Kleene/Variant8b10234c020a741a2cfb92bf6a149575a92b96eb34c723b5ab7b7b99dcc8a5e0.lean/declarations/kstar-mul-le-kstar--1c0429c5640af18b6f095aba.md) | 207 | `result-track:1c0429c5640af18b6f095abad3e515429f5e3960c82d8b9222778a478b131a0b` |
| 20 | `theorem` | [mul_kstar_le_self](../../../../mathematics/Algebra/Kleene/Variant8b10234c020a741a2cfb92bf6a149575a92b96eb34c723b5ab7b7b99dcc8a5e0.lean/declarations/mul-kstar-le-self--f4b14e9bac5e272f94851bd2.md) | 211 | `result-track:f4b14e9bac5e272f94851bd2f16bc10e0c44e1e91da8044512cff8cac9c55048` |
| 21 | `theorem` | [kstar_mul_le_self](../../../../mathematics/Algebra/Kleene/Variant8b10234c020a741a2cfb92bf6a149575a92b96eb34c723b5ab7b7b99dcc8a5e0.lean/declarations/kstar-mul-le-self--a4743c30442245fbb78dfb68.md) | 215 | `result-track:a4743c30442245fbb78dfb68f8b95a95f21464c3563f57430a70b33f656b97e9` |
| 22 | `theorem` | [mul_kstar_le](../../../../mathematics/Algebra/Kleene/Variant8b10234c020a741a2cfb92bf6a149575a92b96eb34c723b5ab7b7b99dcc8a5e0.lean/declarations/mul-kstar-le--a5c5b14d12c4a5dc8f67ae68.md) | 219 | `result-track:a5c5b14d12c4a5dc8f67ae686946a69a2ece9b6a4f12d17819f501c60d2bb5bb` |
| 23 | `theorem` | [kstar_mul_le](../../../../mathematics/Algebra/Kleene/Variant8b10234c020a741a2cfb92bf6a149575a92b96eb34c723b5ab7b7b99dcc8a5e0.lean/declarations/kstar-mul-le--e9a453f361457eeefef216b7.md) | 223 | `result-track:e9a453f361457eeefef216b74d213be45c6340085126a9707115610166f4c94f` |
| 24 | `theorem` | [kstar_le_of_mul_le_left](../../../../mathematics/Algebra/Kleene/Variant8b10234c020a741a2cfb92bf6a149575a92b96eb34c723b5ab7b7b99dcc8a5e0.lean/declarations/kstar-le-of-mul-le-left--1c16a731a64ea50e6edff758.md) | 227 | `result-track:1c16a731a64ea50e6edff7585d1b4c7e69ee9616a928bdc78f5276cdfcc122d6` |
| 25 | `theorem` | [kstar_le_of_mul_le_right](../../../../mathematics/Algebra/Kleene/Variant8b10234c020a741a2cfb92bf6a149575a92b96eb34c723b5ab7b7b99dcc8a5e0.lean/declarations/kstar-le-of-mul-le-right--7489a410b4c37ea5d74f28ea.md) | 231 | `result-track:7489a410b4c37ea5d74f28ea51d32bb8549e932ec759edf8b8e1ae984932efc4` |
| 26 | `theorem` | [le_kstar](../../../../mathematics/Algebra/Kleene/Variant8b10234c020a741a2cfb92bf6a149575a92b96eb34c723b5ab7b7b99dcc8a5e0.lean/declarations/le-kstar--f4857aad9df0c4a0118fbe1b.md) | 236 | `result-track:f4857aad9df0c4a0118fbe1b5858b838bfd982a9cce65a9d8d5b668079e9e06d` |
| 27 | `theorem` | [kstar_mono](../../../../mathematics/Algebra/Kleene/Variant8b10234c020a741a2cfb92bf6a149575a92b96eb34c723b5ab7b7b99dcc8a5e0.lean/declarations/kstar-mono--394129bea15870e0696754b1.md) | 241 | `result-track:394129bea15870e0696754b1f051dfb1b39395a3574a2b5d0e8fa560c7e4592c` |
| 28 | `theorem` | [kstar_eq_one](../../../../mathematics/Algebra/Kleene/Variant8b10234c020a741a2cfb92bf6a149575a92b96eb34c723b5ab7b7b99dcc8a5e0.lean/declarations/kstar-eq-one--b6e943086ac1419deddb2134.md) | 247 | `result-track:b6e943086ac1419deddb21346f9803537565823cfe3aedcd61aecbe243d3750d` |
| 29 | `theorem` | [kstar_zero](../../../../mathematics/Algebra/Kleene/Variant8b10234c020a741a2cfb92bf6a149575a92b96eb34c723b5ab7b7b99dcc8a5e0.lean/declarations/kstar-zero--52938108c91a4bdd0ca351e8.md) | 253 | `result-track:52938108c91a4bdd0ca351e85da68ee936de9e4a64c592a35f0bb0bc11285392` |
| 30 | `theorem` | [kstar_one](../../../../mathematics/Algebra/Kleene/Variant8b10234c020a741a2cfb92bf6a149575a92b96eb34c723b5ab7b7b99dcc8a5e0.lean/declarations/kstar-one--a5d0cca103847fc72fa9539b.md) | 258 | `result-track:a5d0cca103847fc72fa9539b1215b2eaf2a20dbc5e88b2cd03396551a7dc28ba` |
| 31 | `theorem` | [kstar_mul_kstar](../../../../mathematics/Algebra/Kleene/Variant8b10234c020a741a2cfb92bf6a149575a92b96eb34c723b5ab7b7b99dcc8a5e0.lean/declarations/kstar-mul-kstar--fc9842387a6f1066a7582d99.md) | 263 | `result-track:fc9842387a6f1066a7582d99d10d5137c7eb4dbebd05be8ae7a4a56f74bfc73e` |
| 32 | `theorem` | [kstar_eq_self](../../../../mathematics/Algebra/Kleene/Variant8b10234c020a741a2cfb92bf6a149575a92b96eb34c723b5ab7b7b99dcc8a5e0.lean/declarations/kstar-eq-self--5747a496e5f56990ba814fc8.md) | 268 | `result-track:5747a496e5f56990ba814fc8d40edbe0bcccac18d435837d6aca577d40540166` |
| 33 | `theorem` | [kstar_idem](../../../../mathematics/Algebra/Kleene/Variant8b10234c020a741a2cfb92bf6a149575a92b96eb34c723b5ab7b7b99dcc8a5e0.lean/declarations/kstar-idem--a0d0b3f899f07b3468965b9c.md) | 274 | `result-track:a0d0b3f899f07b3468965b9c690324e9daaa626498d7c57a419de31b8e82af9d` |
| 34 | `theorem` | [pow_le_kstar](../../../../mathematics/Algebra/Kleene/Variant8b10234c020a741a2cfb92bf6a149575a92b96eb34c723b5ab7b7b99dcc8a5e0.lean/declarations/pow-le-kstar--70a779b601be3f7eea970002.md) | 279 | `result-track:70a779b601be3f7eea97000276873092c3bf040084f90661383a191c967e8d16` |
| 35 | `instance` | [instIdemSemiring](../../../../mathematics/Algebra/Kleene/Variant8b10234c020a741a2cfb92bf6a149575a92b96eb34c723b5ab7b7b99dcc8a5e0.lean/declarations/instidemsemiring--2021056bcaba5b7b8ba1c0c5.md) | 290 | `declaration-track:2021056bcaba5b7b8ba1c0c56d4098353fe2dbb73c2837c136eb11a9f51ba946` |
| 36 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Kleene/Variant8b10234c020a741a2cfb92bf6a149575a92b96eb34c723b5ab7b7b99dcc8a5e0.lean/declarations/instance--0404ed11951448b1bb5dc4bb.md) | 294 | `declaration-track:0404ed11951448b1bb5dc4bb2d5d6c03f01c7486ea25088a72fd12b1cc677a7a` |
| 37 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Kleene/Variant8b10234c020a741a2cfb92bf6a149575a92b96eb34c723b5ab7b7b99dcc8a5e0.lean/declarations/instance--3838fd6fef5cfb4bd4cf0267.md) | 299 | `declaration-track:3838fd6fef5cfb4bd4cf0267937b531a0e0beaf4af3c6e1f03a412dc7ac036ea` |
| 38 | `theorem` | [kstar_def](../../../../mathematics/Algebra/Kleene/Variant8b10234c020a741a2cfb92bf6a149575a92b96eb34c723b5ab7b7b99dcc8a5e0.lean/declarations/kstar-def--1b3314855a3d04ac9ec0c245.md) | 308 | `result-track:1b3314855a3d04ac9ec0c245ac13a06b4b0ff4e4356050538476abd6765629ee` |
| 39 | `theorem` | [fst_kstar](../../../../mathematics/Algebra/Kleene/Variant8b10234c020a741a2cfb92bf6a149575a92b96eb34c723b5ab7b7b99dcc8a5e0.lean/declarations/fst-kstar--30a7e3b627b4a154da430a40.md) | 313 | `result-track:30a7e3b627b4a154da430a408cf642cf8032ddef2d1977cbbe5c4003a5531fbf` |
| 40 | `theorem` | [snd_kstar](../../../../mathematics/Algebra/Kleene/Variant8b10234c020a741a2cfb92bf6a149575a92b96eb34c723b5ab7b7b99dcc8a5e0.lean/declarations/snd-kstar--1c37416f3454cea9753c1e37.md) | 318 | `result-track:1c37416f3454cea9753c1e37e83acfd1d1d595484fac9fbbf8ecc24304d1e40a` |
| 41 | `instance` | [instIdemSemiring](../../../../mathematics/Algebra/Kleene/Variant8b10234c020a741a2cfb92bf6a149575a92b96eb34c723b5ab7b7b99dcc8a5e0.lean/declarations/instidemsemiring--662a6463c7bce516c7dc1f8e.md) | 326 | `declaration-track:662a6463c7bce516c7dc1f8e8a5a99bf55ec094d9b8419fc21fc884e0f1d636d` |
| 42 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Kleene/Variant8b10234c020a741a2cfb92bf6a149575a92b96eb34c723b5ab7b7b99dcc8a5e0.lean/declarations/instance--81af7404d556eb63f29969bf.md) | 330 | `declaration-track:81af7404d556eb63f29969bf70dae1cd9138aa73b26a6750bf2a3e8c77b3fd9d` |
| 43 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Kleene/Variant8b10234c020a741a2cfb92bf6a149575a92b96eb34c723b5ab7b7b99dcc8a5e0.lean/declarations/instance--aaebcb9928bebc24c02dd138.md) | 335 | `declaration-track:aaebcb9928bebc24c02dd1382527aa0c9feb09d834719c22c3785dcceeb303d6` |
| 44 | `theorem` | [kstar_def](../../../../mathematics/Algebra/Kleene/Variant8b10234c020a741a2cfb92bf6a149575a92b96eb34c723b5ab7b7b99dcc8a5e0.lean/declarations/kstar-def--f5bf80d872732d848a3dd161.md) | 344 | `result-track:f5bf80d872732d848a3dd161e6ef8ac877adb5c26c63a9b38623ccfa3c85d43c` |
| 45 | `theorem` | [kstar_apply](../../../../mathematics/Algebra/Kleene/Variant8b10234c020a741a2cfb92bf6a149575a92b96eb34c723b5ab7b7b99dcc8a5e0.lean/declarations/kstar-apply--9c453b2311d4b7c8a49d134e.md) | 349 | `result-track:9c453b2311d4b7c8a49d134e2d683ec22ed5f2374eb8689c4f6cb018b145ad15` |
| 46 | `def` | [idemSemiring](../../../../mathematics/Algebra/Kleene/Variant8b10234c020a741a2cfb92bf6a149575a92b96eb34c723b5ab7b7b99dcc8a5e0.lean/declarations/idemsemiring--d068c15813e495a0332043ff.md) | 360 | `declaration-track:d068c15813e495a0332043ffa9fddbfccade5e3b5260a4218071212693ea6014` |
| 47 | `def` | [idemCommSemiring](../../../../mathematics/Algebra/Kleene/Variant8b10234c020a741a2cfb92bf6a149575a92b96eb34c723b5ab7b7b99dcc8a5e0.lean/declarations/idemcommsemiring--d2cc2c68983b65a658d8f610.md) | 376 | `declaration-track:d2cc2c68983b65a658d8f6104c44d497263585cbb9f4376f6e6e62c8441cd53c` |
| 48 | `def` | [kleeneAlgebra](../../../../mathematics/Algebra/Kleene/Variant8b10234c020a741a2cfb92bf6a149575a92b96eb34c723b5ab7b7b99dcc8a5e0.lean/declarations/kleenealgebra--8987113a995b9ee9b4dbbd4a.md) | 389 | `declaration-track:8987113a995b9ee9b4dbbd4acedad3bd104f1a3e37771a8d61cde700e59aab7b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
