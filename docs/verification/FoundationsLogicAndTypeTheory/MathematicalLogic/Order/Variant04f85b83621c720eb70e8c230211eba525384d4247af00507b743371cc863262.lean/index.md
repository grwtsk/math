# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Order.Variant04f85b83621c720eb70e8c230211eba525384d4247af00507b743371cc863262

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fe3f31c2150304695f9e2012a1b2b3ef11cf42c0",
  "lexical_observation_count": 51,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Order/Variant04f85b83621c720eb70e8c230211eba525384d4247af00507b743371cc863262.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Order/Variant04f85b83621c720eb70e8c230211eba525384d4247af00507b743371cc863262.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Order/Variant04f85b83621c720eb70e8c230211eba525384d4247af00507b743371cc863262.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fe3f31c2150304695f9e2012a1b2b3ef11cf42c0`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Order/Variant04f85b83621c720eb70e8c230211eba525384d4247af00507b743371cc863262.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Order/Variant04f85b83621c720eb70e8c230211eba525384d4247af00507b743371cc863262.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Module.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.DFinsupp.Module` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Order/Variant04f85b83621c720eb70e8c230211eba525384d4247af00507b743371cc863262.lean/declarations/instance--45aaf59b4f295856bd24271e.md) | 44 | `declaration-track:45aaf59b4f295856bd24271e9075e8f252453120f71895c5924c98f1e31e516c` |
