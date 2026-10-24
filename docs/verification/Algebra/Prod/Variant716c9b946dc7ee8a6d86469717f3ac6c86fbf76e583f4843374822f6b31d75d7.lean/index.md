# Verification target: GRWTSK.Algebra.Prod.Variant716c9b946dc7ee8a6d86469717f3ac6c86fbf76e583f4843374822f6b31d75d7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "981efa1608843d5ba108fd39902831997f5ee807",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Prod/Variant716c9b946dc7ee8a6d86469717f3ac6c86fbf76e583f4843374822f6b31d75d7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Prod/Variant716c9b946dc7ee8a6d86469717f3ac6c86fbf76e583f4843374822f6b31d75d7.lean/index.md) · [Full source](../../../../mathematics/Algebra/Prod/Variant716c9b946dc7ee8a6d86469717f3ac6c86fbf76e583f4843374822f6b31d75d7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `981efa1608843d5ba108fd39902831997f5ee807`.

Source path: `GRWTSK/Algebra/Prod/Variant716c9b946dc7ee8a6d86469717f3ac6c86fbf76e583f4843374822f6b31d75d7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Prod/Variant716c9b946dc7ee8a6d86469717f3ac6c86fbf76e583f4843374822f6b31d75d7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Ideal.Operations` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [prod](../../../../mathematics/Algebra/Prod/Variant716c9b946dc7ee8a6d86469717f3ac6c86fbf76e583f4843374822f6b31d75d7.lean/declarations/prod--7e40f530c5b6bfb13d93eb08.md) | 27 | `declaration-track:7e40f530c5b6bfb13d93eb08ca0164b9ff459f11fd4a0deb700b540e46dba6e1` |
| 2 | `theorem` | [mem_prod](../../../../mathematics/Algebra/Prod/Variant716c9b946dc7ee8a6d86469717f3ac6c86fbf76e583f4843374822f6b31d75d7.lean/declarations/mem-prod--1f1400eb2b5474a8436b2f55.md) | 39 | `result-track:1f1400eb2b5474a8436b2f5569e973c897cd0ddf1a7c735011a5909f10deb01c` |
| 3 | `theorem` | [prod_top_top](../../../../mathematics/Algebra/Prod/Variant716c9b946dc7ee8a6d86469717f3ac6c86fbf76e583f4843374822f6b31d75d7.lean/declarations/prod-top-top--0299eae1d964878580cbdeef.md) | 44 | `result-track:0299eae1d964878580cbdeef409bbcf5b6661b35c6e6c27833fb567863a2e2e3` |
| 4 | `theorem` | [ideal_prod_eq](../../../../mathematics/Algebra/Prod/Variant716c9b946dc7ee8a6d86469717f3ac6c86fbf76e583f4843374822f6b31d75d7.lean/declarations/ideal-prod-eq--71baf8884ea128c22ab0aa73.md) | 50 | `result-track:71baf8884ea128c22ab0aa73f0e081e9ce4e2557a5cb833e356b942529a7d4c7` |
| 5 | `theorem` | [map_fst_prod](../../../../mathematics/Algebra/Prod/Variant716c9b946dc7ee8a6d86469717f3ac6c86fbf76e583f4843374822f6b31d75d7.lean/declarations/map-fst-prod--1afdfa1d5982a92e347627e0.md) | 62 | `result-track:1afdfa1d5982a92e347627e046899918bfdfd9397d36b29889c687ad5b3e103a` |
| 6 | `theorem` | [map_snd_prod](../../../../mathematics/Algebra/Prod/Variant716c9b946dc7ee8a6d86469717f3ac6c86fbf76e583f4843374822f6b31d75d7.lean/declarations/map-snd-prod--c3079c20622dbabe8cfdb256.md) | 72 | `result-track:c3079c20622dbabe8cfdb256cb2625be9c943c9bb40dc805f57ff8d3561432b8` |
| 7 | `theorem` | [map_prodComm_prod](../../../../mathematics/Algebra/Prod/Variant716c9b946dc7ee8a6d86469717f3ac6c86fbf76e583f4843374822f6b31d75d7.lean/declarations/map-prodcomm-prod--da421f3a919460c5dfd1f79b.md) | 82 | `result-track:da421f3a919460c5dfd1f79bea57246193d2dbd4e1bfa4eaea89a2ddc1fe12f3` |
| 8 | `def` | [idealProdEquiv](../../../../mathematics/Algebra/Prod/Variant716c9b946dc7ee8a6d86469717f3ac6c86fbf76e583f4843374822f6b31d75d7.lean/declarations/idealprodequiv--13eba262437d1c11c359279e.md) | 90 | `declaration-track:13eba262437d1c11c359279e748705394f4aca2e2f0cdc9438b216d2a285e678` |
| 9 | `theorem` | [idealProdEquiv_symm_apply](../../../../mathematics/Algebra/Prod/Variant716c9b946dc7ee8a6d86469717f3ac6c86fbf76e583f4843374822f6b31d75d7.lean/declarations/idealprodequiv-symm-apply--1ad7dc832119903e2c8a281e.md) | 99 | `result-track:1ad7dc832119903e2c8a281e23f258b26808d6851a54ba32b0a2200132e54f10` |
| 10 | `theorem` | [prod.ext_iff](../../../../mathematics/Algebra/Prod/Variant716c9b946dc7ee8a6d86469717f3ac6c86fbf76e583f4843374822f6b31d75d7.lean/declarations/prod-ext-iff--8e14c9178f37ec0a482297d4.md) | 104 | `result-track:8e14c9178f37ec0a482297d4f5469a5c9c58f34af7fb64ced130d20a5c018b0b` |
| 11 | `theorem` | [isPrime_of_isPrime_prod_top](../../../../mathematics/Algebra/Prod/Variant716c9b946dc7ee8a6d86469717f3ac6c86fbf76e583f4843374822f6b31d75d7.lean/declarations/isprime-of-isprime-prod-top--e64744d550ea88b94121e4a3.md) | 109 | `result-track:e64744d550ea88b94121e4a3ba6a22a95bbc1716d7b051f980c6d4ca00686abd` |
| 12 | `theorem` | [isPrime_of_isPrime_prod_top'](../../../../mathematics/Algebra/Prod/Variant716c9b946dc7ee8a6d86469717f3ac6c86fbf76e583f4843374822f6b31d75d7.lean/declarations/isprime-of-isprime-prod-top--61e1f0352e7c3e09f6f84945.md) | 122 | `result-track:61e1f0352e7c3e09f6f849450172d66f60cc9485b331cfaf4443fb05a3d569b4` |
| 13 | `theorem` | [isPrime_ideal_prod_top](../../../../mathematics/Algebra/Prod/Variant716c9b946dc7ee8a6d86469717f3ac6c86fbf76e583f4843374822f6b31d75d7.lean/declarations/isprime-ideal-prod-top--4b50af44cb1376557e139372.md) | 129 | `result-track:4b50af44cb1376557e1393724d4a1485492d65040f647f7f4d3e3ce49666e5b8` |
| 14 | `theorem` | [isPrime_ideal_prod_top'](../../../../mathematics/Algebra/Prod/Variant716c9b946dc7ee8a6d86469717f3ac6c86fbf76e583f4843374822f6b31d75d7.lean/declarations/isprime-ideal-prod-top--017cc676a88fbd544d7eeaa9.md) | 141 | `result-track:017cc676a88fbd544d7eeaa9f87acf2143e174df9b0a8fe9b780f5ead83d7092` |
| 15 | `theorem` | [ideal_prod_prime_aux](../../../../mathematics/Algebra/Prod/Variant716c9b946dc7ee8a6d86469717f3ac6c86fbf76e583f4843374822f6b31d75d7.lean/declarations/ideal-prod-prime-aux--441aa4b4e405f3e666a73aa2.md) | 147 | `result-track:441aa4b4e405f3e666a73aa2cd2b0cea47d3debc4d6d5c485ce271ed16a8cc65` |
| 16 | `theorem` | [ideal_prod_prime](../../../../mathematics/Algebra/Prod/Variant716c9b946dc7ee8a6d86469717f3ac6c86fbf76e583f4843374822f6b31d75d7.lean/declarations/ideal-prod-prime--100cdc308e872bd62f210010.md) | 156 | `result-track:100cdc308e872bd62f21001046704381c856f7d824eded5d4a1ee071ece101ae` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
