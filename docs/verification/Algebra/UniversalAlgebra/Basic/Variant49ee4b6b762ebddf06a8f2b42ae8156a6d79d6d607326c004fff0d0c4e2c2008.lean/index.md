# Verification target: GRWTSK.Algebra.UniversalAlgebra.Basic.Variant49ee4b6b762ebddf06a8f2b42ae8156a6d79d6d607326c004fff0d0c4e2c2008

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6ab2da2be12a20fcb3991d5e4195c47923ef1a68",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Basic/Variant49ee4b6b762ebddf06a8f2b42ae8156a6d79d6d607326c004fff0d0c4e2c2008.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant49ee4b6b762ebddf06a8f2b42ae8156a6d79d6d607326c004fff0d0c4e2c2008.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant49ee4b6b762ebddf06a8f2b42ae8156a6d79d6d607326c004fff0d0c4e2c2008.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6ab2da2be12a20fcb3991d5e4195c47923ef1a68`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Basic/Variant49ee4b6b762ebddf06a8f2b42ae8156a6d79d6d607326c004fff0d0c4e2c2008.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Basic/Variant49ee4b6b762ebddf06a8f2b42ae8156a6d79d6d607326c004fff0d0c4e2c2008.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.SuccPred` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.CharZero.Lemmas` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Sub.WithTop` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.WithTop` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ENat](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant49ee4b6b762ebddf06a8f2b42ae8156a6d79d6d607326c004fff0d0c4e2c2008.lean/declarations/enat--e81ef083420836d9d0e1e42c.md) | 37 | `declaration-track:e81ef083420836d9d0e1e42c1046f95326f20593b5c577aa5e1804ff70817ba3` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant49ee4b6b762ebddf06a8f2b42ae8156a6d79d6d607326c004fff0d0c4e2c2008.lean/declarations/instance--4b06249754bf6e5dba7c2dc8.md) | 56 | `declaration-track:4b06249754bf6e5dba7c2dc89765585c4c60181eb898236c2840a9ac0e5cbc91` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant49ee4b6b762ebddf06a8f2b42ae8156a6d79d6d607326c004fff0d0c4e2c2008.lean/declarations/instance--f405dc8fa1921676f8c64c5f.md) | 57 | `declaration-track:f405dc8fa1921676f8c64c5fa94c72d8c95193906f6a4b32fb0e617acfac7cec` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant49ee4b6b762ebddf06a8f2b42ae8156a6d79d6d607326c004fff0d0c4e2c2008.lean/declarations/instance--0b2c66b3d5a05291fc004789.md) | 58 | `declaration-track:0b2c66b3d5a05291fc004789265547145a452ec0accda3f7fc313af5c93c0d2a` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant49ee4b6b762ebddf06a8f2b42ae8156a6d79d6d607326c004fff0d0c4e2c2008.lean/declarations/instance--caacfb21470e2b1a25c8ce7b.md) | 59 | `declaration-track:caacfb21470e2b1a25c8ce7b909e4276c1c192d676906e6bdbcea8a265a7b0ab` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant49ee4b6b762ebddf06a8f2b42ae8156a6d79d6d607326c004fff0d0c4e2c2008.lean/declarations/instance--16d6b57b2d7a08cfaa074132.md) | 60 | `declaration-track:16d6b57b2d7a08cfaa0741321bd6defccb950e2fa0e1394dab91f2ae72a538aa` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant49ee4b6b762ebddf06a8f2b42ae8156a6d79d6d607326c004fff0d0c4e2c2008.lean/declarations/instance--114076700448d99a856cc152.md) | 61 | `declaration-track:114076700448d99a856cc1523694d5d84b6896d360b23333736186e72e67669d` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant49ee4b6b762ebddf06a8f2b42ae8156a6d79d6d607326c004fff0d0c4e2c2008.lean/declarations/instance--cfb66f32af1ef209e91780d3.md) | 62 | `declaration-track:cfb66f32af1ef209e91780d3ede9c6e63f7609df8718f06cbf9579fda54ea4a8` |
| 9 | `theorem` | [some_eq_coe](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant49ee4b6b762ebddf06a8f2b42ae8156a6d79d6d607326c004fff0d0c4e2c2008.lean/declarations/some-eq-coe--d3b418ccb536203ca0c289c6.md) | 68 | `result-track:d3b418ccb536203ca0c289c65b0b1d07f559cd76f9e598e24062c531c372ff53` |
| 10 | `theorem` | [coe_zero](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant49ee4b6b762ebddf06a8f2b42ae8156a6d79d6d607326c004fff0d0c4e2c2008.lean/declarations/coe-zero--33948778b1eac5d3315f7329.md) | 72 | `result-track:33948778b1eac5d3315f7329fab8369a191f431e3e3de72c5a76b4b529206fc2` |
| 11 | `theorem` | [coe_one](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant49ee4b6b762ebddf06a8f2b42ae8156a6d79d6d607326c004fff0d0c4e2c2008.lean/declarations/coe-one--20f38fcbd0a903fde6e82f1c.md) | 78 | `result-track:20f38fcbd0a903fde6e82f1c75a1b5ba72347411a9e8b8bf32e7779d8b1b37f1` |
| 12 | `theorem` | [coe_add](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant49ee4b6b762ebddf06a8f2b42ae8156a6d79d6d607326c004fff0d0c4e2c2008.lean/declarations/coe-add--623b4a49ea8db5cfd6594650.md) | 84 | `result-track:623b4a49ea8db5cfd65946503ef75ca0c6f60e26c8767ad842a68a67e4b89b38` |
| 13 | `theorem` | [coe_sub](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant49ee4b6b762ebddf06a8f2b42ae8156a6d79d6d607326c004fff0d0c4e2c2008.lean/declarations/coe-sub--d191f2749128aa84d6139883.md) | 89 | `result-track:d191f2749128aa84d61398833cd6ee6f39b84faf5d0d86c4dfea43cbb469143b` |
| 14 | `theorem` | [coe_mul](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant49ee4b6b762ebddf06a8f2b42ae8156a6d79d6d607326c004fff0d0c4e2c2008.lean/declarations/coe-mul--67cf6b796696d25a435213a2.md) | 95 | `result-track:67cf6b796696d25a435213a22208b5c88defe70b4adb588c54cb1a41cca36dc2` |
| 15 | `instance` | [canLift](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant49ee4b6b762ebddf06a8f2b42ae8156a6d79d6d607326c004fff0d0c4e2c2008.lean/declarations/canlift--f9edd089e6978fb6f70b1b36.md) | 99 | `declaration-track:f9edd089e6978fb6f70b1b363517e477dbb6dc52ba6b6b7301741828426117ba` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant49ee4b6b762ebddf06a8f2b42ae8156a6d79d6d607326c004fff0d0c4e2c2008.lean/declarations/instance--be13b9a18c219616f089401c.md) | 103 | `declaration-track:be13b9a18c219616f089401c92e4392050c513004c1e5e9de7b1fe175982e29e` |
| 17 | `def` | [toNat](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant49ee4b6b762ebddf06a8f2b42ae8156a6d79d6d607326c004fff0d0c4e2c2008.lean/declarations/tonat--4fb8dccddc481d28efba3d6c.md) | 108 | `declaration-track:4fb8dccddc481d28efba3d6c0303e949c67a0480d257df34f721fe35e7c90ffa` |
| 18 | `theorem` | [toNat_coe](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant49ee4b6b762ebddf06a8f2b42ae8156a6d79d6d607326c004fff0d0c4e2c2008.lean/declarations/tonat-coe--a5129f9c257f960bf9cdef0c.md) | 117 | `result-track:a5129f9c257f960bf9cdef0cc4b03c45ddb856124766cf1a7d90342b7f2dd98f` |
| 19 | `theorem` | [toNat_top](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant49ee4b6b762ebddf06a8f2b42ae8156a6d79d6d607326c004fff0d0c4e2c2008.lean/declarations/tonat-top--a9ea2dbceee31a92b6996792.md) | 122 | `result-track:a9ea2dbceee31a92b69967920fa50852271fcac71f5ca23e40cec680ffc5bb6a` |
| 20 | `def` | [recTopCoe](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant49ee4b6b762ebddf06a8f2b42ae8156a6d79d6d607326c004fff0d0c4e2c2008.lean/declarations/rectopcoe--6a48f9feafae2437af10f755.md) | 129 | `declaration-track:6a48f9feafae2437af10f7555185ddb0123d039ff91632f94b74f120b9d333b3` |
| 21 | `theorem` | [recTopCoe_top](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant49ee4b6b762ebddf06a8f2b42ae8156a6d79d6d607326c004fff0d0c4e2c2008.lean/declarations/rectopcoe-top--408ff6c1389998d627f65f5b.md) | 135 | `result-track:408ff6c1389998d627f65f5b9b6f8af6aa24a49ca65d5ddec86a4366cf4e1788` |
| 22 | `theorem` | [recTopCoe_coe](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant49ee4b6b762ebddf06a8f2b42ae8156a6d79d6d607326c004fff0d0c4e2c2008.lean/declarations/rectopcoe-coe--2afd58212e9e62cea0dfc0f6.md) | 141 | `result-track:2afd58212e9e62cea0dfc0f64e506cc413f778ea379939c2297a5ad223c5cf50` |
| 23 | `theorem` | [top_ne_coe](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant49ee4b6b762ebddf06a8f2b42ae8156a6d79d6d607326c004fff0d0c4e2c2008.lean/declarations/top-ne-coe--9a8724f4c777d6e88f487903.md) | 147 | `result-track:9a8724f4c777d6e88f4879034a47007b8334deb9965d55f3abab34d85b63d66c` |
| 24 | `theorem` | [coe_ne_top](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant49ee4b6b762ebddf06a8f2b42ae8156a6d79d6d607326c004fff0d0c4e2c2008.lean/declarations/coe-ne-top--7dfa817699a77b60cd501139.md) | 152 | `result-track:7dfa817699a77b60cd501139dde77745826947e9e51b5df57df351355f8018bf` |
| 25 | `theorem` | [top_sub_coe](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant49ee4b6b762ebddf06a8f2b42ae8156a6d79d6d607326c004fff0d0c4e2c2008.lean/declarations/top-sub-coe--021e46e96b7f3af48dfda669.md) | 157 | `result-track:021e46e96b7f3af48dfda669c36e5580876ea08c90b4cd2fa02bed2321c76b2f` |
| 26 | `theorem` | [sub_top](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant49ee4b6b762ebddf06a8f2b42ae8156a6d79d6d607326c004fff0d0c4e2c2008.lean/declarations/sub-top--043a9cecaf5e3b0b2f4cbe74.md) | 161 | `result-track:043a9cecaf5e3b0b2f4cbe74809ee97a6c2c24acc651779ccf213f5e32d400d5` |
| 27 | `theorem` | [coe_toNat_eq_self](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant49ee4b6b762ebddf06a8f2b42ae8156a6d79d6d607326c004fff0d0c4e2c2008.lean/declarations/coe-tonat-eq-self--30a736c0e053340daa4a507b.md) | 165 | `result-track:30a736c0e053340daa4a507bfb60bc380dec4eca2583c78bb1e8c1da2436d4c0` |
| 28 | `theorem` | [coe_toNat_le_self](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant49ee4b6b762ebddf06a8f2b42ae8156a6d79d6d607326c004fff0d0c4e2c2008.lean/declarations/coe-tonat-le-self--c0bd7bdaa48e855c7a07ad86.md) | 172 | `result-track:c0bd7bdaa48e855c7a07ad8639fc7832016a4ee3741fdc359f197e95f1362abc` |
| 29 | `theorem` | [toNat_add](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant49ee4b6b762ebddf06a8f2b42ae8156a6d79d6d607326c004fff0d0c4e2c2008.lean/declarations/tonat-add--03665c39eb0bb7377a981554.md) | 176 | `result-track:03665c39eb0bb7377a98155439941caee5060600ba54a6b91defcf4b69752817` |
| 30 | `theorem` | [toNat_sub](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant49ee4b6b762ebddf06a8f2b42ae8156a6d79d6d607326c004fff0d0c4e2c2008.lean/declarations/tonat-sub--1e98982a419db7d265b7d410.md) | 182 | `result-track:1e98982a419db7d265b7d410d078fa658c29181f25129d613d6dc144fa89c396` |
| 31 | `theorem` | [toNat_eq_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant49ee4b6b762ebddf06a8f2b42ae8156a6d79d6d607326c004fff0d0c4e2c2008.lean/declarations/tonat-eq-iff--c2baaaef352bd225ec0d86db.md) | 189 | `result-track:c2baaaef352bd225ec0d86db599aed504e4465fe42fd20b78d565e88cfb67d06` |
| 32 | `theorem` | [succ_def](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant49ee4b6b762ebddf06a8f2b42ae8156a6d79d6d607326c004fff0d0c4e2c2008.lean/declarations/succ-def--41fb9fa92306cd5e6701b046.md) | 194 | `result-track:41fb9fa92306cd5e6701b04634d623bad4113439eed45c908e3809a635408c82` |
| 33 | `theorem` | [add_one_le_of_lt](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant49ee4b6b762ebddf06a8f2b42ae8156a6d79d6d607326c004fff0d0c4e2c2008.lean/declarations/add-one-le-of-lt--63998e26a2d989954725744f.md) | 197 | `result-track:63998e26a2d989954725744fd11d65e79b560d44b25b194bf5fc845d57096f29` |
| 34 | `theorem` | [add_one_le_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant49ee4b6b762ebddf06a8f2b42ae8156a6d79d6d607326c004fff0d0c4e2c2008.lean/declarations/add-one-le-iff--ed41dbd197b850d4848bed54.md) | 201 | `result-track:ed41dbd197b850d4848bed5461e036b7915e7d376ca3263e872af4c2b0ef04a5` |
| 35 | `theorem` | [one_le_iff_pos](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant49ee4b6b762ebddf06a8f2b42ae8156a6d79d6d607326c004fff0d0c4e2c2008.lean/declarations/one-le-iff-pos--549083f25b8b41e60518daa6.md) | 205 | `result-track:549083f25b8b41e60518daa609cab51e6e077ee9f7a59c6abc30e9f562dd8f9a` |
| 36 | `theorem` | [one_le_iff_ne_zero](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant49ee4b6b762ebddf06a8f2b42ae8156a6d79d6d607326c004fff0d0c4e2c2008.lean/declarations/one-le-iff-ne-zero--0d280e68ae6c0bb2ae0be93d.md) | 209 | `result-track:0d280e68ae6c0bb2ae0be93d3f58470da4d8ef4fa5af5ea5d5af4e4c828d61b1` |
| 37 | `theorem` | [le_of_lt_add_one](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant49ee4b6b762ebddf06a8f2b42ae8156a6d79d6d607326c004fff0d0c4e2c2008.lean/declarations/le-of-lt-add-one--a0873fe95c3a2a76fb2aa142.md) | 213 | `result-track:a0873fe95c3a2a76fb2aa1423b9afd224a2cfc02b6b7355b892857bfeaa5ffeb` |
| 38 | `theorem` | [le_coe_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant49ee4b6b762ebddf06a8f2b42ae8156a6d79d6d607326c004fff0d0c4e2c2008.lean/declarations/le-coe-iff--b0a2e12b4442c59a30a0baed.md) | 217 | `result-track:b0a2e12b4442c59a30a0baed7980f9505e4e0b3ba1553fd5cfb118fdc61346bf` |
| 39 | `theorem` | [nat_induction](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant49ee4b6b762ebddf06a8f2b42ae8156a6d79d6d607326c004fff0d0c4e2c2008.lean/declarations/nat-induction--eeb3a22ab0aa45e4e08cc46a.md) | 221 | `result-track:eeb3a22ab0aa45e4e08cc46ad6f7f8d1e10a83e1c731e81a9614efa5754ac1fc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
