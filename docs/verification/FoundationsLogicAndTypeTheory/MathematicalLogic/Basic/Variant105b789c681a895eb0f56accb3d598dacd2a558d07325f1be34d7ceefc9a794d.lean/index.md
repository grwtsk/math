# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Basic.Variant105b789c681a895eb0f56accb3d598dacd2a558d07325f1be34d7ceefc9a794d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d5e5be09fb3dffa2d360e4951f5fc82df02eac12",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant105b789c681a895eb0f56accb3d598dacd2a558d07325f1be34d7ceefc9a794d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant105b789c681a895eb0f56accb3d598dacd2a558d07325f1be34d7ceefc9a794d.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant105b789c681a895eb0f56accb3d598dacd2a558d07325f1be34d7ceefc9a794d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d5e5be09fb3dffa2d360e4951f5fc82df02eac12`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant105b789c681a895eb0f56accb3d598dacd2a558d07325f1be34d7ceefc9a794d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant105b789c681a895eb0f56accb3d598dacd2a558d07325f1be34d7ceefc9a794d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.Function.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Util.CompileInductive` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Simps.NotationClass` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [DFunLike](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant105b789c681a895eb0f56accb3d598dacd2a558d07325f1be34d7ceefc9a794d.lean/declarations/dfunlike--708bf13da371f54dfa539188.md) | 138 | `declaration-track:708bf13da371f54dfa5391887521b738d29b12e4d2c1ff7ba5814035f58a2b2e` |
| 2 | `abbrev` | [FunLike](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant105b789c681a895eb0f56accb3d598dacd2a558d07325f1be34d7ceefc9a794d.lean/declarations/funlike--3d8b7e51d983ef42d1cecfd5.md) | 153 | `declaration-track:3d8b7e51d983ef42d1cecfd57f2ead683f2d5598431182d9393c179203b751f5` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant105b789c681a895eb0f56accb3d598dacd2a558d07325f1be34d7ceefc9a794d.lean/declarations/instance--2f381e03856e48b752b78fb8.md) | 165 | `declaration-track:2f381e03856e48b752b78fb894f94354ba7d46779df1a9ab9e883cde051174d4` |
| 4 | `theorem` | [coe_eq_coe_fn](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant105b789c681a895eb0f56accb3d598dacd2a558d07325f1be34d7ceefc9a794d.lean/declarations/coe-eq-coe-fn--fa015a792a637d6b89250c38.md) | 172 | `result-track:fa015a792a637d6b89250c384ef30327c74158f0daf922aafd15575adcac7376` |
| 5 | `theorem` | [coe_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant105b789c681a895eb0f56accb3d598dacd2a558d07325f1be34d7ceefc9a794d.lean/declarations/coe-injective--9dc3fa8c482b109f38e82c30.md) | 174 | `result-track:9dc3fa8c482b109f38e82c307b0455b087b4619d58828a7b489f3360004cbf28` |
| 6 | `theorem` | [coe_fn_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant105b789c681a895eb0f56accb3d598dacd2a558d07325f1be34d7ceefc9a794d.lean/declarations/coe-fn-eq--dae2f2e2a6df729cb6e96c9e.md) | 178 | `result-track:dae2f2e2a6df729cb6e96c9e4e0292f45479cc2ff970d26c7e8c25e6988e868a` |
| 7 | `theorem` | [ext'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant105b789c681a895eb0f56accb3d598dacd2a558d07325f1be34d7ceefc9a794d.lean/declarations/ext--c83dd1a502236fc60bb269cb.md) | 181 | `result-track:c83dd1a502236fc60bb269cb57271309a79e800e271a704ffb8fab6c4404c16b` |
| 8 | `theorem` | [ext'_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant105b789c681a895eb0f56accb3d598dacd2a558d07325f1be34d7ceefc9a794d.lean/declarations/ext-iff--6dfa2f7387252aae7d963582.md) | 184 | `result-track:6dfa2f7387252aae7d963582dfb20bea2990ddb75ae8b2e7d8dd6ed2164c4eb4` |
| 9 | `theorem` | [ext](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant105b789c681a895eb0f56accb3d598dacd2a558d07325f1be34d7ceefc9a794d.lean/declarations/ext--6cf2cbc27f244ca8487f805f.md) | 187 | `result-track:6cf2cbc27f244ca8487f805ff637aab73c65358c510b7b3576dee603203b6abc` |
| 10 | `theorem` | [ext_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant105b789c681a895eb0f56accb3d598dacd2a558d07325f1be34d7ceefc9a794d.lean/declarations/ext-iff--69048cf6dcdbd2cc7dfff769.md) | 190 | `result-track:69048cf6dcdbd2cc7dfff769235be7702c156a9ff8b77539789cd612ceba4261` |
| 11 | `theorem` | [congr_fun](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant105b789c681a895eb0f56accb3d598dacd2a558d07325f1be34d7ceefc9a794d.lean/declarations/congr-fun--ae224c0a3688abe43eb2d01a.md) | 193 | `result-track:ae224c0a3688abe43eb2d01a6d5c80c95aa9e175759bb329bd05ad349d88b4a4` |
| 12 | `theorem` | [ne_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant105b789c681a895eb0f56accb3d598dacd2a558d07325f1be34d7ceefc9a794d.lean/declarations/ne-iff--631f803ade3c98cc5b8569e8.md) | 196 | `result-track:631f803ade3c98cc5b8569e8883f2c3ee064bb158e54ba6d036adda4d2620951` |
| 13 | `theorem` | [exists_ne](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant105b789c681a895eb0f56accb3d598dacd2a558d07325f1be34d7ceefc9a794d.lean/declarations/exists-ne--b0463d56be0921839fd26fe7.md) | 199 | `result-track:b0463d56be0921839fd26fe703ae8cdfd5da9b61d500831aee92b00db6ccdfea` |
| 14 | `lemma` | [subsingleton_cod](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant105b789c681a895eb0f56accb3d598dacd2a558d07325f1be34d7ceefc9a794d.lean/declarations/subsingleton-cod--3e191e2fc4fc63da852e7f0d.md) | 203 | `result-track:3e191e2fc4fc63da852e7f0d30bc6f8a4802e83781f1bb98ca735c7b351c7e0d` |
| 15 | `theorem` | [congr](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant105b789c681a895eb0f56accb3d598dacd2a558d07325f1be34d7ceefc9a794d.lean/declarations/congr--fa785551f099073fff96e06c.md) | 218 | `result-track:fa785551f099073fff96e06c2a0c1fd5f1332c9529af69410f7b6a189b6be4e2` |
| 16 | `theorem` | [congr_arg](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant105b789c681a895eb0f56accb3d598dacd2a558d07325f1be34d7ceefc9a794d.lean/declarations/congr-arg--a70659d77eb228bf2f71e91e.md) | 221 | `result-track:a70659d77eb228bf2f71e91ee997036ad3e44d991715788422395cd8ce196a60` |
| 17 | `theorem` | [dite_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant105b789c681a895eb0f56accb3d598dacd2a558d07325f1be34d7ceefc9a794d.lean/declarations/dite-apply--92bcc4e917f4ad35fc5e42c2.md) | 224 | `result-track:92bcc4e917f4ad35fc5e42c20aee2a44aa7f344405f430c0fbe4b01c8cbad53a` |
| 18 | `theorem` | [ite_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant105b789c681a895eb0f56accb3d598dacd2a558d07325f1be34d7ceefc9a794d.lean/declarations/ite-apply--aff1322d1c3a9cf1108b124a.md) | 228 | `result-track:aff1322d1c3a9cf1108b124a30cbf03f9fd9a4270ee322b3d61b60d898f08c94` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
