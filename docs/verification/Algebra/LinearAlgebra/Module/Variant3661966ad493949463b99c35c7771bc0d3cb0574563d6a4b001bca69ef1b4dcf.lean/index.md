# Verification target: GRWTSK.Algebra.LinearAlgebra.Module.Variant3661966ad493949463b99c35c7771bc0d3cb0574563d6a4b001bca69ef1b4dcf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "422ac6fd1b47b0f563d08f3a3f14bc6bb7724c43",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Module/Variant3661966ad493949463b99c35c7771bc0d3cb0574563d6a4b001bca69ef1b4dcf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3661966ad493949463b99c35c7771bc0d3cb0574563d6a4b001bca69ef1b4dcf.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3661966ad493949463b99c35c7771bc0d3cb0574563d6a4b001bca69ef1b4dcf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `422ac6fd1b47b0f563d08f3a3f14bc6bb7724c43`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Module/Variant3661966ad493949463b99c35c7771bc0d3cb0574563d6a4b001bca69ef1b4dcf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Module/Variant3661966ad493949463b99c35c7771bc0d3cb0574563d6a4b001bca69ef1b4dcf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Span.Basic` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [distribMulAction](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3661966ad493949463b99c35c7771bc0d3cb0574563d6a4b001bca69ef1b4dcf.lean/declarations/distribmulaction--52e46a84072b1376c826a631.md) | 52 | `declaration-track:52e46a84072b1376c826a631a945959aafb0981f7daafbbdf2cecd3e3cd8f162` |
| 2 | `lemma` | [mapDomain_smul](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3661966ad493949463b99c35c7771bc0d3cb0574563d6a4b001bca69ef1b4dcf.lean/declarations/mapdomain-smul--7cf4e3c4280013d98f33114c.md) | 56 | `result-track:7cf4e3c4280013d98f33114c2d3bb62a215ab37fcf73d27194e81c9ce0afe9c5` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3661966ad493949463b99c35c7771bc0d3cb0574563d6a4b001bca69ef1b4dcf.lean/declarations/instance--1b992e32fd05e49e0af5159d.md) | 65 | `declaration-track:1b992e32fd05e49e0af5159dda70b900ba61834a5e073ccaf85454ef44d568a5` |
| 4 | `instance` | [instIsTorsionFree](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3661966ad493949463b99c35c7771bc0d3cb0574563d6a4b001bca69ef1b4dcf.lean/declarations/instistorsionfree--0235a06c41fbd6925429fa9f.md) | 68 | `declaration-track:0235a06c41fbd6925429fa9f9d53750f7b1c48fab0216523e1b4b0480f5d180e` |
| 5 | `def` | [coeffLinearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3661966ad493949463b99c35c7771bc0d3cb0574563d6a4b001bca69ef1b4dcf.lean/declarations/coefflinearequiv--9db607884111416db436cb77.md) | 75 | `declaration-track:9db607884111416db436cb77429e0a50c549ba7fe2d2c56961256e9b59ff5fbd` |
| 6 | `def` | [mapDomainLinearMap](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3661966ad493949463b99c35c7771bc0d3cb0574563d6a4b001bca69ef1b4dcf.lean/declarations/mapdomainlinearmap--ffb8b1efb17ef9526b7dd0ba.md) | 80 | `declaration-track:ffb8b1efb17ef9526b7dd0ba8558a4eb81614eab7471e498dee52ae7fc507be1` |
| 7 | `lemma` | [coeff_mapDomainLinearMap](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3661966ad493949463b99c35c7771bc0d3cb0574563d6a4b001bca69ef1b4dcf.lean/declarations/coeff-mapdomainlinearmap--02a094526b8388766d4cc9b2.md) | 85 | `result-track:02a094526b8388766d4cc9b2b6d86eeb8857a79524eaaf09290d978038d517ac` |
| 8 | `lemma` | [mapDomainLinearMap_single](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3661966ad493949463b99c35c7771bc0d3cb0574563d6a4b001bca69ef1b4dcf.lean/declarations/mapdomainlinearmap-single--09fa6150f030fee278b0c251.md) | 89 | `result-track:09fa6150f030fee278b0c251a7fd1bd7d76603365aab938db680acc65146333c` |
| 9 | `lemma` | [mapDomainLinearMap_comp](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3661966ad493949463b99c35c7771bc0d3cb0574563d6a4b001bca69ef1b4dcf.lean/declarations/mapdomainlinearmap-comp--35af03426d00ac4fd4218513.md) | 93 | `result-track:35af03426d00ac4fd4218513eecae36ae33d0a6a4dfa5b1d5817c1fe004de716` |
| 10 | `def` | [mapDomainLinearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3661966ad493949463b99c35c7771bc0d3cb0574563d6a4b001bca69ef1b4dcf.lean/declarations/mapdomainlinearequiv--a6eec6fb5cdcbb301c25f804.md) | 100 | `declaration-track:a6eec6fb5cdcbb301c25f804e6a10c3c5da8ef389a2c0b757409d1fd38b1cbda` |
| 11 | `lemma` | [coeff_mapDomainLinearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3661966ad493949463b99c35c7771bc0d3cb0574563d6a4b001bca69ef1b4dcf.lean/declarations/coeff-mapdomainlinearequiv--36dd6dc316cad3ea7e69582e.md) | 104 | `result-track:36dd6dc316cad3ea7e69582e5ca6f1b212e6350d66c7566bca7aa892ef030b38` |
| 12 | `lemma` | [mapDomainLinearEquiv_single](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3661966ad493949463b99c35c7771bc0d3cb0574563d6a4b001bca69ef1b4dcf.lean/declarations/mapdomainlinearequiv-single--64130a157ca7cbb373bc5e2f.md) | 108 | `result-track:64130a157ca7cbb373bc5e2f7d7d5b8678a47d1d4f062ed1d16eddbeccc3638d` |
| 13 | `lemma` | [symm_mapDomainLinearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3661966ad493949463b99c35c7771bc0d3cb0574563d6a4b001bca69ef1b4dcf.lean/declarations/symm-mapdomainlinearequiv--7ad36f16f6a1ee09596f4e19.md) | 112 | `result-track:7ad36f16f6a1ee09596f4e19277d18c0b18c1c98899b5347cccb0d8fad635c0c` |
| 14 | `lemma` | [mapDomainLinearEquiv_trans](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3661966ad493949463b99c35c7771bc0d3cb0574563d6a4b001bca69ef1b4dcf.lean/declarations/mapdomainlinearequiv-trans--6e221f1525f57de2d0a1040f.md) | 116 | `result-track:6e221f1525f57de2d0a1040f953965f318dfa87a78d01da84a7f9d26c6701920` |
| 15 | `def` | [uniqueLinearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3661966ad493949463b99c35c7771bc0d3cb0574563d6a4b001bca69ef1b4dcf.lean/declarations/uniquelinearequiv--87612444add01b69eeb5f007.md) | 124 | `declaration-track:87612444add01b69eeb5f007888a6425837e16d260a41e04a11133c3c66c90b0` |
| 16 | `lemma` | [uniqueLinearEquiv_apply](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3661966ad493949463b99c35c7771bc0d3cb0574563d6a4b001bca69ef1b4dcf.lean/declarations/uniquelinearequiv-apply--2b8f676dceff7f8b85b1be70.md) | 130 | `result-track:2b8f676dceff7f8b85b1be707ea57e6474bce6307195395cf49ec308ff69c1d9` |
| 17 | `lemma` | [uniqueLinearEquiv_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3661966ad493949463b99c35c7771bc0d3cb0574563d6a4b001bca69ef1b4dcf.lean/declarations/uniquelinearequiv-symm-apply--dc7c20108c4f10938fec10e9.md) | 135 | `result-track:dc7c20108c4f10938fec10e930e5fc199961da7da5e5ce69d519bf5fdca5c19d` |
| 18 | `def` | [supported](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3661966ad493949463b99c35c7771bc0d3cb0574563d6a4b001bca69ef1b4dcf.lean/declarations/supported--ad60981d9580c816784f7f8f.md) | 142 | `declaration-track:ad60981d9580c816784f7f8fb761d11ce977794272c3e0ec8adcf0cf63db08ec` |
| 19 | `lemma` | [mem_supported](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3661966ad493949463b99c35c7771bc0d3cb0574563d6a4b001bca69ef1b4dcf.lean/declarations/mem-supported--39912351bc958c2d751bbb99.md) | 144 | `result-track:39912351bc958c2d751bbb996e253d7bfba7a899f161f00f5e2181acd874d87f` |
| 20 | `lemma` | [mem_supported'](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3661966ad493949463b99c35c7771bc0d3cb0574563d6a4b001bca69ef1b4dcf.lean/declarations/mem-supported--f33463680032d341977ffb21.md) | 147 | `result-track:f33463680032d341977ffb2121480a39a6fb6d14e3117f5fb557c4c5e89052c0` |
| 21 | `lemma` | [supported_eq_map](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3661966ad493949463b99c35c7771bc0d3cb0574563d6a4b001bca69ef1b4dcf.lean/declarations/supported-eq-map--f1b93570aa0a319bee9562f8.md) | 152 | `result-track:f1b93570aa0a319bee9562f835d965c4e86d12116e48f32c89c2d40286350209` |
| 22 | `lemma` | [supported_eq_span_single](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3661966ad493949463b99c35c7771bc0d3cb0574563d6a4b001bca69ef1b4dcf.lean/declarations/supported-eq-span-single--eceb1f8fb5c5cfa59162e4a6.md) | 159 | `result-track:eceb1f8fb5c5cfa59162e4a64d0e64ba932fba0032d11c82e7889d5dced6c68f` |
| 23 | `lemma` | [supported_mono](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3661966ad493949463b99c35c7771bc0d3cb0574563d6a4b001bca69ef1b4dcf.lean/declarations/supported-mono--558c74fb85a462cdd509f290.md) | 164 | `result-track:558c74fb85a462cdd509f2901d7ab48cb40da496a73744630b69ba1aaed510dc` |
| 24 | `def` | [supportedEquivFinsupp](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3661966ad493949463b99c35c7771bc0d3cb0574563d6a4b001bca69ef1b4dcf.lean/declarations/supportedequivfinsupp--be3a3536f588a2a70a51164a.md) | 174 | `declaration-track:be3a3536f588a2a70a51164af289a2b0a329464b963f9af45bddd31e90d6c372` |
| 25 | `instance` | [faithfulSMul](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3661966ad493949463b99c35c7771bc0d3cb0574563d6a4b001bca69ef1b4dcf.lean/declarations/faithfulsmul--7aebe091facbb15016695397.md) | 186 | `declaration-track:7aebe091facbb1501669539797bd8282db89056ea4ef0e9d56434a5a8b9a9621` |
| 26 | `def` | [basis](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3661966ad493949463b99c35c7771bc0d3cb0574563d6a4b001bca69ef1b4dcf.lean/declarations/basis--9e37cb072e6ecf71e3882a56.md) | 191 | `declaration-track:9e37cb072e6ecf71e3882a56f2f6d76a509d9bf3f9c92647c4e0e6a0af3e95b1` |
| 27 | `lemma` | [basis_apply](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3661966ad493949463b99c35c7771bc0d3cb0574563d6a4b001bca69ef1b4dcf.lean/declarations/basis-apply--88d23102d5dbdd13bf366e1b.md) | 195 | `result-track:88d23102d5dbdd13bf366e1b2efa7a53109af58db08a479f3a1f0f56cfc33820` |
| 28 | `def` | [comapDistribMulActionSelf](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3661966ad493949463b99c35c7771bc0d3cb0574563d6a4b001bca69ef1b4dcf.lean/declarations/comapdistribmulactionself--7210c5657033e547126594c7.md) | 205 | `declaration-track:7210c5657033e547126594c725c5384d3b3c105f7907a327f1d71128e3d50119` |
| 29 | `lemma` | [single_mem_span_single](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3661966ad493949463b99c35c7771bc0d3cb0574563d6a4b001bca69ef1b4dcf.lean/declarations/single-mem-span-single--1e131a8037846dd40e98d8c9.md) | 211 | `result-track:1e131a8037846dd40e98d8c9b95ff2f6f62c0243bd9f28ea9fc2143e1fb423f5` |
| 30 | `def` | [singleDistribMulActionHom](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3661966ad493949463b99c35c7771bc0d3cb0574563d6a4b001bca69ef1b4dcf.lean/declarations/singledistribmulactionhom--a6a08a5bd22cf46219cfaf5e.md) | 227 | `declaration-track:a6a08a5bd22cf46219cfaf5e75f283fb5e8b34febe421e8d4c44116d2a75cbc4` |
| 31 | `theorem` | [distribMulActionHom_ext'](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3661966ad493949463b99c35c7771bc0d3cb0574563d6a4b001bca69ef1b4dcf.lean/declarations/distribmulactionhom-ext--d864d4b47da9b3fb0c6d8b42.md) | 234 | `result-track:d864d4b47da9b3fb0c6d8b42c1efd49a1445dac0fe8d8a0fb413528769d3b0ac` |
| 32 | `def` | [lsingle](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3661966ad493949463b99c35c7771bc0d3cb0574563d6a4b001bca69ef1b4dcf.lean/declarations/lsingle--ad690d72bfcb7262a89be2aa.md) | 242 | `declaration-track:ad690d72bfcb7262a89be2aa803fe88b23979b4cf06245c92d4967347a8bfb11` |
| 33 | `lemma` | [lsingle_apply](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3661966ad493949463b99c35c7771bc0d3cb0574563d6a4b001bca69ef1b4dcf.lean/declarations/lsingle-apply--d50096dd143e7f6db206c11b.md) | 246 | `result-track:d50096dd143e7f6db206c11b124ea940961bcafde7a2e4eb9877a4df2090aab1` |
| 34 | `lemma` | [lhom_ext'](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3661966ad493949463b99c35c7771bc0d3cb0574563d6a4b001bca69ef1b4dcf.lean/declarations/lhom-ext--3def86ba29d6951cc7dda07a.md) | 252 | `result-track:3def86ba29d6951cc7dda07aeddada08e6e445789f6d3820ab23367b1661b2a7` |
| 35 | `lemma` | [smul_of](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3661966ad493949463b99c35c7771bc0d3cb0574563d6a4b001bca69ef1b4dcf.lean/declarations/smul-of--d3bb6b0a55a56343688859ff.md) | 262 | `result-track:d3bb6b0a55a56343688859ff232a3ae2976f3149067402ffdf0395fb3d4070e1` |
| 36 | `lemma` | [of_mem_span_of_iff](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3661966ad493949463b99c35c7771bc0d3cb0574563d6a4b001bca69ef1b4dcf.lean/declarations/of-mem-span-of-iff--07bd338400e89c458a45543e.md) | 266 | `result-track:07bd338400e89c458a45543ea50039c7fb3439562c4cfbae4a687f65be188883` |
| 37 | `lemma` | [mem_closure_of_mem_span_closure](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3661966ad493949463b99c35c7771bc0d3cb0574563d6a4b001bca69ef1b4dcf.lean/declarations/mem-closure-of-mem-span-closure--911af46bfc1efbf2b57f0c28.md) | 271 | `result-track:911af46bfc1efbf2b57f0c285227c5f4301cc6b5d9195fc4699501ee23e725ae` |
| 38 | `theorem` | [liftNC_smul](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3661966ad493949463b99c35c7771bc0d3cb0574563d6a4b001bca69ef1b4dcf.lean/declarations/liftnc-smul--9a2c1e501ca23eb12c4e3d0b.md) | 276 | `result-track:9a2c1e501ca23eb12c4e3d0b05724324c39a3ec12e590e25a2702147192505f0` |
| 39 | `instance` | [isScalarTower_self](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3661966ad493949463b99c35c7771bc0d3cb0574563d6a4b001bca69ef1b4dcf.lean/declarations/isscalartower-self--907612f8972891f6f2c1be43.md) | 292 | `declaration-track:907612f8972891f6f2c1be43b6dee5e7a11d7b8dbac7d015fae0666f18c77773` |
| 40 | `instance` | [smulCommClass_self](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3661966ad493949463b99c35c7771bc0d3cb0574563d6a4b001bca69ef1b4dcf.lean/declarations/smulcommclass-self--cf32d081ad04175019dc8387.md) | 300 | `declaration-track:cf32d081ad04175019dc8387e9569182cbd6a5b8cc4f2062521c77dd3ac5433b` |
| 41 | `instance` | [smulCommClass_symm_self](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3661966ad493949463b99c35c7771bc0d3cb0574563d6a4b001bca69ef1b4dcf.lean/declarations/smulcommclass-symm-self--77a86af5a91df55d2afee31d.md) | 305 | `declaration-track:77a86af5a91df55d2afee31da0c258b51c556e46e298be771ef0fd823e69729e` |
| 42 | `def` | [submoduleOfSMulMem](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3661966ad493949463b99c35c7771bc0d3cb0574563d6a4b001bca69ef1b4dcf.lean/declarations/submoduleofsmulmem--42a1de567df31ea99aa376b5.md) | 318 | `declaration-track:42a1de567df31ea99aa376b5e172f4ef0195ef84eb71104dd345a8d0dd8301ab` |
| 43 | `lemma` | [of'_mem_span](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3661966ad493949463b99c35c7771bc0d3cb0574563d6a4b001bca69ef1b4dcf.lean/declarations/of-mem-span--6ff6473ed2e6bba661165e93.md) | 340 | `result-track:6ff6473ed2e6bba661165e934fd09863cd5b97fab2d0e159c8a10b067f27df79` |
| 44 | `lemma` | [mem_closure_of_mem_span_closure](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3661966ad493949463b99c35c7771bc0d3cb0574563d6a4b001bca69ef1b4dcf.lean/declarations/mem-closure-of-mem-span-closure--632d7ee665a4d187f3da97dc.md) | 346 | `result-track:632d7ee665a4d187f3da97dcf979aa665cad3382d77519ed87b94486678910fe` |
| 45 | `lemma` | [liftNC_smul](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3661966ad493949463b99c35c7771bc0d3cb0574563d6a4b001bca69ef1b4dcf.lean/declarations/liftnc-smul--5954a750c440e7d6511338ec.md) | 357 | `result-track:5954a750c440e7d6511338ec858a67c4e78680ed5fad611529516a20743e4b19` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
