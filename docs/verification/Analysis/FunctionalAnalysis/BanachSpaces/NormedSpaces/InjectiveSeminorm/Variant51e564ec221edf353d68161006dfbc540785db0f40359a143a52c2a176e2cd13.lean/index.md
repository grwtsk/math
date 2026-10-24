# Verification target: GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.InjectiveSeminorm.Variant51e564ec221edf353d68161006dfbc540785db0f40359a143a52c2a176e2cd13

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c24595b665c1e32d941023a2cff6c0858f663391",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/InjectiveSeminorm/Variant51e564ec221edf353d68161006dfbc540785db0f40359a143a52c2a176e2cd13.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/InjectiveSeminorm/Variant51e564ec221edf353d68161006dfbc540785db0f40359a143a52c2a176e2cd13.lean/index.md) · [Full source](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/InjectiveSeminorm/Variant51e564ec221edf353d68161006dfbc540785db0f40359a143a52c2a176e2cd13.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c24595b665c1e32d941023a2cff6c0858f663391`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/InjectiveSeminorm/Variant51e564ec221edf353d68161006dfbc540785db0f40359a143a52c2a176e2cd13.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/InjectiveSeminorm/Variant51e564ec221edf353d68161006dfbc540785db0f40359a143a52c2a176e2cd13.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.NormedSpace.PiTensorProduct.ProjectiveSeminorm` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Isomorphisms` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toDualContinuousMultilinearMap](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/InjectiveSeminorm/Variant51e564ec221edf353d68161006dfbc540785db0f40359a143a52c2a176e2cd13.lean/declarations/todualcontinuousmultilinearmap--931aadbe7915b6bac43c605a.md) | 95 | `declaration-track:931aadbe7915b6bac43c605ac6ad711b77c1e45e94f6876c0a748c878e952397` |
| 2 | `theorem` | [toDualContinuousMultilinearMap_le_projectiveSeminorm](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/InjectiveSeminorm/Variant51e564ec221edf353d68161006dfbc540785db0f40359a143a52c2a176e2cd13.lean/declarations/todualcontinuousmultilinearmap-le-projectiveseminorm--399c206652e291053ef914c4.md) | 117 | `result-track:399c206652e291053ef914c40d8a5768806f5f3348a374f84f56fd25e6a25ed0` |
| 3 | `lemma` | [dualSeminorms_bounded](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/InjectiveSeminorm/Variant51e564ec221edf353d68161006dfbc540785db0f40359a143a52c2a176e2cd13.lean/declarations/dualseminorms-bounded--2fb9e4305a4b2aaa8ce29fde.md) | 132 | `result-track:2fb9e4305a4b2aaa8ce29fded9d734aa276df3fdc752c37704aa67f4df89a6c0` |
| 4 | `theorem` | [injectiveSeminorm_apply](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/InjectiveSeminorm/Variant51e564ec221edf353d68161006dfbc540785db0f40359a143a52c2a176e2cd13.lean/declarations/injectiveseminorm-apply--3b5aa1085eb76c22d07c6cf2.md) | 145 | `result-track:3b5aa1085eb76c22d07c6cf2680af6bf6a01a7155ae84314ca793671dae81878` |
| 5 | `theorem` | [norm_eval_le_injectiveSeminorm](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/InjectiveSeminorm/Variant51e564ec221edf353d68161006dfbc540785db0f40359a143a52c2a176e2cd13.lean/declarations/norm-eval-le-injectiveseminorm--4b34c43cf30047493f5c9f20.md) | 153 | `result-track:4b34c43cf30047493f5c9f20fae72fc2699516fcf343e6e039084bed6e480f3d` |
| 6 | `theorem` | [injectiveSeminorm_le_projectiveSeminorm](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/InjectiveSeminorm/Variant51e564ec221edf353d68161006dfbc540785db0f40359a143a52c2a176e2cd13.lean/declarations/injectiveseminorm-le-projectiveseminorm--3333bedab72aca931b296178.md) | 206 | `result-track:3333bedab72aca931b2961783f82d589557188ab7b1400a0ce3322559e068c3d` |
| 7 | `theorem` | [injectiveSeminorm_tprod_le](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/InjectiveSeminorm/Variant51e564ec221edf353d68161006dfbc540785db0f40359a143a52c2a176e2cd13.lean/declarations/injectiveseminorm-tprod-le--17d5226afcc6c7a0a0c3e564.md) | 222 | `result-track:17d5226afcc6c7a0a0c3e564b548d275fc651fcf6e1206f2c990a9d5d2490057` |
| 8 | `instance` | [(anonymous)](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/InjectiveSeminorm/Variant51e564ec221edf353d68161006dfbc540785db0f40359a143a52c2a176e2cd13.lean/declarations/instance--7a4dbf1b4c6e26d3f6ee930b.md) | 226 | `declaration-track:7a4dbf1b4c6e26d3f6ee930bd10420b39b24b7a5a51cf73b5855d4b5bd7b8262` |
| 9 | `instance` | [(anonymous)](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/InjectiveSeminorm/Variant51e564ec221edf353d68161006dfbc540785db0f40359a143a52c2a176e2cd13.lean/declarations/instance--9b4a7f7d8b2676893c3c8f4d.md) | 229 | `declaration-track:9b4a7f7d8b2676893c3c8f4d1971c4c5b18dc63ef059da7842c89bc136435557` |
| 10 | `def` | [liftEquiv](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/InjectiveSeminorm/Variant51e564ec221edf353d68161006dfbc540785db0f40359a143a52c2a176e2cd13.lean/declarations/liftequiv--e25c77bc63254fadebc1a821.md) | 241 | `declaration-track:e25c77bc63254fadebc1a821c94f2c9e8045291a8aa9f5252e488a9384044c37` |
| 11 | `def` | [liftIsometry](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/InjectiveSeminorm/Variant51e564ec221edf353d68161006dfbc540785db0f40359a143a52c2a176e2cd13.lean/declarations/liftisometry--57288db8653a10ec636eb3ac.md) | 266 | `declaration-track:57288db8653a10ec636eb3ac1a3921f08225e3759be3b58d5f42a3cfd7ae334b` |
| 12 | `theorem` | [liftIsometry_apply_apply](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/InjectiveSeminorm/Variant51e564ec221edf353d68161006dfbc540785db0f40359a143a52c2a176e2cd13.lean/declarations/liftisometry-apply-apply--de6ca9b00f178e3b4583b37f.md) | 280 | `result-track:de6ca9b00f178e3b4583b37f52369a2ac84c5f5c1b5d703e42f4908bc9d52fa1` |
| 13 | `def` | [tprodL](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/InjectiveSeminorm/Variant51e564ec221edf353d68161006dfbc540785db0f40359a143a52c2a176e2cd13.lean/declarations/tprodl--56ebc5432204791428c143ed.md) | 289 | `declaration-track:56ebc5432204791428c143ed45676169f9df57c5a0d0d1b6bc86ccccd5033cc1` |
| 14 | `theorem` | [tprodL_coe](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/InjectiveSeminorm/Variant51e564ec221edf353d68161006dfbc540785db0f40359a143a52c2a176e2cd13.lean/declarations/tprodl-coe--2c5cf75b0e2a6d6a6518c070.md) | 293 | `result-track:2c5cf75b0e2a6d6a6518c070f61a6f9582793b14a7c362fb64793da0c38be11c` |
| 15 | `theorem` | [liftIsometry_symm_apply](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/InjectiveSeminorm/Variant51e564ec221edf353d68161006dfbc540785db0f40359a143a52c2a176e2cd13.lean/declarations/liftisometry-symm-apply--7a2a3d48b230fd58aa53f079.md) | 298 | `result-track:7a2a3d48b230fd58aa53f07949be666106e5262cc57f1293fb98420b3f750c91` |
| 16 | `theorem` | [liftIsometry_tprodL](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/InjectiveSeminorm/Variant51e564ec221edf353d68161006dfbc540785db0f40359a143a52c2a176e2cd13.lean/declarations/liftisometry-tprodl--c30b8f84226586eee7da9e4f.md) | 307 | `result-track:c30b8f84226586eee7da9e4fc295c4e08732c6ad7034eda575c030957f33fa59` |
| 17 | `def` | [mapL](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/InjectiveSeminorm/Variant51e564ec221edf353d68161006dfbc540785db0f40359a143a52c2a176e2cd13.lean/declarations/mapl--8d0038976ebabbaaac7a79a2.md) | 328 | `declaration-track:8d0038976ebabbaaac7a79a2ba22b328713109604a3fd2ec9ec53e8d0661c220` |
| 18 | `theorem` | [mapL_coe](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/InjectiveSeminorm/Variant51e564ec221edf353d68161006dfbc540785db0f40359a143a52c2a176e2cd13.lean/declarations/mapl-coe--e8a9ca3001e9f3329caa8bdb.md) | 332 | `result-track:e8a9ca3001e9f3329caa8bdb55b3e0a40f7cd3c71e525d0cfee868e3e5b46fbf` |
| 19 | `theorem` | [mapL_apply](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/InjectiveSeminorm/Variant51e564ec221edf353d68161006dfbc540785db0f40359a143a52c2a176e2cd13.lean/declarations/mapl-apply--3b24e9f720f482c6e268a1d9.md) | 339 | `result-track:3b24e9f720f482c6e268a1d90185ba3b71d17f237cc148e05b111268f9ea1b15` |
| 20 | `def` | [mapLIncl](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/InjectiveSeminorm/Variant51e564ec221edf353d68161006dfbc540785db0f40359a143a52c2a176e2cd13.lean/declarations/maplincl--09a52c4376e7ad729c73eb88.md) | 351 | `declaration-track:09a52c4376e7ad729c73eb88c92bd5e9ee7437ed0ced041afaed987fea49cd51` |
| 21 | `theorem` | [mapL_comp](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/InjectiveSeminorm/Variant51e564ec221edf353d68161006dfbc540785db0f40359a143a52c2a176e2cd13.lean/declarations/mapl-comp--0247465a3438e3fc730bd94b.md) | 354 | `result-track:0247465a3438e3fc730bd94ba8561610fbc0c9c0f07ecf0c2d645f185034c379` |
| 22 | `theorem` | [liftIsometry_comp_mapL](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/InjectiveSeminorm/Variant51e564ec221edf353d68161006dfbc540785db0f40359a143a52c2a176e2cd13.lean/declarations/liftisometry-comp-mapl--8f639da0591f593d7c3bc09a.md) | 360 | `result-track:8f639da0591f593d7c3bc09a1921a73aab2caa680b8361f6822900b8bea511f9` |
| 23 | `theorem` | [mapL_id](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/InjectiveSeminorm/Variant51e564ec221edf353d68161006dfbc540785db0f40359a143a52c2a176e2cd13.lean/declarations/mapl-id--d61461fb3f7990fa673e917d.md) | 370 | `result-track:d61461fb3f7990fa673e917db80fd2d547fba37d5d40d3c9d88435ec19d7e91d` |
| 24 | `theorem` | [mapL_one](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/InjectiveSeminorm/Variant51e564ec221edf353d68161006dfbc540785db0f40359a143a52c2a176e2cd13.lean/declarations/mapl-one--364a1b241124e9767c4526e4.md) | 377 | `result-track:364a1b241124e9767c4526e4c571cde9dc5cc0254ec20de21c67ab9aa88a27e0` |
| 25 | `theorem` | [mapL_mul](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/InjectiveSeminorm/Variant51e564ec221edf353d68161006dfbc540785db0f40359a143a52c2a176e2cd13.lean/declarations/mapl-mul--71afc31649ec40ece4af61ab.md) | 380 | `result-track:71afc31649ec40ece4af61abc34baea06494f080dab8a376ed6d8ebecbc22252` |
| 26 | `def` | [mapLMonoidHom](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/InjectiveSeminorm/Variant51e564ec221edf353d68161006dfbc540785db0f40359a143a52c2a176e2cd13.lean/declarations/maplmonoidhom--8cd38b9fb865ca99629e25c4.md) | 386 | `declaration-track:8cd38b9fb865ca99629e25c4ca49bb7075cd87ad723b3d91379418a5d3112245` |
| 27 | `theorem` | [mapL_pow](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/InjectiveSeminorm/Variant51e564ec221edf353d68161006dfbc540785db0f40359a143a52c2a176e2cd13.lean/declarations/mapl-pow--5051b28a7b751241e82df16b.md) | 392 | `result-track:5051b28a7b751241e82df16bf86d75d25b14f32dfadf775823f3369a91fd9bf9` |
| 28 | `theorem` | [mapL_add_smul_aux](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/InjectiveSeminorm/Variant51e564ec221edf353d68161006dfbc540785db0f40359a143a52c2a176e2cd13.lean/declarations/mapl-add-smul-aux--0595bf90f0678c40aece4515.md) | 398 | `result-track:0595bf90f0678c40aece4515a23be23edf133376781b36fe0753e77348877835` |
| 29 | `theorem` | [mapL_add](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/InjectiveSeminorm/Variant51e564ec221edf353d68161006dfbc540785db0f40359a143a52c2a176e2cd13.lean/declarations/mapl-add--1f0632057297a530a066212c.md) | 412 | `result-track:1f0632057297a530a066212c2ceee803843d0cfe8b8d4421f165fc63f3ab6fb2` |
| 30 | `theorem` | [mapL_smul](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/InjectiveSeminorm/Variant51e564ec221edf353d68161006dfbc540785db0f40359a143a52c2a176e2cd13.lean/declarations/mapl-smul--92cb66e1dbb5fe02cf61e8e6.md) | 419 | `result-track:92cb66e1dbb5fe02cf61e8e613b53311f545b0ec0537253037ec9cba40c701a8` |
| 31 | `theorem` | [mapL_opNorm](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/InjectiveSeminorm/Variant51e564ec221edf353d68161006dfbc540785db0f40359a143a52c2a176e2cd13.lean/declarations/mapl-opnorm--3c1956c91d625d9177e56925.md) | 426 | `result-track:3c1956c91d625d9177e569258a1967ba7841de362f91ad5243c2237d87f976d8` |
| 32 | `def` | [mapLMultilinear](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/InjectiveSeminorm/Variant51e564ec221edf353d68161006dfbc540785db0f40359a143a52c2a176e2cd13.lean/declarations/maplmultilinear--d08902fb35cd10273e78fa64.md) | 446 | `declaration-track:d08902fb35cd10273e78fa644dbc11a56e955ccbf91969afe51e07e9e6fc1d54` |
| 33 | `theorem` | [mapLMultilinear_opNorm](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/InjectiveSeminorm/Variant51e564ec221edf353d68161006dfbc540785db0f40359a143a52c2a176e2cd13.lean/declarations/maplmultilinear-opnorm--c0df4323c4b6f620d313295c.md) | 456 | `result-track:c0df4323c4b6f620d313295c3ce956e4172fcf6d08e1172d363d2be3d9c9c31f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
