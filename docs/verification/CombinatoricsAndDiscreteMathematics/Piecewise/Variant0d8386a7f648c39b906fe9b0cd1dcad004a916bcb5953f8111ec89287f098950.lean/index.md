# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Piecewise.Variant0d8386a7f648c39b906fe9b0cd1dcad004a916bcb5953f8111ec89287f098950

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a3e0094018610a83238e9bef719af54f2a209a45",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Piecewise/Variant0d8386a7f648c39b906fe9b0cd1dcad004a916bcb5953f8111ec89287f098950.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Piecewise/Variant0d8386a7f648c39b906fe9b0cd1dcad004a916bcb5953f8111ec89287f098950.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Piecewise/Variant0d8386a7f648c39b906fe9b0cd1dcad004a916bcb5953f8111ec89287f098950.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a3e0094018610a83238e9bef719af54f2a209a45`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Piecewise/Variant0d8386a7f648c39b906fe9b0cd1dcad004a916bcb5953f8111ec89287f098950.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Piecewise/Variant0d8386a7f648c39b906fe9b0cd1dcad004a916bcb5953f8111ec89287f098950.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Group.Finset.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Piecewise` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [prod_apply_dite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Piecewise/Variant0d8386a7f648c39b906fe9b0cd1dcad004a916bcb5953f8111ec89287f098950.lean/declarations/prod-apply-dite--222aa1494fdf214f8e367ff1.md) | 24 | `result-track:222aa1494fdf214f8e367ff1049abc25a79032ff36c9a6727105107187c73844` |
| 2 | `theorem` | [prod_apply_ite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Piecewise/Variant0d8386a7f648c39b906fe9b0cd1dcad004a916bcb5953f8111ec89287f098950.lean/declarations/prod-apply-ite--6ff9c9472dd6ca37d487be9f.md) | 44 | `result-track:6ff9c9472dd6ca37d487be9f032cf417d8dcef0e3bab2e63fe1a55a9c2098e00` |
| 3 | `theorem` | [prod_dite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Piecewise/Variant0d8386a7f648c39b906fe9b0cd1dcad004a916bcb5953f8111ec89287f098950.lean/declarations/prod-dite--49ccabfa2062638ea40a2f1c.md) | 51 | `result-track:49ccabfa2062638ea40a2f1c45799f0e6031ff743a955eed733eaee2bdf983fe` |
| 4 | `theorem` | [prod_ite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Piecewise/Variant0d8386a7f648c39b906fe9b0cd1dcad004a916bcb5953f8111ec89287f098950.lean/declarations/prod-ite--930b2ba3e59f9dff057ccf25.md) | 59 | `result-track:930b2ba3e59f9dff057ccf25a45a984210873eaf0dc328cdf9a7a15e4ccaad09` |
| 5 | `lemma` | [prod_dite_of_false](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Piecewise/Variant0d8386a7f648c39b906fe9b0cd1dcad004a916bcb5953f8111ec89287f098950.lean/declarations/prod-dite-of-false--c3ee2a0da899820fdcf8b65a.md) | 64 | `result-track:c3ee2a0da899820fdcf8b65ababf98131a11430aafe73aed25fca0de60c6ab37` |
| 6 | `lemma` | [prod_ite_of_false](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Piecewise/Variant0d8386a7f648c39b906fe9b0cd1dcad004a916bcb5953f8111ec89287f098950.lean/declarations/prod-ite-of-false--509a32fb9785ee3bc97588cb.md) | 70 | `result-track:509a32fb9785ee3bc97588cb88d8c3c75fe6d8e0a705d76b512f9ef98b6ec678` |
| 7 | `lemma` | [prod_dite_of_true](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Piecewise/Variant0d8386a7f648c39b906fe9b0cd1dcad004a916bcb5953f8111ec89287f098950.lean/declarations/prod-dite-of-true--0b2ec4e516a8495a8de62e3f.md) | 75 | `result-track:0b2ec4e516a8495a8de62e3f8df834b1ef12201c569f6c011c2d26e250281de8` |
| 8 | `lemma` | [prod_ite_of_true](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Piecewise/Variant0d8386a7f648c39b906fe9b0cd1dcad004a916bcb5953f8111ec89287f098950.lean/declarations/prod-ite-of-true--709b697877ab4205fd7675bf.md) | 81 | `result-track:709b697877ab4205fd7675bfa485285736a7acd5165ff07e8d0c7980f2e59eac` |
| 9 | `theorem` | [prod_apply_ite_of_false](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Piecewise/Variant0d8386a7f648c39b906fe9b0cd1dcad004a916bcb5953f8111ec89287f098950.lean/declarations/prod-apply-ite-of-false--f77e5cee09a828adf3979d1a.md) | 86 | `result-track:f77e5cee09a828adf3979d1ac267bce1183125f58945629633c66f70b4c5663c` |
| 10 | `theorem` | [prod_apply_ite_of_true](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Piecewise/Variant0d8386a7f648c39b906fe9b0cd1dcad004a916bcb5953f8111ec89287f098950.lean/declarations/prod-apply-ite-of-true--3d9a869fc532d138bfe10cb9.md) | 92 | `result-track:3d9a869fc532d138bfe10cb9d4d74b61f57fc63f7a79b64d3bcf067ec6fb0b1e` |
| 11 | `theorem` | [prod_ite_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Piecewise/Variant0d8386a7f648c39b906fe9b0cd1dcad004a916bcb5953f8111ec89287f098950.lean/declarations/prod-ite-mem--338c4a68936166e990dfd72b.md) | 98 | `result-track:338c4a68936166e990dfd72b4878f29724864da4409b6102d06917a36ddcdf01` |
| 12 | `lemma` | [prod_attach_eq_prod_dite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Piecewise/Variant0d8386a7f648c39b906fe9b0cd1dcad004a916bcb5953f8111ec89287f098950.lean/declarations/prod-attach-eq-prod-dite--10afaf32c3519c92f699c150.md) | 103 | `result-track:10afaf32c3519c92f699c150f559522e5d029b969aed2da70de5367f185d23bf` |
| 13 | `theorem` | [prod_dite_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Piecewise/Variant0d8386a7f648c39b906fe9b0cd1dcad004a916bcb5953f8111ec89287f098950.lean/declarations/prod-dite-eq--0a2428a544592ebffd4e7c14.md) | 112 | `result-track:0a2428a544592ebffd4e7c1410f99566764a88976e365cc1d9cbd09d7efe8290` |
| 14 | `theorem` | [prod_dite_eq'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Piecewise/Variant0d8386a7f648c39b906fe9b0cd1dcad004a916bcb5953f8111ec89287f098950.lean/declarations/prod-dite-eq--62f65279b19a4ba295fa8e21.md) | 127 | `result-track:62f65279b19a4ba295fa8e21031efab6f88c7deece896871083f84bd9e525ee0` |
| 15 | `theorem` | [prod_ite_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Piecewise/Variant0d8386a7f648c39b906fe9b0cd1dcad004a916bcb5953f8111ec89287f098950.lean/declarations/prod-ite-eq--ae91497beaa55e7d522db6ee.md) | 142 | `result-track:ae91497beaa55e7d522db6eecad21840096e7cbd4949642cbc909478926fbd9a` |
| 16 | `theorem` | [prod_ite_eq'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Piecewise/Variant0d8386a7f648c39b906fe9b0cd1dcad004a916bcb5953f8111ec89287f098950.lean/declarations/prod-ite-eq--0386842033b369dd51336472.md) | 154 | `result-track:0386842033b369dd513364725fa9660e7daa16379aaea7c0f7799227c2540c25` |
| 17 | `theorem` | [prod_ite_eq_of_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Piecewise/Variant0d8386a7f648c39b906fe9b0cd1dcad004a916bcb5953f8111ec89287f098950.lean/declarations/prod-ite-eq-of-mem--60dc9e6945ef67d3d8615be5.md) | 159 | `result-track:60dc9e6945ef67d3d8615be513d3e31085b435be96d452c5c54179616ee15e09` |
| 18 | `theorem` | [prod_ite_eq_of_mem'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Piecewise/Variant0d8386a7f648c39b906fe9b0cd1dcad004a916bcb5953f8111ec89287f098950.lean/declarations/prod-ite-eq-of-mem--87afccef5493ae546a4c426e.md) | 165 | `result-track:87afccef5493ae546a4c426e53dcacb0fafc2dee5fbc4e09d37caf3775b14b64` |
| 19 | `theorem` | [prod_pi_mulSingle'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Piecewise/Variant0d8386a7f648c39b906fe9b0cd1dcad004a916bcb5953f8111ec89287f098950.lean/declarations/prod-pi-mulsingle--a342770d739c8745e40680e1.md) | 170 | `result-track:a342770d739c8745e40680e164a4d0e41b8322484c2370c4be1e9df9f90efab5` |
| 20 | `theorem` | [prod_pi_mulSingle](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Piecewise/Variant0d8386a7f648c39b906fe9b0cd1dcad004a916bcb5953f8111ec89287f098950.lean/declarations/prod-pi-mulsingle--cecfc96dfcfc9629a6b88eb6.md) | 175 | `result-track:cecfc96dfcfc9629a6b88eb6fd52139dcd6324a4276d04eb8a985b55a6ae385f` |
| 21 | `theorem` | [prod_piecewise](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Piecewise/Variant0d8386a7f648c39b906fe9b0cd1dcad004a916bcb5953f8111ec89287f098950.lean/declarations/prod-piecewise--762b0cb1ee30502f0949146c.md) | 181 | `result-track:762b0cb1ee30502f0949146c6a8c8d7759efaa9a4c406f2c7788206612a67ade` |
| 22 | `theorem` | [prod_inter_mul_prod_diff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Piecewise/Variant0d8386a7f648c39b906fe9b0cd1dcad004a916bcb5953f8111ec89287f098950.lean/declarations/prod-inter-mul-prod-diff--0408a4f3b544679b7089c4ea.md) | 187 | `result-track:0408a4f3b544679b7089c4eacb09632a4b1c43f04b859297cbc6d95edf4efaee` |
| 23 | `theorem` | [prod_eq_mul_prod_diff_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Piecewise/Variant0d8386a7f648c39b906fe9b0cd1dcad004a916bcb5953f8111ec89287f098950.lean/declarations/prod-eq-mul-prod-diff-singleton--398f2b65313ed02aa579eddc.md) | 193 | `result-track:398f2b65313ed02aa579eddcc79cd228a99cb1721cdc497ac6614b77302f7304` |
| 24 | `theorem` | [prod_eq_prod_diff_singleton_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Piecewise/Variant0d8386a7f648c39b906fe9b0cd1dcad004a916bcb5953f8111ec89287f098950.lean/declarations/prod-eq-prod-diff-singleton-mul--dd945ee6276161e35e97a35b.md) | 199 | `result-track:dd945ee6276161e35e97a35bc09a1f652a932fd606a5a880a6fd099f919cf103` |
| 25 | `theorem` | [_root_.Fintype.prod_eq_mul_prod_compl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Piecewise/Variant0d8386a7f648c39b906fe9b0cd1dcad004a916bcb5953f8111ec89287f098950.lean/declarations/root-fintype-prod-eq-mul-prod-compl--f17aa0c0bc683d1542f2199d.md) | 204 | `result-track:f17aa0c0bc683d1542f2199d375e68172660542008991b6dd6b50c8eb5dbd216` |
| 26 | `theorem` | [_root_.Fintype.prod_eq_prod_compl_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Piecewise/Variant0d8386a7f648c39b906fe9b0cd1dcad004a916bcb5953f8111ec89287f098950.lean/declarations/root-fintype-prod-eq-prod-compl-mul--47581bed86e3bf4b6f450b74.md) | 209 | `result-track:47581bed86e3bf4b6f450b74993d9a15fee03755336c28bc84b19942708a69fa` |
| 27 | `theorem` | [dvd_prod_of_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Piecewise/Variant0d8386a7f648c39b906fe9b0cd1dcad004a916bcb5953f8111ec89287f098950.lean/declarations/dvd-prod-of-mem--a3d228fb9f4b58d81df91e78.md) | 213 | `result-track:a3d228fb9f4b58d81df91e78637e8cb0ae315b837f3d0340307e08704555360f` |
| 28 | `theorem` | [prod_update_of_notMem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Piecewise/Variant0d8386a7f648c39b906fe9b0cd1dcad004a916bcb5953f8111ec89287f098950.lean/declarations/prod-update-of-notmem--547ceb94b0ce709a3772f7b5.md) | 219 | `result-track:547ceb94b0ce709a3772f7b5ffce264855ca31e25dab88bcbc2902495aadf961` |
| 29 | `theorem` | [prod_update_of_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Piecewise/Variant0d8386a7f648c39b906fe9b0cd1dcad004a916bcb5953f8111ec89287f098950.lean/declarations/prod-update-of-mem--b5657e1cda509d999fc8266f.md) | 234 | `result-track:b5657e1cda509d999fc8266fe53d0ec79bcb6d23345b530ea64abdfcc41e42ff` |
| 30 | `theorem` | [prod_ite_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Piecewise/Variant0d8386a7f648c39b906fe9b0cd1dcad004a916bcb5953f8111ec89287f098950.lean/declarations/prod-ite-one--c88677a942243132f840ba3d.md) | 241 | `result-track:c88677a942243132f840ba3dbdfefb8ef4623449a8a779e3b63d2619c38824d2` |
| 31 | `theorem` | [prod_pow_boole](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Piecewise/Variant0d8386a7f648c39b906fe9b0cd1dcad004a916bcb5953f8111ec89287f098950.lean/declarations/prod-pow-boole--d106e39eb09988495164af46.md) | 253 | `result-track:d106e39eb09988495164af46fb39716142e303f0bd9b06b7b1a318fe8ca49b6f` |
| 32 | `lemma` | [card_filter](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Piecewise/Variant0d8386a7f648c39b906fe9b0cd1dcad004a916bcb5953f8111ec89287f098950.lean/declarations/card-filter--f6d4f5eaef567c1b4061b6e4.md) | 258 | `result-track:f6d4f5eaef567c1b4061b6e41586a70eed210f4e70bfee7ef827ea0279e629e8` |
| 33 | `lemma` | [prod_ite_eq_ite_exists](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Piecewise/Variant0d8386a7f648c39b906fe9b0cd1dcad004a916bcb5953f8111ec89287f098950.lean/declarations/prod-ite-eq-ite-exists--d6c9a81133cf8290c7a99870.md) | 270 | `result-track:d6c9a81133cf8290c7a99870e61a63fc692b4cbdd2de186fc2c5615c3be1dc59` |
| 34 | `lemma` | [prod_ite_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Piecewise/Variant0d8386a7f648c39b906fe9b0cd1dcad004a916bcb5953f8111ec89287f098950.lean/declarations/prod-ite-mem--d681f6bf710f0b8246e6766d.md) | 277 | `result-track:d681f6bf710f0b8246e6766d29dec165e10b5ccc7d0ec311331fb89f8b27cb0a` |
| 35 | `lemma` | [prod_dite_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Piecewise/Variant0d8386a7f648c39b906fe9b0cd1dcad004a916bcb5953f8111ec89287f098950.lean/declarations/prod-dite-eq--d9f399c62bb6ee78b2464e0c.md) | 281 | `result-track:d9f399c62bb6ee78b2464e0c864e567f0cc1ce4fc7b8fa71539550494ce8f34d` |
| 36 | `lemma` | [prod_dite_eq'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Piecewise/Variant0d8386a7f648c39b906fe9b0cd1dcad004a916bcb5953f8111ec89287f098950.lean/declarations/prod-dite-eq--4212d789256dd67de3745dc6.md) | 286 | `result-track:4212d789256dd67de3745dc69c94e31e8d8b31dfb08ccb7190d54a8ed377eac9` |
| 37 | `lemma` | [prod_ite_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Piecewise/Variant0d8386a7f648c39b906fe9b0cd1dcad004a916bcb5953f8111ec89287f098950.lean/declarations/prod-ite-eq--c3fc73cdbd875475a4155e2b.md) | 292 | `result-track:c3fc73cdbd875475a4155e2b7e8fa842037eac5c6e35f48543b71518f1c8b773` |
| 38 | `lemma` | [prod_ite_eq'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Piecewise/Variant0d8386a7f648c39b906fe9b0cd1dcad004a916bcb5953f8111ec89287f098950.lean/declarations/prod-ite-eq--0bd09ba7fab7afae0ae12703.md) | 297 | `result-track:0bd09ba7fab7afae0ae127030cd30776df99cd0b4b1cf8811b6eafa14125633e` |
| 39 | `lemma` | [prod_pi_mulSingle](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Piecewise/Variant0d8386a7f648c39b906fe9b0cd1dcad004a916bcb5953f8111ec89287f098950.lean/declarations/prod-pi-mulsingle--30765eb2982ba08b583c5160.md) | 302 | `result-track:30765eb2982ba08b583c5160f17ae43966ef5420ccf4351edc42377b9be25fd5` |
| 40 | `lemma` | [prod_pi_mulSingle'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Piecewise/Variant0d8386a7f648c39b906fe9b0cd1dcad004a916bcb5953f8111ec89287f098950.lean/declarations/prod-pi-mulsingle--a017e4dd645d51528ecc527b.md) | 307 | `result-track:a017e4dd645d51528ecc527b1d2601b7163d79d2cb4fcec660c080cf0507fe83` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
