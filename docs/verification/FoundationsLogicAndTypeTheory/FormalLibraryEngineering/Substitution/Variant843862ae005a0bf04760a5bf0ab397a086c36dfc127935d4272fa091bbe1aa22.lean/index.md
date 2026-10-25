# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Substitution.Variant843862ae005a0bf04760a5bf0ab397a086c36dfc127935d4272fa091bbe1aa22

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "30ab4fede61eaf4d948c331bc018521c2f9e9acd",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variant843862ae005a0bf04760a5bf0ab397a086c36dfc127935d4272fa091bbe1aa22.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variant843862ae005a0bf04760a5bf0ab397a086c36dfc127935d4272fa091bbe1aa22.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variant843862ae005a0bf04760a5bf0ab397a086c36dfc127935d4272fa091bbe1aa22.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `30ab4fede61eaf4d948c331bc018521c2f9e9acd`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variant843862ae005a0bf04760a5bf0ab397a086c36dfc127935d4272fa091bbe1aa22.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variant843862ae005a0bf04760a5bf0ab397a086c36dfc127935d4272fa091bbe1aa22.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.TypeTheory.PureTypeSystem.Congruence` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [compSub](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variant843862ae005a0bf04760a5bf0ab397a086c36dfc127935d4272fa091bbe1aa22.lean/declarations/compsub--b87da77c599fecb5bc4f21a7.md) | 31 | `declaration-track:b87da77c599fecb5bc4f21a72d7cb8ed99bcf9fa9e46d54e4f8ef25cf5a510d6` |
| 2 | `theorem` | [subst_compSub](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variant843862ae005a0bf04760a5bf0ab397a086c36dfc127935d4272fa091bbe1aa22.lean/declarations/subst-compsub--9c4acf79dd6b175cc1a3baf4.md) | 32 | `result-track:9c4acf79dd6b175cc1a3baf4dc617572912a5f56a5f433db0a39839ace98cfda` |
| 3 | `theorem` | [lift_comp_cons](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variant843862ae005a0bf04760a5bf0ab397a086c36dfc127935d4272fa091bbe1aa22.lean/declarations/lift-comp-cons--dace01334ea1db685e2f1ca8.md) | 34 | `result-track:dace01334ea1db685e2f1ca88d79cf384751fc0d3e46b900edc25b75ff6ca0e8` |
| 4 | `theorem` | [raise_subst_cons](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variant843862ae005a0bf04760a5bf0ab397a086c36dfc127935d4272fa091bbe1aa22.lean/declarations/raise-subst-cons--4dfa4fbec2e9bbd85bb72b94.md) | 39 | `result-track:4dfa4fbec2e9bbd85bb72b94c0e55809039af930f4e90dbda0885f14192f9ca9` |
| 5 | `theorem` | [lift](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variant843862ae005a0bf04760a5bf0ab397a086c36dfc127935d4272fa091bbe1aa22.lean/declarations/lift--a3a600c26f7c5ea3de6393c1.md) | 49 | `result-track:a3a600c26f7c5ea3de6393c1b695a0e9669a8e5ead411a245e5bc4cb4c11deb9` |
| 6 | `def` | [GoodReplacement](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variant843862ae005a0bf04760a5bf0ab397a086c36dfc127935d4272fa091bbe1aa22.lean/declarations/goodreplacement--924ea93a1eb382793f317ffe.md) | 64 | `declaration-track:924ea93a1eb382793f317ffeb33de1b49eb953983fc9ef73cbb8c4b70a6c5e54` |
| 7 | `theorem` | [goodReplacement_lift](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variant843862ae005a0bf04760a5bf0ab397a086c36dfc127935d4272fa091bbe1aa22.lean/declarations/goodreplacement-lift--bf5c39863ab06502f87a49c1.md) | 69 | `result-track:bf5c39863ab06502f87a49c1aaa4c70ff4785f93b3d4157fe31f50145d10a0e4` |
| 8 | `theorem` | [neutral_readGood](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variant843862ae005a0bf04760a5bf0ab397a086c36dfc127935d4272fa091bbe1aa22.lean/declarations/neutral-readgood--21ff7af1bd59acba178629ed.md) | 104 | `result-track:21ff7af1bd59acba178629ed448ee200013af690f1890b4097b76bdda23819d7` |
| 9 | `theorem` | [sort_val_retarget](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variant843862ae005a0bf04760a5bf0ab397a086c36dfc127935d4272fa091bbe1aa22.lean/declarations/sort-val-retarget--f97ece29716f71f75a5e00ff.md) | 131 | `result-track:f97ece29716f71f75a5e00ff0801c2fe554fedaabc941d63c834bae135dfeaac` |
| 10 | `theorem` | [lookup_val_retarget](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variant843862ae005a0bf04760a5bf0ab397a086c36dfc127935d4272fa091bbe1aa22.lean/declarations/lookup-val-retarget--dd10b87db946963a7c8ebcc3.md) | 140 | `result-track:dd10b87db946963a7c8ebcc3a9411c1fa6173660b5829172e9b664473e81840c` |
| 11 | `theorem` | [abstractionAction_retarget](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variant843862ae005a0bf04760a5bf0ab397a086c36dfc127935d4272fa091bbe1aa22.lean/declarations/abstractionaction-retarget--c59982a09b77b852a5c73dce.md) | 149 | `result-track:c59982a09b77b852a5c73dce6c21314f2578879794bfb01326a8fad1a3b0bbdd` |
| 12 | `theorem` | [abstraction_val_retarget](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variant843862ae005a0bf04760a5bf0ab397a086c36dfc127935d4272fa091bbe1aa22.lean/declarations/abstraction-val-retarget--e572368fd4f2e7f9a6bdce0a.md) | 181 | `result-track:e572368fd4f2e7f9a6bdce0a2a59e72f35ca6e8096f60c269165d6e285645bbd` |
| 13 | `theorem` | [product_val_retarget](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variant843862ae005a0bf04760a5bf0ab397a086c36dfc127935d4272fa091bbe1aa22.lean/declarations/product-val-retarget--35ef3ef6fcfb94190cd2da87.md) | 194 | `result-track:35ef3ef6fcfb94190cd2da87c99c1b25381cde9d599f782f07eb631df65ff87a` |
| 14 | `theorem` | [application_val_retarget](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variant843862ae005a0bf04760a5bf0ab397a086c36dfc127935d4272fa091bbe1aa22.lean/declarations/application-val-retarget--ab27cb679f9600f617b5b143.md) | 211 | `result-track:ab27cb679f9600f617b5b143ecf0484c950010d82a1f9f911adfc9a848e14c48` |
| 15 | `theorem` | [preEvaluate_retarget_val](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variant843862ae005a0bf04760a5bf0ab397a086c36dfc127935d4272fa091bbe1aa22.lean/declarations/preevaluate-retarget-val--505c2d7c452c69884fa74e2f.md) | 229 | `result-track:505c2d7c452c69884fa74e2f9003660a52b19d0d492955222e56ab89516d3c26` |
| 16 | `theorem` | [preEvaluate_retarget_parameter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variant843862ae005a0bf04760a5bf0ab397a086c36dfc127935d4272fa091bbe1aa22.lean/declarations/preevaluate-retarget-parameter--faccea134e9f3aca83b21912.md) | 251 | `result-track:faccea134e9f3aca83b219126ee31bf6ead15ea790c767d4113ac7697b838ad2` |
| 17 | `structure` | [Assigned](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variant843862ae005a0bf04760a5bf0ab397a086c36dfc127935d4272fa091bbe1aa22.lean/declarations/assigned--d8568617d8ac41baad105b18.md) | 264 | `declaration-track:d8568617d8ac41baad105b189cb4ffa0493e9c8893aea50a155f8ab05f62d519` |
| 18 | `theorem` | [raw_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variant843862ae005a0bf04760a5bf0ab397a086c36dfc127935d4272fa091bbe1aa22.lean/declarations/raw-eq--bc74f8e74a3a7be1d0b2dbf2.md) | 275 | `result-track:bc74f8e74a3a7be1d0b2dbf212157dd386a8e3f40cd39099a2ac159d6b2b4873` |
| 19 | `theorem` | [normal_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variant843862ae005a0bf04760a5bf0ab397a086c36dfc127935d4272fa091bbe1aa22.lean/declarations/normal-eq--f9495b53d40f225b43cab0ec.md) | 278 | `result-track:f9495b53d40f225b43cab0ec4ea1efd9d232d4cc43c76ef762a12f47956885f3` |
| 20 | `theorem` | [cons](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variant843862ae005a0bf04760a5bf0ab397a086c36dfc127935d4272fa091bbe1aa22.lean/declarations/cons--5e543c8d18e5ff9312495116.md) | 282 | `result-track:5e543c8d18e5ff9312495116e6445041100a00bc402cae8ec7caaec738e590a5` |
| 21 | `theorem` | [preEvaluate_read_outside](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variant843862ae005a0bf04760a5bf0ab397a086c36dfc127935d4272fa091bbe1aa22.lean/declarations/preevaluate-read-outside--b6d85f4f35a5449b27a572df.md) | 320 | `result-track:b6d85f4f35a5449b27a572df025e8a13c479ecfa0e549e2f1e7e700570ea43c9` |
| 22 | `theorem` | [preEvaluate_neutral_read_inactive](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variant843862ae005a0bf04760a5bf0ab397a086c36dfc127935d4272fa091bbe1aa22.lean/declarations/preevaluate-neutral-read-inactive--7f4ede1fac9bc672a3c0bf48.md) | 337 | `result-track:7f4ede1fac9bc672a3c0bf4826baf5d1dcbc7b60eca82a2c368bceb54d697628` |
| 23 | `theorem` | [readGood_outside](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variant843862ae005a0bf04760a5bf0ab397a086c36dfc127935d4272fa091bbe1aa22.lean/declarations/readgood-outside--5d42d165c552e3242ca89134.md) | 360 | `result-track:5d42d165c552e3242ca89134ac461455b5ea169b8cd63cfc8f28da9268c98eb5` |
| 24 | `abbrev` | [ProductGood](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variant843862ae005a0bf04760a5bf0ab397a086c36dfc127935d4272fa091bbe1aa22.lean/declarations/productgood--ab46495081d381e93da45b02.md) | 371 | `declaration-track:ab46495081d381e93da45b02e5d67075657e22813170f78d21e46306c8f85cdc` |
| 25 | `theorem` | [goodness_subst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variant843862ae005a0bf04760a5bf0ab397a086c36dfc127935d4272fa091bbe1aa22.lean/declarations/goodness-subst--ec2388c407916db06d482a34.md) | 378 | `result-track:ec2388c407916db06d482a34384c8d4888c1af0221d593cd5ef45d358128fca5` |
| 26 | `theorem` | [baseRead_substitution](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variant843862ae005a0bf04760a5bf0ab397a086c36dfc127935d4272fa091bbe1aa22.lean/declarations/baseread-substitution--a4e7c775f2e7ff252bb2001c.md) | 503 | `result-track:a4e7c775f2e7ff252bb2001c8c875611806cef4d092fe6603d7547edc6f1531d` |
| 27 | `theorem` | [preEvaluate_subst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variant843862ae005a0bf04760a5bf0ab397a086c36dfc127935d4272fa091bbe1aa22.lean/declarations/preevaluate-subst--0148b01774c6d93644f67932.md) | 538 | `result-track:0148b01774c6d93644f67932376988f744e39bb73105150290ac4f86ab19926f` |
| 28 | `theorem` | [comp_single](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variant843862ae005a0bf04760a5bf0ab397a086c36dfc127935d4272fa091bbe1aa22.lean/declarations/comp-single--70e3f94f932c102eeab2e7c9.md) | 674 | `result-track:70e3f94f932c102eeab2e7c9ecfe66ede2e336cf386850221356ed75da87667f` |
| 29 | `def` | [single](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variant843862ae005a0bf04760a5bf0ab397a086c36dfc127935d4272fa091bbe1aa22.lean/declarations/single--42938d6e4df7b6ddeffddfb4.md) | 683 | `declaration-track:42938d6e4df7b6ddeffddfb4bf9fb62a7c522d2dea90cfecc5f67fb45ae3c8ab` |
| 30 | `theorem` | [goodness_recontext](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variant843862ae005a0bf04760a5bf0ab397a086c36dfc127935d4272fa091bbe1aa22.lean/declarations/goodness-recontext--172543893502c905528b0efe.md) | 705 | `result-track:172543893502c905528b0efe99d824832575d3b422b39131e9b4da97889022b3` |
| 31 | `theorem` | [single_guard](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variant843862ae005a0bf04760a5bf0ab397a086c36dfc127935d4272fa091bbe1aa22.lean/declarations/single-guard--36d0975b80ff8c2571abccb8.md) | 740 | `result-track:36d0975b80ff8c2571abccb838c93207ee0391b5879313cc9c55f1babb142243` |
| 32 | `theorem` | [single_goodReplacement](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variant843862ae005a0bf04760a5bf0ab397a086c36dfc127935d4272fa091bbe1aa22.lean/declarations/single-goodreplacement--207206a3f03fd9a7d9b72d0f.md) | 752 | `result-track:207206a3f03fd9a7d9b72d0f424eed835b13b7405bbe61f53d80d283f1eef31b` |
| 33 | `theorem` | [single_assigned](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variant843862ae005a0bf04760a5bf0ab397a086c36dfc127935d4272fa091bbe1aa22.lean/declarations/single-assigned--79a9e1a06105fd94ccce0956.md) | 766 | `result-track:79a9e1a06105fd94ccce095682c856fd46daa8153af105f9975c8c6fdf02e1b3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
