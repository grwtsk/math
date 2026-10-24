# Verification target: GRWTSK.Algebra.Algebra.Variant57194f21de2e1cb75e8827a91791e6b1ada7b8be0f976e9aaa20a0fa445edc27

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b8208c1f4c906953a65d0c8fb471b5200d6a70fa",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Algebra/Variant57194f21de2e1cb75e8827a91791e6b1ada7b8be0f976e9aaa20a0fa445edc27.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Algebra/Variant57194f21de2e1cb75e8827a91791e6b1ada7b8be0f976e9aaa20a0fa445edc27.lean/index.md) · [Full source](../../../../mathematics/Algebra/Algebra/Variant57194f21de2e1cb75e8827a91791e6b1ada7b8be0f976e9aaa20a0fa445edc27.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b8208c1f4c906953a65d0c8fb471b5200d6a70fa`.

Source path: `GRWTSK/Algebra/Algebra/Variant57194f21de2e1cb75e8827a91791e6b1ada7b8be0f976e9aaa20a0fa445edc27.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Algebra/Variant57194f21de2e1cb75e8827a91791e6b1ada7b8be0f976e9aaa20a0fa445edc27.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.FieldTheory.Finiteness` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.IntermediateField.Adjoin.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.IntermediateField.Algebraic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [algebra_adjoin_le_adjoin](../../../../mathematics/Algebra/Algebra/Variant57194f21de2e1cb75e8827a91791e6b1ada7b8be0f976e9aaa20a0fa445edc27.lean/declarations/algebra-adjoin-le-adjoin--f105899fd7d7bdbcd7f1744c.md) | 32 | `result-track:f105899fd7d7bdbcd7f1744c0328eaa88c98bed0e5387169f164cb4a11cc4b6a` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Algebra/Variant57194f21de2e1cb75e8827a91791e6b1ada7b8be0f976e9aaa20a0fa445edc27.lean/declarations/instance--b7f67b8364aaeadf473ad3f5.md) | 38 | `declaration-track:b7f67b8364aaeadf473ad3f56227b0b9b8b123b23c9063937b6bb5f55bf7fbdc` |
| 3 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Algebra/Variant57194f21de2e1cb75e8827a91791e6b1ada7b8be0f976e9aaa20a0fa445edc27.lean/declarations/instance--791e99ee80d809aff61c590f.md) | 41 | `declaration-track:791e99ee80d809aff61c590f74a0728fb4b59e5e7403681383e131aa89fd1d9b` |
| 4 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Algebra/Variant57194f21de2e1cb75e8827a91791e6b1ada7b8be0f976e9aaa20a0fa445edc27.lean/declarations/instance--e40c413e775910ae76d37f6a.md) | 45 | `declaration-track:e40c413e775910ae76d37f6a87ef62e4cc53b314ed3cebb8d97b0d91455ee2a8` |
| 5 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Algebra/Variant57194f21de2e1cb75e8827a91791e6b1ada7b8be0f976e9aaa20a0fa445edc27.lean/declarations/instance--c7f36e4eeff3a857897fda04.md) | 48 | `declaration-track:c7f36e4eeff3a857897fda046e55342506a49668050bd89158eb61968b848c4b` |
| 6 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Algebra/Variant57194f21de2e1cb75e8827a91791e6b1ada7b8be0f976e9aaa20a0fa445edc27.lean/declarations/instance--bf69485d98801a3f07b17c8e.md) | 51 | `declaration-track:bf69485d98801a3f07b17c8ea330ec7eab437d2e3706be2c90d0223f409bbd4c` |
| 7 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Algebra/Variant57194f21de2e1cb75e8827a91791e6b1ada7b8be0f976e9aaa20a0fa445edc27.lean/declarations/instance--fac58d1246b1eb321cbcce94.md) | 55 | `declaration-track:fac58d1246b1eb321cbcce94073dedb9e9d4b8eb19d4cf18e9e23f3254cff616` |
| 8 | `theorem` | [adjoin_eq_algebra_adjoin](../../../../mathematics/Algebra/Algebra/Variant57194f21de2e1cb75e8827a91791e6b1ada7b8be0f976e9aaa20a0fa445edc27.lean/declarations/adjoin-eq-algebra-adjoin--56c66bc1902b297203920dd5.md) | 60 | `result-track:56c66bc1902b297203920dd50f028fd23ef26761fe7d3be2f952b4242489e5b3` |
| 9 | `theorem` | [eq_adjoin_of_eq_algebra_adjoin](../../../../mathematics/Algebra/Algebra/Variant57194f21de2e1cb75e8827a91791e6b1ada7b8be0f976e9aaa20a0fa445edc27.lean/declarations/eq-adjoin-of-eq-algebra-adjoin--b2b6c3ea385702ac9c00b9e0.md) | 69 | `result-track:b2b6c3ea385702ac9c00b9e05b5102a5db4bc2ea08b69dc88e190ed586681a3a` |
| 10 | `theorem` | [adjoin_eq_top_of_algebra](../../../../mathematics/Algebra/Algebra/Variant57194f21de2e1cb75e8827a91791e6b1ada7b8be0f976e9aaa20a0fa445edc27.lean/declarations/adjoin-eq-top-of-algebra--7020bb2352b3223129dac91b.md) | 77 | `result-track:7020bb2352b3223129dac91bd5c30b7f3d0cef822ef01dbf9eb8e23f7ea90993` |
| 11 | `theorem` | [AdjoinSimple.isIntegral_gen](../../../../mathematics/Algebra/Algebra/Variant57194f21de2e1cb75e8827a91791e6b1ada7b8be0f976e9aaa20a0fa445edc27.lean/declarations/adjoinsimple-isintegral-gen--990e2b64bdd7daf63e4965b6.md) | 85 | `result-track:990e2b64bdd7daf63e4965b645afe1a2f78e3805cbdfa6c719d70a2667089b6a` |
| 12 | `theorem` | [adjoin_algebraic_toSubalgebra](../../../../mathematics/Algebra/Algebra/Variant57194f21de2e1cb75e8827a91791e6b1ada7b8be0f976e9aaa20a0fa445edc27.lean/declarations/adjoin-algebraic-tosubalgebra--8d63d064c0bd2da9107e5a2f.md) | 91 | `result-track:8d63d064c0bd2da9107e5a2fd765325a8a4003aa5a6fab2b08d1b551e04d345c` |
| 13 | `theorem` | [adjoin_simple_toSubalgebra_of_integral](../../../../mathematics/Algebra/Algebra/Variant57194f21de2e1cb75e8827a91791e6b1ada7b8be0f976e9aaa20a0fa445edc27.lean/declarations/adjoin-simple-tosubalgebra-of-integral--ed6814662e82dd73a3484abe.md) | 96 | `result-track:ed6814662e82dd73a3484abe7fedc691c7f2993d109ea9c0de6e8b4cd07f97c1` |
| 14 | `lemma` | [finite_of_fg_of_isAlgebraic](../../../../mathematics/Algebra/Algebra/Variant57194f21de2e1cb75e8827a91791e6b1ada7b8be0f976e9aaa20a0fa445edc27.lean/declarations/finite-of-fg-of-isalgebraic--45cc1bb4b21b004596d9eabc.md) | 102 | `result-track:45cc1bb4b21b004596d9eabc810446e6085c13a7fab855fd1b6765b76d1a4868` |
| 15 | `theorem` | [le_sup_toSubalgebra](../../../../mathematics/Algebra/Algebra/Variant57194f21de2e1cb75e8827a91791e6b1ada7b8be0f976e9aaa20a0fa445edc27.lean/declarations/le-sup-tosubalgebra--2ad3635e638df288a284359a.md) | 117 | `result-track:2ad3635e638df288a284359af5ae1c4807ba5e4b6e3d09d32bcddd5d2dfe6730` |
| 16 | `theorem` | [sup_toSubalgebra_of_isAlgebraic_right](../../../../mathematics/Algebra/Algebra/Variant57194f21de2e1cb75e8827a91791e6b1ada7b8be0f976e9aaa20a0fa445edc27.lean/declarations/sup-tosubalgebra-of-isalgebraic-right--19747e23e71cb0a024d4f0ca.md) | 120 | `result-track:19747e23e71cb0a024d4f0cae0db63b8de8b133b6456cf5c45980be10f4bc746` |
| 17 | `theorem` | [sup_toSubalgebra_of_isAlgebraic_left](../../../../mathematics/Algebra/Algebra/Variant57194f21de2e1cb75e8827a91791e6b1ada7b8be0f976e9aaa20a0fa445edc27.lean/declarations/sup-tosubalgebra-of-isalgebraic-left--a7c8ed09c02c4a50a6e7f1ba.md) | 133 | `result-track:a7c8ed09c02c4a50a6e7f1bac73b8e22ce3fd0a08f84a8d662ae54d1b49b60d0` |
| 18 | `theorem` | [sup_toSubalgebra_of_isAlgebraic](../../../../mathematics/Algebra/Algebra/Variant57194f21de2e1cb75e8827a91791e6b1ada7b8be0f976e9aaa20a0fa445edc27.lean/declarations/sup-tosubalgebra-of-isalgebraic--472dbfbd4bf41252e1275e81.md) | 140 | `result-track:472dbfbd4bf41252e1275e813530869d286fa7d47e4af0b9cff18793d170b0e9` |
| 19 | `theorem` | [sup_toSubalgebra_of_left](../../../../mathematics/Algebra/Algebra/Variant57194f21de2e1cb75e8827a91791e6b1ada7b8be0f976e9aaa20a0fa445edc27.lean/declarations/sup-tosubalgebra-of-left--910c502f99fad654a8c93a68.md) | 146 | `result-track:910c502f99fad654a8c93a683aa54a3f1615601988e81e0879c221b0b14252c5` |
| 20 | `theorem` | [sup_toSubalgebra_of_right](../../../../mathematics/Algebra/Algebra/Variant57194f21de2e1cb75e8827a91791e6b1ada7b8be0f976e9aaa20a0fa445edc27.lean/declarations/sup-tosubalgebra-of-right--b32be9da7a6cc3fdcd4a9e94.md) | 150 | `result-track:b32be9da7a6cc3fdcd4a9e94c088a26204608ff6341fe861fc71068214695b30` |
| 21 | `theorem` | [adjoin_toSubalgebra_of_isAlgebraic](../../../../mathematics/Algebra/Algebra/Variant57194f21de2e1cb75e8827a91791e6b1ada7b8be0f976e9aaa20a0fa445edc27.lean/declarations/adjoin-tosubalgebra-of-isalgebraic--9011700feec8a9464afc5b5e.md) | 163 | `result-track:9011700feec8a9464afc5b5e62d3491189bbe6e92f7a7138b466dc2356665065` |
| 22 | `theorem` | [adjoin_toSubalgebra_of_isAlgebraic_left](../../../../mathematics/Algebra/Algebra/Variant57194f21de2e1cb75e8827a91791e6b1ada7b8be0f976e9aaa20a0fa445edc27.lean/declarations/adjoin-tosubalgebra-of-isalgebraic-left--b0e1f885c843e0581746a223.md) | 178 | `result-track:b0e1f885c843e0581746a223429084604abfe18141f451f4f97e0da55ed476eb` |
| 23 | `theorem` | [adjoin_toSubalgebra_of_isAlgebraic_right](../../../../mathematics/Algebra/Algebra/Variant57194f21de2e1cb75e8827a91791e6b1ada7b8be0f976e9aaa20a0fa445edc27.lean/declarations/adjoin-tosubalgebra-of-isalgebraic-right--4d8bf794b7eb0e7593a26661.md) | 183 | `result-track:4d8bf794b7eb0e7593a26661ad1a59c185a8d8c7e65cbbb014e7a5faf5690405` |
| 24 | `theorem` | [fg_of_fg_toSubalgebra](../../../../mathematics/Algebra/Algebra/Variant57194f21de2e1cb75e8827a91791e6b1ada7b8be0f976e9aaa20a0fa445edc27.lean/declarations/fg-of-fg-tosubalgebra--72b633d0fd734b40f4f5c7cc.md) | 198 | `result-track:72b633d0fd734b40f4f5c7cc8ef0b823392f7c132d3810b41ea8980778d79676` |
| 25 | `theorem` | [fg_of_noetherian](../../../../mathematics/Algebra/Algebra/Variant57194f21de2e1cb75e8827a91791e6b1ada7b8be0f976e9aaa20a0fa445edc27.lean/declarations/fg-of-noetherian--8dc4cf56b2873a554348054c.md) | 204 | `result-track:8dc4cf56b2873a554348054c2ff4b41cde085639344c3c648fa54924d1a1e519` |
| 26 | `theorem` | [induction_on_adjoin](../../../../mathematics/Algebra/Algebra/Variant57194f21de2e1cb75e8827a91791e6b1ada7b8be0f976e9aaa20a0fa445edc27.lean/declarations/induction-on-adjoin--d19f651eae340f1e9a8a98f3.md) | 207 | `result-track:d19f651eae340f1e9a8a98f3360a2c27d9910cb3ae920dbecdbbc4cc8b75302b` |
| 27 | `theorem` | [algHom_fieldRange_eq_of_comp_eq](../../../../mathematics/Algebra/Algebra/Variant57194f21de2e1cb75e8827a91791e6b1ada7b8be0f976e9aaa20a0fa445edc27.lean/declarations/alghom-fieldrange-eq-of-comp-eq--4e0d655db3321270278ee316.md) | 227 | `result-track:4e0d655db3321270278ee316c75ecb8da53e2176fb73e19da17477767fb6932b` |
| 28 | `theorem` | [algHom_fieldRange_eq_of_comp_eq_of_range_eq](../../../../mathematics/Algebra/Algebra/Variant57194f21de2e1cb75e8827a91791e6b1ada7b8be0f976e9aaa20a0fa445edc27.lean/declarations/alghom-fieldrange-eq-of-comp-eq-of-range-eq--5fc40ddda269e41d71e1ff20.md) | 239 | `result-track:5fc40ddda269e41d71e1ff201c3529918b44694656d7af59d1a4fb7e2b5bf513` |
| 29 | `theorem` | [liftAlgHom_fieldRange](../../../../mathematics/Algebra/Algebra/Variant57194f21de2e1cb75e8827a91791e6b1ada7b8be0f976e9aaa20a0fa445edc27.lean/declarations/liftalghom-fieldrange--41b1ff9ba3993d70b807a7c3.md) | 252 | `result-track:41b1ff9ba3993d70b807a7c3ed13115d09e6413d6b795883f55562c11ecb3264` |
| 30 | `theorem` | [liftAlgHom_fieldRange_eq_of_range_eq](../../../../mathematics/Algebra/Algebra/Variant57194f21de2e1cb75e8827a91791e6b1ada7b8be0f976e9aaa20a0fa445edc27.lean/declarations/liftalghom-fieldrange-eq-of-range-eq--5a7a28c1c780a0e4c5dc0131.md) | 258 | `result-track:5a7a28c1c780a0e4c5dc01310c41b6d045a0a6f1f4ee06952b0d8595c287b3ef` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
