# Verification target: GRWTSK.Algebra.LinearAlgebra.F9478a2b90bbf162ca4f3148c86ed69ffa5ac6e79fa045fdcb486c1a0d1d7545CommutingPrefix2.Variantf9478a2b90bbf162ca4f3148c86ed69ffa5ac6e79fa045fdcb486c1a0d1d7545

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "04f9c61a4da786c399de4b051d93b477a1dcee8d",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/F9478a2b90bbf162ca4f3148c86ed69ffa5ac6e79fa045fdcb486c1a0d1d7545CommutingPrefix2/Variantf9478a2b90bbf162ca4f3148c86ed69ffa5ac6e79fa045fdcb486c1a0d1d7545.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/F9478a2b90bbf162ca4f3148c86ed69ffa5ac6e79fa045fdcb486c1a0d1d7545CommutingPrefix2/Variantf9478a2b90bbf162ca4f3148c86ed69ffa5ac6e79fa045fdcb486c1a0d1d7545.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/F9478a2b90bbf162ca4f3148c86ed69ffa5ac6e79fa045fdcb486c1a0d1d7545CommutingPrefix2/Variantf9478a2b90bbf162ca4f3148c86ed69ffa5ac6e79fa045fdcb486c1a0d1d7545.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `04f9c61a4da786c399de4b051d93b477a1dcee8d`.

