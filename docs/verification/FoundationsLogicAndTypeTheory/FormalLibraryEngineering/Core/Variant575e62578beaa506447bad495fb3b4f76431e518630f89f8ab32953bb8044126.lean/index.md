# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Core.Variant575e62578beaa506447bad495fb3b4f76431e518630f89f8ab32953bb8044126

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a98a614905f1f7d4fcd4ece948c2b69d41e7837f",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant575e62578beaa506447bad495fb3b4f76431e518630f89f8ab32953bb8044126.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant575e62578beaa506447bad495fb3b4f76431e518630f89f8ab32953bb8044126.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant575e62578beaa506447bad495fb3b4f76431e518630f89f8ab32953bb8044126.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a98a614905f1f7d4fcd4ece948c2b69d41e7837f`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant575e62578beaa506447bad495fb3b4f76431e518630f89f8ab32953bb8044126.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant575e62578beaa506447bad495fb3b4f76431e518630f89f8ab32953bb8044126.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Tactic.Grind.Inv` — import line 14; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.PP` — import line 15; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Ctor` — import line 16; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Beta` — import line 17; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Simp` — import line 18; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Internalize` — import line 19; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 20; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [invertTrans](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant575e62578beaa506447bad495fb3b4f76431e518630f89f8ab32953bb8044126.lean/declarations/inverttrans--80a04734c80ac69877a464be.md) | 34 | `declaration-track:80a04734c80ac69877a464be08749934b614990b352c50324a5d756095ca4904` |
| 2 | `def` | [isCongrRelevant](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant575e62578beaa506447bad495fb3b4f76431e518630f89f8ab32953bb8044126.lean/declarations/iscongrrelevant--360dfdfdaa902795e915d65a.md) | 50 | `declaration-track:360dfdfdaa902795e915d65a64af80dc5ee6e198d48bcc8c646df8df5eca886b` |
| 3 | `def` | [removeParents](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant575e62578beaa506447bad495fb3b4f76431e518630f89f8ab32953bb8044126.lean/declarations/removeparents--b0b33429bc1e453271415818.md) | 57 | `declaration-track:b0b33429bc1e453271415818484e8c6011f506aa902e80f9ac233a046cde1c31` |
| 4 | `def` | [reinsertParents](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant575e62578beaa506447bad495fb3b4f76431e518630f89f8ab32953bb8044126.lean/declarations/reinsertparents--79405aec7cf8812b249c5e82.md) | 70 | `declaration-track:79405aec7cf8812b249c5e828931b0be1da6762348c4756b4bdd361dd7ab792e` |
| 5 | `def` | [closeGoalWithTrueEqFalse](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant575e62578beaa506447bad495fb3b4f76431e518630f89f8ab32953bb8044126.lean/declarations/closegoalwithtrueeqfalse--d42949dd0377fdb7c55bbdf0.md) | 77 | `declaration-track:d42949dd0377fdb7c55bbdf0ad61fa79363ff6d84de9516663b731f28fb9fe8e` |
| 6 | `def` | [closeGoalWithValuesEq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant575e62578beaa506447bad495fb3b4f76431e518630f89f8ab32953bb8044126.lean/declarations/closegoalwithvalueseq--b1413fbfa41732c41a68c6ac.md) | 88 | `declaration-track:b1413fbfa41732c41a68c6ace704ec654a340600f060b6139115482e2644ef5a` |
| 7 | `def` | [updateMT](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant575e62578beaa506447bad495fb3b4f76431e518630f89f8ab32953bb8044126.lean/declarations/updatemt--96ecc70b8f6b69ec5171a89e.md) | 100 | `declaration-track:96ecc70b8f6b69ec5171a89e5dd86bf37ebf8b3a930fa79a918bb851e7adf832` |
| 8 | `def` | [propagateBeta](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant575e62578beaa506447bad495fb3b4f76431e518630f89f8ab32953bb8044126.lean/declarations/propagatebeta--d8ab37b8d85cea381d6d87d6.md) | 112 | `declaration-track:d8ab37b8d85cea381d6d87d6e722e0e9d91a3c062685223c28a0405f9f05bca1` |
| 9 | `def` | [getFunWithGivenDomain?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant575e62578beaa506447bad495fb3b4f76431e518630f89f8ab32953bb8044126.lean/declarations/getfunwithgivendomain--f33c36d50cde7a7e7fd7acfb.md) | 137 | `declaration-track:f33c36d50cde7a7e7fd7acfbd124d9d91e2f7ec304684a5c6328353760cffbdd` |
| 10 | `def` | [propagateUnitConstFuns](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant575e62578beaa506447bad495fb3b4f76431e518630f89f8ab32953bb8044126.lean/declarations/propagateunitconstfuns--9ed16d508c07ec4b16998ae6.md) | 142 | `declaration-track:9ed16d508c07ec4b16998ae6c077d5c53047b4c4539962177b44ebd22ba94415` |
| 11 | `def` | [addEqStep](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant575e62578beaa506447bad495fb3b4f76431e518630f89f8ab32953bb8044126.lean/declarations/addeqstep--335e18646dcf178036189cbb.md) | 165 | `declaration-track:335e18646dcf178036189cbb14eb3a271d41384d080023f5cbb6dd77fcdd66da` |
| 12 | `def` | [resetNewFacts](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant575e62578beaa506447bad495fb3b4f76431e518630f89f8ab32953bb8044126.lean/declarations/resetnewfacts--6a4cf7dbe544e309231551db.md) | 290 | `declaration-track:6a4cf7dbe544e309231551db724b5164f861defea3a6da41f58308dd9ef010b5` |
| 13 | `def` | [popNextFact?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant575e62578beaa506447bad495fb3b4f76431e518630f89f8ab32953bb8044126.lean/declarations/popnextfact--c949a694a11fdef913c4fbaa.md) | 294 | `declaration-track:c949a694a11fdef913c4fbaaada08b2a459fde0a3862a7a1eb07a588d77a7c84` |
| 14 | `def` | [addEqCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant575e62578beaa506447bad495fb3b4f76431e518630f89f8ab32953bb8044126.lean/declarations/addeqcore--fce75866bc15db3909cfef92.md) | 300 | `declaration-track:fce75866bc15db3909cfef92f055e04dcebba11aff6eda10b80d3fc4998a0a85` |
| 15 | `def` | [addEq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant575e62578beaa506447bad495fb3b4f76431e518630f89f8ab32953bb8044126.lean/declarations/addeq--31aff34ce4c3715189a0cf89.md) | 305 | `declaration-track:31aff34ce4c3715189a0cf89bd97b0c729bd9aee232d5e08aff01e695d61e2f7` |
| 16 | `def` | [addHEq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant575e62578beaa506447bad495fb3b4f76431e518630f89f8ab32953bb8044126.lean/declarations/addheq--275387826cafb5f601735fc9.md) | 309 | `declaration-track:275387826cafb5f601735fc9a37c0484b017127b48c901b97e7adc09e2d831b9` |
| 17 | `def` | [storeFact](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant575e62578beaa506447bad495fb3b4f76431e518630f89f8ab32953bb8044126.lean/declarations/storefact--480123b964c76ed48afee12c.md) | 313 | `declaration-track:480123b964c76ed48afee12ca0f20db999cc2e19269b052693f8f95942783792` |
| 18 | `def` | [addNewEq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant575e62578beaa506447bad495fb3b4f76431e518630f89f8ab32953bb8044126.lean/declarations/addneweq--84b389a524da4a3eed849fe0.md) | 317 | `declaration-track:84b389a524da4a3eed849fe01ebed2c87eadbc1bd33f4fbc5946080a157aebb0` |
| 19 | `def` | [addFactStep](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant575e62578beaa506447bad495fb3b4f76431e518630f89f8ab32953bb8044126.lean/declarations/addfactstep--ffd13b2305736e9f842eabeb.md) | 324 | `declaration-track:ffd13b2305736e9f842eabeb29fb2779fe81c24afc889fcd29da38c0fa09dab5` |
| 20 | `def` | [processNewFactsImpl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant575e62578beaa506447bad495fb3b4f76431e518630f89f8ab32953bb8044126.lean/declarations/processnewfactsimpl--84b82dfd290a058635e94909.md) | 373 | `declaration-track:84b82dfd290a058635e9490908e6b4b77071f2d5871cfaaef9d1a3aa2ff2a200` |
| 21 | `def` | [add](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant575e62578beaa506447bad495fb3b4f76431e518630f89f8ab32953bb8044126.lean/declarations/add--f5fc41dedd4a412536f8ca3e.md) | 385 | `declaration-track:f5fc41dedd4a412536f8ca3eac7fd2d83546b8ea59720713e1592e8a1651374b` |
| 22 | `def` | [addHypothesis](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant575e62578beaa506447bad495fb3b4f76431e518630f89f8ab32953bb8044126.lean/declarations/addhypothesis--b0a488b1ba956bc0625fee25.md) | 392 | `declaration-track:b0a488b1ba956bc0625fee2555c504d0d77a05ae4a248486337c81b96c618661` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
