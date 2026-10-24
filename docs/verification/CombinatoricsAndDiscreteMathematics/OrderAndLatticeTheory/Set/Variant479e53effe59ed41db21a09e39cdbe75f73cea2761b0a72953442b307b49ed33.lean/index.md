# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Set.Variant479e53effe59ed41db21a09e39cdbe75f73cea2761b0a72953442b307b49ed33

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b7988dae22ecf9c892f3b16bceeef7f9f7b93a4e",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variant479e53effe59ed41db21a09e39cdbe75f73cea2761b0a72953442b307b49ed33.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variant479e53effe59ed41db21a09e39cdbe75f73cea2761b0a72953442b307b49ed33.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variant479e53effe59ed41db21a09e39cdbe75f73cea2761b0a72953442b307b49ed33.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b7988dae22ecf9c892f3b16bceeef7f9f7b93a4e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variant479e53effe59ed41db21a09e39cdbe75f73cea2761b0a72953442b307b49ed33.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variant479e53effe59ed41db21a09e39cdbe75f73cea2761b0a72953442b307b49ed33.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.Equiv.Set` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Hom.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Set.Defs` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Order.WellFounded` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.MinImports` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sumEquiv](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variant479e53effe59ed41db21a09e39cdbe75f73cea2761b0a72953442b307b49ed33.lean/declarations/sumequiv--799e71cde00b737fcff8abf2.md) | 32 | `declaration-track:799e71cde00b737fcff8abf27f55e1976dd72469f6fa88d25226f359f39b7290` |
| 2 | `theorem` | [range_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variant479e53effe59ed41db21a09e39cdbe75f73cea2761b0a72953442b307b49ed33.lean/declarations/range-eq--716a44100ff8678445b15df3.md) | 48 | `result-track:716a44100ff8678445b15df3624e05f83e5d389e8ed93624203950647789e679` |
| 3 | `theorem` | [symm_image_image](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variant479e53effe59ed41db21a09e39cdbe75f73cea2761b0a72953442b307b49ed33.lean/declarations/symm-image-image--fee8e2c32f2d0f1aa5028d19.md) | 52 | `result-track:fee8e2c32f2d0f1aa5028d19f3b938a48838c526c01847a66498b722a6ec2baf` |
| 4 | `theorem` | [image_symm_image](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variant479e53effe59ed41db21a09e39cdbe75f73cea2761b0a72953442b307b49ed33.lean/declarations/image-symm-image--47d8345ef5d67bf3cde2d098.md) | 56 | `result-track:47d8345ef5d67bf3cde2d0982cfc43ece49657ab5cbf20d3524f435d702f8186` |
| 5 | `theorem` | [image_eq_preimage](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variant479e53effe59ed41db21a09e39cdbe75f73cea2761b0a72953442b307b49ed33.lean/declarations/image-eq-preimage--03b21a64ddc7f9aa244d0c69.md) | 59 | `result-track:03b21a64ddc7f9aa244d0c694d7e4ffecc84770f8351c1715dc43b4938c79339` |
| 6 | `theorem` | [preimage_symm_preimage](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variant479e53effe59ed41db21a09e39cdbe75f73cea2761b0a72953442b307b49ed33.lean/declarations/preimage-symm-preimage--5198cc227fb589040cb2d457.md) | 63 | `result-track:5198cc227fb589040cb2d457bb927acfd23e974d434cf32b342f19c09dfdefd8` |
| 7 | `theorem` | [symm_preimage_preimage](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variant479e53effe59ed41db21a09e39cdbe75f73cea2761b0a72953442b307b49ed33.lean/declarations/symm-preimage-preimage--55a485ce5ca4e355a78f4857.md) | 67 | `result-track:55a485ce5ca4e355a78f48575de5696877def05dbc80cb3f4a6bca56da238a8a` |
| 8 | `theorem` | [image_preimage](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variant479e53effe59ed41db21a09e39cdbe75f73cea2761b0a72953442b307b49ed33.lean/declarations/image-preimage--055d16c80ec49d113a2123a5.md) | 71 | `result-track:055d16c80ec49d113a2123a59f45aebcc6773b557f3506959275d6092db9c827` |
| 9 | `theorem` | [preimage_image](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variant479e53effe59ed41db21a09e39cdbe75f73cea2761b0a72953442b307b49ed33.lean/declarations/preimage-image--e0917fc910813dbc060980fa.md) | 75 | `result-track:e0917fc910813dbc060980fa398119e739e177b82e7541a961f5e3facad456be` |
| 10 | `def` | [setCongr](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variant479e53effe59ed41db21a09e39cdbe75f73cea2761b0a72953442b307b49ed33.lean/declarations/setcongr--22af27ec2b3ea2b43c814098.md) | 85 | `declaration-track:22af27ec2b3ea2b43c8140985b03e6a33379a86cbd5a8eef70a9f1c6ae423abd` |
| 11 | `def` | [Set.univ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variant479e53effe59ed41db21a09e39cdbe75f73cea2761b0a72953442b307b49ed33.lean/declarations/set-univ--efae76f8578c847b4f9ceab6.md) | 91 | `declaration-track:efae76f8578c847b4f9ceab6eaad470c8b84642952ee72164a517cdff64f63c2` |
| 12 | `def` | [OrderEmbedding.orderIso](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variant479e53effe59ed41db21a09e39cdbe75f73cea2761b0a72953442b307b49ed33.lean/declarations/orderembedding-orderiso--e0b7e54674fa40b8ae8864a0.md) | 99 | `declaration-track:e0b7e54674fa40b8ae8864a01d2bb3e8e293ffceabdc8e94abf0934b7c752aac` |
| 13 | `def` | [StrictMonoOn.orderIso](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variant479e53effe59ed41db21a09e39cdbe75f73cea2761b0a72953442b307b49ed33.lean/declarations/strictmonoon-orderiso--1566853dccc3cdfa2884d0fe.md) | 106 | `declaration-track:1566853dccc3cdfa2884d0fe60ae0c3518eea3cae9ede8d5d07559b0d5ffe80f` |
| 14 | `def` | [orderIso](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variant479e53effe59ed41db21a09e39cdbe75f73cea2761b0a72953442b307b49ed33.lean/declarations/orderiso--e2c0c6a3cc619f7b5c3eef6d.md) | 120 | `declaration-track:e2c0c6a3cc619f7b5c3eef6d8ffc2c6f48ebe9fd1eb0a9c672c7f828e7dd5527` |
| 15 | `def` | [orderIsoOfSurjective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variant479e53effe59ed41db21a09e39cdbe75f73cea2761b0a72953442b307b49ed33.lean/declarations/orderisoofsurjective--f547bd5a6e1ffb60f48f8917.md) | 126 | `declaration-track:f547bd5a6e1ffb60f48f89170db3717ebbbd4857718ed04afdca74a9484f25e1` |
| 16 | `theorem` | [coe_orderIsoOfSurjective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variant479e53effe59ed41db21a09e39cdbe75f73cea2761b0a72953442b307b49ed33.lean/declarations/coe-orderisoofsurjective--28a86dc9fb718f13a8e5b3e7.md) | 131 | `result-track:28a86dc9fb718f13a8e5b3e7024f429f61b5afa229564b1fe3f464701dc205bb` |
| 17 | `theorem` | [orderIsoOfSurjective_symm_apply_self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variant479e53effe59ed41db21a09e39cdbe75f73cea2761b0a72953442b307b49ed33.lean/declarations/orderisoofsurjective-symm-apply-self--ac87269f89f61f6c606c7137.md) | 135 | `result-track:ac87269f89f61f6c606c71370f3cdd4f743f08ca03d16c43f86eae870a640897` |
| 18 | `theorem` | [orderIsoOfSurjective_self_symm_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variant479e53effe59ed41db21a09e39cdbe75f73cea2761b0a72953442b307b49ed33.lean/declarations/orderisoofsurjective-self-symm-apply--c5a7cde68408cb4ef0d3ef8b.md) | 139 | `result-track:c5a7cde68408cb4ef0d3ef8b735c642a80b092931d4d198e5119cbfcab72efd3` |
| 19 | `lemma` | [OrderEmbedding.range_inj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variant479e53effe59ed41db21a09e39cdbe75f73cea2761b0a72953442b307b49ed33.lean/declarations/orderembedding-range-inj--1f3d733531ddbd6083052c31.md) | 146 | `result-track:1f3d733531ddbd6083052c31749efdb2f8f0d101ef2cb3224c68cf9f443f2bd8` |
| 20 | `instance` | [subsingleton_of_wellFoundedLT](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variant479e53effe59ed41db21a09e39cdbe75f73cea2761b0a72953442b307b49ed33.lean/declarations/subsingleton-of-wellfoundedlt--2687557ba71b723a36f5ce00.md) | 155 | `declaration-track:2687557ba71b723a36f5ce005cdbba3aae2cfc9054f032f692ebe3c568195ce1` |
| 21 | `instance` | [subsingleton_of_wellFoundedLT'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variant479e53effe59ed41db21a09e39cdbe75f73cea2761b0a72953442b307b49ed33.lean/declarations/subsingleton-of-wellfoundedlt--9be42a10c77b19baefdc768f.md) | 161 | `declaration-track:9be42a10c77b19baefdc768f6baf34a56319ce0addf276b8baac6bafd3a3aa55` |
| 22 | `instance` | [unique_of_wellFoundedLT](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variant479e53effe59ed41db21a09e39cdbe75f73cea2761b0a72953442b307b49ed33.lean/declarations/unique-of-wellfoundedlt--bb98097359851cbe277d0fdc.md) | 167 | `declaration-track:bb98097359851cbe277d0fdc79a0bcef9f51f76ea659539cb1b29eb81ba4b22c` |
| 23 | `instance` | [subsingleton_of_wellFoundedGT](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variant479e53effe59ed41db21a09e39cdbe75f73cea2761b0a72953442b307b49ed33.lean/declarations/subsingleton-of-wellfoundedgt--f26c9145a50ed2e74844e3da.md) | 169 | `declaration-track:f26c9145a50ed2e74844e3da8a863b48339a1ec0770fb0d36a48b6967f32ce0f` |
| 24 | `instance` | [subsingleton_of_wellFoundedGT'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variant479e53effe59ed41db21a09e39cdbe75f73cea2761b0a72953442b307b49ed33.lean/declarations/subsingleton-of-wellfoundedgt--25f67f8a1d899db3221dcaf9.md) | 175 | `declaration-track:25f67f8a1d899db3221dcaf9d954648b8b86d474d3a5f3623b949534b8a49837` |
| 25 | `instance` | [unique_of_wellFoundedGT](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variant479e53effe59ed41db21a09e39cdbe75f73cea2761b0a72953442b307b49ed33.lean/declarations/unique-of-wellfoundedgt--758eb63378c3b3ce5ec06315.md) | 181 | `declaration-track:758eb63378c3b3ce5ec063154e461dbe6d7653e60fc14259451326a24a1a5410` |
| 26 | `def` | [Iic](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variant479e53effe59ed41db21a09e39cdbe75f73cea2761b0a72953442b307b49ed33.lean/declarations/iic--01837ae288e34b6b1c2520ea.md) | 185 | `declaration-track:01837ae288e34b6b1c2520eac252c260920df3d70837452f9ab25580b56570fd` |
| 27 | `def` | [Ici](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variant479e53effe59ed41db21a09e39cdbe75f73cea2761b0a72953442b307b49ed33.lean/declarations/ici--a17e48a1937eb4502541ba48.md) | 195 | `declaration-track:a17e48a1937eb4502541ba483d5d639a463b8bc00cd6e711571d8588f3209d47` |
| 28 | `def` | [Icc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variant479e53effe59ed41db21a09e39cdbe75f73cea2761b0a72953442b307b49ed33.lean/declarations/icc--b08010f14f87da8a130fb241.md) | 205 | `declaration-track:b08010f14f87da8a130fb2413e79f703c136d2f1f9a09e3244f4990714f573ab` |
| 29 | `def` | [OrderIso.compl](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variant479e53effe59ed41db21a09e39cdbe75f73cea2761b0a72953442b307b49ed33.lean/declarations/orderiso-compl--fa7f88ef52d61b4121b9293a.md) | 221 | `declaration-track:fa7f88ef52d61b4121b9293a9101ec3ed48276fcbf411b26c3b8c56c834ad7da` |
| 30 | `theorem` | [compl_strictAnti](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variant479e53effe59ed41db21a09e39cdbe75f73cea2761b0a72953442b307b49ed33.lean/declarations/compl-strictanti--cde1ec1c56443f6db1556e78.md) | 228 | `result-track:cde1ec1c56443f6db1556e785682766ff2ece8a3d445d7ddfb91702381091971` |
| 31 | `theorem` | [compl_antitone](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variant479e53effe59ed41db21a09e39cdbe75f73cea2761b0a72953442b307b49ed33.lean/declarations/compl-antitone--f0b81aefb5ff1f7eb2f4d388.md) | 231 | `result-track:f0b81aefb5ff1f7eb2f4d388469e631bc2b187cdf32e02abf1bf84ba4cf0b94b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