Source path: `GRWTSK/Algebra/LinearAlgebra/F9478a2b90bbf162ca4f3148c86ed69ffa5ac6e79fa045fdcb486c1a0d1d7545CommutingPrefix2/Variantf9478a2b90bbf162ca4f3148c86ed69ffa5ac6e79fa045fdcb486c1a0d1d7545.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/F9478a2b90bbf162ca4f3148c86ed69ffa5ac6e79fa045fdcb486c1a0d1d7545CommutingPrefix2/Variantf9478a2b90bbf162ca4f3148c86ed69ffa5ac6e79fa045fdcb486c1a0d1d7545.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.QuadraticSwapInvolution` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Module` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [involutionPlus](../../../../../mathematics/Algebra/LinearAlgebra/F9478a2b90bbf162ca4f3148c86ed69ffa5ac6e79fa045fdcb486c1a0d1d7545CommutingPrefix2/Variantf9478a2b90bbf162ca4f3148c86ed69ffa5ac6e79fa045fdcb486c1a0d1d7545.lean/declarations/involutionplus--daefcb3afe81b6c5e7880640.md) | 37 | `declaration-track:daefcb3afe81b6c5e78806405a5b7f73ad08d4b0aa5964c8ce8b12cb0dfb3b4d` |
| 2 | `def` | [involutionMinus](../../../../../mathematics/Algebra/LinearAlgebra/F9478a2b90bbf162ca4f3148c86ed69ffa5ac6e79fa045fdcb486c1a0d1d7545CommutingPrefix2/Variantf9478a2b90bbf162ca4f3148c86ed69ffa5ac6e79fa045fdcb486c1a0d1d7545.lean/declarations/involutionminus--57bbc70d58725c5331de3f51.md) | 41 | `declaration-track:57bbc70d58725c5331de3f5193ee9eb5d448265b9222e4c177abc44e5e55f031` |
| 3 | `theorem` | [involutionPlus_apply](../../../../../mathematics/Algebra/LinearAlgebra/F9478a2b90bbf162ca4f3148c86ed69ffa5ac6e79fa045fdcb486c1a0d1d7545CommutingPrefix2/Variantf9478a2b90bbf162ca4f3148c86ed69ffa5ac6e79fa045fdcb486c1a0d1d7545.lean/declarations/involutionplus-apply--32537efeca96d2d739af4c03.md) | 45 | `result-track:32537efeca96d2d739af4c0353738cf28ce50765ca8334aac067ad186b669ba1` |
| 4 | `theorem` | [involutionMinus_apply](../../../../../mathematics/Algebra/LinearAlgebra/F9478a2b90bbf162ca4f3148c86ed69ffa5ac6e79fa045fdcb486c1a0d1d7545CommutingPrefix2/Variantf9478a2b90bbf162ca4f3148c86ed69ffa5ac6e79fa045fdcb486c1a0d1d7545.lean/declarations/involutionminus-apply--0babc821c407e88231b18461.md) | 50 | `result-track:0babc821c407e88231b1846143cc9812160ec07f84aca0f1cc5bbe8ca29f8b63` |
| 5 | `theorem` | [involution_projection_decomposition](../../../../../mathematics/Algebra/LinearAlgebra/F9478a2b90bbf162ca4f3148c86ed69ffa5ac6e79fa045fdcb486c1a0d1d7545CommutingPrefix2/Variantf9478a2b90bbf162ca4f3148c86ed69ffa5ac6e79fa045fdcb486c1a0d1d7545.lean/declarations/involution-projection-decomposition--c26ad1948e0bc51ac13744bd.md) | 55 | `result-track:c26ad1948e0bc51ac13744bd6331d29c206d4e208173ce18c7c50acda94b101c` |
| 6 | `theorem` | [involutionPlus_idempotent](../../../../../mathematics/Algebra/LinearAlgebra/F9478a2b90bbf162ca4f3148c86ed69ffa5ac6e79fa045fdcb486c1a0d1d7545CommutingPrefix2/Variantf9478a2b90bbf162ca4f3148c86ed69ffa5ac6e79fa045fdcb486c1a0d1d7545.lean/declarations/involutionplus-idempotent--2776bb8fe5f7b6ccbd9b6a19.md) | 62 | `result-track:2776bb8fe5f7b6ccbd9b6a19c78146ca217d28f7ca3cd00b7345845f4da06d30` |
| 7 | `theorem` | [involutionMinus_idempotent](../../../../../mathematics/Algebra/LinearAlgebra/F9478a2b90bbf162ca4f3148c86ed69ffa5ac6e79fa045fdcb486c1a0d1d7545CommutingPrefix2/Variantf9478a2b90bbf162ca4f3148c86ed69ffa5ac6e79fa045fdcb486c1a0d1d7545.lean/declarations/involutionminus-idempotent--0d4258f6577da6258db6ea68.md) | 70 | `result-track:0d4258f6577da6258db6ea68af8671db58c5db0c589d9d884f8b68de16f63cf6` |
| 8 | `theorem` | [involutionPlus_after_minus](../../../../../mathematics/Algebra/LinearAlgebra/F9478a2b90bbf162ca4f3148c86ed69ffa5ac6e79fa045fdcb486c1a0d1d7545CommutingPrefix2/Variantf9478a2b90bbf162ca4f3148c86ed69ffa5ac6e79fa045fdcb486c1a0d1d7545.lean/declarations/involutionplus-after-minus--9771c8b527442ff878b2ac65.md) | 78 | `result-track:9771c8b527442ff878b2ac657ed1e785b31b1f13f32c68e6d7f19501fdc67c32` |
| 9 | `theorem` | [involutionMinus_after_plus](../../../../../mathematics/Algebra/LinearAlgebra/F9478a2b90bbf162ca4f3148c86ed69ffa5ac6e79fa045fdcb486c1a0d1d7545CommutingPrefix2/Variantf9478a2b90bbf162ca4f3148c86ed69ffa5ac6e79fa045fdcb486c1a0d1d7545.lean/declarations/involutionminus-after-plus--4521fb3dbeb5005b506c38c1.md) | 85 | `result-track:4521fb3dbeb5005b506c38c156096215d278c875bda8d03b0a4f76bae8c85ce7` |
| 10 | `theorem` | [involution_on_plus](../../../../../mathematics/Algebra/LinearAlgebra/F9478a2b90bbf162ca4f3148c86ed69ffa5ac6e79fa045fdcb486c1a0d1d7545CommutingPrefix2/Variantf9478a2b90bbf162ca4f3148c86ed69ffa5ac6e79fa045fdcb486c1a0d1d7545.lean/declarations/involution-on-plus--0378869861d61f1a73613e17.md) | 92 | `result-track:0378869861d61f1a73613e17c6eddccbeaf81e8e3de9b97c041b7f1bf491dba6` |
| 11 | `theorem` | [involution_on_minus](../../../../../mathematics/Algebra/LinearAlgebra/F9478a2b90bbf162ca4f3148c86ed69ffa5ac6e79fa045fdcb486c1a0d1d7545CommutingPrefix2/Variantf9478a2b90bbf162ca4f3148c86ed69ffa5ac6e79fa045fdcb486c1a0d1d7545.lean/declarations/involution-on-minus--9e557120356a69f5ce361408.md) | 99 | `result-track:9e557120356a69f5ce361408469a891c0924a5f8e3bf17846af47e4caaf391a6` |
| 12 | `structure` | [CommutingInvolutions](../../../../../mathematics/Algebra/LinearAlgebra/F9478a2b90bbf162ca4f3148c86ed69ffa5ac6e79fa045fdcb486c1a0d1d7545CommutingPrefix2/Variantf9478a2b90bbf162ca4f3148c86ed69ffa5ac6e79fa045fdcb486c1a0d1d7545.lean/declarations/commutinginvolutions--1544cf1b8b47409c0326bbc5.md) | 106 | `declaration-track:1544cf1b8b47409c0326bbc506137c6cfabdd0a0db20ae1296556da7125712fa` |
| 13 | `theorem` | [plusPlus_commute](../../../../../mathematics/Algebra/LinearAlgebra/F9478a2b90bbf162ca4f3148c86ed69ffa5ac6e79fa045fdcb486c1a0d1d7545CommutingPrefix2/Variantf9478a2b90bbf162ca4f3148c86ed69ffa5ac6e79fa045fdcb486c1a0d1d7545.lean/declarations/plusplus-commute--512bfe1a4a1b26ebf2c9387a.md) | 118 | `result-track:512bfe1a4a1b26ebf2c9387a466daffc352322f057a82328db339578155cf830` |
| 14 | `theorem` | [plusMinus_commute](../../../../../mathematics/Algebra/LinearAlgebra/F9478a2b90bbf162ca4f3148c86ed69ffa5ac6e79fa045fdcb486c1a0d1d7545CommutingPrefix2/Variantf9478a2b90bbf162ca4f3148c86ed69ffa5ac6e79fa045fdcb486c1a0d1d7545.lean/declarations/plusminus-commute--8e51df2b9820a7d04a5117e1.md) | 126 | `result-track:8e51df2b9820a7d04a5117e1014078e984ce491d174faf4214ecb81ef9c6a973` |
| 15 | `theorem` | [minusPlus_commute](../../../../../mathematics/Algebra/LinearAlgebra/F9478a2b90bbf162ca4f3148c86ed69ffa5ac6e79fa045fdcb486c1a0d1d7545CommutingPrefix2/Variantf9478a2b90bbf162ca4f3148c86ed69ffa5ac6e79fa045fdcb486c1a0d1d7545.lean/declarations/minusplus-commute--3cfed600b968025f19608a85.md) | 134 | `result-track:3cfed600b968025f19608a85d71866449b04b42b68ea17dae3188b1bf779a668` |
| 16 | `theorem` | [minusMinus_commute](../../../../../mathematics/Algebra/LinearAlgebra/F9478a2b90bbf162ca4f3148c86ed69ffa5ac6e79fa045fdcb486c1a0d1d7545CommutingPrefix2/Variantf9478a2b90bbf162ca4f3148c86ed69ffa5ac6e79fa045fdcb486c1a0d1d7545.lean/declarations/minusminus-commute--deefce45f22267729c329d1e.md) | 142 | `result-track:deefce45f22267729c329d1e7d658c758c78d8de33944c47becd77a5c4710dee` |
| 17 | `def` | [sectorPP](../../../../../mathematics/Algebra/LinearAlgebra/F9478a2b90bbf162ca4f3148c86ed69ffa5ac6e79fa045fdcb486c1a0d1d7545CommutingPrefix2/Variantf9478a2b90bbf162ca4f3148c86ed69ffa5ac6e79fa045fdcb486c1a0d1d7545.lean/declarations/sectorpp--1d8d40635bd5715af3a9dd72.md) | 150 | `declaration-track:1d8d40635bd5715af3a9dd72bb0884adbf0f34f978f03b8970ea58edbf1bd986` |
| 18 | `def` | [sectorPM](../../../../../mathematics/Algebra/LinearAlgebra/F9478a2b90bbf162ca4f3148c86ed69ffa5ac6e79fa045fdcb486c1a0d1d7545CommutingPrefix2/Variantf9478a2b90bbf162ca4f3148c86ed69ffa5ac6e79fa045fdcb486c1a0d1d7545.lean/declarations/sectorpm--0f6dc48af647548161b86c59.md) | 154 | `declaration-track:0f6dc48af647548161b86c594b8084fc8dce6e7a4da5df6e49ed8599c81059cc` |
| 19 | `def` | [sectorMP](../../../../../mathematics/Algebra/LinearAlgebra/F9478a2b90bbf162ca4f3148c86ed69ffa5ac6e79fa045fdcb486c1a0d1d7545CommutingPrefix2/Variantf9478a2b90bbf162ca4f3148c86ed69ffa5ac6e79fa045fdcb486c1a0d1d7545.lean/declarations/sectormp--dbbe1927ac834fea9201fb24.md) | 158 | `declaration-track:dbbe1927ac834fea9201fb242da43ea524fea6c4848d5f02a0197c8cf9e93296` |
| 20 | `def` | [sectorMM](../../../../../mathematics/Algebra/LinearAlgebra/F9478a2b90bbf162ca4f3148c86ed69ffa5ac6e79fa045fdcb486c1a0d1d7545CommutingPrefix2/Variantf9478a2b90bbf162ca4f3148c86ed69ffa5ac6e79fa045fdcb486c1a0d1d7545.lean/declarations/sectormm--7a893091e5bafb5652be40d8.md) | 162 | `declaration-track:7a893091e5bafb5652be40d829081c415291e3516f67fd79a873cfdbc26a3f26` |
| 21 | `theorem` | [sectorPP_apply](../../../../../mathematics/Algebra/LinearAlgebra/F9478a2b90bbf162ca4f3148c86ed69ffa5ac6e79fa045fdcb486c1a0d1d7545CommutingPrefix2/Variantf9478a2b90bbf162ca4f3148c86ed69ffa5ac6e79fa045fdcb486c1a0d1d7545.lean/declarations/sectorpp-apply--10e58115dd3c441d2cb7a8e0.md) | 166 | `result-track:10e58115dd3c441d2cb7a8e06eb02a4c0b82e4984a879526016125529d3b4742` |
| 22 | `theorem` | [sectorPM_apply](../../../../../mathematics/Algebra/LinearAlgebra/F9478a2b90bbf162ca4f3148c86ed69ffa5ac6e79fa045fdcb486c1a0d1d7545CommutingPrefix2/Variantf9478a2b90bbf162ca4f3148c86ed69ffa5ac6e79fa045fdcb486c1a0d1d7545.lean/declarations/sectorpm-apply--0ef5b64f0f333ce23b825df3.md) | 172 | `result-track:0ef5b64f0f333ce23b825df30482271ccfeee8e049af826b5078eb07f88cbc15` |
| 23 | `theorem` | [sectorMP_apply](../../../../../mathematics/Algebra/LinearAlgebra/F9478a2b90bbf162ca4f3148c86ed69ffa5ac6e79fa045fdcb486c1a0d1d7545CommutingPrefix2/Variantf9478a2b90bbf162ca4f3148c86ed69ffa5ac6e79fa045fdcb486c1a0d1d7545.lean/declarations/sectormp-apply--9238c4b051d1665ec9b9ecdb.md) | 178 | `result-track:9238c4b051d1665ec9b9ecdbbcce1d403c1eba9971462f944c055d5b60b7f1fa` |
| 24 | `theorem` | [sectorMM_apply](../../../../../mathematics/Algebra/LinearAlgebra/F9478a2b90bbf162ca4f3148c86ed69ffa5ac6e79fa045fdcb486c1a0d1d7545CommutingPrefix2/Variantf9478a2b90bbf162ca4f3148c86ed69ffa5ac6e79fa045fdcb486c1a0d1d7545.lean/declarations/sectormm-apply--6d08d020d49b9608b137be2e.md) | 184 | `result-track:6d08d020d49b9608b137be2eef76ba57b4fe400d1494fe4f0421bee86d730555` |
| 25 | `theorem` | [idempotent_comp_of_commute](../../../../../mathematics/Algebra/LinearAlgebra/F9478a2b90bbf162ca4f3148c86ed69ffa5ac6e79fa045fdcb486c1a0d1d7545CommutingPrefix2/Variantf9478a2b90bbf162ca4f3148c86ed69ffa5ac6e79fa045fdcb486c1a0d1d7545.lean/declarations/idempotent-comp-of-commute--85504e17de8ec7b053fbbd80.md) | 189 | `result-track:85504e17de8ec7b053fbbd80937b66d3ea83a14824f929bc628c991634e9b45d` |
| 26 | `theorem` | [sectorPP_idempotent](../../../../../mathematics/Algebra/LinearAlgebra/F9478a2b90bbf162ca4f3148c86ed69ffa5ac6e79fa045fdcb486c1a0d1d7545CommutingPrefix2/Variantf9478a2b90bbf162ca4f3148c86ed69ffa5ac6e79fa045fdcb486c1a0d1d7545.lean/declarations/sectorpp-idempotent--02771816cf13b9923919b550.md) | 199 | `result-track:02771816cf13b9923919b55055124dc939970904aff1cf032c40dac42ceaa486` |
| 27 | `theorem` | [sectorPM_idempotent](../../../../../mathematics/Algebra/LinearAlgebra/F9478a2b90bbf162ca4f3148c86ed69ffa5ac6e79fa045fdcb486c1a0d1d7545CommutingPrefix2/Variantf9478a2b90bbf162ca4f3148c86ed69ffa5ac6e79fa045fdcb486c1a0d1d7545.lean/declarations/sectorpm-idempotent--2812ae8b071f7b3d29121952.md) | 208 | `result-track:2812ae8b071f7b3d291219529d423323354ddb81f914bfbbba5b6bed5bf35c9f` |
| 28 | `theorem` | [sectorMP_idempotent](../../../../../mathematics/Algebra/LinearAlgebra/F9478a2b90bbf162ca4f3148c86ed69ffa5ac6e79fa045fdcb486c1a0d1d7545CommutingPrefix2/Variantf9478a2b90bbf162ca4f3148c86ed69ffa5ac6e79fa045fdcb486c1a0d1d7545.lean/declarations/sectormp-idempotent--190a30b434a6c5eb49e554bd.md) | 217 | `result-track:190a30b434a6c5eb49e554bd3cfcc08f35253ea8699c370946a46e7b330b58f3` |
| 29 | `theorem` | [sectorMM_idempotent](../../../../../mathematics/Algebra/LinearAlgebra/F9478a2b90bbf162ca4f3148c86ed69ffa5ac6e79fa045fdcb486c1a0d1d7545CommutingPrefix2/Variantf9478a2b90bbf162ca4f3148c86ed69ffa5ac6e79fa045fdcb486c1a0d1d7545.lean/declarations/sectormm-idempotent--deff0f5af220b70f4a65f418.md) | 226 | `result-track:deff0f5af220b70f4a65f41872b4bed686484ee5c7efe36203b176c99fb3b75d` |
| 30 | `theorem` | [four_sector_decomposition](../../../../../mathematics/Algebra/LinearAlgebra/F9478a2b90bbf162ca4f3148c86ed69ffa5ac6e79fa045fdcb486c1a0d1d7545CommutingPrefix2/Variantf9478a2b90bbf162ca4f3148c86ed69ffa5ac6e79fa045fdcb486c1a0d1d7545.lean/declarations/four-sector-decomposition--0efff0ef9c45194706d2b1f3.md) | 235 | `result-track:0efff0ef9c45194706d2b1f3b20425b4de57f8827668a177e5de4bfc8e4dae3c` |
| 31 | `theorem` | [sectorPP_after_PM](../../../../../mathematics/Algebra/LinearAlgebra/F9478a2b90bbf162ca4f3148c86ed69ffa5ac6e79fa045fdcb486c1a0d1d7545CommutingPrefix2/Variantf9478a2b90bbf162ca4f3148c86ed69ffa5ac6e79fa045fdcb486c1a0d1d7545.lean/declarations/sectorpp-after-pm--359194a06a0484a4f21fb102.md) | 242 | `result-track:359194a06a0484a4f21fb102275c0c95062ff796ac2152af62594242576e8b08` |
| 32 | `theorem` | [sectorPM_after_PP](../../../../../mathematics/Algebra/LinearAlgebra/F9478a2b90bbf162ca4f3148c86ed69ffa5ac6e79fa045fdcb486c1a0d1d7545CommutingPrefix2/Variantf9478a2b90bbf162ca4f3148c86ed69ffa5ac6e79fa045fdcb486c1a0d1d7545.lean/declarations/sectorpm-after-pp--05bff086010944fbec0f7130.md) | 253 | `result-track:05bff086010944fbec0f7130315c6b3625f9cdd9bb5262bffd6c60a9e0f625a0` |
| 33 | `theorem` | [sectorPP_after_MP](../../../../../mathematics/Algebra/LinearAlgebra/F9478a2b90bbf162ca4f3148c86ed69ffa5ac6e79fa045fdcb486c1a0d1d7545CommutingPrefix2/Variantf9478a2b90bbf162ca4f3148c86ed69ffa5ac6e79fa045fdcb486c1a0d1d7545.lean/declarations/sectorpp-after-mp--3e524077ac9012bf0b1e5ccf.md) | 264 | `result-track:3e524077ac9012bf0b1e5ccf6c8af0408b85506e649da89759733776f11d41b1` |
| 34 | `theorem` | [sectorMP_after_PP](../../../../../mathematics/Algebra/LinearAlgebra/F9478a2b90bbf162ca4f3148c86ed69ffa5ac6e79fa045fdcb486c1a0d1d7545CommutingPrefix2/Variantf9478a2b90bbf162ca4f3148c86ed69ffa5ac6e79fa045fdcb486c1a0d1d7545.lean/declarations/sectormp-after-pp--e8c1d6cc1d53fc8e1e2a1b46.md) | 274 | `result-track:e8c1d6cc1d53fc8e1e2a1b4604abab17b607cce933f5a349e25221ea5a459eb1` |
| 35 | `theorem` | [sectorPP_after_MM](../../../../../mathematics/Algebra/LinearAlgebra/F9478a2b90bbf162ca4f3148c86ed69ffa5ac6e79fa045fdcb486c1a0d1d7545CommutingPrefix2/Variantf9478a2b90bbf162ca4f3148c86ed69ffa5ac6e79fa045fdcb486c1a0d1d7545.lean/declarations/sectorpp-after-mm--a58240e419cb19fb85dc9789.md) | 284 | `result-track:a58240e419cb19fb85dc9789a2e3123aca33c06f30d9192ccd81d3e0e4a922db` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