| 2 | `lemma` | [le_def](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Order/Variant04f85b83621c720eb70e8c230211eba525384d4247af00507b743371cc863262.lean/declarations/le-def--6fe0f8ae161fcc8115917cb3.md) | 47 | `result-track:6fe0f8ae161fcc8115917cb3bb71e7ed46bb630f30a269f48118cc2fe73f8e8a` |
| 3 | `lemma` | [coe_le_coe](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Order/Variant04f85b83621c720eb70e8c230211eba525384d4247af00507b743371cc863262.lean/declarations/coe-le-coe--78444c507d50eff3836e2107.md) | 49 | `result-track:78444c507d50eff3836e2107e6e980f8eb0ea6c97058065eb17ba7d363f01f95` |
| 4 | `def` | [orderEmbeddingToFun](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Order/Variant04f85b83621c720eb70e8c230211eba525384d4247af00507b743371cc863262.lean/declarations/orderembeddingtofun--0243d006c4fec8af4a292376.md) | 52 | `declaration-track:0243d006c4fec8af4a29237665dad9a35307c32065e6d673089ae05e572abb1a` |
| 5 | `lemma` | [coe_orderEmbeddingToFun](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Order/Variant04f85b83621c720eb70e8c230211eba525384d4247af00507b743371cc863262.lean/declarations/coe-orderembeddingtofun--f4f3dae75ef041b7c5314f7a.md) | 58 | `result-track:f4f3dae75ef041b7c5314f7a1cbc53e2e5e88dc2f52705f72b8ddd3c5ef31ea3` |
| 6 | `theorem` | [orderEmbeddingToFun_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Order/Variant04f85b83621c720eb70e8c230211eba525384d4247af00507b743371cc863262.lean/declarations/orderembeddingtofun-apply--4188da411c019ff6fbf70447.md) | 60 | `result-track:4188da411c019ff6fbf704477ea5225c9bac9eddb80814c823bc26f628a309ec` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Order/Variant04f85b83621c720eb70e8c230211eba525384d4247af00507b743371cc863262.lean/declarations/instance--631426a4081c8a8ed1652ad4.md) | 69 | `declaration-track:631426a4081c8a8ed1652ad4aebf80afaa51e75693b34039d047be01e6125134` |
| 8 | `lemma` | [lt_def](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Order/Variant04f85b83621c720eb70e8c230211eba525384d4247af00507b743371cc863262.lean/declarations/lt-def--b1fde4a4a1601b2893c640d6.md) | 74 | `result-track:b1fde4a4a1601b2893c640d63e14c5d8f9b02f803601dd2d01b02a961a0de062` |
| 9 | `lemma` | [coe_lt_coe](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Order/Variant04f85b83621c720eb70e8c230211eba525384d4247af00507b743371cc863262.lean/declarations/coe-lt-coe--528b072716e1f820f77305a9.md) | 75 | `result-track:528b072716e1f820f77305a9477a4f6e0b7059d3c55564934f92ea06c0d2dcc5` |
| 10 | `lemma` | [coe_mono](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Order/Variant04f85b83621c720eb70e8c230211eba525384d4247af00507b743371cc863262.lean/declarations/coe-mono--d4968b5d8b7713b2367c71d8.md) | 77 | `result-track:d4968b5d8b7713b2367c71d8f78e6ddf33cc56044cda94433e385b18ec2b2f82` |
| 11 | `lemma` | [coe_strictMono](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Order/Variant04f85b83621c720eb70e8c230211eba525384d4247af00507b743371cc863262.lean/declarations/coe-strictmono--931c57e14918a271247f7b85.md) | 79 | `result-track:931c57e14918a271247f7b85e9921d65fb10cba5d2fe35bb2cfae8a79eb70e73` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Order/Variant04f85b83621c720eb70e8c230211eba525384d4247af00507b743371cc863262.lean/declarations/instance--d8378e42eb33f1911219b545.md) | 83 | `declaration-track:d8378e42eb33f1911219b545e6e31a877b008eaa4fb8b0bfe08579b1afba2460` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Order/Variant04f85b83621c720eb70e8c230211eba525384d4247af00507b743371cc863262.lean/declarations/instance--3b18fdc6eb38e8be1fbc688b.md) | 87 | `declaration-track:3b18fdc6eb38e8be1fbc688bac42fd983095c5e2752a4e9b7487f14e2d0c9bef` |
| 14 | `lemma` | [coe_inf](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Order/Variant04f85b83621c720eb70e8c230211eba525384d4247af00507b743371cc863262.lean/declarations/coe-inf--5c14c497a59b13ebdde0553d.md) | 95 | `result-track:5c14c497a59b13ebdde0553d36b6101c09384c7a2b668c6948b418b87493450d` |
| 15 | `theorem` | [inf_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Order/Variant04f85b83621c720eb70e8c230211eba525384d4247af00507b743371cc863262.lean/declarations/inf-apply--36a05c12243b8d3cd419244f.md) | 97 | `result-track:36a05c12243b8d3cd419244fd8aecfce42cd52ab9e42785fcf59d5cf04c36f50` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Order/Variant04f85b83621c720eb70e8c230211eba525384d4247af00507b743371cc863262.lean/declarations/instance--48eea90192447415a32b8e1e.md) | 100 | `declaration-track:48eea90192447415a32b8e1e1ca04a28b4fb6cd3d9473cbec44635a36e432c11` |
| 17 | `lemma` | [coe_sup](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Order/Variant04f85b83621c720eb70e8c230211eba525384d4247af00507b743371cc863262.lean/declarations/coe-sup--3021113370e4c0860db85df7.md) | 108 | `result-track:3021113370e4c0860db85df7c7a34a11f1a03691d801ec066a0a09cb59232f2a` |
| 18 | `theorem` | [sup_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Order/Variant04f85b83621c720eb70e8c230211eba525384d4247af00507b743371cc863262.lean/declarations/sup-apply--fd20936aeb8e4a567c8fd1a7.md) | 110 | `result-track:fd20936aeb8e4a567c8fd1a7f08b30130e48dc614b6488a4f21b59e9964acee0` |
| 19 | `instance` | [lattice](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Order/Variant04f85b83621c720eb70e8c230211eba525384d4247af00507b743371cc863262.lean/declarations/lattice--4a395b51dcc861bd152a24c1.md) | 116 | `declaration-track:4a395b51dcc861bd152a24c14f1931bb3e059bba6987ca85aa36111807fa0700` |
| 20 | `theorem` | [support_inf_union_support_sup](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Order/Variant04f85b83621c720eb70e8c230211eba525384d4247af00507b743371cc863262.lean/declarations/support-inf-union-support-sup--3f573ac89289b10a3efe5f1e.md) | 122 | `result-track:3f573ac89289b10a3efe5f1ecc568ea7692df7481c209d6bc959911b43d7b1bc` |
| 21 | `theorem` | [support_sup_union_support_inf](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Order/Variant04f85b83621c720eb70e8c230211eba525384d4247af00507b743371cc863262.lean/declarations/support-sup-union-support-inf--d1a81ed846bc1d20cf50e1b0.md) | 125 | `result-track:d1a81ed846bc1d20cf50e1b0e0b1b6b99348315c0ba76f15fd98e5019011b227` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Order/Variant04f85b83621c720eb70e8c230211eba525384d4247af00507b743371cc863262.lean/declarations/instance--a8dfd3f1f8f35da62782bee2.md) | 133 | `declaration-track:a8dfd3f1f8f35da62782bee2dd08817636a5d13388d82dccd15c18b6ef2756bf` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Order/Variant04f85b83621c720eb70e8c230211eba525384d4247af00507b743371cc863262.lean/declarations/instance--0cb5f259ee7b3a0a93192290.md) | 137 | `declaration-track:0cb5f259ee7b3a0a93192290749c5b54a92cac798ecb98db139a8f4655fcf83c` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Order/Variant04f85b83621c720eb70e8c230211eba525384d4247af00507b743371cc863262.lean/declarations/instance--7c6a726b720dc0e23f27934d.md) | 142 | `declaration-track:7c6a726b720dc0e23f27934dc67894d915e1580f95ed95ac3565f8753881bcd1` |
| 25 | `instance` | [instPosSMulMono](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Order/Variant04f85b83621c720eb70e8c230211eba525384d4247af00507b743371cc863262.lean/declarations/instpossmulmono--6aa4001726d0a4146b08b6c1.md) | 150 | `declaration-track:6aa4001726d0a4146b08b6c18a926715247d9651bf84a6b9862796f2d3829d2c` |
| 26 | `instance` | [instSMulPosMono](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Order/Variant04f85b83621c720eb70e8c230211eba525384d4247af00507b743371cc863262.lean/declarations/instsmulposmono--5e6093c4428e85277ea10a71.md) | 153 | `declaration-track:5e6093c4428e85277ea10a7128faf54c2b22529b745c65cc3cb8fdd705bd8f6a` |
| 27 | `instance` | [instPosSMulReflectLE](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Order/Variant04f85b83621c720eb70e8c230211eba525384d4247af00507b743371cc863262.lean/declarations/instpossmulreflectle--09d1d45a8956d827ef89024e.md) | 156 | `declaration-track:09d1d45a8956d827ef89024efa0f7154e0e1ca7c34c7312e2fee39e8a4e1184d` |
| 28 | `instance` | [instSMulPosReflectLE](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Order/Variant04f85b83621c720eb70e8c230211eba525384d4247af00507b743371cc863262.lean/declarations/instsmulposreflectle--ef6e198cd70dbd52c9f1899b.md) | 159 | `declaration-track:ef6e198cd70dbd52c9f1899bd666b69b5dbd405ef263d270665ab3ec4925c8de` |
| 29 | `instance` | [instPosSMulStrictMono](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Order/Variant04f85b83621c720eb70e8c230211eba525384d4247af00507b743371cc863262.lean/declarations/instpossmulstrictmono--c77e7613e0b4723f19d524f1.md) | 168 | `declaration-track:c77e7613e0b4723f19d524f105732987c55b54491e62bab174882b3e6ad2b2ff` |
| 30 | `instance` | [instSMulPosStrictMono](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Order/Variant04f85b83621c720eb70e8c230211eba525384d4247af00507b743371cc863262.lean/declarations/instsmulposstrictmono--efd3bb64d7d3e680938b59cb.md) | 171 | `declaration-track:efd3bb64d7d3e680938b59cb8aa9b98ba99fe2367b7b94b19027a0f8a9218542` |
| 31 | `instance` | [instSMulPosReflectLT](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Order/Variant04f85b83621c720eb70e8c230211eba525384d4247af00507b743371cc863262.lean/declarations/instsmulposreflectlt--1209b24d3ddabcf1336800a1.md) | 177 | `declaration-track:1209b24d3ddabcf1336800a11a5ca436f20e22aad8e220415e48ba6681e4d95e` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Order/Variant04f85b83621c720eb70e8c230211eba525384d4247af00507b743371cc863262.lean/declarations/instance--c673bb26b353ba929bcea0b1.md) | 186 | `declaration-track:c673bb26b353ba929bcea0b1a098b85cc26e878776757338881866193aa2c627` |
| 33 | `theorem` | [bot_eq_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Order/Variant04f85b83621c720eb70e8c230211eba525384d4247af00507b743371cc863262.lean/declarations/bot-eq-zero--f4d4602fa5f82c77453508bf.md) | 192 | `result-track:f4d4602fa5f82c77453508bfa92388417e53e298faaa7a0c8a3064c9342daa67` |
| 34 | `theorem` | [add_eq_zero_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Order/Variant04f85b83621c720eb70e8c230211eba525384d4247af00507b743371cc863262.lean/declarations/add-eq-zero-iff--49d8971e6b58ba431308f872.md) | 196 | `result-track:49d8971e6b58ba431308f8729753fa4f34d52858bcfd318d8e5f036001383550` |
| 35 | `theorem` | [le_iff'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Order/Variant04f85b83621c720eb70e8c230211eba525384d4247af00507b743371cc863262.lean/declarations/le-iff--3ddb981a4dab70b22b097323.md) | 207 | `result-track:3ddb981a4dab70b22b097323a117fa336778a670a30e0257ec0ac45960e4f78b` |
| 36 | `theorem` | [le_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Order/Variant04f85b83621c720eb70e8c230211eba525384d4247af00507b743371cc863262.lean/declarations/le-iff--5f8996d0f5c3dd36b9d30038.md) | 211 | `result-track:5f8996d0f5c3dd36b9d3003808d2b3a7ce1ff6550cf7a1aa56ebd064fd64b690` |
| 37 | `lemma` | [support_monotone](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Order/Variant04f85b83621c720eb70e8c230211eba525384d4247af00507b743371cc863262.lean/declarations/support-monotone--597c73ee2665a7c57353892f.md) | 214 | `result-track:597c73ee2665a7c57353892f52f2233c15c23560c7d9fb3cd6e990ca35d93953` |
| 38 | `lemma` | [support_mono](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Order/Variant04f85b83621c720eb70e8c230211eba525384d4247af00507b743371cc863262.lean/declarations/support-mono--57b4efcbbcefe36fc5c54dc9.md) | 217 | `result-track:57b4efcbbcefe36fc5c54dc92abfcd725ea88cff2faae016a53e968a4f604182` |
| 39 | `instance` | [decidableLE](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Order/Variant04f85b83621c720eb70e8c230211eba525384d4247af00507b743371cc863262.lean/declarations/decidablele--62012742b7bb54e51a719c9b.md) | 220 | `declaration-track:62012742b7bb54e51a719c9bb3d211a4e4693f14a20b783809cec06385b37b56` |
| 40 | `theorem` | [single_le_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Order/Variant04f85b83621c720eb70e8c230211eba525384d4247af00507b743371cc863262.lean/declarations/single-le-iff--235a946c8eafb4e6b75c4cc3.md) | 226 | `result-track:235a946c8eafb4e6b75c4cc3fec7c6801e5d4d1237d541a648a1f7e45c90d436` |
| 41 | `instance` | [tsub](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Order/Variant04f85b83621c720eb70e8c230211eba525384d4247af00507b743371cc863262.lean/declarations/tsub--b9dc5c78fc6284ea096561db.md) | 236 | `declaration-track:b9dc5c78fc6284ea096561dbe7dc6d53c5d57a8b4d90e28a0ed7c87e554d696c` |
| 42 | `theorem` | [tsub_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Order/Variant04f85b83621c720eb70e8c230211eba525384d4247af00507b743371cc863262.lean/declarations/tsub-apply--3bdefcd1cf0a07bf242e7d48.md) | 241 | `result-track:3bdefcd1cf0a07bf242e7d4878b7a49a7d8e8cee8ef9f2c8ae7fc64dd6d23a71` |
| 43 | `theorem` | [coe_tsub](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Order/Variant04f85b83621c720eb70e8c230211eba525384d4247af00507b743371cc863262.lean/declarations/coe-tsub--9f25713b5ee9515d88d5caf8.md) | 245 | `result-track:9f25713b5ee9515d88d5caf8b5f299ee03b2a1fd166d8560b01a40d59236f700` |
| 44 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Order/Variant04f85b83621c720eb70e8c230211eba525384d4247af00507b743371cc863262.lean/declarations/instance--70900c6fc7d8dd62e5c3ed98.md) | 251 | `declaration-track:70900c6fc7d8dd62e5c3ed9840710bf2abd1102aed6d45e34d249e09a36f59da` |
| 45 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Order/Variant04f85b83621c720eb70e8c230211eba525384d4247af00507b743371cc863262.lean/declarations/instance--7a5471db8f130ad897d7f28e.md) | 254 | `declaration-track:7a5471db8f130ad897d7f28e25e973f683629a6308b6f1e5f289c0f7cef2dc7e` |
| 46 | `theorem` | [single_tsub](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Order/Variant04f85b83621c720eb70e8c230211eba525384d4247af00507b743371cc863262.lean/declarations/single-tsub--f0867203676583342b805e69.md) | 265 | `result-track:f0867203676583342b805e692a57b1b15814292bad42bc5ddb338688e9f14743` |
| 47 | `theorem` | [support_tsub](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Order/Variant04f85b83621c720eb70e8c230211eba525384d4247af00507b743371cc863262.lean/declarations/support-tsub--e6c497f05d14e02ce5852f6b.md) | 273 | `result-track:e6c497f05d14e02ce5852f6baf0232bef65d8d631677b1823f1ba28b48b70d14` |
| 48 | `theorem` | [subset_support_tsub](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Order/Variant04f85b83621c720eb70e8c230211eba525384d4247af00507b743371cc863262.lean/declarations/subset-support-tsub--5deeedbd6c4dfbabbcf0f8b6.md) | 277 | `result-track:5deeedbd6c4dfbabbcf0f8b6a5d5e4449c695cd44660a98c18eb30b6ee44839d` |
| 49 | `theorem` | [support_inf](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Order/Variant04f85b83621c720eb70e8c230211eba525384d4247af00507b743371cc863262.lean/declarations/support-inf--9a46488994b2de229e12b3d1.md) | 287 | `result-track:9a46488994b2de229e12b3d1c3a32054432c0eb8e52bfc3996f0d206d1b8fce4` |
| 50 | `theorem` | [support_sup](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Order/Variant04f85b83621c720eb70e8c230211eba525384d4247af00507b743371cc863262.lean/declarations/support-sup--6d5f3d510afcf84bc6e8c1e8.md) | 293 | `result-track:6d5f3d510afcf84bc6e8c1e87dbafae84f9cd1340ac20f8208d6f962f080b72f` |
| 51 | `theorem` | [disjoint_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Order/Variant04f85b83621c720eb70e8c230211eba525384d4247af00507b743371cc863262.lean/declarations/disjoint-iff--0f9e379e3ffd383a07867296.md) | 298 | `result-track:0f9e379e3ffd383a07867296e28f22a8c34f12ec40072ac829f8ead271a03521` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
