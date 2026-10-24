# Verification target: GRWTSK.Algebra.StructId.Variant90debd5849c52e5751b8ed29beb82560f1b0b56761d8c0159e5ae3cba7f74f3e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8a5d963c3243fe2f7dec54707fbc075223fd67bd",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/StructId/Variant90debd5849c52e5751b8ed29beb82560f1b0b56761d8c0159e5ae3cba7f74f3e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/StructId/Variant90debd5849c52e5751b8ed29beb82560f1b0b56761d8c0159e5ae3cba7f74f3e.lean/index.md) · [Full source](../../../../mathematics/Algebra/StructId/Variant90debd5849c52e5751b8ed29beb82560f1b0b56761d8c0159e5ae3cba7f74f3e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8a5d963c3243fe2f7dec54707fbc075223fd67bd`.

Source path: `GRWTSK/Algebra/StructId/Variant90debd5849c52e5751b8ed29beb82560f1b0b56761d8c0159e5ae3cba7f74f3e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/StructId/Variant90debd5849c52e5751b8ed29beb82560f1b0b56761d8c0159e5ae3cba7f74f3e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Tactic.Grind.OrderInsts` — import line 14; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.Cutsat.ToInt` — import line 15; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.CommRing.RingId` — import line 16; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.Linear.Var` — import line 17; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.Insts` — import line 18; external provider; requires a separately pinned dependency.
- `Init.Grind.Module.Envelope` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [preprocess](../../../../mathematics/Algebra/StructId/Variant90debd5849c52e5751b8ed29beb82560f1b0b56761d8c0159e5ae3cba7f74f3e.lean/declarations/preprocess--310f3b90111504f3067f612a.md) | 26 | `declaration-track:310f3b90111504f3067f612a72e564b9dcee1ac957c057e4062af8c07d9a4965` |
| 2 | `def` | [internalizeFn](../../../../mathematics/Algebra/StructId/Variant90debd5849c52e5751b8ed29beb82560f1b0b56761d8c0159e5ae3cba7f74f3e.lean/declarations/internalizefn--735f31e353cce3c87d9c651d.md) | 29 | `declaration-track:735f31e353cce3c87d9c651d81bb1edc58d2b0b929e70d83dee900a6a265631f` |
| 3 | `def` | [preprocessConst](../../../../mathematics/Algebra/StructId/Variant90debd5849c52e5751b8ed29beb82560f1b0b56761d8c0159e5ae3cba7f74f3e.lean/declarations/preprocessconst--bb545b920ecc9a309078de07.md) | 32 | `declaration-track:bb545b920ecc9a309078de0718040d1a72441e53445fc59015fb9dec60d1ee11` |
| 4 | `def` | [internalizeConst](../../../../mathematics/Algebra/StructId/Variant90debd5849c52e5751b8ed29beb82560f1b0b56761d8c0159e5ae3cba7f74f3e.lean/declarations/internalizeconst--44b38433052215f4e1877a59.md) | 37 | `declaration-track:44b38433052215f4e1877a59cea02e556ac0cafa941acf2ec559e246c931d6e2` |
| 5 | `def` | [mkExpectedDefEqMsg](../../../../mathematics/Algebra/StructId/Variant90debd5849c52e5751b8ed29beb82560f1b0b56761d8c0159e5ae3cba7f74f3e.lean/declarations/mkexpecteddefeqmsg--4e3cbdba696cf5bfc605a05d.md) | 44 | `declaration-track:4e3cbdba696cf5bfc605a05dafa3e98130483afe978f371eaa71b0220f870738` |
| 6 | `def` | [ensureDefEq](../../../../mathematics/Algebra/StructId/Variant90debd5849c52e5751b8ed29beb82560f1b0b56761d8c0159e5ae3cba7f74f3e.lean/declarations/ensuredefeq--65d03c316fa56340a5471af9.md) | 47 | `declaration-track:65d03c316fa56340a5471af9a716e24e2e171d30a099b2ca3e16d86cd495d0f3` |
| 7 | `def` | [addZeroLtOne](../../../../mathematics/Algebra/StructId/Variant90debd5849c52e5751b8ed29beb82560f1b0b56761d8c0159e5ae3cba7f74f3e.lean/declarations/addzeroltone--73990e32f7f8fafaffd2cb15.md) | 51 | `declaration-track:73990e32f7f8fafaffd2cb15d43c96e648bf2386a3ec90750d057ad6fcbe89f0` |
| 8 | `def` | [addZeroNeOne](../../../../mathematics/Algebra/StructId/Variant90debd5849c52e5751b8ed29beb82560f1b0b56761d8c0159e5ae3cba7f74f3e.lean/declarations/addzeroneone--7ee85170d26b64be6bf0176a.md) | 57 | `declaration-track:7ee85170d26b64be6bf0176a86506e25b507440b83c9e5160a448ea8b18b62bd` |
| 9 | `def` | [isNonTrivialIsCharInst](../../../../mathematics/Algebra/StructId/Variant90debd5849c52e5751b8ed29beb82560f1b0b56761d8c0159e5ae3cba7f74f3e.lean/declarations/isnontrivialischarinst--72ef8c7c7c114c627c54c3e7.md) | 63 | `declaration-track:72ef8c7c7c114c627c54c3e71f6c55282b8ff6e90b0790aec7cfb8762acd986d` |
| 10 | `def` | [isCutsatType](../../../../mathematics/Algebra/StructId/Variant90debd5849c52e5751b8ed29beb82560f1b0b56761d8c0159e5ae3cba7f74f3e.lean/declarations/iscutsattype--c9366a505060330dba2a3d18.md) | 68 | `declaration-track:c9366a505060330dba2a3d183607126bbae3b52d60e0be12f4cdc2e564389bcc` |
| 11 | `def` | [getCommRingInst?](../../../../mathematics/Algebra/StructId/Variant90debd5849c52e5751b8ed29beb82560f1b0b56761d8c0159e5ae3cba7f74f3e.lean/declarations/getcommringinst--186e26d9c52188af86c664d9.md) | 75 | `declaration-track:186e26d9c52188af86c664d90d95e0d341cd4bae62f2049ee94df42f2b7f544c` |
| 12 | `def` | [mkRingInst?](../../../../mathematics/Algebra/StructId/Variant90debd5849c52e5751b8ed29beb82560f1b0b56761d8c0159e5ae3cba7f74f3e.lean/declarations/mkringinst--af8d8db496c266b8e551feaa.md) | 79 | `declaration-track:af8d8db496c266b8e551feaa32fc53dbb9dd6c61af86b6a21f03646a519a33a1` |
| 13 | `def` | [mkIntModuleInst?](../../../../mathematics/Algebra/StructId/Variant90debd5849c52e5751b8ed29beb82560f1b0b56761d8c0159e5ae3cba7f74f3e.lean/declarations/mkintmoduleinst--4676cd7bc25deaba5a707851.md) | 85 | `declaration-track:4676cd7bc25deaba5a70785175a1dbb940ead5a6577e6ca11b4d862204c57d96` |
| 14 | `def` | [mkSemiringInst?](../../../../mathematics/Algebra/StructId/Variant90debd5849c52e5751b8ed29beb82560f1b0b56761d8c0159e5ae3cba7f74f3e.lean/declarations/mksemiringinst--e89115bc2c6e298cf5d400ba.md) | 91 | `declaration-track:e89115bc2c6e298cf5d400ba021707583bba9ab76f0b4955ee409eb868e98676` |
| 15 | `def` | [mkOne?](../../../../mathematics/Algebra/StructId/Variant90debd5849c52e5751b8ed29beb82560f1b0b56761d8c0159e5ae3cba7f74f3e.lean/declarations/mkone--a6473914b31a28e9abe4ce10.md) | 97 | `declaration-track:a6473914b31a28e9abe4ce1058d5f48b836abc4a18bc3d317c422edadbaaea1b` |
| 16 | `def` | [mkOrderedRingInst?](../../../../mathematics/Algebra/StructId/Variant90debd5849c52e5751b8ed29beb82560f1b0b56761d8c0159e5ae3cba7f74f3e.lean/declarations/mkorderedringinst--4c7b75c1467636a42adfdf3c.md) | 104 | `declaration-track:4c7b75c1467636a42adfdf3c1ffa32cc576256e2033ba124014ccf3e64fa3591` |
| 17 | `def` | [mkNoNatZeroDivInst?](../../../../mathematics/Algebra/StructId/Variant90debd5849c52e5751b8ed29beb82560f1b0b56761d8c0159e5ae3cba7f74f3e.lean/declarations/mknonatzerodivinst--7b095e587b6396125bf3c712.md) | 116 | `declaration-track:7b095e587b6396125bf3c7128bf9e0e61ab2972f5d0a749d999c2f37c1cb3b99` |
| 18 | `def` | [getInst?](../../../../mathematics/Algebra/StructId/Variant90debd5849c52e5751b8ed29beb82560f1b0b56761d8c0159e5ae3cba7f74f3e.lean/declarations/getinst--c475418f1bcfe24b97a0c101.md) | 121 | `declaration-track:c475418f1bcfe24b97a0c101856da29627717a0ab1f5b312b57d16a1ea03edb6` |
| 19 | `def` | [getInst](../../../../mathematics/Algebra/StructId/Variant90debd5849c52e5751b8ed29beb82560f1b0b56761d8c0159e5ae3cba7f74f3e.lean/declarations/getinst--ce3f608d1febc2eeef9236c3.md) | 124 | `declaration-track:ce3f608d1febc2eeef9236c36a6e18c579761a509f317ece39c84327bf82bb5a` |
| 20 | `def` | [getBinHomoInst](../../../../mathematics/Algebra/StructId/Variant90debd5849c52e5751b8ed29beb82560f1b0b56761d8c0159e5ae3cba7f74f3e.lean/declarations/getbinhomoinst--66a0a14b888c5414f3051869.md) | 127 | `declaration-track:66a0a14b888c5414f3051869e305e1319c8a1e4e774ea61f13303603aec44b94` |
| 21 | `def` | [getHSMulIntInst](../../../../mathematics/Algebra/StructId/Variant90debd5849c52e5751b8ed29beb82560f1b0b56761d8c0159e5ae3cba7f74f3e.lean/declarations/gethsmulintinst--58142697ceabc5291c7b4410.md) | 130 | `declaration-track:58142697ceabc5291c7b4410d3f2095206fe7251cd13f6c886e7bb8af8c06777` |
| 22 | `def` | [getHSMulNatInst](../../../../mathematics/Algebra/StructId/Variant90debd5849c52e5751b8ed29beb82560f1b0b56761d8c0159e5ae3cba7f74f3e.lean/declarations/gethsmulnatinst--6992e929385c9016a257e0ab.md) | 133 | `declaration-track:6992e929385c9016a257e0abb82688145b7f283d617e6039ef32f8cbe6d9e7d3` |
| 23 | `def` | [checkToFieldDefEq?](../../../../mathematics/Algebra/StructId/Variant90debd5849c52e5751b8ed29beb82560f1b0b56761d8c0159e5ae3cba7f74f3e.lean/declarations/checktofielddefeq--0a08a058f675bd282d5a1a7a.md) | 136 | `declaration-track:0a08a058f675bd282d5a1a7a8ce1f29bb48aced7fa27c10582925784b3b8332f` |
| 24 | `def` | [ensureToFieldDefEq](../../../../mathematics/Algebra/StructId/Variant90debd5849c52e5751b8ed29beb82560f1b0b56761d8c0159e5ae3cba7f74f3e.lean/declarations/ensuretofielddefeq--6e93dd5759552cf3175195b0.md) | 146 | `declaration-track:6e93dd5759552cf3175195b037c1a3c72bf199e44c13c2fa5e5c3a94b001c898` |
| 25 | `def` | [ensureToHomoFieldDefEq](../../../../mathematics/Algebra/StructId/Variant90debd5849c52e5751b8ed29beb82560f1b0b56761d8c0159e5ae3cba7f74f3e.lean/declarations/ensuretohomofielddefeq--395376736562c66075cf9487.md) | 150 | `declaration-track:395376736562c66075cf94874e31deb00bf5c2c78616e7e7d8f5648fc1b0145f` |
| 26 | `def` | [getHSMulIntFn?](../../../../mathematics/Algebra/StructId/Variant90debd5849c52e5751b8ed29beb82560f1b0b56761d8c0159e5ae3cba7f74f3e.lean/declarations/gethsmulintfn--af86eea3952888a0b8f2356c.md) | 159 | `declaration-track:af86eea3952888a0b8f2356c9d5c9380e544a68b5198afd25b1f0b13594f7ce9` |
| 27 | `def` | [getHSMulNatFn?](../../../../mathematics/Algebra/StructId/Variant90debd5849c52e5751b8ed29beb82560f1b0b56761d8c0159e5ae3cba7f74f3e.lean/declarations/gethsmulnatfn--7dd8d8dd3d44e97b10b04421.md) | 164 | `declaration-track:7dd8d8dd3d44e97b10b04421d2eb7dda5404d58cbe914b3e57bf422ae4cc1ba8` |
| 28 | `def` | [getStructId?](../../../../mathematics/Algebra/StructId/Variant90debd5849c52e5751b8ed29beb82560f1b0b56761d8c0159e5ae3cba7f74f3e.lean/declarations/getstructid--bbe4227de04b20a5a96a3dae.md) | 169 | `declaration-track:bbe4227de04b20a5a96a3dae57950ac8d25a1d4670b40c086a462bbc1417c9af` |
| 29 | `def` | [mkNatModuleInst?](../../../../mathematics/Algebra/StructId/Variant90debd5849c52e5751b8ed29beb82560f1b0b56761d8c0159e5ae3cba7f74f3e.lean/declarations/mknatmoduleinst--77e20f0c015f781604c00416.md) | 380 | `declaration-track:77e20f0c015f781604c00416ac1f27688480d4e725efd5c86c333ea75732e671` |
| 30 | `def` | [getNatStructId?](../../../../mathematics/Algebra/StructId/Variant90debd5849c52e5751b8ed29beb82560f1b0b56761d8c0159e5ae3cba7f74f3e.lean/declarations/getnatstructid--2042bc6e8694741a8f657dbf.md) | 383 | `declaration-track:2042bc6e8694741a8f657dbf9c97adc34151eb569982f79c6840f30defc58b09` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
