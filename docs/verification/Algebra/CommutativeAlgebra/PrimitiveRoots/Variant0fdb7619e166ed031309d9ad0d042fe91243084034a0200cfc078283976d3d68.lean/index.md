# Verification target: GRWTSK.Algebra.CommutativeAlgebra.PrimitiveRoots.Variant0fdb7619e166ed031309d9ad0d042fe91243084034a0200cfc078283976d3d68

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1bc21bdb0894bce36dee03500013ef1ccb4d5e1d",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/PrimitiveRoots/Variant0fdb7619e166ed031309d9ad0d042fe91243084034a0200cfc078283976d3d68.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/PrimitiveRoots/Variant0fdb7619e166ed031309d9ad0d042fe91243084034a0200cfc078283976d3d68.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/PrimitiveRoots/Variant0fdb7619e166ed031309d9ad0d042fe91243084034a0200cfc078283976d3d68.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1bc21bdb0894bce36dee03500013ef1ccb4d5e1d`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/PrimitiveRoots/Variant0fdb7619e166ed031309d9ad0d042fe91243084034a0200cfc078283976d3d68.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/PrimitiveRoots/Variant0fdb7619e166ed031309d9ad0d042fe91243084034a0200cfc078283976d3d68.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.PNat.Prime` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.IsPrimePow` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Cyclotomic.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Adjoin.PowerBasis` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.Cyclotomic.Eval` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Norm` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.Cyclotomic.Expand` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/PrimitiveRoots/Variant0fdb7619e166ed031309d9ad0d042fe91243084034a0200cfc078283976d3d68.lean/declarations/macro-rules--04a45dfa599ea29e74cc4bf9.md) | 82 | `declaration-track:04a45dfa599ea29e74cc4bf9c2dd8082810de3a03da937f2a97dbf77d118b983` |
| 2 | `def` | [zeta](../../../../../mathematics/Algebra/CommutativeAlgebra/PrimitiveRoots/Variant0fdb7619e166ed031309d9ad0d042fe91243084034a0200cfc078283976d3d68.lean/declarations/zeta--69df6c08fb8390e269125933.md) | 91 | `declaration-track:69df6c08fb8390e269125933acffb09230dfe6c16f86cacc4eff276ec4028cbe` |
| 3 | `theorem` | [zeta_spec](../../../../../mathematics/Algebra/CommutativeAlgebra/PrimitiveRoots/Variant0fdb7619e166ed031309d9ad0d042fe91243084034a0200cfc078283976d3d68.lean/declarations/zeta-spec--35eecea1db7f64680edcfb8f.md) | 97 | `result-track:35eecea1db7f64680edcfb8fd928cd67aeec2e10cf64a2b944f74cbab68b94d9` |
| 4 | `theorem` | [aeval_zeta](../../../../../mathematics/Algebra/CommutativeAlgebra/PrimitiveRoots/Variant0fdb7619e166ed031309d9ad0d042fe91243084034a0200cfc078283976d3d68.lean/declarations/aeval-zeta--79231b81b01c4af47263a2d7.md) | 101 | `result-track:79231b81b01c4af47263a2d74cf5a23fe50257bf506113257921b312a5e65dba` |
| 5 | `theorem` | [zeta_isRoot](../../../../../mathematics/Algebra/CommutativeAlgebra/PrimitiveRoots/Variant0fdb7619e166ed031309d9ad0d042fe91243084034a0200cfc078283976d3d68.lean/declarations/zeta-isroot--d0c0714a97a39179753fe69f.md) | 107 | `result-track:d0c0714a97a39179753fe69f75eec32066f8d49c76d3e4c95d4a9861b5a1adaf` |
| 6 | `theorem` | [zeta_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/PrimitiveRoots/Variant0fdb7619e166ed031309d9ad0d042fe91243084034a0200cfc078283976d3d68.lean/declarations/zeta-pow--166d582bf6075b644f847a3f.md) | 112 | `result-track:166d582bf6075b644f847a3f27f239b624a0a064ac31ea76ac2bd5c57d567555` |
| 7 | `def` | [powerBasis](../../../../../mathematics/Algebra/CommutativeAlgebra/PrimitiveRoots/Variant0fdb7619e166ed031309d9ad0d042fe91243084034a0200cfc078283976d3d68.lean/declarations/powerbasis--2a4be0276fe546011427445b.md) | 131 | `declaration-track:2a4be0276fe546011427445b0da4d080215d184430ea3a032be9396fa0658818` |
| 8 | `theorem` | [powerBasis_gen_mem_adjoin_zeta_sub_one](../../../../../mathematics/Algebra/CommutativeAlgebra/PrimitiveRoots/Variant0fdb7619e166ed031309d9ad0d042fe91243084034a0200cfc078283976d3d68.lean/declarations/powerbasis-gen-mem-adjoin-zeta-sub-one--2ecac0e1a28799721149aac7.md) | 137 | `result-track:2ecac0e1a28799721149aac7dd63c56119ff50c36c975b564dad770270d964de` |
| 9 | `def` | [subOnePowerBasis](../../../../../mathematics/Algebra/CommutativeAlgebra/PrimitiveRoots/Variant0fdb7619e166ed031309d9ad0d042fe91243084034a0200cfc078283976d3d68.lean/declarations/subonepowerbasis--aa063eedce59e531b2e34356.md) | 145 | `declaration-track:aa063eedce59e531b2e343564fe6e3015b97c4df48d6a48ba0e4af4492821bf7` |
| 10 | `def` | [embeddingsEquivPrimitiveRoots](../../../../../mathematics/Algebra/CommutativeAlgebra/PrimitiveRoots/Variant0fdb7619e166ed031309d9ad0d042fe91243084034a0200cfc078283976d3d68.lean/declarations/embeddingsequivprimitiveroots--4fdacd263b5e129830d3fc85.md) | 155 | `declaration-track:4fdacd263b5e129830d3fc8558ba6879bb161264c7dfdc2a7a22fa8a55ca2f61` |
| 11 | `theorem` | [embeddingsEquivPrimitiveRoots_apply_coe](../../../../../mathematics/Algebra/CommutativeAlgebra/PrimitiveRoots/Variant0fdb7619e166ed031309d9ad0d042fe91243084034a0200cfc078283976d3d68.lean/declarations/embeddingsequivprimitiveroots-apply-coe--37c0b6e7cc3c9e3bb06bcde7.md) | 180 | `result-track:37c0b6e7cc3c9e3bb06bcde762a4f2822ac871a514f8fcd60c13de010f0cf418` |
| 12 | `theorem` | [finrank](../../../../../mathematics/Algebra/CommutativeAlgebra/PrimitiveRoots/Variant0fdb7619e166ed031309d9ad0d042fe91243084034a0200cfc078283976d3d68.lean/declarations/finrank--f5250e1e9ad30a825ac66681.md) | 194 | `result-track:f5250e1e9ad30a825ac66681862a8e92053d85a1faa46381b6e5d694b080e4df` |
| 13 | `theorem` | [norm_eq_neg_one_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/PrimitiveRoots/Variant0fdb7619e166ed031309d9ad0d042fe91243084034a0200cfc078283976d3d68.lean/declarations/norm-eq-neg-one-pow--24c1bf8703539f3519cca701.md) | 215 | `result-track:24c1bf8703539f3519cca7019d107653e0542a88eb96f505f93db8e3a46d717a` |
| 14 | `theorem` | [norm_eq_one](../../../../../mathematics/Algebra/CommutativeAlgebra/PrimitiveRoots/Variant0fdb7619e166ed031309d9ad0d042fe91243084034a0200cfc078283976d3d68.lean/declarations/norm-eq-one--0189c54081804005d8ffb579.md) | 222 | `result-track:0189c54081804005d8ffb579a2cce7fbac2f4421ca4af2848f886187413b79c6` |
| 15 | `theorem` | [norm_eq_one_of_linearly_ordered](../../../../../mathematics/Algebra/CommutativeAlgebra/PrimitiveRoots/Variant0fdb7619e166ed031309d9ad0d042fe91243084034a0200cfc078283976d3d68.lean/declarations/norm-eq-one-of-linearly-ordered--7202d40daa9256d11e5a8151.md) | 240 | `result-track:7202d40daa9256d11e5a8151f613f788286c17d88555e52573015b9eb22b8e74` |
| 16 | `theorem` | [norm_of_cyclotomic_irreducible](../../../../../mathematics/Algebra/CommutativeAlgebra/PrimitiveRoots/Variant0fdb7619e166ed031309d9ad0d042fe91243084034a0200cfc078283976d3d68.lean/declarations/norm-of-cyclotomic-irreducible--c2ba59d580e31b99e6b22d71.md) | 247 | `result-track:c2ba59d580e31b99e6b22d71d48f1b058dc7babcd08438ff0a5259e2735cc20d` |
| 17 | `theorem` | [sub_one_norm_eq_eval_cyclotomic](../../../../../mathematics/Algebra/CommutativeAlgebra/PrimitiveRoots/Variant0fdb7619e166ed031309d9ad0d042fe91243084034a0200cfc078283976d3d68.lean/declarations/sub-one-norm-eq-eval-cyclotomic--278e7b9620c47431451f85ca.md) | 266 | `result-track:278e7b9620c47431451f85cae533b69a9d8ade28b222182a4c5aa203d7a1ea47` |
| 18 | `theorem` | [sub_one_norm_isPrimePow](../../../../../mathematics/Algebra/CommutativeAlgebra/PrimitiveRoots/Variant0fdb7619e166ed031309d9ad0d042fe91243084034a0200cfc078283976d3d68.lean/declarations/sub-one-norm-isprimepow--451d55f8965c9ccff20b3718.md) | 294 | `result-track:451d55f8965c9ccff20b37181aa756ea6d75df26de4afeecf0ffdbe2314d23c2` |
| 19 | `theorem` | [minpoly_sub_one_eq_cyclotomic_comp](../../../../../mathematics/Algebra/CommutativeAlgebra/PrimitiveRoots/Variant0fdb7619e166ed031309d9ad0d042fe91243084034a0200cfc078283976d3d68.lean/declarations/minpoly-sub-one-eq-cyclotomic-comp--b6f2fcf97429897ecb970d12.md) | 313 | `result-track:b6f2fcf97429897ecb970d12580f1b6649f526630b5b9f1a2dd16dd6a9bae367` |
| 20 | `theorem` | [pow_sub_one_norm_prime_pow_ne_two](../../../../../mathematics/Algebra/CommutativeAlgebra/PrimitiveRoots/Variant0fdb7619e166ed031309d9ad0d042fe91243084034a0200cfc078283976d3d68.lean/declarations/pow-sub-one-norm-prime-pow-ne-two--3ac4dd11c3826c1abc69bcee.md) | 329 | `result-track:3ac4dd11c3826c1abc69bceef44d16e3a319c9b489d1d8c1964dd66b57c98e5e` |
| 21 | `theorem` | [pow_sub_one_norm_prime_ne_two](../../../../../mathematics/Algebra/CommutativeAlgebra/PrimitiveRoots/Variant0fdb7619e166ed031309d9ad0d042fe91243084034a0200cfc078283976d3d68.lean/declarations/pow-sub-one-norm-prime-ne-two--7b347660bf267abfa786b08c.md) | 396 | `result-track:7b347660bf267abfa786b08c02e7161071d90142d7ed9ee7a84ca36280f8128e` |
| 22 | `theorem` | [sub_one_norm_prime_ne_two](../../../../../mathematics/Algebra/CommutativeAlgebra/PrimitiveRoots/Variant0fdb7619e166ed031309d9ad0d042fe91243084034a0200cfc078283976d3d68.lean/declarations/sub-one-norm-prime-ne-two--b43c901740b77f0f5da3c943.md) | 412 | `result-track:b43c901740b77f0f5da3c94368199cbe3066f2484f792ef5154062853e93a446` |
| 23 | `theorem` | [sub_one_norm_prime](../../../../../mathematics/Algebra/CommutativeAlgebra/PrimitiveRoots/Variant0fdb7619e166ed031309d9ad0d042fe91243084034a0200cfc078283976d3d68.lean/declarations/sub-one-norm-prime--6f6f74c8247ba27c2e3bc91e.md) | 420 | `result-track:6f6f74c8247ba27c2e3bc91e6b04a672de428249ee7d013948fc99b4720a5955` |
| 24 | `theorem` | [pow_sub_one_norm_two](../../../../../mathematics/Algebra/CommutativeAlgebra/PrimitiveRoots/Variant0fdb7619e166ed031309d9ad0d042fe91243084034a0200cfc078283976d3d68.lean/declarations/pow-sub-one-norm-two--58026194967d6f231a2e6059.md) | 432 | `result-track:58026194967d6f231a2e605998678722cca239e0fbf300fa559167fb35caab93` |
| 25 | `theorem` | [sub_one_norm_two](../../../../../mathematics/Algebra/CommutativeAlgebra/PrimitiveRoots/Variant0fdb7619e166ed031309d9ad0d042fe91243084034a0200cfc078283976d3d68.lean/declarations/sub-one-norm-two--bbb195dd9521532a109d7e65.md) | 452 | `result-track:bbb195dd9521532a109d7e651ff2c34651f6d7e1830383cabb473dd25d1e6093` |
| 26 | `theorem` | [pow_sub_one_norm_prime_pow_of_ne_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/PrimitiveRoots/Variant0fdb7619e166ed031309d9ad0d042fe91243084034a0200cfc078283976d3d68.lean/declarations/pow-sub-one-norm-prime-pow-of-ne-zero--82f84c3be4ef6988fcb03d15.md) | 470 | `result-track:82f84c3be4ef6988fcb03d15f8a20a44c7b6bc32c0ecbaee3aff35a2d15bbfb4` |
| 27 | `theorem` | [norm_zeta_eq_one](../../../../../mathematics/Algebra/CommutativeAlgebra/PrimitiveRoots/Variant0fdb7619e166ed031309d9ad0d042fe91243084034a0200cfc078283976d3d68.lean/declarations/norm-zeta-eq-one--1d83f9d22a2daa93a6b01680.md) | 508 | `result-track:1d83f9d22a2daa93a6b01680006b190f32e15e9ced1c2433f96f668add1760a0` |
| 28 | `theorem` | [isPrimePow_norm_zeta_sub_one](../../../../../mathematics/Algebra/CommutativeAlgebra/PrimitiveRoots/Variant0fdb7619e166ed031309d9ad0d042fe91243084034a0200cfc078283976d3d68.lean/declarations/isprimepow-norm-zeta-sub-one--1e38e117e1300c72fc3ac701.md) | 515 | `result-track:1e38e117e1300c72fc3ac7011d5d21a2aff1bf03eebc623ac6917dd792f14e0e` |
| 29 | `theorem` | [prime_ne_two_pow_norm_zeta_pow_sub_one](../../../../../mathematics/Algebra/CommutativeAlgebra/PrimitiveRoots/Variant0fdb7619e166ed031309d9ad0d042fe91243084034a0200cfc078283976d3d68.lean/declarations/prime-ne-two-pow-norm-zeta-pow-sub-one--472757b5ef5d080273806012.md) | 524 | `result-track:472757b5ef5d08027380601212446467c132fbf078be5db5200a0d3387aeeb55` |
| 30 | `theorem` | [prime_ne_two_pow_norm_zeta_sub_one](../../../../../mathematics/Algebra/CommutativeAlgebra/PrimitiveRoots/Variant0fdb7619e166ed031309d9ad0d042fe91243084034a0200cfc078283976d3d68.lean/declarations/prime-ne-two-pow-norm-zeta-sub-one--732bf4b9f206bea01df4a180.md) | 534 | `result-track:732bf4b9f206bea01df4a180c93b40f03c3f1b2aab88a260b1c1dd2d0229d6b8` |
| 31 | `theorem` | [prime_ne_two_norm_zeta_sub_one](../../../../../mathematics/Algebra/CommutativeAlgebra/PrimitiveRoots/Variant0fdb7619e166ed031309d9ad0d042fe91243084034a0200cfc078283976d3d68.lean/declarations/prime-ne-two-norm-zeta-sub-one--87be25bbdd1af9721a0d58b4.md) | 543 | `result-track:87be25bbdd1af9721a0d58b4ceee3c10460c2bd3154a841890a917b761bf9c28` |
| 32 | `theorem` | [two_pow_norm_zeta_sub_one](../../../../../mathematics/Algebra/CommutativeAlgebra/PrimitiveRoots/Variant0fdb7619e166ed031309d9ad0d042fe91243084034a0200cfc078283976d3d68.lean/declarations/two-pow-norm-zeta-sub-one--9b256138136817eadba7586f.md) | 551 | `result-track:9b256138136817eadba7586f6630df44f5ed8b71a9c4eb41e2b6601b13e941b6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
