# Verification target: GRWTSK.Algebra.UniversalAlgebra.Abs.Variant9e9e9c47ed9238ff930b21af293f55a16e45aaaf01742d4216567b27768a7f7b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c97cf907e11560c4ba70c22e5115ffc1c218c1ba",
  "lexical_observation_count": 57,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Abs/Variant9e9e9c47ed9238ff930b21af293f55a16e45aaaf01742d4216567b27768a7f7b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variant9e9e9c47ed9238ff930b21af293f55a16e45aaaf01742d4216567b27768a7f7b.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variant9e9e9c47ed9238ff930b21af293f55a16e45aaaf01742d4216567b27768a7f7b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c97cf907e11560c4ba70c22e5115ffc1c218c1ba`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Abs/Variant9e9e9c47ed9238ff930b21af293f55a16e45aaaf01742d4216567b27768a7f7b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Abs/Variant9e9e9c47ed9238ff930b21af293f55a16e45aaaf01742d4216567b27768a7f7b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Group.Abs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Int` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Divisibility.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Int.Units` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Cast.Order.Ring` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [mabs_zpow](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variant9e9e9c47ed9238ff930b21af293f55a16e45aaaf01742d4216567b27768a7f7b.lean/declarations/mabs-zpow--c7bdff4db17a462f5fc1e2fd.md) | 31 | `result-track:c7bdff4db17a462f5fc1e2fdd94c988d5bced8bebc06ec8c09a8ff39401a8252` |
