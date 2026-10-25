# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.StateTransition.Variant8722e395586a1b64360a1ee14e49f44e5753eaea2189409bf5caaab9f5e49b0f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7311b856046b221f269d0e4c240290824b1277c1",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StateTransition/Variant8722e395586a1b64360a1ee14e49f44e5753eaea2189409bf5caaab9f5e49b0f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StateTransition/Variant8722e395586a1b64360a1ee14e49f44e5753eaea2189409bf5caaab9f5e49b0f.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StateTransition/Variant8722e395586a1b64360a1ee14e49f44e5753eaea2189409bf5caaab9f5e49b0f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7311b856046b221f269d0e4c240290824b1277c1`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StateTransition/Variant8722e395586a1b64360a1ee14e49f44e5753eaea2189409bf5caaab9f5e49b0f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StateTransition/Variant8722e395586a1b64360a1ee14e49f44e5753eaea2189409bf5caaab9f5e49b0f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Attr` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Common` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.SetLike` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [eval](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StateTransition/Variant8722e395586a1b64360a1ee14e49f44e5753eaea2189409bf5caaab9f5e49b0f.lean/declarations/eval--779831a21b55804e32cc1f1c.md) | 32 | `declaration-track:779831a21b55804e32cc1f1c7ff0beef0d9992a282eb381015ec0d4a8e46ab56` |
| 2 | `def` | [Reaches](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StateTransition/Variant8722e395586a1b64360a1ee14e49f44e5753eaea2189409bf5caaab9f5e49b0f.lean/declarations/reaches--c23f34841baa0507d29efb97.md) | 38 | `declaration-track:c23f34841baa0507d29efb97bd2036ada2dfa1f6bead35addc589af7971c4e9b` |
| 3 | `def` | [Reaches₁](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StateTransition/Variant8722e395586a1b64360a1ee14e49f44e5753eaea2189409bf5caaab9f5e49b0f.lean/declarations/reaches--a207cc18d309f2ea5ed5fa37.md) | 44 | `declaration-track:a207cc18d309f2ea5ed5fa37402cd57db1fd180af39ca9722eb8b5c106c9ba5e` |
| 4 | `theorem` | [reaches₁_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StateTransition/Variant8722e395586a1b64360a1ee14e49f44e5753eaea2189409bf5caaab9f5e49b0f.lean/declarations/reaches-eq--b9dcc318203cd6ea4992a596.md) | 47 | `result-track:b9dcc318203cd6ea4992a596e7202d9b81433b845972d626fe6ebfef93a4c3cb` |
| 5 | `theorem` | [reaches_total](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StateTransition/Variant8722e395586a1b64360a1ee14e49f44e5753eaea2189409bf5caaab9f5e49b0f.lean/declarations/reaches-total--22d878ec2f1c6e8ed316ad28.md) | 51 | `result-track:22d878ec2f1c6e8ed316ad289c95ce4afa96a330ceca6848f7e5a194b6d6dfac` |
| 6 | `theorem` | [reaches₁_fwd](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StateTransition/Variant8722e395586a1b64360a1ee14e49f44e5753eaea2189409bf5caaab9f5e49b0f.lean/declarations/reaches-fwd--b620dbd557179ed5a9cf82ee.md) | 55 | `result-track:b620dbd557179ed5a9cf82eee1d2450103cd9d53737418044878244c5ad4399b` |
| 7 | `def` | [Reaches₀](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StateTransition/Variant8722e395586a1b64360a1ee14e49f44e5753eaea2189409bf5caaab9f5e49b0f.lean/declarations/reaches--ead4012f6eae595338a88968.md) | 63 | `declaration-track:ead4012f6eae595338a8896858ffd0e333d11c587b749036e694f96f8e06c729` |
| 8 | `theorem` | [Reaches₀.trans](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StateTransition/Variant8722e395586a1b64360a1ee14e49f44e5753eaea2189409bf5caaab9f5e49b0f.lean/declarations/reaches-trans--cc7b7679dc6ac261e8d5cd81.md) | 66 | `result-track:cc7b7679dc6ac261e8d5cd814f96f226e5eebabc930effa2e8f1caa754bc2e3f` |
| 9 | `theorem` | [Reaches₀.refl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StateTransition/Variant8722e395586a1b64360a1ee14e49f44e5753eaea2189409bf5caaab9f5e49b0f.lean/declarations/reaches-refl--90d5cd0fcf60f5c1af102e8f.md) | 71 | `result-track:90d5cd0fcf60f5c1af102e8ff699f453c443f122a88acbfc420aec070e223f55` |
| 10 | `theorem` | [Reaches₀.single](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StateTransition/Variant8722e395586a1b64360a1ee14e49f44e5753eaea2189409bf5caaab9f5e49b0f.lean/declarations/reaches-single--0ca6de9c71045896d3c72b8b.md) | 74 | `result-track:0ca6de9c71045896d3c72b8bba10fa1296f8ea3567d64fe74fb54adffb9e34e6` |
| 11 | `theorem` | [Reaches₀.head](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StateTransition/Variant8722e395586a1b64360a1ee14e49f44e5753eaea2189409bf5caaab9f5e49b0f.lean/declarations/reaches-head--4f18b848e075f28179b4dbaf.md) | 77 | `result-track:4f18b848e075f28179b4dbafff43b2b6e4806bc9b287545141a9a15d44340b32` |
| 12 | `theorem` | [Reaches₀.tail](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StateTransition/Variant8722e395586a1b64360a1ee14e49f44e5753eaea2189409bf5caaab9f5e49b0f.lean/declarations/reaches-tail--c3a80592329c06e89db801bf.md) | 81 | `result-track:c3a80592329c06e89db801bfd61950366f47f28e407347893555cae9e6b5e205` |
| 13 | `theorem` | [reaches₀_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StateTransition/Variant8722e395586a1b64360a1ee14e49f44e5753eaea2189409bf5caaab9f5e49b0f.lean/declarations/reaches-eq--1c2e5a8ab18eb658c5ac0f0d.md) | 85 | `result-track:1c2e5a8ab18eb658c5ac0f0d3a8cbcff8d97cc102b7fab5805bf679634f747e0` |
| 14 | `theorem` | [Reaches₁.to₀](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StateTransition/Variant8722e395586a1b64360a1ee14e49f44e5753eaea2189409bf5caaab9f5e49b0f.lean/declarations/reaches-to--6a3ef6f0430e18a1f8e3bf0e.md) | 88 | `result-track:6a3ef6f0430e18a1f8e3bf0e1aed1d3faaaebc464ff8369c7f6c21dbf417801d` |
| 15 | `theorem` | [Reaches.to₀](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StateTransition/Variant8722e395586a1b64360a1ee14e49f44e5753eaea2189409bf5caaab9f5e49b0f.lean/declarations/reaches-to--fbc3b9918ec0fcccedb9ffde.md) | 91 | `result-track:fbc3b9918ec0fcccedb9ffde61428ec87172b1f07700c5d5a468a108a5574b09` |
| 16 | `theorem` | [Reaches₀.tail'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StateTransition/Variant8722e395586a1b64360a1ee14e49f44e5753eaea2189409bf5caaab9f5e49b0f.lean/declarations/reaches-tail--13cb0021cea799bcfd7c3b05.md) | 94 | `result-track:13cb0021cea799bcfd7c3b057a365e7de72a8dffcd8637c67efa2570b2613e2c` |
| 17 | `def` | [evalInduction](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StateTransition/Variant8722e395586a1b64360a1ee14e49f44e5753eaea2189409bf5caaab9f5e49b0f.lean/declarations/evalinduction--40f34a97f4335f4e9061817a.md) | 103 | `declaration-track:40f34a97f4335f4e9061817ae8e896a3b6da4df136a2b2551d69f71c2f674942` |
| 18 | `theorem` | [mem_eval](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StateTransition/Variant8722e395586a1b64360a1ee14e49f44e5753eaea2189409bf5caaab9f5e49b0f.lean/declarations/mem-eval--070b4344851ab90479cf3e30.md) | 108 | `result-track:070b4344851ab90479cf3e30aa415d72a9f1cce5f1003fdb4fc73eb8a9f4b720` |
| 19 | `theorem` | [eval_maximal₁](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StateTransition/Variant8722e395586a1b64360a1ee14e49f44e5753eaea2189409bf5caaab9f5e49b0f.lean/declarations/eval-maximal--6ed8872115922ff43ebf8a45.md) | 127 | `result-track:6ed8872115922ff43ebf8a455a8f32c963359594df719f5e86d631bfd0b489db` |
| 20 | `theorem` | [eval_maximal](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StateTransition/Variant8722e395586a1b64360a1ee14e49f44e5753eaea2189409bf5caaab9f5e49b0f.lean/declarations/eval-maximal--78a34a92baed7eded929de52.md) | 133 | `result-track:78a34a92baed7eded929de52ee8d5130bc1430669af0f3272b5aae514f0b15a7` |
| 21 | `theorem` | [reaches_eval](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StateTransition/Variant8722e395586a1b64360a1ee14e49f44e5753eaea2189409bf5caaab9f5e49b0f.lean/declarations/reaches-eval--738cb26dd2a5d150e19d53a8.md) | 137 | `result-track:738cb26dd2a5d150e19d53a82f097f9911be121bff221f50e949b7ae19f648c7` |
| 22 | `def` | [Respects](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StateTransition/Variant8722e395586a1b64360a1ee14e49f44e5753eaea2189409bf5caaab9f5e49b0f.lean/declarations/respects--df069683217ca050a7a69d9c.md) | 150 | `declaration-track:df069683217ca050a7a69d9c74a9bfd22b93f075626036b64f936b364a930063` |
| 23 | `theorem` | [tr_reaches₁](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StateTransition/Variant8722e395586a1b64360a1ee14e49f44e5753eaea2189409bf5caaab9f5e49b0f.lean/declarations/tr-reaches--06dcdf0ef6ce0601d1a634c7.md) | 155 | `result-track:06dcdf0ef6ce0601d1a634c7c7e4ae1458b9e56612d9ec2480cd9fbc8dd96e19` |
| 24 | `theorem` | [tr_reaches](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StateTransition/Variant8722e395586a1b64360a1ee14e49f44e5753eaea2189409bf5caaab9f5e49b0f.lean/declarations/tr-reaches--59d3a918e34925bc01007361.md) | 168 | `result-track:59d3a918e34925bc01007361c066502b2da902d02d291992c24008fffc01a816` |
| 25 | `theorem` | [tr_reaches_rev](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StateTransition/Variant8722e395586a1b64360a1ee14e49f44e5753eaea2189409bf5caaab9f5e49b0f.lean/declarations/tr-reaches-rev--c16147ddd1bdadc6fd9b1a28.md) | 175 | `result-track:c16147ddd1bdadc6fd9b1a28054ce63288c892dc6f98b836f96a4e7d3ff1517c` |
| 26 | `theorem` | [tr_eval](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StateTransition/Variant8722e395586a1b64360a1ee14e49f44e5753eaea2189409bf5caaab9f5e49b0f.lean/declarations/tr-eval--27c9140bd1a8b6a26d31cfca.md) | 195 | `result-track:27c9140bd1a8b6a26d31cfca1daf0546e3c39db4a7d0168a51d6c27f1c9428da` |
| 27 | `theorem` | [tr_eval_rev](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StateTransition/Variant8722e395586a1b64360a1ee14e49f44e5753eaea2189409bf5caaab9f5e49b0f.lean/declarations/tr-eval-rev--4202d50a455520758722cbf5.md) | 202 | `result-track:4202d50a455520758722cbf5bfe230bde936fbd5413efe8402a09d6d72a267ef` |
| 28 | `theorem` | [tr_eval_dom](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StateTransition/Variant8722e395586a1b64360a1ee14e49f44e5753eaea2189409bf5caaab9f5e49b0f.lean/declarations/tr-eval-dom--8670307fa83990a76cadf4fb.md) | 216 | `result-track:8670307fa83990a76cadf4fb9fe02b823037260c70774e1f5962586cfcbf8afd` |
| 29 | `def` | [FRespects](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StateTransition/Variant8722e395586a1b64360a1ee14e49f44e5753eaea2189409bf5caaab9f5e49b0f.lean/declarations/frespects--c1e2236c455fed95ec7ccecb.md) | 226 | `declaration-track:c1e2236c455fed95ec7ccecb53756129bf4a102306c1a3f855de93852c35dbb3` |
| 30 | `theorem` | [frespects_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StateTransition/Variant8722e395586a1b64360a1ee14e49f44e5753eaea2189409bf5caaab9f5e49b0f.lean/declarations/frespects-eq--2ea1e7b734cb13c794343d7c.md) | 230 | `result-track:2ea1e7b734cb13c794343d7c00c0ffd091ba4a99a17605e4a94fe789f441cb4f` |
| 31 | `theorem` | [fun_respects](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StateTransition/Variant8722e395586a1b64360a1ee14e49f44e5753eaea2189409bf5caaab9f5e49b0f.lean/declarations/fun-respects--693cd589c1664edb907280c0.md) | 235 | `result-track:693cd589c1664edb907280c0bccde8de863c1b610cd0c87f253fffbf125b20fa` |
| 32 | `theorem` | [tr_eval'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StateTransition/Variant8722e395586a1b64360a1ee14e49f44e5753eaea2189409bf5caaab9f5e49b0f.lean/declarations/tr-eval--429630707b46e81da44e36f8.md) | 240 | `result-track:429630707b46e81da44e36f8071b4d4caac050f4006fe658e68718382ff75300` |
| 33 | `structure` | [EvalsTo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StateTransition/Variant8722e395586a1b64360a1ee14e49f44e5753eaea2189409bf5caaab9f5e49b0f.lean/declarations/evalsto--7e8ff1da415d78b1686fab96.md) | 255 | `declaration-track:7e8ff1da415d78b1686fab96d286251be7957e7cc735bbf4676a5258044a3bd6` |
| 34 | `structure` | [EvalsToInTime](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StateTransition/Variant8722e395586a1b64360a1ee14e49f44e5753eaea2189409bf5caaab9f5e49b0f.lean/declarations/evalstointime--036d6ad07460009cf2affa54.md) | 265 | `declaration-track:036d6ad07460009cf2affa54ad9976be1e2893ee5c97d497d2c2d894150cbe2d` |
| 35 | `def` | [EvalsTo.refl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StateTransition/Variant8722e395586a1b64360a1ee14e49f44e5753eaea2189409bf5caaab9f5e49b0f.lean/declarations/evalsto-refl--020ec096f91d138743e54691.md) | 270 | `declaration-track:020ec096f91d138743e54691b8c1b3d4cb8dc3377450d94aa72e65c32502d671` |
| 36 | `def` | [EvalsTo.trans](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StateTransition/Variant8722e395586a1b64360a1ee14e49f44e5753eaea2189409bf5caaab9f5e49b0f.lean/declarations/evalsto-trans--856abef6e5cc5f32928a3e7a.md) | 275 | `declaration-track:856abef6e5cc5f32928a3e7ae4fdcdd567a4f5e5f675f10e99218e9e5a120057` |
| 37 | `def` | [EvalsToInTime.refl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StateTransition/Variant8722e395586a1b64360a1ee14e49f44e5753eaea2189409bf5caaab9f5e49b0f.lean/declarations/evalstointime-refl--f7874644c52c642e07214f26.md) | 280 | `declaration-track:f7874644c52c642e07214f263cfb00d69b9f2f74f407ebd5891781b6104531d9` |
| 38 | `def` | [EvalsToInTime.trans](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StateTransition/Variant8722e395586a1b64360a1ee14e49f44e5753eaea2189409bf5caaab9f5e49b0f.lean/declarations/evalstointime-trans--23e7af0d9d44b7ac78dbc613.md) | 285 | `declaration-track:23e7af0d9d44b7ac78dbc6137bf73e3f8b652c5a14c396748c00b0e599bf0b98` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
