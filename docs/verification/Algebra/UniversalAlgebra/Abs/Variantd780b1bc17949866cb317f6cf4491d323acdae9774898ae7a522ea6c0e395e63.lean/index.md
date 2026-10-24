# Verification target: GRWTSK.Algebra.UniversalAlgebra.Abs.Variantd780b1bc17949866cb317f6cf4491d323acdae9774898ae7a522ea6c0e395e63

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1242d40e8274b909e8e0b618b6741e686c859257",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Abs/Variantd780b1bc17949866cb317f6cf4491d323acdae9774898ae7a522ea6c0e395e63.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variantd780b1bc17949866cb317f6cf4491d323acdae9774898ae7a522ea6c0e395e63.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variantd780b1bc17949866cb317f6cf4491d323acdae9774898ae7a522ea6c0e395e63.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1242d40e8274b909e8e0b618b6741e686c859257`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Abs/Variantd780b1bc17949866cb317f6cf4491d323acdae9774898ae7a522ea6c0e395e63.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Abs/Variantd780b1bc17949866cb317f6cf4491d323acdae9774898ae7a522ea6c0e395e63.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Group.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Group.Unbundled.Abs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.Unbundled.Pow` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [mabs_pow](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variantd780b1bc17949866cb317f6cf4491d323acdae9774898ae7a522ea6c0e395e63.lean/declarations/mabs-pow--0227d72663cc7544cdd6d067.md) | 37 | `result-track:0227d72663cc7544cdd6d0679cc8d9d53af7666ca4127775f164f95d4f8f0f45` |
| 2 | `lemma` | [mabs_mul_eq_mul_mabs_le](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variantd780b1bc17949866cb317f6cf4491d323acdae9774898ae7a522ea6c0e395e63.lean/declarations/mabs-mul-eq-mul-mabs-le--93d4845dfd1323d02c11b5aa.md) | 43 | `result-track:93d4845dfd1323d02c11b5aab11a9b817cd5995b548f49ce4925dd9f6683ec52` |
| 3 | `lemma` | [mabs_mul_eq_mul_mabs_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variantd780b1bc17949866cb317f6cf4491d323acdae9774898ae7a522ea6c0e395e63.lean/declarations/mabs-mul-eq-mul-mabs-iff--25610659a458ad1d953248f3.md) | 61 | `result-track:25610659a458ad1d953248f391c100a50cff2b70bd5475d98960024d7b2c97a8` |
| 4 | `theorem` | [mabs_le](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variantd780b1bc17949866cb317f6cf4491d323acdae9774898ae7a522ea6c0e395e63.lean/declarations/mabs-le--04676aa6f7c0e7d26dc6ec0b.md) | 68 | `result-track:04676aa6f7c0e7d26dc6ec0b04d56e9b1cddea16785208bcb247af3c841e8e2b` |
| 5 | `theorem` | [le_mabs'](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variantd780b1bc17949866cb317f6cf4491d323acdae9774898ae7a522ea6c0e395e63.lean/declarations/le-mabs--9e827ba20cde102dc087d451.md) | 71 | `result-track:9e827ba20cde102dc087d45140361d874f706644ddf9d5ede09c8885a6755ccd` |
| 6 | `theorem` | [inv_le_of_mabs_le](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variantd780b1bc17949866cb317f6cf4491d323acdae9774898ae7a522ea6c0e395e63.lean/declarations/inv-le-of-mabs-le--93ff52a96ff9bb7142c3ca9d.md) | 74 | `result-track:93ff52a96ff9bb7142c3ca9d2a2fdfbb90d0ec16ae40648729ffe86b12082938` |
| 7 | `theorem` | [le_of_mabs_le](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variantd780b1bc17949866cb317f6cf4491d323acdae9774898ae7a522ea6c0e395e63.lean/declarations/le-of-mabs-le--cb89f2ecc3765ffc3b6200a6.md) | 78 | `result-track:cb89f2ecc3765ffc3b6200a6ee951c0df683387230305eee7ea0fce71ec15bd1` |
| 8 | `theorem` | [mabs_mul](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variantd780b1bc17949866cb317f6cf4491d323acdae9774898ae7a522ea6c0e395e63.lean/declarations/mabs-mul--f910c82e668c0a3df5232b9b.md) | 83 | `result-track:f910c82e668c0a3df5232b9b3d6f0ff2fc075cbab3efb011ca16fcd6b3a40947` |
| 9 | `theorem` | [mabs_mul'](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variantd780b1bc17949866cb317f6cf4491d323acdae9774898ae7a522ea6c0e395e63.lean/declarations/mabs-mul--4970af6272ed248b9817383b.md) | 88 | `result-track:4970af6272ed248b9817383bef22c856acd1a36d7187f85f9561770849eb81da` |
| 10 | `theorem` | [mabs_div](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variantd780b1bc17949866cb317f6cf4491d323acdae9774898ae7a522ea6c0e395e63.lean/declarations/mabs-div--8eace36169c4dbbfdc603ef1.md) | 91 | `result-track:8eace36169c4dbbfdc603ef1c78d79f285a22ae2801f9dd87a9accd471f0bfd0` |
| 11 | `theorem` | [mabs_div_le_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variantd780b1bc17949866cb317f6cf4491d323acdae9774898ae7a522ea6c0e395e63.lean/declarations/mabs-div-le-iff--27c1634025f7fc1542ca7fe0.md) | 96 | `result-track:27c1634025f7fc1542ca7fe02a1d82eaed235a07cb924b1261f985a33471060e` |
| 12 | `theorem` | [mabs_div_lt_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variantd780b1bc17949866cb317f6cf4491d323acdae9774898ae7a522ea6c0e395e63.lean/declarations/mabs-div-lt-iff--16dbae1beb36aa790005e23f.md) | 100 | `result-track:16dbae1beb36aa790005e23fdcb5d92a3c5995cef5bab4f273652757e234006e` |
| 13 | `theorem` | [div_le_of_mabs_div_le_left](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variantd780b1bc17949866cb317f6cf4491d323acdae9774898ae7a522ea6c0e395e63.lean/declarations/div-le-of-mabs-div-le-left--b5e1be99b495b0d7e5cf9da7.md) | 104 | `result-track:b5e1be99b495b0d7e5cf9da7881cbe1a34104ce00610520fbce139110f498485` |
| 14 | `theorem` | [div_le_of_mabs_div_le_right](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variantd780b1bc17949866cb317f6cf4491d323acdae9774898ae7a522ea6c0e395e63.lean/declarations/div-le-of-mabs-div-le-right--4a9f27121816a95d70d90f4e.md) | 108 | `result-track:4a9f27121816a95d70d90f4e27cb54c85ae11853cc45964ddd6344a52614dae3` |
| 15 | `theorem` | [div_lt_of_mabs_div_lt_left](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variantd780b1bc17949866cb317f6cf4491d323acdae9774898ae7a522ea6c0e395e63.lean/declarations/div-lt-of-mabs-div-lt-left--79c5325407eeb35bd0959169.md) | 112 | `result-track:79c5325407eeb35bd09591695c23510dd308310f49e541109d8167696274844f` |
| 16 | `theorem` | [div_lt_of_mabs_div_lt_right](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variantd780b1bc17949866cb317f6cf4491d323acdae9774898ae7a522ea6c0e395e63.lean/declarations/div-lt-of-mabs-div-lt-right--cc24e46917df173e6a1c0e94.md) | 116 | `result-track:cc24e46917df173e6a1c0e942203dffd54efc6f8089074f0def59e266a83e2a5` |
| 17 | `theorem` | [mabs_div_mabs_le_mabs_div](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variantd780b1bc17949866cb317f6cf4491d323acdae9774898ae7a522ea6c0e395e63.lean/declarations/mabs-div-mabs-le-mabs-div--b7e97f6ff6acd1705dd4d307.md) | 120 | `result-track:b7e97f6ff6acd1705dd4d307fa5d4995f9ab26c1f1214442c049e2c8185550ba` |
| 18 | `theorem` | [mabs_mabs_div_mabs_le_mabs_div](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variantd780b1bc17949866cb317f6cf4491d323acdae9774898ae7a522ea6c0e395e63.lean/declarations/mabs-mabs-div-mabs-le-mabs-div--d81036ac122ce6ec9270c553.md) | 127 | `result-track:d81036ac122ce6ec9270c553a8150e8a7601f2891f1ee765d94eed6ff5356b86` |
| 19 | `theorem` | [mabs_div_le_of_one_le_of_le](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variantd780b1bc17949866cb317f6cf4491d323acdae9774898ae7a522ea6c0e395e63.lean/declarations/mabs-div-le-of-one-le-of-le--d169e091e8d599ec6919edaa.md) | 133 | `result-track:d169e091e8d599ec6919edaaa57e7a55695752bce8557e34487e541b509e7e64` |
| 20 | `theorem` | [mabs_div_lt_of_one_le_of_lt](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variantd780b1bc17949866cb317f6cf4491d323acdae9774898ae7a522ea6c0e395e63.lean/declarations/mabs-div-lt-of-one-le-of-lt--22c0b9a6c91e8a31b82a74d3.md) | 140 | `result-track:22c0b9a6c91e8a31b82a74d31303003a1dd6601b8506eadd02eae6dbef7ea78f` |
| 21 | `theorem` | [mabs_eq](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variantd780b1bc17949866cb317f6cf4491d323acdae9774898ae7a522ea6c0e395e63.lean/declarations/mabs-eq--bcffb8e16809fd027c588e7f.md) | 146 | `result-track:bcffb8e16809fd027c588e7fb9a64ef0309111b8452a8d4f1a6930dcd84ba435` |
| 22 | `theorem` | [mabs_le_max_mabs_mabs](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variantd780b1bc17949866cb317f6cf4491d323acdae9774898ae7a522ea6c0e395e63.lean/declarations/mabs-le-max-mabs-mabs--17bbd932ee7eda79876a2d4a.md) | 151 | `result-track:17bbd932ee7eda79876a2d4a3d590f5463ca2710391eeae252a24c3bf96a4c24` |
| 23 | `theorem` | [min_mabs_mabs_le_mabs_max](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variantd780b1bc17949866cb317f6cf4491d323acdae9774898ae7a522ea6c0e395e63.lean/declarations/min-mabs-mabs-le-mabs-max--49cf26270ea536ab62c4c95b.md) | 158 | `result-track:49cf26270ea536ab62c4c95b83f8a5bd0801d8d27589a17ea4074d284f3db383` |
| 24 | `theorem` | [min_mabs_mabs_le_mabs_min](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variantd780b1bc17949866cb317f6cf4491d323acdae9774898ae7a522ea6c0e395e63.lean/declarations/min-mabs-mabs-le-mabs-min--7510d7cdaac6b0db21136f62.md) | 164 | `result-track:7510d7cdaac6b0db21136f62acab90eac586a99f14bc771714de297cf1a1fbdc` |
| 25 | `theorem` | [mabs_max_le_max_mabs_mabs](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variantd780b1bc17949866cb317f6cf4491d323acdae9774898ae7a522ea6c0e395e63.lean/declarations/mabs-max-le-max-mabs-mabs--a792de8e857c1e5278d81fd7.md) | 170 | `result-track:a792de8e857c1e5278d81fd70c44200a059527b59e84d2ca6442cdbac98997f8` |
| 26 | `theorem` | [mabs_min_le_max_mabs_mabs](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variantd780b1bc17949866cb317f6cf4491d323acdae9774898ae7a522ea6c0e395e63.lean/declarations/mabs-min-le-max-mabs-mabs--bd87f8508a8d2b9ea5a36809.md) | 176 | `result-track:bd87f8508a8d2b9ea5a368095908b74c96cea326d3d45b33a8b1ba82b8279e24` |
| 27 | `theorem` | [eq_of_mabs_div_eq_one](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variantd780b1bc17949866cb317f6cf4491d323acdae9774898ae7a522ea6c0e395e63.lean/declarations/eq-of-mabs-div-eq-one--545b9929c3cc08a7b0a5cce8.md) | 181 | `result-track:545b9929c3cc08a7b0a5cce82aa768371088b7660f41c9fa625d538ec45d5215` |
| 28 | `theorem` | [mabs_div_le](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variantd780b1bc17949866cb317f6cf4491d323acdae9774898ae7a522ea6c0e395e63.lean/declarations/mabs-div-le--4d2e95810fa38da1ed992cae.md) | 185 | `result-track:4d2e95810fa38da1ed992cae4999a5dd145d1b447a2a0e739766fd102f0b327b` |
| 29 | `theorem` | [mabs_mul_three](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variantd780b1bc17949866cb317f6cf4491d323acdae9774898ae7a522ea6c0e395e63.lean/declarations/mabs-mul-three--751c063e2fe52fa4be6f5284.md) | 191 | `result-track:751c063e2fe52fa4be6f5284921d189bae41c2d6caf46059959d4ee1710c03e4` |
| 30 | `theorem` | [mabs_div_le_of_le_of_le](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variantd780b1bc17949866cb317f6cf4491d323acdae9774898ae7a522ea6c0e395e63.lean/declarations/mabs-div-le-of-le-of-le--aa7e1f859df5ee22665af561.md) | 195 | `result-track:aa7e1f859df5ee22665af56183947a45e08cebc847f72f46885ffddb75447094` |
| 31 | `theorem` | [eq_of_mabs_div_le_one](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variantd780b1bc17949866cb317f6cf4491d323acdae9774898ae7a522ea6c0e395e63.lean/declarations/eq-of-mabs-div-le-one--30edd7a0c07fe39c9050523e.md) | 203 | `result-track:30edd7a0c07fe39c9050523e67d698edb9d16dd3a31c87d4d4a18575422e97a7` |
| 32 | `lemma` | [eq_of_mabs_div_lt_all](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variantd780b1bc17949866cb317f6cf4491d323acdae9774898ae7a522ea6c0e395e63.lean/declarations/eq-of-mabs-div-lt-all--8e23094e83db8a96f3cd49db.md) | 207 | `result-track:8e23094e83db8a96f3cd49dbde33817610ade43eff94881fcbc27e4ea32da09f` |
| 33 | `lemma` | [eq_of_mabs_div_le_all](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variantd780b1bc17949866cb317f6cf4491d323acdae9774898ae7a522ea6c0e395e63.lean/declarations/eq-of-mabs-div-le-all--32085f69a08475dcb70a7398.md) | 211 | `result-track:32085f69a08475dcb70a73983fbe7f06ee4a2a67c6fa8602227f93d06853164d` |
| 34 | `theorem` | [mabs_div_le_one](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variantd780b1bc17949866cb317f6cf4491d323acdae9774898ae7a522ea6c0e395e63.lean/declarations/mabs-div-le-one--253ed0a6e4d67fb8f29cadb7.md) | 215 | `result-track:253ed0a6e4d67fb8f29cadb7c18aee5879d8b17508c2080fbfe75b6a43eafec2` |
| 35 | `theorem` | [mabs_div_pos](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variantd780b1bc17949866cb317f6cf4491d323acdae9774898ae7a522ea6c0e395e63.lean/declarations/mabs-div-pos--b949450d9f5a1eea94502356.md) | 219 | `result-track:b949450d9f5a1eea9450235604f773c9ae924a0c247dee604234331b5b1f2d9e` |
| 36 | `theorem` | [mabs_eq_self](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variantd780b1bc17949866cb317f6cf4491d323acdae9774898ae7a522ea6c0e395e63.lean/declarations/mabs-eq-self--dd17a4d1af50ccb436875f4b.md) | 223 | `result-track:dd17a4d1af50ccb436875f4b70adb6480fff3189de6af8715d6d040821faf913` |
| 37 | `theorem` | [mabs_eq_inv_self](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variantd780b1bc17949866cb317f6cf4491d323acdae9774898ae7a522ea6c0e395e63.lean/declarations/mabs-eq-inv-self--d2c643b0302f3690b422ff06.md) | 227 | `result-track:d2c643b0302f3690b422ff0610314d6f053a4c56047886bb4bf5b9f97f67a519` |
| 38 | `theorem` | [mabs_cases](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variantd780b1bc17949866cb317f6cf4491d323acdae9774898ae7a522ea6c0e395e63.lean/declarations/mabs-cases--3cb26dd094505ce964c0c1ec.md) | 236 | `result-track:3cb26dd094505ce964c0c1ec6f572073986ebb8237a0e424d3309c874d347b56` |
| 39 | `theorem` | [max_one_mul_max_inv_one_eq_mabs_self](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variantd780b1bc17949866cb317f6cf4491d323acdae9774898ae7a522ea6c0e395e63.lean/declarations/max-one-mul-max-inv-one-eq-mabs-self--1f102e153f97868239ac83a7.md) | 240 | `result-track:1f102e153f97868239ac83a7b3365a9d5bfd31f05a75614397baccf98216496c` |
| 40 | `theorem` | [apply_abs_le_mul_of_one_le'](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variantd780b1bc17949866cb317f6cf4491d323acdae9774898ae7a522ea6c0e395e63.lean/declarations/apply-abs-le-mul-of-one-le--5a7375cb6b652765d64ae365.md) | 251 | `result-track:5a7375cb6b652765d64ae3659df8e7c2a5b684b6d77ebb0260c743f7832d0318` |
| 41 | `theorem` | [apply_abs_le_mul_of_one_le](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variantd780b1bc17949866cb317f6cf4491d323acdae9774898ae7a522ea6c0e395e63.lean/declarations/apply-abs-le-mul-of-one-le--4d676e9c170819ca25913c33.md) | 258 | `result-track:4d676e9c170819ca25913c333c86fa53bbe427efda0ec937430ef0f7225a8e58` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