| 2 | `lemma` | [odd_abs](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variant9e9e9c47ed9238ff930b21af293f55a16e45aaaf01742d4216567b27768a7f7b.lean/declarations/odd-abs--6d7e361c95dece3f2a530287.md) | 41 | `result-track:6d7e361c95dece3f2a5302870119f369e3c471d69110683ad476454cd6bf44e1` |
| 3 | `lemma` | [abs_one](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variant9e9e9c47ed9238ff930b21af293f55a16e45aaaf01742d4216567b27768a7f7b.lean/declarations/abs-one--5f83b6b250c8fbedb91795f5.md) | 48 | `result-track:5f83b6b250c8fbedb91795f5baf55c0ea4b44d9242198b4bd834d767f6eaf31b` |
| 4 | `lemma` | [abs_two](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variant9e9e9c47ed9238ff930b21af293f55a16e45aaaf01742d4216567b27768a7f7b.lean/declarations/abs-two--ae53976e3dc883caf8cb4579.md) | 50 | `result-track:ae53976e3dc883caf8cb45791eeddb7a1240374d435c2e23da2af5beacc29e3d` |
| 5 | `lemma` | [abs_mul](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variant9e9e9c47ed9238ff930b21af293f55a16e45aaaf01742d4216567b27768a7f7b.lean/declarations/abs-mul--9e46637221cf372567f2bfc2.md) | 52 | `result-track:9e46637221cf372567f2bfc2aa7b0d9787295dfb9e21063c7ba47c1f52e3ff5b` |
| 6 | `def` | [absHom](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variant9e9e9c47ed9238ff930b21af293f55a16e45aaaf01742d4216567b27768a7f7b.lean/declarations/abshom--6ba16e524dca78e2cef6d89e.md) | 59 | `declaration-track:6ba16e524dca78e2cef6d89e6356a24dff8991f83fa9c1f1ebadde105db73bec` |
| 7 | `lemma` | [abs_pow](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variant9e9e9c47ed9238ff930b21af293f55a16e45aaaf01742d4216567b27768a7f7b.lean/declarations/abs-pow--af5145de741428b913e4ca35.md) | 66 | `result-track:af5145de741428b913e4ca353e30d7523416dee7b3d8c4617c9b1fa28645c3d7` |
| 8 | `lemma` | [pow_abs](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variant9e9e9c47ed9238ff930b21af293f55a16e45aaaf01742d4216567b27768a7f7b.lean/declarations/pow-abs--72df4f515edcb1c86bc89d77.md) | 68 | `result-track:72df4f515edcb1c86bc89d77dc3550f5fe63b649b429b84cf72a339db08a8147` |
| 9 | `lemma` | [Even.pow_abs](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variant9e9e9c47ed9238ff930b21af293f55a16e45aaaf01742d4216567b27768a7f7b.lean/declarations/even-pow-abs--cea614c105d2846140dfdd6e.md) | 70 | `result-track:cea614c105d2846140dfdd6eeeef5a362452da42b5853a5eb8325b02dc3761bd` |
| 10 | `lemma` | [abs_neg_one_pow](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variant9e9e9c47ed9238ff930b21af293f55a16e45aaaf01742d4216567b27768a7f7b.lean/declarations/abs-neg-one-pow--9555ad08eaf1b12be5301d4c.md) | 73 | `result-track:9555ad08eaf1b12be5301d4c8d8b83bec048c097a2b99080c4b31db99e1283a6` |
| 11 | `lemma` | [abs_pow_eq_one](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variant9e9e9c47ed9238ff930b21af293f55a16e45aaaf01742d4216567b27768a7f7b.lean/declarations/abs-pow-eq-one--140d5c702a7d1f22710b0b18.md) | 75 | `result-track:140d5c702a7d1f22710b0b187167764ed49ca6ec3bf86113a0b7de96f66130a4` |
| 12 | `lemma` | [abs_mul_abs_self](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variant9e9e9c47ed9238ff930b21af293f55a16e45aaaf01742d4216567b27768a7f7b.lean/declarations/abs-mul-abs-self--b814af33f5edefb1cf7de51e.md) | 80 | `result-track:b814af33f5edefb1cf7de51e6b9e9f78ffc9c460c268a8d9cf78efa3da666655` |
| 13 | `lemma` | [abs_mul_self](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variant9e9e9c47ed9238ff930b21af293f55a16e45aaaf01742d4216567b27768a7f7b.lean/declarations/abs-mul-self--93a6451fbd37df8640be25ac.md) | 84 | `result-track:93a6451fbd37df8640be25acd5e1b0188bc608e6a99df6a9001524499e65a7a3` |
| 14 | `lemma` | [abs_eq_iff_mul_self_eq](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variant9e9e9c47ed9238ff930b21af293f55a16e45aaaf01742d4216567b27768a7f7b.lean/declarations/abs-eq-iff-mul-self-eq--d65fc17969644f58c69f87bf.md) | 86 | `result-track:d65fc17969644f58c69f87bff1173e3b850d3241f58e2192f00314474e562482` |
| 15 | `lemma` | [abs_lt_iff_mul_self_lt](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variant9e9e9c47ed9238ff930b21af293f55a16e45aaaf01742d4216567b27768a7f7b.lean/declarations/abs-lt-iff-mul-self-lt--460e1253e88636b55b2675b1.md) | 90 | `result-track:460e1253e88636b55b2675b1c5b76f187cf713fe2511a4c1308254ca96dd4fd3` |
| 16 | `lemma` | [abs_le_iff_mul_self_le](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variant9e9e9c47ed9238ff930b21af293f55a16e45aaaf01742d4216567b27768a7f7b.lean/declarations/abs-le-iff-mul-self-le--d073c755c44d506feab4bb3d.md) | 94 | `result-track:d073c755c44d506feab4bb3d888a7a9f14550d161e861b34e60427c5b9d35147` |
| 17 | `lemma` | [abs_le_one_iff_mul_self_le_one](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variant9e9e9c47ed9238ff930b21af293f55a16e45aaaf01742d4216567b27768a7f7b.lean/declarations/abs-le-one-iff-mul-self-le-one--01094391414c089f66f9b6af.md) | 98 | `result-track:01094391414c089f66f9b6aff951647d58dea177ff19b7c0854fbf080d1f1e68` |
| 18 | `lemma` | [sq_abs](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variant9e9e9c47ed9238ff930b21af293f55a16e45aaaf01742d4216567b27768a7f7b.lean/declarations/sq-abs--0bb97214a4f31a0659b80938.md) | 102 | `result-track:0bb97214a4f31a0659b80938f6f2925c84d9d429979bacc917bcc7b1c52e2460` |
| 19 | `lemma` | [abs_sq](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variant9e9e9c47ed9238ff930b21af293f55a16e45aaaf01742d4216567b27768a7f7b.lean/declarations/abs-sq--14c42b492bd777729d24bee1.md) | 104 | `result-track:14c42b492bd777729d24bee13ea730160a7b058feadf507872da512432a31c10` |
| 20 | `lemma` | [sq_lt_sq](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variant9e9e9c47ed9238ff930b21af293f55a16e45aaaf01742d4216567b27768a7f7b.lean/declarations/sq-lt-sq--d7833338863546d37c7e25b3.md) | 106 | `result-track:d7833338863546d37c7e25b377b4f4abc3294652d5ba9bd7ecbda5163852713c` |
| 21 | `lemma` | [sq_lt_sq'](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variant9e9e9c47ed9238ff930b21af293f55a16e45aaaf01742d4216567b27768a7f7b.lean/declarations/sq-lt-sq--fc2fc765c9f1093d0adf3e72.md) | 109 | `result-track:fc2fc765c9f1093d0adf3e727c9be3adad47a26747db275e50edf0105c065b64` |
| 22 | `lemma` | [sq_le_sq](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variant9e9e9c47ed9238ff930b21af293f55a16e45aaaf01742d4216567b27768a7f7b.lean/declarations/sq-le-sq--d5d1e04ff9cfdb40afb6190b.md) | 112 | `result-track:d5d1e04ff9cfdb40afb6190b0e72f9fb8e5b8f2477119b06bc4f023ee0becdbf` |
| 23 | `lemma` | [sq_le_sq'](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variant9e9e9c47ed9238ff930b21af293f55a16e45aaaf01742d4216567b27768a7f7b.lean/declarations/sq-le-sq--5e4f88102a547bd60a0e7a68.md) | 115 | `result-track:5e4f88102a547bd60a0e7a686bef3804766364bb48e2f8e40fa0cfd2edb06433` |
| 24 | `lemma` | [abs_lt_of_sq_lt_sq](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variant9e9e9c47ed9238ff930b21af293f55a16e45aaaf01742d4216567b27768a7f7b.lean/declarations/abs-lt-of-sq-lt-sq--ae8cd39b618a58f2ade64281.md) | 118 | `result-track:ae8cd39b618a58f2ade642810f9d26c9f1986b43d2c35fd40dc95997ff4eac8e` |
| 25 | `lemma` | [abs_lt_of_sq_lt_sq'](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variant9e9e9c47ed9238ff930b21af293f55a16e45aaaf01742d4216567b27768a7f7b.lean/declarations/abs-lt-of-sq-lt-sq--bcad0fa1f18039624dcbbddd.md) | 121 | `result-track:bcad0fa1f18039624dcbbddd53cd1db2ee7502e1be391e19078abf84b33c03a5` |
| 26 | `lemma` | [abs_le_of_sq_le_sq](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variant9e9e9c47ed9238ff930b21af293f55a16e45aaaf01742d4216567b27768a7f7b.lean/declarations/abs-le-of-sq-le-sq--dcbbda1ca96d3d923a3c83bd.md) | 124 | `result-track:dcbbda1ca96d3d923a3c83bd9ab0d21f760d4ddf8b53d297ee971736e877684a` |
| 27 | `theorem` | [le_of_sq_le_sq](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variant9e9e9c47ed9238ff930b21af293f55a16e45aaaf01742d4216567b27768a7f7b.lean/declarations/le-of-sq-le-sq--9698bedafb92ed854542ee0a.md) | 127 | `result-track:9698bedafb92ed854542ee0a52f4bfea291bc2c8ede5b0eb2a21d2f9111eae9a` |
| 28 | `lemma` | [abs_le_of_sq_le_sq'](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variant9e9e9c47ed9238ff930b21af293f55a16e45aaaf01742d4216567b27768a7f7b.lean/declarations/abs-le-of-sq-le-sq--7793ff77ebb5399a08c4511d.md) | 130 | `result-track:7793ff77ebb5399a08c4511de378c7fce35b86a02541406d0f7ba0f73e4254be` |
| 29 | `lemma` | [sq_eq_sq_iff_abs_eq_abs](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variant9e9e9c47ed9238ff930b21af293f55a16e45aaaf01742d4216567b27768a7f7b.lean/declarations/sq-eq-sq-iff-abs-eq-abs--f60e09b294611e50b0a27e5d.md) | 133 | `result-track:f60e09b294611e50b0a27e5d96959c7a02f5e459fcee93f243e394589264f390` |
| 30 | `lemma` | [sq_le_one_iff_abs_le_one](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variant9e9e9c47ed9238ff930b21af293f55a16e45aaaf01742d4216567b27768a7f7b.lean/declarations/sq-le-one-iff-abs-le-one--94341a81f85336e735238ac0.md) | 136 | `result-track:94341a81f85336e735238ac05ea3c2e6c58123d3bb73b92688c00b2a2d689c43` |
| 31 | `lemma` | [sq_lt_one_iff_abs_lt_one](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variant9e9e9c47ed9238ff930b21af293f55a16e45aaaf01742d4216567b27768a7f7b.lean/declarations/sq-lt-one-iff-abs-lt-one--c9dc20d2a1ad1e2fd6ef2e15.md) | 139 | `result-track:c9dc20d2a1ad1e2fd6ef2e15181f0c02a0969fa6e33c936c454d2d58cc578d2f` |
| 32 | `lemma` | [one_le_sq_iff_one_le_abs](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variant9e9e9c47ed9238ff930b21af293f55a16e45aaaf01742d4216567b27768a7f7b.lean/declarations/one-le-sq-iff-one-le-abs--a4b9b26a3d265819d703ed32.md) | 142 | `result-track:a4b9b26a3d265819d703ed32cf82f81231dfa88d9d5f3c1bf43559cee02fb669` |
| 33 | `lemma` | [one_lt_sq_iff_one_lt_abs](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variant9e9e9c47ed9238ff930b21af293f55a16e45aaaf01742d4216567b27768a7f7b.lean/declarations/one-lt-sq-iff-one-lt-abs--7d9c52ffa1691acd51222dd9.md) | 145 | `result-track:7d9c52ffa1691acd51222dd9105ffa97c05685d868c0f060e583ea1b7b2f6bb6` |
| 34 | `lemma` | [exists_abs_lt](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variant9e9e9c47ed9238ff930b21af293f55a16e45aaaf01742d4216567b27768a7f7b.lean/declarations/exists-abs-lt--768a34bb33209411f34aac38.md) | 148 | `result-track:768a34bb33209411f34aac3859414e26b8093b9cba5bde8b8e344afef467fde7` |
| 35 | `theorem` | [abs_sub_sq](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variant9e9e9c47ed9238ff930b21af293f55a16e45aaaf01742d4216567b27768a7f7b.lean/declarations/abs-sub-sq--f862cb67e81379a318aaa5ae.md) | 159 | `result-track:f862cb67e81379a318aaa5aedc1beefed979233dece3b7437bdb56fe0dbdcfcb` |
| 36 | `lemma` | [abs_unit_intCast](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variant9e9e9c47ed9238ff930b21af293f55a16e45aaaf01742d4216567b27768a7f7b.lean/declarations/abs-unit-intcast--a8f16992e080935415f2aa24.md) | 164 | `result-track:a8f16992e080935415f2aa247752fe44da8a5110b8c97745faaa2f98f614a325` |
| 37 | `def` | [geomSum](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variant9e9e9c47ed9238ff930b21af293f55a16e45aaaf01742d4216567b27768a7f7b.lean/declarations/geomsum--2227221c6312df7b0937576b.md) | 167 | `declaration-track:2227221c6312df7b0937576be09130228b5f7652d1f172ff24b3ba1c9669911a` |
| 38 | `theorem` | [abs_geomSum_le](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variant9e9e9c47ed9238ff930b21af293f55a16e45aaaf01742d4216567b27768a7f7b.lean/declarations/abs-geomsum-le--3935d9ca2d36517925d22058.md) | 171 | `result-track:3935d9ca2d36517925d220581f944f4c97f59d4dccb924be1600a1dfd9df367b` |
| 39 | `theorem` | [pow_sub_pow_eq_sub_mul_geomSum](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variant9e9e9c47ed9238ff930b21af293f55a16e45aaaf01742d4216567b27768a7f7b.lean/declarations/pow-sub-pow-eq-sub-mul-geomsum--167904621a023f5aa65d2e0f.md) | 181 | `result-track:167904621a023f5aa65d2e0fe6089b2228c9d4b2686814dc066e2458611155a3` |
| 40 | `theorem` | [abs_pow_sub_pow_le](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variant9e9e9c47ed9238ff930b21af293f55a16e45aaaf01742d4216567b27768a7f7b.lean/declarations/abs-pow-sub-pow-le--7e94132916ceb303bde15505.md) | 187 | `result-track:7e94132916ceb303bde15505cc583ef832b3e2040f0da9d371ae33a4f3b3b9d7` |
| 41 | `theorem` | [abs_dvd](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variant9e9e9c47ed9238ff930b21af293f55a16e45aaaf01742d4216567b27768a7f7b.lean/declarations/abs-dvd--c20ad1ab34a5ce566f8eca9f.md) | 199 | `result-track:c20ad1ab34a5ce566f8eca9f5440bd5ee3fed0d9bfe2b24c1c95b5ce547a3c11` |
| 42 | `theorem` | [abs_dvd_self](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variant9e9e9c47ed9238ff930b21af293f55a16e45aaaf01742d4216567b27768a7f7b.lean/declarations/abs-dvd-self--1b0ac19c7a3573b3901bab7d.md) | 202 | `result-track:1b0ac19c7a3573b3901bab7d3afcece421d297035bf9622c82e791d02f8d0bb5` |
| 43 | `theorem` | [dvd_abs](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variant9e9e9c47ed9238ff930b21af293f55a16e45aaaf01742d4216567b27768a7f7b.lean/declarations/dvd-abs--40f9f317e07599dee6f67c34.md) | 206 | `result-track:40f9f317e07599dee6f67c3430f545e5057549c6418e7a0bb5dbc5ffa2029aa0` |
| 44 | `theorem` | [self_dvd_abs](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variant9e9e9c47ed9238ff930b21af293f55a16e45aaaf01742d4216567b27768a7f7b.lean/declarations/self-dvd-abs--32106766ce2ed807ae79a183.md) | 209 | `result-track:32106766ce2ed807ae79a183205c55354abd5ea9b5a55c6ac4b5a1d56af2161a` |
| 45 | `theorem` | [abs_dvd_abs](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variant9e9e9c47ed9238ff930b21af293f55a16e45aaaf01742d4216567b27768a7f7b.lean/declarations/abs-dvd-abs--02379933198949c60741876b.md) | 212 | `result-track:02379933198949c60741876bbd81d4397432274fb1606ff9bf540bfae0095817` |
| 46 | `lemma` | [pow_eq_pow_iff_of_ne_zero](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variant9e9e9c47ed9238ff930b21af293f55a16e45aaaf01742d4216567b27768a7f7b.lean/declarations/pow-eq-pow-iff-of-ne-zero--d11d55472f3d490b4422ba6f.md) | 222 | `result-track:d11d55472f3d490b4422ba6fbe5551735a22aa8e2587274a664d8128c91edcfa` |
| 47 | `lemma` | [pow_eq_pow_iff_cases](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variant9e9e9c47ed9238ff930b21af293f55a16e45aaaf01742d4216567b27768a7f7b.lean/declarations/pow-eq-pow-iff-cases--db7169008875208c74d42e45.md) | 228 | `result-track:db7169008875208c74d42e45940ba984b78117f33442fba6ffc0f4e038c147f7` |
| 48 | `lemma` | [pow_eq_one_iff_of_ne_zero](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variant9e9e9c47ed9238ff930b21af293f55a16e45aaaf01742d4216567b27768a7f7b.lean/declarations/pow-eq-one-iff-of-ne-zero--1d92ec5deafaffb3c714320e.md) | 231 | `result-track:1d92ec5deafaffb3c714320ec073ea1adc2f20043535698f90889fb109cf4db9` |
| 49 | `lemma` | [pow_eq_one_iff_cases](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variant9e9e9c47ed9238ff930b21af293f55a16e45aaaf01742d4216567b27768a7f7b.lean/declarations/pow-eq-one-iff-cases--3eac64bfd1396f442d8d1ea9.md) | 234 | `result-track:3eac64bfd1396f442d8d1ea94276a68f3567bde04607ca30ca82c12e0ca7bf37` |
| 50 | `lemma` | [pow_eq_neg_pow_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variant9e9e9c47ed9238ff930b21af293f55a16e45aaaf01742d4216567b27768a7f7b.lean/declarations/pow-eq-neg-pow-iff--ed5753b81154100fb93bc793.md) | 237 | `result-track:ed5753b81154100fb93bc7934df21c2f0d7bc5f7a5c3d265cf132401b7adc36b` |
| 51 | `lemma` | [pow_eq_neg_one_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variant9e9e9c47ed9238ff930b21af293f55a16e45aaaf01742d4216567b27768a7f7b.lean/declarations/pow-eq-neg-one-iff--cb65c97423dd07b47fab4926.md) | 245 | `result-track:cb65c97423dd07b47fab4926128d555b9ae06173de5d45bca31a290a706794f4` |
| 52 | `lemma` | [Odd.mod_even_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variant9e9e9c47ed9238ff930b21af293f55a16e45aaaf01742d4216567b27768a7f7b.lean/declarations/odd-mod-even-iff--10746f545a38136a8d711e8e.md) | 253 | `result-track:10746f545a38136a8d711e8e041a4415b6e3f9e4c9fb9e3d598a98e52cd0c1bd` |
| 53 | `lemma` | [Even.mod_even_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variant9e9e9c47ed9238ff930b21af293f55a16e45aaaf01742d4216567b27768a7f7b.lean/declarations/even-mod-even-iff--89ee762e693326ce844680bf.md) | 258 | `result-track:89ee762e693326ce844680bfcd0444eb347b397a11a11a45c74f5aefdcbd1408` |
| 54 | `lemma` | [Odd.mod_even](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variant9e9e9c47ed9238ff930b21af293f55a16e45aaaf01742d4216567b27768a7f7b.lean/declarations/odd-mod-even--d0cf5f0d19a14a0f882559f7.md) | 263 | `result-track:d0cf5f0d19a14a0f882559f7ec0e56aaccbf269bf61e1d4e94640422c6edea56` |
| 55 | `lemma` | [Even.mod_even](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variant9e9e9c47ed9238ff930b21af293f55a16e45aaaf01742d4216567b27768a7f7b.lean/declarations/even-mod-even--1a3d76f34a87dcf9925306af.md) | 266 | `result-track:1a3d76f34a87dcf9925306af425930cd5d2b0a1fdc087378486112402499ee54` |
| 56 | `lemma` | [Odd.of_dvd_nat](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variant9e9e9c47ed9238ff930b21af293f55a16e45aaaf01742d4216567b27768a7f7b.lean/declarations/odd-of-dvd-nat--783044aa634cd1a2e255abdd.md) | 269 | `result-track:783044aa634cd1a2e255abdd5cb516299b4536480fc952582b04d734c98c4e4c` |
| 57 | `lemma` | [Odd.ne_two_of_dvd_nat](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variant9e9e9c47ed9238ff930b21af293f55a16e45aaaf01742d4216567b27768a7f7b.lean/declarations/odd-ne-two-of-dvd-nat--d82f8ddfb0d8cae9e20f8222.md) | 273 | `result-track:d82f8ddfb0d8cae9e20f8222e5f212b315ddf20f96513da4346d3deac9e02e08` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
