# Verification target: GRWTSK.Analysis.ComplexAnalysis.Basic.Variant7288a1409eff5e1405cb6c6353a9d2ae71c5021c5a389c5c204b9058f76eeeed

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "732667edf5134a9e58e5fa5a9874e035edc0282c",
  "lexical_observation_count": 53,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/Basic/Variant7288a1409eff5e1405cb6c6353a9d2ae71c5021c5a389c5c204b9058f76eeeed.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant7288a1409eff5e1405cb6c6353a9d2ae71c5021c5a389c5c204b9058f76eeeed.lean/index.md) · [Full source](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant7288a1409eff5e1405cb6c6353a9d2ae71c5021c5a389c5c204b9058f76eeeed.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `732667edf5134a9e58e5fa5a9874e035edc0282c`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/Basic/Variant7288a1409eff5e1405cb6c6353a9d2ae71c5021c5a389c5c204b9058f76eeeed.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/Basic/Variant7288a1409eff5e1405cb6c6353a9d2ae71c5021c5a389c5c204b9058f76eeeed.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.Circle` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.BallAction` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [UnitDisc](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant7288a1409eff5e1405cb6c6353a9d2ae71c5021c5a389c5c204b9058f76eeeed.lean/declarations/unitdisc--9aecfd4ec815e1b0e5d4a99e.md) | 26 | `declaration-track:9aecfd4ec815e1b0e5d4a99eb64c0889d1f157737f7dfa808338b44454ca93e9` |
| 2 | `def` | [coe](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant7288a1409eff5e1405cb6c6353a9d2ae71c5021c5a389c5c204b9058f76eeeed.lean/declarations/coe--6d60228d2a60a4c57421b3d9.md) | 35 | `declaration-track:6d60228d2a60a4c57421b3d95a7986c7f2cc5c4d51b3a2b454cf100624d37865` |
| 3 | `instance` | [instCommSemigroup](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant7288a1409eff5e1405cb6c6353a9d2ae71c5021c5a389c5c204b9058f76eeeed.lean/declarations/instcommsemigroup--884312d68123ec470e841d13.md) | 37 | `declaration-track:884312d68123ec470e841d13bd39a7e4fb7e1eb767986ac558d7d1fae5b2270c` |
| 4 | `instance` | [instSemigroupWithZero](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant7288a1409eff5e1405cb6c6353a9d2ae71c5021c5a389c5c204b9058f76eeeed.lean/declarations/instsemigroupwithzero--2e57e60e9b663559e0accaa4.md) | 38 | `declaration-track:2e57e60e9b663559e0accaa46999481a0fefcf448e1bebc74b304f49bfca7bfb` |
| 5 | `instance` | [instIsCancelMulZero](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant7288a1409eff5e1405cb6c6353a9d2ae71c5021c5a389c5c204b9058f76eeeed.lean/declarations/instiscancelmulzero--744549f9edde16ea9c01a6af.md) | 39 | `declaration-track:744549f9edde16ea9c01a6af4cf1428cc4766afa78c7f87df121e85e669acbb0` |
| 6 | `instance` | [instHasDistribNeg](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant7288a1409eff5e1405cb6c6353a9d2ae71c5021c5a389c5c204b9058f76eeeed.lean/declarations/insthasdistribneg--2f94cadf1132f4049a31ae6a.md) | 40 | `declaration-track:2f94cadf1132f4049a31ae6a5a6538eefad59e3672f3dbf6885b494842d17999` |
| 7 | `instance` | [instCoe](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant7288a1409eff5e1405cb6c6353a9d2ae71c5021c5a389c5c204b9058f76eeeed.lean/declarations/instcoe--125602274a054986ebfe764a.md) | 41 | `declaration-track:125602274a054986ebfe764ae6f01684d7d236951586143f6b503cb30f63e149` |
| 8 | `theorem` | [coe_injective](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant7288a1409eff5e1405cb6c6353a9d2ae71c5021c5a389c5c204b9058f76eeeed.lean/declarations/coe-injective--8cb9d932983efd005831b276.md) | 43 | `result-track:8cb9d932983efd005831b2768f0c33c44d712b7e9d0b9f7819a76ae75b9f401c` |
| 9 | `theorem` | [coe_inj](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant7288a1409eff5e1405cb6c6353a9d2ae71c5021c5a389c5c204b9058f76eeeed.lean/declarations/coe-inj--7cd686e76bd10f1f3e4f8112.md) | 47 | `result-track:7cd686e76bd10f1f3e4f81127132ff9c0c0f86744b27daabeeca1d6a2bf5ab0d` |
| 10 | `theorem` | [norm_lt_one](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant7288a1409eff5e1405cb6c6353a9d2ae71c5021c5a389c5c204b9058f76eeeed.lean/declarations/norm-lt-one--8eabe1969abe2fed30b016fd.md) | 49 | `result-track:8eabe1969abe2fed30b016fdc9060830e5be7c6cb32e5d12d815af704a822553` |
| 11 | `theorem` | [norm_ne_one](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant7288a1409eff5e1405cb6c6353a9d2ae71c5021c5a389c5c204b9058f76eeeed.lean/declarations/norm-ne-one--27fae6a44e9b5b98a7c9d381.md) | 52 | `result-track:27fae6a44e9b5b98a7c9d381961d466dceaac882deb994f2cabb6bdcd1c6884b` |
| 12 | `theorem` | [normSq_lt_one](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant7288a1409eff5e1405cb6c6353a9d2ae71c5021c5a389c5c204b9058f76eeeed.lean/declarations/normsq-lt-one--f774328798dc7a129e4ce355.md) | 58 | `result-track:f774328798dc7a129e4ce35516267c3d4dee7805078bfef3a14ed3760e6b5844` |
| 13 | `theorem` | [coe_ne_one](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant7288a1409eff5e1405cb6c6353a9d2ae71c5021c5a389c5c204b9058f76eeeed.lean/declarations/coe-ne-one--f8a5c804fa4824599d31c13c.md) | 62 | `result-track:f8a5c804fa4824599d31c13c34cc4a5235fa946c5d9098c1a456df4c92abb945` |
| 14 | `theorem` | [coe_ne_neg_one](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant7288a1409eff5e1405cb6c6353a9d2ae71c5021c5a389c5c204b9058f76eeeed.lean/declarations/coe-ne-neg-one--802ef1358e3e8ea0cc50d3cd.md) | 65 | `result-track:802ef1358e3e8ea0cc50d3cd78977336982cf9ba2269b4e65f2f21696d00eca4` |
| 15 | `theorem` | [one_add_coe_ne_zero](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant7288a1409eff5e1405cb6c6353a9d2ae71c5021c5a389c5c204b9058f76eeeed.lean/declarations/one-add-coe-ne-zero--08c7a63bcf7814683248662d.md) | 68 | `result-track:08c7a63bcf7814683248662dfadef437eb7e2120fee5acf8089e209921da9b55` |
| 16 | `theorem` | [coe_mul](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant7288a1409eff5e1405cb6c6353a9d2ae71c5021c5a389c5c204b9058f76eeeed.lean/declarations/coe-mul--5b9aad7bfc0fb145902eefdf.md) | 72 | `result-track:5b9aad7bfc0fb145902eefdf6c8994499b6f2fca47a8a42b417f0f70a2ee7a0f` |
| 17 | `def` | [mk](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant7288a1409eff5e1405cb6c6353a9d2ae71c5021c5a389c5c204b9058f76eeeed.lean/declarations/mk--936de468efe8f3bc37b1b55e.md) | 77 | `declaration-track:936de468efe8f3bc37b1b55e0b85fd0cc00e44836ef95d34e5b9d5a3bd690de3` |
| 18 | `theorem` | [coe_mk](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant7288a1409eff5e1405cb6c6353a9d2ae71c5021c5a389c5c204b9058f76eeeed.lean/declarations/coe-mk--a9390d36871987ce28e780c3.md) | 81 | `result-track:a9390d36871987ce28e780c346015af33859081f8578174d9d304253f7423d3a` |
| 19 | `theorem` | [mk_coe](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant7288a1409eff5e1405cb6c6353a9d2ae71c5021c5a389c5c204b9058f76eeeed.lean/declarations/mk-coe--d741105e238338473b0fd646.md) | 85 | `result-track:d741105e238338473b0fd646766f552666e878d737f1ef38f5015ac58e6fe9a9` |
| 20 | `theorem` | [mk_neg](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant7288a1409eff5e1405cb6c6353a9d2ae71c5021c5a389c5c204b9058f76eeeed.lean/declarations/mk-neg--7374e5e91962c8459bccb6b7.md) | 89 | `result-track:7374e5e91962c8459bccb6b79bdf5de46127aba96c1b63a6b2f223e364f7f649` |
| 21 | `theorem` | [coe_zero](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant7288a1409eff5e1405cb6c6353a9d2ae71c5021c5a389c5c204b9058f76eeeed.lean/declarations/coe-zero--c17e8929fbc4a13e61a8be40.md) | 93 | `result-track:c17e8929fbc4a13e61a8be4064a22e9de223a9782041530e52dbbc0444d66959` |
| 22 | `theorem` | [coe_eq_zero](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant7288a1409eff5e1405cb6c6353a9d2ae71c5021c5a389c5c204b9058f76eeeed.lean/declarations/coe-eq-zero--0a059017abc5058bc6e87476.md) | 97 | `result-track:0a059017abc5058bc6e874765814e79e28a96b05ea14e225bb1cbccd8185aedc` |
| 23 | `theorem` | [mk_zero](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant7288a1409eff5e1405cb6c6353a9d2ae71c5021c5a389c5c204b9058f76eeeed.lean/declarations/mk-zero--58138d54727f42972d5b6301.md) | 100 | `result-track:58138d54727f42972d5b6301dae36051e15369ba3f096a9a33ef978d7d512920` |
| 24 | `theorem` | [mk_eq_zero](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant7288a1409eff5e1405cb6c6353a9d2ae71c5021c5a389c5c204b9058f76eeeed.lean/declarations/mk-eq-zero--1f4b52f8187d4ccbab3d3f07.md) | 101 | `result-track:1f4b52f8187d4ccbab3d3f07e8847b2b15ec8d569e8d02728dc8b14002b59f5f` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant7288a1409eff5e1405cb6c6353a9d2ae71c5021c5a389c5c204b9058f76eeeed.lean/declarations/instance--a615fa52af93228c2b4a2311.md) | 103 | `declaration-track:a615fa52af93228c2b4a2311373fe0a960fd40f33629c8fb60291d5fcad778da` |
| 26 | `instance` | [circleAction](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant7288a1409eff5e1405cb6c6353a9d2ae71c5021c5a389c5c204b9058f76eeeed.lean/declarations/circleaction--6aa692d0cc454956d709cce4.md) | 106 | `declaration-track:6aa692d0cc454956d709cce4233a71796fd68057dc79d1664e1175e7df553d69` |
| 27 | `instance` | [isScalarTower_circle_circle](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant7288a1409eff5e1405cb6c6353a9d2ae71c5021c5a389c5c204b9058f76eeeed.lean/declarations/isscalartower-circle-circle--758c777d98345093722f5570.md) | 109 | `declaration-track:758c777d98345093722f5570ad5d473b46d0d605fcd148e7b81aa59b434a85a3` |
| 28 | `instance` | [isScalarTower_circle](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant7288a1409eff5e1405cb6c6353a9d2ae71c5021c5a389c5c204b9058f76eeeed.lean/declarations/isscalartower-circle--20d5bb4f07506dcfa26bf8b7.md) | 112 | `declaration-track:20d5bb4f07506dcfa26bf8b7ae61ab32f5f44f16ee78f357f41b4393f174ab6e` |
| 29 | `instance` | [instSMulCommClass_circle](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant7288a1409eff5e1405cb6c6353a9d2ae71c5021c5a389c5c204b9058f76eeeed.lean/declarations/instsmulcommclass-circle--d6de56600f3bdf59006424aa.md) | 115 | `declaration-track:d6de56600f3bdf59006424aaf341034488648cbcafdac33ed0807a1410973860` |
| 30 | `instance` | [instSMulCommClass_circle'](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant7288a1409eff5e1405cb6c6353a9d2ae71c5021c5a389c5c204b9058f76eeeed.lean/declarations/instsmulcommclass-circle--eeb3aa29b640921e5483b336.md) | 118 | `declaration-track:eeb3aa29b640921e5483b33619701ef648d7f5acee739e9214c4f1b8ddff4a5d` |
| 31 | `theorem` | [coe_smul_circle](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant7288a1409eff5e1405cb6c6353a9d2ae71c5021c5a389c5c204b9058f76eeeed.lean/declarations/coe-smul-circle--b1e38d6da5de8452f2d515cc.md) | 122 | `result-track:b1e38d6da5de8452f2d515cc56bc134fa661f5cf51dd0636ae243539a0c54c62` |
| 32 | `instance` | [closedBallAction](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant7288a1409eff5e1405cb6c6353a9d2ae71c5021c5a389c5c204b9058f76eeeed.lean/declarations/closedballaction--5db1fb92a50842593802810b.md) | 125 | `declaration-track:5db1fb92a50842593802810b8048444f21900ab4de3f0bcd69bd19178dba6fc4` |
| 33 | `instance` | [isScalarTower_closedBall_closedBall](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant7288a1409eff5e1405cb6c6353a9d2ae71c5021c5a389c5c204b9058f76eeeed.lean/declarations/isscalartower-closedball-closedball--16ed21021c4cdfe32e653d51.md) | 128 | `declaration-track:16ed21021c4cdfe32e653d512a6036dbede9e26a1113d2dc02a93283b9617793` |
| 34 | `instance` | [isScalarTower_closedBall](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant7288a1409eff5e1405cb6c6353a9d2ae71c5021c5a389c5c204b9058f76eeeed.lean/declarations/isscalartower-closedball--128a3ed02fdb970ae9c2e9e3.md) | 132 | `declaration-track:128a3ed02fdb970ae9c2e9e389666ccc13b9ac18de0ebb1c510534e53198d219` |
| 35 | `instance` | [instSMulCommClass_closedBall](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant7288a1409eff5e1405cb6c6353a9d2ae71c5021c5a389c5c204b9058f76eeeed.lean/declarations/instsmulcommclass-closedball--10b9f061a4d96642ac20ae51.md) | 135 | `declaration-track:10b9f061a4d96642ac20ae51b12b6b00de889cb774c467158778efc16885a892` |
| 36 | `instance` | [instSMulCommClass_closedBall'](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant7288a1409eff5e1405cb6c6353a9d2ae71c5021c5a389c5c204b9058f76eeeed.lean/declarations/instsmulcommclass-closedball--8e2f19aa8243635e2d2e941e.md) | 138 | `declaration-track:8e2f19aa8243635e2d2e941e23f9a01e8e1f0e624cfc7b0fc8bc2dbb83b2f8bd` |
| 37 | `instance` | [instSMulCommClass_circle_closedBall](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant7288a1409eff5e1405cb6c6353a9d2ae71c5021c5a389c5c204b9058f76eeeed.lean/declarations/instsmulcommclass-circle-closedball--d48b08fea00fed6e0cef943a.md) | 141 | `declaration-track:d48b08fea00fed6e0cef943acee892e83373940793fe504fec1dcd6155dfa21a` |
| 38 | `instance` | [instSMulCommClass_closedBall_circle](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant7288a1409eff5e1405cb6c6353a9d2ae71c5021c5a389c5c204b9058f76eeeed.lean/declarations/instsmulcommclass-closedball-circle--5020460fb172bed2fb934633.md) | 144 | `declaration-track:5020460fb172bed2fb934633b2fad560743f1ce8934fe13d0e7eb9d45c24a790` |
| 39 | `theorem` | [coe_smul_closedBall](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant7288a1409eff5e1405cb6c6353a9d2ae71c5021c5a389c5c204b9058f76eeeed.lean/declarations/coe-smul-closedball--dc7044ae38219ba2b2251bec.md) | 148 | `result-track:dc7044ae38219ba2b2251bec570cff6c1db1e22216ff4e9fe22bc54f020486e6` |
| 40 | `def` | [re](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant7288a1409eff5e1405cb6c6353a9d2ae71c5021c5a389c5c204b9058f76eeeed.lean/declarations/re--795aeca9f580b1a1f8d815d9.md) | 152 | `declaration-track:795aeca9f580b1a1f8d815d9ee3655f466bd9a5e20e341ec0f61069f69de5144` |
| 41 | `def` | [im](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant7288a1409eff5e1405cb6c6353a9d2ae71c5021c5a389c5c204b9058f76eeeed.lean/declarations/im--208bca7599d343232da04f40.md) | 156 | `declaration-track:208bca7599d343232da04f40cc16567fb7c090b95474a9a1f073b438ea061b91` |
| 42 | `theorem` | [re_coe](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant7288a1409eff5e1405cb6c6353a9d2ae71c5021c5a389c5c204b9058f76eeeed.lean/declarations/re-coe--e0794ac3952b814d9fea37e4.md) | 160 | `result-track:e0794ac3952b814d9fea37e467bf8fb829523b7d62f7becd348c8eb38fd0fd6d` |
| 43 | `theorem` | [im_coe](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant7288a1409eff5e1405cb6c6353a9d2ae71c5021c5a389c5c204b9058f76eeeed.lean/declarations/im-coe--7f2208e7ccafaf66e2e027db.md) | 164 | `result-track:7f2208e7ccafaf66e2e027db4680727f7056af40156770516451b2cc996fa43b` |
| 44 | `theorem` | [re_neg](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant7288a1409eff5e1405cb6c6353a9d2ae71c5021c5a389c5c204b9058f76eeeed.lean/declarations/re-neg--68b349871dd9cda6bf93c369.md) | 168 | `result-track:68b349871dd9cda6bf93c3698a6f35c0989a7d08c56d12adb19e7f37520667fa` |
| 45 | `theorem` | [im_neg](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant7288a1409eff5e1405cb6c6353a9d2ae71c5021c5a389c5c204b9058f76eeeed.lean/declarations/im-neg--cfef3f4d8a9a67ae0a26604a.md) | 172 | `result-track:cfef3f4d8a9a67ae0a26604a62c7ecec3d1d8cabc3917a3694b0ddfe7a035e1f` |
| 46 | `def` | [conj](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant7288a1409eff5e1405cb6c6353a9d2ae71c5021c5a389c5c204b9058f76eeeed.lean/declarations/conj--43902c9a30dd98d2d50afafc.md) | 176 | `declaration-track:43902c9a30dd98d2d50afafc18d7a8aacbb4db7328cf1046bf47e20cfc8316ed` |
| 47 | `theorem` | [coe_conj](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant7288a1409eff5e1405cb6c6353a9d2ae71c5021c5a389c5c204b9058f76eeeed.lean/declarations/coe-conj--74a52bd3a2fa05d287054763.md) | 180 | `result-track:74a52bd3a2fa05d287054763013ae1922dd931ce4bc01c4e6860d3d82da3ed6b` |
| 48 | `theorem` | [conj_zero](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant7288a1409eff5e1405cb6c6353a9d2ae71c5021c5a389c5c204b9058f76eeeed.lean/declarations/conj-zero--15bbea065e2f0631e6ae82ea.md) | 184 | `result-track:15bbea065e2f0631e6ae82ea96254509024d02dd9fd9749161d29a1a2f3a7e9c` |
| 49 | `theorem` | [conj_conj](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant7288a1409eff5e1405cb6c6353a9d2ae71c5021c5a389c5c204b9058f76eeeed.lean/declarations/conj-conj--663481ae22f516e9bc074729.md) | 188 | `result-track:663481ae22f516e9bc074729c911a1681ec3c20d19b1c7d28239555f3d05b0aa` |
| 50 | `theorem` | [conj_neg](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant7288a1409eff5e1405cb6c6353a9d2ae71c5021c5a389c5c204b9058f76eeeed.lean/declarations/conj-neg--fae327544d286332c7defa61.md) | 192 | `result-track:fae327544d286332c7defa619d73ad338ab5d2242caee4f6eac560d0148c3232` |
| 51 | `theorem` | [re_conj](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant7288a1409eff5e1405cb6c6353a9d2ae71c5021c5a389c5c204b9058f76eeeed.lean/declarations/re-conj--cb85eb24d3e3b70ac4996ef9.md) | 196 | `result-track:cb85eb24d3e3b70ac4996ef9735ce8ead74186f30f3f7294a15ef01278e11eae` |
| 52 | `theorem` | [im_conj](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant7288a1409eff5e1405cb6c6353a9d2ae71c5021c5a389c5c204b9058f76eeeed.lean/declarations/im-conj--4bd62972509a31838178837d.md) | 200 | `result-track:4bd62972509a31838178837d84676f17d3b2aa9d6862060544596832266f60bc` |
| 53 | `theorem` | [conj_mul](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant7288a1409eff5e1405cb6c6353a9d2ae71c5021c5a389c5c204b9058f76eeeed.lean/declarations/conj-mul--fda13645c4d48e75056e6276.md) | 204 | `result-track:fda13645c4d48e75056e6276bca0f08fe1b5048c9f04f36749a3333ef78be79b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
