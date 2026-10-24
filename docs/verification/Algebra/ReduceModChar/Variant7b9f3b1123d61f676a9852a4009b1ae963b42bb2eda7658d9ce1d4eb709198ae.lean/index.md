# Verification target: GRWTSK.Algebra.ReduceModChar.Variant7b9f3b1123d61f676a9852a4009b1ae963b42bb2eda7658d9ce1d4eb709198ae

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d386b56ef496e6d134bae2380548d2e3b277d89c",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/ReduceModChar/Variant7b9f3b1123d61f676a9852a4009b1ae963b42bb2eda7658d9ce1d4eb709198ae.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/ReduceModChar/Variant7b9f3b1123d61f676a9852a4009b1ae963b42bb2eda7658d9ce1d4eb709198ae.lean/index.md) · [Full source](../../../../mathematics/Algebra/ReduceModChar/Variant7b9f3b1123d61f676a9852a4009b1ae963b42bb2eda7658d9ce1d4eb709198ae.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d386b56ef496e6d134bae2380548d2e3b277d89c`.

Source path: `GRWTSK/Algebra/ReduceModChar/Variant7b9f3b1123d61f676a9852a4009b1ae963b42bb2eda7658d9ce1d4eb709198ae.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/ReduceModChar/Variant7b9f3b1123d61f676a9852a4009b1ae963b42bb2eda7658d9ce1d4eb709198ae.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.ZMod.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum.DivMod` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum.PowMod` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.ReduceModChar.Ext` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [CharP.isInt_of_mod](../../../../mathematics/Algebra/ReduceModChar/Variant7b9f3b1123d61f676a9852a4009b1ae963b42bb2eda7658d9ce1d4eb709198ae.lean/declarations/charp-isint-of-mod--c04ee5a9209026efa3213924.md) | 48 | `result-track:c04ee5a9209026efa3213924ae1ace57288c34e2e80832e81e8f78666c664321` |
| 2 | `lemma` | [CharP.isNat_pow](../../../../mathematics/Algebra/ReduceModChar/Variant7b9f3b1123d61f676a9852a4009b1ae963b42bb2eda7658d9ce1d4eb709198ae.lean/declarations/charp-isnat-pow--5ee9706ba847a931eccd334d.md) | 52 | `result-track:5ee9706ba847a931eccd334d8fb694fc388e6241bd957b984149e5d25b7deae6` |
| 3 | `def` | [normBareNumeral](../../../../mathematics/Algebra/ReduceModChar/Variant7b9f3b1123d61f676a9852a4009b1ae963b42bb2eda7658d9ce1d4eb709198ae.lean/declarations/normbarenumeral--5c9db9bd8c66764f997f0ec0.md) | 61 | `declaration-track:5c9db9bd8c66764f997f0ec0303fa00bcff3353cc12428c1446efd0522b7f49a` |
| 4 | `def` | [normPow](../../../../mathematics/Algebra/ReduceModChar/Variant7b9f3b1123d61f676a9852a4009b1ae963b42bb2eda7658d9ce1d4eb709198ae.lean/declarations/normpow--afd16395d9b33bf69596de47.md) | 73 | `declaration-track:afd16395d9b33bf69596de47b3c7681778490e5ce8fb245c3d11184d3c77828a` |
| 5 | `def` | [normIntNumeral'](../../../../mathematics/Algebra/ReduceModChar/Variant7b9f3b1123d61f676a9852a4009b1ae963b42bb2eda7658d9ce1d4eb709198ae.lean/declarations/normintnumeral--9a87f22f3f93ad9d1eef15c2.md) | 87 | `declaration-track:9a87f22f3f93ad9d1eef15c21466f39430e97a32fc5d1baa48ab6cc61cfb04d1` |
| 6 | `lemma` | [CharP.intCast_eq_mod](../../../../mathematics/Algebra/ReduceModChar/Variant7b9f3b1123d61f676a9852a4009b1ae963b42bb2eda7658d9ce1d4eb709198ae.lean/declarations/charp-intcast-eq-mod--3ce3acfd572d7cfcc85045cc.md) | 93 | `result-track:3ce3acfd572d7cfcc85045ccb438366d20ad169b75e2b9010571bbfb07623ac9` |
| 7 | `def` | [normIntNumeral](../../../../mathematics/Algebra/ReduceModChar/Variant7b9f3b1123d61f676a9852a4009b1ae963b42bb2eda7658d9ce1d4eb709198ae.lean/declarations/normintnumeral--6b755dc27fa304a1a257dd1a.md) | 101 | `declaration-track:6b755dc27fa304a1a257dd1a922da748497bd440fb9cd697c0570d828c2326c2` |
| 8 | `lemma` | [CharP.neg_eq_sub_one_mul](../../../../mathematics/Algebra/ReduceModChar/Variant7b9f3b1123d61f676a9852a4009b1ae963b42bb2eda7658d9ce1d4eb709198ae.lean/declarations/charp-neg-eq-sub-one-mul--024dc865ad4504dc20218b98.md) | 106 | `result-track:024dc865ad4504dc20218b98b39b4c122f9bed7244f3c56192695b5f2f4310a9` |
| 9 | `def` | [normNeg](../../../../mathematics/Algebra/ReduceModChar/Variant7b9f3b1123d61f676a9852a4009b1ae963b42bb2eda7658d9ce1d4eb709198ae.lean/declarations/normneg--ae7be62a5901190da85d9cee.md) | 119 | `declaration-track:ae7be62a5901190da85d9cee7c6daf3c9b4f8e46bc13b0743bd3e618cb264583` |
| 10 | `lemma` | [CharP.neg_mul_eq_sub_one_mul](../../../../mathematics/Algebra/ReduceModChar/Variant7b9f3b1123d61f676a9852a4009b1ae963b42bb2eda7658d9ce1d4eb709198ae.lean/declarations/charp-neg-mul-eq-sub-one-mul--3732c26b144aa4bbeecd6d47.md) | 135 | `result-track:3732c26b144aa4bbeecd6d47397665726f5fcd524cb3839e554ac0807853d20a` |
| 11 | `def` | [normNegCoeffMul](../../../../mathematics/Algebra/ReduceModChar/Variant7b9f3b1123d61f676a9852a4009b1ae963b42bb2eda7658d9ce1d4eb709198ae.lean/declarations/normnegcoeffmul--934a790db353164b0a9598f0.md) | 144 | `declaration-track:934a790db353164b0a9598f0cec9f31312ffe9d642cb68074f0823cf7fb85ec5` |
| 12 | `inductive` | [TypeToCharPResult](../../../../mathematics/Algebra/ReduceModChar/Variant7b9f3b1123d61f676a9852a4009b1ae963b42bb2eda7658d9ce1d4eb709198ae.lean/declarations/typetocharpresult--ff6e7c1eafe1b520c1a26b77.md) | 164 | `declaration-track:ff6e7c1eafe1b520c1a26b777efe584bfae3d800a32f1f5bc63916583c193b71` |
| 13 | `instance` | [(anonymous)](../../../../mathematics/Algebra/ReduceModChar/Variant7b9f3b1123d61f676a9852a4009b1ae963b42bb2eda7658d9ce1d4eb709198ae.lean/declarations/instance--404eb0d3a38737389bc509df.md) | 168 | `declaration-track:404eb0d3a38737389bc509dfe2e6ddd1938290c13501e99d4e3ccf2b8d6ee899` |
| 14 | `def` | [typeToCharP](../../../../mathematics/Algebra/ReduceModChar/Variant7b9f3b1123d61f676a9852a4009b1ae963b42bb2eda7658d9ce1d4eb709198ae.lean/declarations/typetocharp--7cce22173c461e82319cf368.md) | 175 | `declaration-track:7cce22173c461e82319cf368a449a40ec7939bea7f2bd4881eacf5b0e484c416` |
| 15 | `def` | [matchAndNorm](../../../../mathematics/Algebra/ReduceModChar/Variant7b9f3b1123d61f676a9852a4009b1ae963b42bb2eda7658d9ce1d4eb709198ae.lean/declarations/matchandnorm--d1bd9761075c81c154f454c3.md) | 208 | `declaration-track:d1bd9761075c81c154f454c38e9743aeec7c5dc13e3c9117df05716d5b3a86be` |
| 16 | `def` | [derive](../../../../mathematics/Algebra/ReduceModChar/Variant7b9f3b1123d61f676a9852a4009b1ae963b42bb2eda7658d9ce1d4eb709198ae.lean/declarations/derive--ec1889597bf376fd4005429e.md) | 238 | `declaration-track:ec1889597bf376fd4005429e4087d66025c45c1e46f231d27108b9b38302acad` |
| 17 | `def` | [reduceModCharTarget](../../../../mathematics/Algebra/ReduceModChar/Variant7b9f3b1123d61f676a9852a4009b1ae963b42bb2eda7658d9ce1d4eb709198ae.lean/declarations/reducemodchartarget--5ffa0707f674154094617aaf.md) | 267 | `declaration-track:5ffa0707f674154094617aafbd038210f25cb0adb905e66388975a7b74eb3451` |
| 18 | `def` | [reduceModCharHyp](../../../../mathematics/Algebra/ReduceModChar/Variant7b9f3b1123d61f676a9852a4009b1ae963b42bb2eda7658d9ce1d4eb709198ae.lean/declarations/reducemodcharhyp--18f9bf08b478621c4b0408a1.md) | 280 | `declaration-track:18f9bf08b478621c4b0408a18c1cf97c3df7c01e24bdc17d623d0292d6acee5d` |
| 19 | `syntax` | [(anonymous)](../../../../mathematics/Algebra/ReduceModChar/Variant7b9f3b1123d61f676a9852a4009b1ae963b42bb2eda7658d9ce1d4eb709198ae.lean/declarations/syntax--e860765f416395c95ac8101e.md) | 307 | `declaration-track:e860765f416395c95ac8101e49c9c604298e7d995eff6b06ee60292333a1a337` |
| 20 | `syntax` | [(anonymous)](../../../../mathematics/Algebra/ReduceModChar/Variant7b9f3b1123d61f676a9852a4009b1ae963b42bb2eda7658d9ce1d4eb709198ae.lean/declarations/syntax--3a4d404052acffdd39dcebdd.md) | 309 | `declaration-track:3a4d404052acffdd39dcebdd4a74365ebe5855ef5d47c6409a8a0f86d3bcb9fa` |
| 21 | `elab_rules` | [(anonymous)](../../../../mathematics/Algebra/ReduceModChar/Variant7b9f3b1123d61f676a9852a4009b1ae963b42bb2eda7658d9ce1d4eb709198ae.lean/declarations/elab-rules--daf02058d8f7336431f309b6.md) | 311 | `declaration-track:daf02058d8f7336431f309b63f94cf9347e2596464c9093d3a311d801e8cf724` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
