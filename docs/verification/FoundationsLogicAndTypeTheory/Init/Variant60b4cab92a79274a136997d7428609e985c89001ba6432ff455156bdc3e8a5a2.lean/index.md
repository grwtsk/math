# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.Init.Variant60b4cab92a79274a136997d7428609e985c89001ba6432ff455156bdc3e8a5a2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4a1ecae47d394bb06c99476e2cf5d6a89b78a1a9",
  "lexical_observation_count": 64,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Init/Variant60b4cab92a79274a136997d7428609e985c89001ba6432ff455156bdc3e8a5a2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variant60b4cab92a79274a136997d7428609e985c89001ba6432ff455156bdc3e8a5a2.lean/index.md) · [Full source](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variant60b4cab92a79274a136997d7428609e985c89001ba6432ff455156bdc3e8a5a2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4a1ecae47d394bb06c99476e2cf5d6a89b78a1a9`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Init/Variant60b4cab92a79274a136997d7428609e985c89001ba6432ff455156bdc3e8a5a2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Init/Variant60b4cab92a79274a136997d7428609e985c89001ba6432ff455156bdc3e8a5a2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Batteries.Tactic.Alias` — import line 6; external provider; requires a separately pinned dependency.
- `Batteries.Tactic.Init` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Init` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Notation` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Notation` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Lemma` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.TypeStar` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Util.AssertExists` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [succ_pos'](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variant60b4cab92a79274a136997d7428609e985c89001ba6432ff455156bdc3e8a5a2.lean/declarations/succ-pos--597fa04ddb21d4a8322ae047.md) | 64 | `result-track:597fa04ddb21d4a8322ae047f83d88709d2d9afcfc8cffd3bac7e0e23ea43be0` |
| 2 | `lemma` | [forall_lt_succ](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variant60b4cab92a79274a136997d7428609e985c89001ba6432ff455156bdc3e8a5a2.lean/declarations/forall-lt-succ--af8ef36945bf6c2a7457d790.md) | 70 | `result-track:af8ef36945bf6c2a7457d7902230204a753a8c05f21b63ba79b14ab011f88245` |
| 3 | `lemma` | [exists_lt_succ](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variant60b4cab92a79274a136997d7428609e985c89001ba6432ff455156bdc3e8a5a2.lean/declarations/exists-lt-succ--72ff1c18ac890b2314ad17fd.md) | 73 | `result-track:72ff1c18ac890b2314ad17fd632d0f3fcd1f193427b953822fd31b3bbf47c8e4` |
| 4 | `lemma` | [two_lt_of_ne](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variant60b4cab92a79274a136997d7428609e985c89001ba6432ff455156bdc3e8a5a2.lean/declarations/two-lt-of-ne--24668702328500c9a3e8046e.md) | 78 | `result-track:24668702328500c9a3e8046ec6af94898acb51b19d9bbfa22147e475ce862d66` |
| 5 | `lemma` | [two_le_iff](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variant60b4cab92a79274a136997d7428609e985c89001ba6432ff455156bdc3e8a5a2.lean/declarations/two-le-iff--86f65afdc67d1d41eab9053d.md) | 84 | `result-track:86f65afdc67d1d41eab9053de205061ab42255221b3c3c2cadf5fbfac44b5a79` |
| 6 | `lemma` | [mul_def](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variant60b4cab92a79274a136997d7428609e985c89001ba6432ff455156bdc3e8a5a2.lean/declarations/mul-def--895cc1fb4ee8082b91f69186.md) | 95 | `result-track:895cc1fb4ee8082b91f69186e908ce493a0847b22dc8363a47e9aa7c7a65afac` |
| 7 | `lemma` | [two_mul_ne_two_mul_add_one](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variant60b4cab92a79274a136997d7428609e985c89001ba6432ff455156bdc3e8a5a2.lean/declarations/two-mul-ne-two-mul-add-one--ccc9a8c741a9c0e60a7032ef.md) | 97 | `result-track:ccc9a8c741a9c0e60a7032ef4ff94950d60e561099fd6be8c85fc34f5cdff453` |
| 8 | `lemma` | [mul_right_eq_self_iff](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variant60b4cab92a79274a136997d7428609e985c89001ba6432ff455156bdc3e8a5a2.lean/declarations/mul-right-eq-self-iff--6055bcf4a8149634fe4bb758.md) | 102 | `result-track:6055bcf4a8149634fe4bb758906e84b69ddfb83aaa4fa9a2cf7ad337edc0e449` |
| 9 | `lemma` | [mul_left_eq_self_iff](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variant60b4cab92a79274a136997d7428609e985c89001ba6432ff455156bdc3e8a5a2.lean/declarations/mul-left-eq-self-iff--195cba7240a45219865b0a3e.md) | 103 | `result-track:195cba7240a45219865b0a3ec232c95342f53c2d102a9052938ccdec9282bf2b` |
| 10 | `lemma` | [eq_zero_of_double_le](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variant60b4cab92a79274a136997d7428609e985c89001ba6432ff455156bdc3e8a5a2.lean/declarations/eq-zero-of-double-le--3462c3829f45f3f6fba2eb0b.md) | 105 | `result-track:3462c3829f45f3f6fba2eb0b6685eef07bf7acca7e56b39c14d57b8b2267ae1f` |
| 11 | `lemma` | [le_div_two_iff_mul_two_le](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variant60b4cab92a79274a136997d7428609e985c89001ba6432ff455156bdc3e8a5a2.lean/declarations/le-div-two-iff-mul-two-le--e00e416cd2de56dae385a0d2.md) | 109 | `result-track:e00e416cd2de56dae385a0d2389168e31cba30f65454e4adab9e96666d63fb57` |
| 12 | `lemma` | [div_lt_self'](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variant60b4cab92a79274a136997d7428609e985c89001ba6432ff455156bdc3e8a5a2.lean/declarations/div-lt-self--4800709c7c6a472c293a2617.md) | 113 | `result-track:4800709c7c6a472c293a2617653304a34c720762d76f715a0a1159a1a3f822d4` |
| 13 | `lemma` | [le_div_iff_mul_le'](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variant60b4cab92a79274a136997d7428609e985c89001ba6432ff455156bdc3e8a5a2.lean/declarations/le-div-iff-mul-le--76fd61f4051f90316e170d26.md) | 117 | `result-track:76fd61f4051f90316e170d260c291802d05c665dc13baafb6ca51f955456589e` |
| 14 | `lemma` | [div_lt_iff_lt_mul'](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variant60b4cab92a79274a136997d7428609e985c89001ba6432ff455156bdc3e8a5a2.lean/declarations/div-lt-iff-lt-mul--9039919ec2b94c9d3cf62784.md) | 120 | `result-track:9039919ec2b94c9d3cf62784322e34db30f94288ade5fcd9d89d8a139111b28e` |
| 15 | `lemma` | [eq_zero_of_le_half](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variant60b4cab92a79274a136997d7428609e985c89001ba6432ff455156bdc3e8a5a2.lean/declarations/eq-zero-of-le-half--300d787f0aadf2398aab8ae2.md) | 124 | `result-track:300d787f0aadf2398aab8ae2ba7bbef8977fd13437238b37d87fc7311682fe11` |
| 16 | `lemma` | [le_half_of_half_lt_sub](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variant60b4cab92a79274a136997d7428609e985c89001ba6432ff455156bdc3e8a5a2.lean/declarations/le-half-of-half-lt-sub--430f04a3bda60082494b21d7.md) | 126 | `result-track:430f04a3bda60082494b21d702eb6d3ca4ddf60db6438e83489ed897e8a1e51d` |
| 17 | `lemma` | [half_le_of_sub_le_half](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variant60b4cab92a79274a136997d7428609e985c89001ba6432ff455156bdc3e8a5a2.lean/declarations/half-le-of-sub-le-half--aeb0e986d3af74f0b47cc829.md) | 128 | `result-track:aeb0e986d3af74f0b47cc829b943d79ceea446213ad698ad1e9062b9d4398a95` |
| 18 | `lemma` | [div_le_of_le_mul'](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variant60b4cab92a79274a136997d7428609e985c89001ba6432ff455156bdc3e8a5a2.lean/declarations/div-le-of-le-mul--8a6c4f0eb92479bc23b93dab.md) | 130 | `result-track:8a6c4f0eb92479bc23b93dab351751883e5d8a96f5955f082df1ace5013f4924` |
| 19 | `lemma` | [div_le_self'](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variant60b4cab92a79274a136997d7428609e985c89001ba6432ff455156bdc3e8a5a2.lean/declarations/div-le-self--a4c50fd3bd6316b26c4d98a4.md) | 132 | `result-track:a4c50fd3bd6316b26c4d98a40747c2dfc0a6f41e628854ee15b9f4c79d433857` |
| 20 | `lemma` | [two_mul_odd_div_two](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variant60b4cab92a79274a136997d7428609e985c89001ba6432ff455156bdc3e8a5a2.lean/declarations/two-mul-odd-div-two--df6a98e4e99c86d5c348f8c4.md) | 134 | `result-track:df6a98e4e99c86d5c348f8c4b6ad7680d5a0cc4b7f44e55440bc8dcd2884d74e` |
| 21 | `lemma` | [one_le_pow'](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variant60b4cab92a79274a136997d7428609e985c89001ba6432ff455156bdc3e8a5a2.lean/declarations/one-le-pow--c3adefca1212d94837b4503a.md) | 139 | `result-track:c3adefca1212d94837b4503ad595209e85e338d8cf83c5be625a9b9917280bac` |
| 22 | `lemma` | [rec_zero](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variant60b4cab92a79274a136997d7428609e985c89001ba6432ff455156bdc3e8a5a2.lean/declarations/rec-zero--d1e902054903c1b77086e025.md) | 151 | `result-track:d1e902054903c1b77086e0259960901d21b3400e22d837e1482c128779ec8b5c` |
| 23 | `lemma` | [rec_add_one](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variant60b4cab92a79274a136997d7428609e985c89001ba6432ff455156bdc3e8a5a2.lean/declarations/rec-add-one--930043e04f33aebd19e91614.md) | 154 | `result-track:930043e04f33aebd19e916148bc553d893c16d218e799b3beefec3a746abceb9` |
| 24 | `lemma` | [rec_one](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variant60b4cab92a79274a136997d7428609e985c89001ba6432ff455156bdc3e8a5a2.lean/declarations/rec-one--3dd41064304ce2cdf7507552.md) | 157 | `result-track:3dd41064304ce2cdf7507552d4ff63d82b05778afab2f3b75e640e073c6c092f` |
| 25 | `def` | [leRec](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variant60b4cab92a79274a136997d7428609e985c89001ba6432ff455156bdc3e8a5a2.lean/declarations/lerec--72eacd7c2e461bc890aa6ea5.md) | 172 | `declaration-track:72eacd7c2e461bc890aa6ea591decf04a218dafa61870be0408b79341118cd09` |
| 26 | `theorem` | [leRec_eq_leRec](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variant60b4cab92a79274a136997d7428609e985c89001ba6432ff455156bdc3e8a5a2.lean/declarations/lerec-eq-lerec--48c66c4311d7277afad84547.md) | 184 | `result-track:48c66c4311d7277afad84547cb3c654ef391974ff3bcf7a8eff39e7bd8567da0` |
| 27 | `lemma` | [leRec_self](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variant60b4cab92a79274a136997d7428609e985c89001ba6432ff455156bdc3e8a5a2.lean/declarations/lerec-self--493fb5d1bd8afe0276f07659.md) | 187 | `result-track:493fb5d1bd8afe0276f07659116b87857149401bcdabf051a6eff11053e88cfd` |
| 28 | `lemma` | [leRec_succ](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variant60b4cab92a79274a136997d7428609e985c89001ba6432ff455156bdc3e8a5a2.lean/declarations/lerec-succ--cfe7fb75e18e054cf565bbf9.md) | 195 | `result-track:cfe7fb75e18e054cf565bbf9ec208898dd23abc3348edaa452359132472d4050` |
| 29 | `lemma` | [leRec_succ'](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variant60b4cab92a79274a136997d7428609e985c89001ba6432ff455156bdc3e8a5a2.lean/declarations/lerec-succ--80e1727155c27c59e193a73b.md) | 205 | `result-track:80e1727155c27c59e193a73ba850e5fec677792092f9bdc8007939df0167eafd` |
| 30 | `lemma` | [leRec_trans](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variant60b4cab92a79274a136997d7428609e985c89001ba6432ff455156bdc3e8a5a2.lean/declarations/lerec-trans--8a1612fa802e0ad4f4154f1b.md) | 209 | `result-track:8a1612fa802e0ad4f4154f1bf39d4ab195454f4ca9e1524cf21f4ecfa4223320` |
| 31 | `lemma` | [leRec_succ_left](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variant60b4cab92a79274a136997d7428609e985c89001ba6432ff455156bdc3e8a5a2.lean/declarations/lerec-succ-left--241045534a44fdd18bbec9e8.md) | 219 | `result-track:241045534a44fdd18bbec9e899c877bf13472c1443b633edb0d9a9f852a9b4e0` |
| 32 | `def` | [leRecOn](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variant60b4cab92a79274a136997d7428609e985c89001ba6432ff455156bdc3e8a5a2.lean/declarations/lerecon--730b19c32e87070fad4a40e2.md) | 231 | `declaration-track:730b19c32e87070fad4a40e20243ae212d6e1cfefa20e374383302cea0d1bad9` |
| 33 | `lemma` | [leRecOn_self](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variant60b4cab92a79274a136997d7428609e985c89001ba6432ff455156bdc3e8a5a2.lean/declarations/lerecon-self--f1c5fc369b12a6b408f85714.md) | 234 | `result-track:f1c5fc369b12a6b408f8571404d5d79c9c96ec542f3ed617c83465bf27bfcbfa` |
| 34 | `lemma` | [leRecOn_succ](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variant60b4cab92a79274a136997d7428609e985c89001ba6432ff455156bdc3e8a5a2.lean/declarations/lerecon-succ--bfe00b4dd0b4b0107b10b54a.md) | 238 | `result-track:bfe00b4dd0b4b0107b10b54ac73c552bf928dd1be7195ddd10c858c7aecc65f2` |
| 35 | `lemma` | [leRecOn_succ'](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variant60b4cab92a79274a136997d7428609e985c89001ba6432ff455156bdc3e8a5a2.lean/declarations/lerecon-succ--6b3e995d67a36a89b71d6a67.md) | 242 | `result-track:6b3e995d67a36a89b71d6a675a4ae6155c84c6ab91c1876f3d23a34cba7f54b4` |
| 36 | `lemma` | [leRecOn_trans](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variant60b4cab92a79274a136997d7428609e985c89001ba6432ff455156bdc3e8a5a2.lean/declarations/lerecon-trans--d7c89c46474a6cc025505b1c.md) | 246 | `result-track:d7c89c46474a6cc025505b1c0dec875564658f0d9c4191e8e0ce397a057e6002` |
| 37 | `lemma` | [leRecOn_succ_left](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variant60b4cab92a79274a136997d7428609e985c89001ba6432ff455156bdc3e8a5a2.lean/declarations/lerecon-succ-left--217b8df20c778d0b58f4cbc4.md) | 251 | `result-track:217b8df20c778d0b58f4cbc4a99cd161362d06870f99ecdd133dec3a5c037340` |
| 38 | `def` | [strongRec'](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variant60b4cab92a79274a136997d7428609e985c89001ba6432ff455156bdc3e8a5a2.lean/declarations/strongrec--0c9bf859d4de433fa0351742.md) | 258 | `declaration-track:0c9bf859d4de433fa0351742164bc16d97d4c873a99e3d1ebba9719b4ea2fe1e` |
| 39 | `def` | [strongRecOn'](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variant60b4cab92a79274a136997d7428609e985c89001ba6432ff455156bdc3e8a5a2.lean/declarations/strongrecon--a5e271e4cb3e3c304265727c.md) | 263 | `declaration-track:a5e271e4cb3e3c304265727c4ab227d30b7e93ae7c5df36727bf96add24a0c75` |
| 40 | `lemma` | [strongRecOn'_beta](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variant60b4cab92a79274a136997d7428609e985c89001ba6432ff455156bdc3e8a5a2.lean/declarations/strongrecon-beta--3249d9576a940b55b5e97ecb.md) | 266 | `result-track:3249d9576a940b55b5e97ecb96e5b1d1e2b397a2b703e60cf1ecd0de1d4ddf38` |
| 41 | `lemma` | [le_induction](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variant60b4cab92a79274a136997d7428609e985c89001ba6432ff455156bdc3e8a5a2.lean/declarations/le-induction--751d4bb3fb1129c58d652eb5.md) | 276 | `result-track:751d4bb3fb1129c58d652eb5ea333089085b0482cca2c58ed3ceb0bb6a99eee8` |
| 42 | `def` | [twoStepInduction](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variant60b4cab92a79274a136997d7428609e985c89001ba6432ff455156bdc3e8a5a2.lean/declarations/twostepinduction--b42d92b98caf43e1d3b264ed.md) | 281 | `declaration-track:b42d92b98caf43e1d3b264ed23948bbc01cc2e3ab6dfe816f4436334d203e91f` |
| 43 | `theorem` | [strong_induction_on](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variant60b4cab92a79274a136997d7428609e985c89001ba6432ff455156bdc3e8a5a2.lean/declarations/strong-induction-on--735b650b643e800ba7540b89.md) | 288 | `result-track:735b650b643e800ba7540b89b5b6b5f871117eb67c391f1040e4712d07e89e05` |
| 44 | `theorem` | [case_strong_induction_on](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variant60b4cab92a79274a136997d7428609e985c89001ba6432ff455156bdc3e8a5a2.lean/declarations/case-strong-induction-on--37b66aea609c09d76a1e185b.md) | 292 | `result-track:37b66aea609c09d76a1e185bae55343084df5f76a62b558722c0391af2edcf58` |
| 45 | `def` | [decreasingInduction](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variant60b4cab92a79274a136997d7428609e985c89001ba6432ff455156bdc3e8a5a2.lean/declarations/decreasinginduction--cdb40bba8be8f15c69582c48.md) | 302 | `declaration-track:cdb40bba8be8f15c69582c48666ae732f17dc739cfcb99c418c8acb8ed7799da` |
| 46 | `lemma` | [decreasingInduction_self](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variant60b4cab92a79274a136997d7428609e985c89001ba6432ff455156bdc3e8a5a2.lean/declarations/decreasinginduction-self--9d039e52844e0265f4a3c099.md) | 311 | `result-track:9d039e52844e0265f4a3c0993d064eed4792a69a2bc52bec13d00a9f30139068` |
| 47 | `lemma` | [decreasingInduction_succ](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variant60b4cab92a79274a136997d7428609e985c89001ba6432ff455156bdc3e8a5a2.lean/declarations/decreasinginduction-succ--ea2b531a00f23354afa681a2.md) | 316 | `result-track:ea2b531a00f23354afa681a227e9b15674caaa5d4f7714f3ba52344a4ebf88c1` |
| 48 | `lemma` | [decreasingInduction_succ'](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variant60b4cab92a79274a136997d7428609e985c89001ba6432ff455156bdc3e8a5a2.lean/declarations/decreasinginduction-succ--fc338b05dcb71dcc49b2c984.md) | 324 | `result-track:fc338b05dcb71dcc49b2c984f8a876f74b91344029e84f30e08abf2fda04c458` |
| 49 | `lemma` | [decreasingInduction_trans](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variant60b4cab92a79274a136997d7428609e985c89001ba6432ff455156bdc3e8a5a2.lean/declarations/decreasinginduction-trans--b14e58bbd082eaa5756fb7db.md) | 328 | `result-track:b14e58bbd082eaa5756fb7db634946a721d096a16aaa14c14b2161e6ada3fcdc` |
| 50 | `lemma` | [decreasingInduction_succ_left](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variant60b4cab92a79274a136997d7428609e985c89001ba6432ff455156bdc3e8a5a2.lean/declarations/decreasinginduction-succ-left--41035262dc3091a97eaff0a8.md) | 337 | `result-track:41035262dc3091a97eaff0a865417a2bff9a3e89d6f4dd7f2786a8505e849f74` |
| 51 | `def` | [strongSubRecursion](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variant60b4cab92a79274a136997d7428609e985c89001ba6432ff455156bdc3e8a5a2.lean/declarations/strongsubrecursion--c867a5d6b1e9c3e8679b06b9.md) | 349 | `declaration-track:c867a5d6b1e9c3e8679b06b9f445377ccfb716ae0e17c9e047aff733508edebe` |
| 52 | `def` | [pincerRecursion](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variant60b4cab92a79274a136997d7428609e985c89001ba6432ff455156bdc3e8a5a2.lean/declarations/pincerrecursion--9d513367f7320937045854cd.md) | 360 | `declaration-track:9d513367f7320937045854cdd8991bb51416ef221f9d9fdcdd868c3b8321390d` |
| 53 | `def` | [decreasingInduction'](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variant60b4cab92a79274a136997d7428609e985c89001ba6432ff455156bdc3e8a5a2.lean/declarations/decreasinginduction--fcdcaf34a49cdfd47f71ef35.md) | 371 | `declaration-track:fcdcaf34a49cdfd47f71ef35a07f70c2c175654236204bac5cd8f9dbd3bd220b` |
| 54 | `theorem` | [diag_induction](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variant60b4cab92a79274a136997d7428609e985c89001ba6432ff455156bdc3e8a5a2.lean/declarations/diag-induction--0f96584ec3e9ab83abf55c06.md) | 383 | `result-track:0f96584ec3e9ab83abf55c06da261813972d62ac535dba1a3abc364db3b7a07c` |
| 55 | `lemma` | [not_pos_pow_dvd](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variant60b4cab92a79274a136997d7428609e985c89001ba6432ff455156bdc3e8a5a2.lean/declarations/not-pos-pow-dvd--f281670ef1feaa73367ebdc9.md) | 399 | `result-track:f281670ef1feaa73367ebdc99965800d75b87339bfe6338630cfb6ca9d4d0139` |
| 56 | `theorem` | [not_dvd_of_between_consec_multiples](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variant60b4cab92a79274a136997d7428609e985c89001ba6432ff455156bdc3e8a5a2.lean/declarations/not-dvd-of-between-consec-multiples--f89bbda8e95c0826bc0e2017.md) | 404 | `result-track:f89bbda8e95c0826bc0e20176d9b99e1b6009bbe0245fd6e89c5b7accf7edde9` |
| 57 | `theorem` | [not_two_dvd_bit1](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variant60b4cab92a79274a136997d7428609e985c89001ba6432ff455156bdc3e8a5a2.lean/declarations/not-two-dvd-bit1--101508e64673161e664085e4.md) | 408 | `result-track:101508e64673161e664085e4a92626bab761ee4d57231212ee617592e723aff1` |
| 58 | `lemma` | [dvd_add_self_left](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variant60b4cab92a79274a136997d7428609e985c89001ba6432ff455156bdc3e8a5a2.lean/declarations/dvd-add-self-left--8cd02b0bafa9d3279584f499.md) | 412 | `result-track:8cd02b0bafa9d3279584f499a34a84cbe6cb28bd44b88d5aecc3ff085e988df3` |
| 59 | `lemma` | [dvd_add_self_right](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variant60b4cab92a79274a136997d7428609e985c89001ba6432ff455156bdc3e8a5a2.lean/declarations/dvd-add-self-right--b6e91234534376c6ffb43467.md) | 415 | `result-track:b6e91234534376c6ffb434672ecb478adb7f1aba8daf69331f390bcaf56343bb` |
| 60 | `lemma` | [not_dvd_iff_between_consec_multiples](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variant60b4cab92a79274a136997d7428609e985c89001ba6432ff455156bdc3e8a5a2.lean/declarations/not-dvd-iff-between-consec-multiples--9f6e8381639838dec09f6b3d.md) | 418 | `result-track:9f6e8381639838dec09f6b3d58871a77574578657e40bbd86271ec3deee92de9` |
| 61 | `lemma` | [dvd_right_iff_eq](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variant60b4cab92a79274a136997d7428609e985c89001ba6432ff455156bdc3e8a5a2.lean/declarations/dvd-right-iff-eq--e4f1fa8a3d47db3149f29000.md) | 423 | `result-track:e4f1fa8a3d47db3149f290006d17364750a5f682190de0da90ab63478ca56bd0` |
| 62 | `lemma` | [dvd_left_iff_eq](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variant60b4cab92a79274a136997d7428609e985c89001ba6432ff455156bdc3e8a5a2.lean/declarations/dvd-left-iff-eq--51f20a7523fe674d333764dd.md) | 428 | `result-track:51f20a7523fe674d333764dd63f035dc41be4bc57898d7c76c6eb6f83ba6d3dd` |
| 63 | `instance` | [decidableLoHi](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variant60b4cab92a79274a136997d7428609e985c89001ba6432ff455156bdc3e8a5a2.lean/declarations/decidablelohi--d274e5f711ac5575a908e8b6.md) | 434 | `declaration-track:d274e5f711ac5575a908e8b6058b9fc1e637f5af9f553197a2235c28f9254293` |
| 64 | `instance` | [decidableLoHiLe](../../../../mathematics/FoundationsLogicAndTypeTheory/Init/Variant60b4cab92a79274a136997d7428609e985c89001ba6432ff455156bdc3e8a5a2.lean/declarations/decidablelohile--9af70076cc4afb12b3486f14.md) | 442 | `declaration-track:9af70076cc4afb12b3486f1429c900efdd2d1cf5014b24280a14de273b01cd71` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
