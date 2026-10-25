# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Split.Variant3771491be3e97f9f1c1210d4d1441e3e727f212218057e542d3664816e1521c1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "58a23e2bf9d941430528ccb8251751f3f5565078",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Split/Variant3771491be3e97f9f1c1210d4d1441e3e727f212218057e542d3664816e1521c1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Split/Variant3771491be3e97f9f1c1210d4d1441e3e727f212218057e542d3664816e1521c1.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Split/Variant3771491be3e97f9f1c1210d4d1441e3e727f212218057e542d3664816e1521c1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `58a23e2bf9d941430528ccb8251751f3f5565078`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Split/Variant3771491be3e97f9f1c1210d4d1441e3e727f212218057e542d3664816e1521c1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Split/Variant3771491be3e97f9f1c1210d4d1441e3e727f212218057e542d3664816e1521c1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Tactic.Simp.Main` — import line 18; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.SplitIf` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [getSimpMatchContext](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Split/Variant3771491be3e97f9f1c1210d4d1441e3e727f212218057e542d3664816e1521c1.lean/declarations/getsimpmatchcontext--7f0d2b55b1b22048e22c7842.md) | 29 | `declaration-track:7f0d2b55b1b22048e22c784201bf0d1d952913b8f4fc43a726a703bfc403f59b` |
| 2 | `def` | [simpMatch](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Split/Variant3771491be3e97f9f1c1210d4d1441e3e727f212218057e542d3664816e1521c1.lean/declarations/simpmatch--842f73931820248188dd74f7.md) | 35 | `declaration-track:842f73931820248188dd74f79bd494d7941660fafb2b0fc135020c5c99d01832` |
| 3 | `def` | [simpMatchTarget](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Split/Variant3771491be3e97f9f1c1210d4d1441e3e727f212218057e542d3664816e1521c1.lean/declarations/simpmatchtarget--20e919483b8bef428e93c499.md) | 48 | `declaration-track:20e919483b8bef428e93c499237689fca9db337117f5883bb36bfa074895ffdf` |
| 4 | `def` | [simpMatchCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Split/Variant3771491be3e97f9f1c1210d4d1441e3e727f212218057e542d3664816e1521c1.lean/declarations/simpmatchcore--db60045d60eb859cb14bdd93.md) | 53 | `declaration-track:db60045d60eb859cb14bdd936315155e66828f8a2e039811044126855c2fc673` |
| 5 | `def` | [simpMatchTargetCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Split/Variant3771491be3e97f9f1c1210d4d1441e3e727f212218057e542d3664816e1521c1.lean/declarations/simpmatchtargetcore--02ea3ad942a12eb1d33235e7.md) | 76 | `declaration-track:02ea3ad942a12eb1d33235e71fd8b86ee751bc7dd567aacade71d3c67ef11d10` |
| 6 | `def` | [withEqs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Split/Variant3771491be3e97f9f1c1210d4d1441e3e727f212218057e542d3664816e1521c1.lean/declarations/witheqs--2ca67ba1495b1146f891b9e4.md) | 84 | `declaration-track:2ca67ba1495b1146f891b9e405aac36b3289ebea0af1f96b40ea9e11882fed28` |
| 7 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Split/Variant3771491be3e97f9f1c1210d4d1441e3e727f212218057e542d3664816e1521c1.lean/declarations/builtin-initialize--357c9e5a8e75ef5d2fffc7fa.md) | 98 | `declaration-track:357c9e5a8e75ef5d2fffc7faa628f84fba820c1bd47f4b6ca468429c689462e3` |
| 8 | `def` | [isDiscrGenException](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Split/Variant3771491be3e97f9f1c1210d4d1441e3e727f212218057e542d3664816e1521c1.lean/declarations/isdiscrgenexception--5376e920b9f4738e1f6ebe9c.md) | 101 | `declaration-track:5376e920b9f4738e1f6ebe9cae8082fa905beeb9f759ce465f265ef084b8fe25` |
| 9 | `def` | [throwInternalMisuseError](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Split/Variant3771491be3e97f9f1c1210d4d1441e3e727f212218057e542d3664816e1521c1.lean/declarations/throwinternalmisuseerror--00d955a4912a239b6fa8cfed.md) | 107 | `declaration-track:00d955a4912a239b6fa8cfed6a7cb83289103a2fa0756ade10764db79aa0a49a` |
| 10 | `def` | [generalizeMatchPropDiscrs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Split/Variant3771491be3e97f9f1c1210d4d1441e3e727f212218057e542d3664816e1521c1.lean/declarations/generalizematchpropdiscrs--ebf225d70f08f1243a59abe8.md) | 115 | `declaration-track:ebf225d70f08f1243a59abe80b772f540d9989516c776b43f5081609495257ee` |
| 11 | `def` | [generalizeMatchDiscrs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Split/Variant3771491be3e97f9f1c1210d4d1441e3e727f212218057e542d3664816e1521c1.lean/declarations/generalizematchdiscrs--bd92ee86ba626578949eb998.md) | 158 | `declaration-track:bd92ee86ba626578949eb99808e6bd61e369eadcd7e058ab0a006e5e078d5a04` |
| 12 | `def` | [substDiscrEqs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Split/Variant3771491be3e97f9f1c1210d4d1441e3e727f212218057e542d3664816e1521c1.lean/declarations/substdiscreqs--d36340ad4f57c8bc4d32d40f.md) | 246 | `declaration-track:d36340ad4f57c8bc4d32d40f49871d60687e1626d133542e1c4f33ff26db55fd` |
| 13 | `def` | [applyMatchSplitter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Split/Variant3771491be3e97f9f1c1210d4d1441e3e727f212218057e542d3664816e1521c1.lean/declarations/applymatchsplitter--4b8929eb52ef70d79d07a0a4.md) | 260 | `declaration-track:4b8929eb52ef70d79d07a0a4d2ae6ec0c82e9f7a792fac8d99a56f821af15336` |
| 14 | `def` | [mkDiscrGenErrorMsg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Split/Variant3771491be3e97f9f1c1210d4d1441e3e727f212218057e542d3664816e1521c1.lean/declarations/mkdiscrgenerrormsg--5cc3fe8c72a88c70a0fdee95.md) | 314 | `declaration-track:5cc3fe8c72a88c70a0fdee95fd75bd21f9c5c17c93d65125824b6c4fa0b0d818` |
| 15 | `def` | [throwDiscrGenError](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Split/Variant3771491be3e97f9f1c1210d4d1441e3e727f212218057e542d3664816e1521c1.lean/declarations/throwdiscrgenerror--fc8e4c6245538db4e2c75334.md) | 317 | `declaration-track:fc8e4c6245538db4e2c75334c7d8b880ced0e4692f4125d12d4e471a2ec22c5b` |
| 16 | `def` | [splitMatch](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Split/Variant3771491be3e97f9f1c1210d4d1441e3e727f212218057e542d3664816e1521c1.lean/declarations/splitmatch--7d41ee4b278c6bb334bcf503.md) | 320 | `declaration-track:7d41ee4b278c6bb334bcf503c351699476063f346bbe4c35f93a6ff0e4d41f83` |
| 17 | `def` | [splitTarget?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Split/Variant3771491be3e97f9f1c1210d4d1441e3e727f212218057e542d3664816e1521c1.lean/declarations/splittarget--222dc5d204e125ea66053352.md) | 337 | `declaration-track:222dc5d204e125ea66053352704fbcceaafb22a970c67560f3a04fd6fb1f2950` |
| 18 | `def` | [splitLocalDecl?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Split/Variant3771491be3e97f9f1c1210d4d1441e3e727f212218057e542d3664816e1521c1.lean/declarations/splitlocaldecl--09c89703f61784306e0709d6.md) | 357 | `declaration-track:09c89703f61784306e0709d62224aa374eb29efd29f1b28fd5cedcfa39b830e2` |
| 19 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Split/Variant3771491be3e97f9f1c1210d4d1441e3e727f212218057e542d3664816e1521c1.lean/declarations/builtin-initialize--d36731a8fa5bfa2f7ea1369f.md) | 393 | `declaration-track:d36731a8fa5bfa2f7ea1369fd671d6ccdc2b77faca081638bb3c34b91689ed5b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
