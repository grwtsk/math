# Verification target: GRWTSK.NumberTheory.PrimitiveRoots.Variantd9bef50cb7095450d45e8132a4312d0a6f4d7c08e97a17fb2144812a49960bfe

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f513f38acffe05d4a4cc5e0cd36ea6aac6e290c1",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/PrimitiveRoots/Variantd9bef50cb7095450d45e8132a4312d0a6f4d7c08e97a17fb2144812a49960bfe.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/PrimitiveRoots/Variantd9bef50cb7095450d45e8132a4312d0a6f4d7c08e97a17fb2144812a49960bfe.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/PrimitiveRoots/Variantd9bef50cb7095450d45e8132a4312d0a6f4d7c08e97a17fb2144812a49960bfe.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f513f38acffe05d4a4cc5e0cd36ea6aac6e290c1`.

Source path: `GRWTSK/NumberTheory/PrimitiveRoots/Variantd9bef50cb7095450d45e8132a4312d0a6f4d7c08e97a17fb2144812a49960bfe.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/PrimitiveRoots/Variantd9bef50cb7095450d45e8132a4312d0a6f4d7c08e97a17fb2144812a49960bfe.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.PNat.Prime` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Cyclotomic.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Adjoin.PowerBasis` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Norm.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.Cyclotomic.Eval` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.Cyclotomic.Expand` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.SimpleModule.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [zeta](../../../../mathematics/NumberTheory/PrimitiveRoots/Variantd9bef50cb7095450d45e8132a4312d0a6f4d7c08e97a17fb2144812a49960bfe.lean/declarations/zeta--aa49fab1e455dfacde220d14.md) | 80 | `declaration-track:aa49fab1e455dfacde220d14ae681e961a90c206c13df2a220a547b565c22254` |
| 2 | `theorem` | [zeta_spec](../../../../mathematics/NumberTheory/PrimitiveRoots/Variantd9bef50cb7095450d45e8132a4312d0a6f4d7c08e97a17fb2144812a49960bfe.lean/declarations/zeta-spec--b7c8bb01f7e1f0bf603be465.md) | 85 | `result-track:b7c8bb01f7e1f0bf603be465952bb5ee26000954cd5e60193edec9b03ac97022` |
| 3 | `theorem` | [aeval_zeta](../../../../mathematics/NumberTheory/PrimitiveRoots/Variantd9bef50cb7095450d45e8132a4312d0a6f4d7c08e97a17fb2144812a49960bfe.lean/declarations/aeval-zeta--6e9db20d385875154a66d2ef.md) | 88 | `result-track:6e9db20d385875154a66d2ef503485e615da70255e0bd6110402ca9009dc447d` |
| 4 | `theorem` | [zeta_isRoot](../../../../mathematics/NumberTheory/PrimitiveRoots/Variantd9bef50cb7095450d45e8132a4312d0a6f4d7c08e97a17fb2144812a49960bfe.lean/declarations/zeta-isroot--704acc994bb9802e5794cb73.md) | 93 | `result-track:704acc994bb9802e5794cb73eb2b02fe4f55ae2e056d17a0e6b3ec0f6512ae00` |
| 5 | `theorem` | [zeta_pow](../../../../mathematics/NumberTheory/PrimitiveRoots/Variantd9bef50cb7095450d45e8132a4312d0a6f4d7c08e97a17fb2144812a49960bfe.lean/declarations/zeta-pow--26baac74cd9479a748cee322.md) | 97 | `result-track:26baac74cd9479a748cee322585e15e371b809397679c5d9a9e1b09df6f04b1f` |
| 6 | `def` | [powerBasis](../../../../mathematics/NumberTheory/PrimitiveRoots/Variantd9bef50cb7095450d45e8132a4312d0a6f4d7c08e97a17fb2144812a49960bfe.lean/declarations/powerbasis--fd7fed48cf9484e94f41ce8f.md) | 115 | `declaration-track:fd7fed48cf9484e94f41ce8f81ce962c9f2d91b80147de14ba44442edc3baa95` |
| 7 | `theorem` | [powerBasis_gen_mem_adjoin_zeta_sub_one](../../../../mathematics/NumberTheory/PrimitiveRoots/Variantd9bef50cb7095450d45e8132a4312d0a6f4d7c08e97a17fb2144812a49960bfe.lean/declarations/powerbasis-gen-mem-adjoin-zeta-sub-one--368d51097987fab044cbe2b1.md) | 121 | `result-track:368d51097987fab044cbe2b1fe2a49a1f6b7b264a822c7b03e9f0d9999c0cbdc` |
| 8 | `def` | [subOnePowerBasis](../../../../mathematics/NumberTheory/PrimitiveRoots/Variantd9bef50cb7095450d45e8132a4312d0a6f4d7c08e97a17fb2144812a49960bfe.lean/declarations/subonepowerbasis--5daca4fe3d022987dab39e4c.md) | 128 | `declaration-track:5daca4fe3d022987dab39e4cc35912d0f9d81b2802216a4f9e4a8399af89f0a5` |
| 9 | `def` | [embeddingsEquivPrimitiveRoots](../../../../mathematics/NumberTheory/PrimitiveRoots/Variantd9bef50cb7095450d45e8132a4312d0a6f4d7c08e97a17fb2144812a49960bfe.lean/declarations/embeddingsequivprimitiveroots--996c647da47e20ce1e9896d7.md) | 137 | `declaration-track:996c647da47e20ce1e9896d7f4a9f87acdc9e2efe3ed7b64e9a675c2dab1076a` |
| 10 | `theorem` | [embeddingsEquivPrimitiveRoots_apply_coe](../../../../mathematics/NumberTheory/PrimitiveRoots/Variantd9bef50cb7095450d45e8132a4312d0a6f4d7c08e97a17fb2144812a49960bfe.lean/declarations/embeddingsequivprimitiveroots-apply-coe--89eb8bb9dc3c1b422f7e59ba.md) | 161 | `result-track:89eb8bb9dc3c1b422f7e59ba2b30a4a7ad7d5d1aed61e0445b122290429dd9cd` |
| 11 | `theorem` | [finrank](../../../../mathematics/NumberTheory/PrimitiveRoots/Variantd9bef50cb7095450d45e8132a4312d0a6f4d7c08e97a17fb2144812a49960bfe.lean/declarations/finrank--0dbe0224a857714dcbbdab1e.md) | 174 | `result-track:0dbe0224a857714dcbbdab1e7882b83ecd442ca2bcf62a688ed1f44f455630d8` |
| 12 | `theorem` | [_root_.IsPrimitiveRoot.lcm_totient_le_finrank](../../../../mathematics/NumberTheory/PrimitiveRoots/Variantd9bef50cb7095450d45e8132a4312d0a6f4d7c08e97a17fb2144812a49960bfe.lean/declarations/root-isprimitiveroot-lcm-totient-le-finrank--b34382bf94efb3b86c698319.md) | 183 | `result-track:b34382bf94efb3b86c69831967583ebc485a77b1471639e2e517961e03599235` |
| 13 | `theorem` | [dvd_of_isCyclotomicExtension](../../../../mathematics/NumberTheory/PrimitiveRoots/Variantd9bef50cb7095450d45e8132a4312d0a6f4d7c08e97a17fb2144812a49960bfe.lean/declarations/dvd-of-iscyclotomicextension--f765b8dc833377f05f8aa9cd.md) | 214 | `result-track:f765b8dc833377f05f8aa9cdb5d2fb23b3aacd3ee723ccbd45b275d3edc45d49` |
| 14 | `theorem` | [exists_neg_pow_of_isOfFinOrder](../../../../mathematics/NumberTheory/PrimitiveRoots/Variantd9bef50cb7095450d45e8132a4312d0a6f4d7c08e97a17fb2144812a49960bfe.lean/declarations/exists-neg-pow-of-isoffinorder--985f346b05164cac019d3b7c.md) | 240 | `result-track:985f346b05164cac019d3b7cd04c96d44e72e91fd147cacd95748b1379865b17` |
| 15 | `theorem` | [exists_pow_or_neg_mul_pow_of_isOfFinOrder](../../../../mathematics/NumberTheory/PrimitiveRoots/Variantd9bef50cb7095450d45e8132a4312d0a6f4d7c08e97a17fb2144812a49960bfe.lean/declarations/exists-pow-or-neg-mul-pow-of-isoffinorder--3440b3a6ddd33aff451fc019.md) | 261 | `result-track:3440b3a6ddd33aff451fc019b2320b4db8f32dbd80cb2afc55ddecd8d4e9fb60` |
| 16 | `theorem` | [norm_eq_neg_one_pow](../../../../mathematics/NumberTheory/PrimitiveRoots/Variantd9bef50cb7095450d45e8132a4312d0a6f4d7c08e97a17fb2144812a49960bfe.lean/declarations/norm-eq-neg-one-pow--219471ea3242076a2780f23f.md) | 277 | `result-track:219471ea3242076a2780f23f3bde47e0ac6f8aa97156d67d5f47b11924690d92` |
| 17 | `theorem` | [norm_eq_one](../../../../mathematics/NumberTheory/PrimitiveRoots/Variantd9bef50cb7095450d45e8132a4312d0a6f4d7c08e97a17fb2144812a49960bfe.lean/declarations/norm-eq-one--7e70c5e785fba9833c3e677c.md) | 286 | `result-track:7e70c5e785fba9833c3e677c72e1e91cce11a547744d035a8bc7eee36fe2c5d4` |
| 18 | `theorem` | [norm_eq_one_of_linearly_ordered](../../../../mathematics/NumberTheory/PrimitiveRoots/Variantd9bef50cb7095450d45e8132a4312d0a6f4d7c08e97a17fb2144812a49960bfe.lean/declarations/norm-eq-one-of-linearly-ordered--b25d96d629ff79c5aafb7a36.md) | 303 | `result-track:b25d96d629ff79c5aafb7a36985020544d2ccdac994a1fe2c3219a14e99bbb05` |
| 19 | `theorem` | [norm_of_cyclotomic_irreducible](../../../../mathematics/NumberTheory/PrimitiveRoots/Variantd9bef50cb7095450d45e8132a4312d0a6f4d7c08e97a17fb2144812a49960bfe.lean/declarations/norm-of-cyclotomic-irreducible--ce9f8e5dbfc2eca87ef42a49.md) | 310 | `result-track:ce9f8e5dbfc2eca87ef42a499ec0de09a440de9ac95c37681e24a1a3a3815619` |
| 20 | `theorem` | [sub_one_norm_eq_eval_cyclotomic](../../../../mathematics/NumberTheory/PrimitiveRoots/Variantd9bef50cb7095450d45e8132a4312d0a6f4d7c08e97a17fb2144812a49960bfe.lean/declarations/sub-one-norm-eq-eval-cyclotomic--f1eab659b1daaaac35cb2965.md) | 331 | `result-track:f1eab659b1daaaac35cb29658d5b15b06f4d9000aad34b681faf7c1d22c2970c` |
| 21 | `theorem` | [sub_one_norm_isPrimePow](../../../../mathematics/NumberTheory/PrimitiveRoots/Variantd9bef50cb7095450d45e8132a4312d0a6f4d7c08e97a17fb2144812a49960bfe.lean/declarations/sub-one-norm-isprimepow--aa41d3627953fa81de76846e.md) | 358 | `result-track:aa41d3627953fa81de76846e9f5899bf772eb8d7adf9881b639a03ae266cfca2` |
| 22 | `theorem` | [minpoly_sub_one_eq_cyclotomic_comp](../../../../mathematics/NumberTheory/PrimitiveRoots/Variantd9bef50cb7095450d45e8132a4312d0a6f4d7c08e97a17fb2144812a49960bfe.lean/declarations/minpoly-sub-one-eq-cyclotomic-comp--c76f91c2d053c198fa9cfb6e.md) | 378 | `result-track:c76f91c2d053c198fa9cfb6e00ca4d25b8e372f33f77cad5da8aca525b31549d` |
| 23 | `theorem` | [norm_pow_sub_one_of_prime_pow_ne_two](../../../../mathematics/NumberTheory/PrimitiveRoots/Variantd9bef50cb7095450d45e8132a4312d0a6f4d7c08e97a17fb2144812a49960bfe.lean/declarations/norm-pow-sub-one-of-prime-pow-ne-two--241af2969598717a3a0ea437.md) | 393 | `result-track:241af2969598717a3a0ea437eee4a62026b035bd5eaae76794fd0696ef637ec1` |
| 24 | `theorem` | [norm_pow_sub_one_of_prime_ne_two](../../../../mathematics/NumberTheory/PrimitiveRoots/Variantd9bef50cb7095450d45e8132a4312d0a6f4d7c08e97a17fb2144812a49960bfe.lean/declarations/norm-pow-sub-one-of-prime-ne-two--4917b86bb7e084fdeadc8ec4.md) | 449 | `result-track:4917b86bb7e084fdeadc8ec4e0378b3972e659428cb00d86a4bc41e776f69314` |
| 25 | `theorem` | [norm_sub_one_of_prime_ne_two](../../../../mathematics/NumberTheory/PrimitiveRoots/Variantd9bef50cb7095450d45e8132a4312d0a6f4d7c08e97a17fb2144812a49960bfe.lean/declarations/norm-sub-one-of-prime-ne-two--b8b4ecac6811a6f0cf31caa4.md) | 462 | `result-track:b8b4ecac6811a6f0cf31caa4c9100bdf96063a316bf87368fb038bc6275da090` |
| 26 | `theorem` | [norm_sub_one_of_prime_ne_two'](../../../../mathematics/NumberTheory/PrimitiveRoots/Variantd9bef50cb7095450d45e8132a4312d0a6f4d7c08e97a17fb2144812a49960bfe.lean/declarations/norm-sub-one-of-prime-ne-two--d57dc77f6b3e7bab8fa2f69f.md) | 469 | `result-track:d57dc77f6b3e7bab8fa2f69f1832fdce28608b4b664ffd1d74a66df094d28f95` |
| 27 | `theorem` | [norm_pow_sub_one_two](../../../../mathematics/NumberTheory/PrimitiveRoots/Variantd9bef50cb7095450d45e8132a4312d0a6f4d7c08e97a17fb2144812a49960bfe.lean/declarations/norm-pow-sub-one-two--0d84dda3efbccc483afef0df.md) | 479 | `result-track:0d84dda3efbccc483afef0dfd79a83464eac1d0e246f7bfe24d029a2cbb05b22` |
| 28 | `theorem` | [norm_sub_one_two](../../../../mathematics/NumberTheory/PrimitiveRoots/Variantd9bef50cb7095450d45e8132a4312d0a6f4d7c08e97a17fb2144812a49960bfe.lean/declarations/norm-sub-one-two--a6ed8b22f4ed486a5901e900.md) | 496 | `result-track:a6ed8b22f4ed486a5901e9002bf10d3c1678b2141ef9f869bc3e7e4cdff601c5` |
| 29 | `theorem` | [norm_pow_sub_one_eq_prime_pow_of_ne_zero](../../../../mathematics/NumberTheory/PrimitiveRoots/Variantd9bef50cb7095450d45e8132a4312d0a6f4d7c08e97a17fb2144812a49960bfe.lean/declarations/norm-pow-sub-one-eq-prime-pow-of-ne-zero--dbefe8434dfde7c2aab53e7c.md) | 510 | `result-track:dbefe8434dfde7c2aab53e7c1a4c98fd53acc2942a1edcfb8c1b7a1db64bf324` |
| 30 | `theorem` | [norm_zeta_eq_one](../../../../mathematics/NumberTheory/PrimitiveRoots/Variantd9bef50cb7095450d45e8132a4312d0a6f4d7c08e97a17fb2144812a49960bfe.lean/declarations/norm-zeta-eq-one--cdd3020b14a08e4572b34c86.md) | 546 | `result-track:cdd3020b14a08e4572b34c86035fad70f8f994c7f50e766714edd343f665e1f7` |
| 31 | `theorem` | [norm_zeta_sub_one_of_isPrimePow](../../../../mathematics/NumberTheory/PrimitiveRoots/Variantd9bef50cb7095450d45e8132a4312d0a6f4d7c08e97a17fb2144812a49960bfe.lean/declarations/norm-zeta-sub-one-of-isprimepow--67fdbdb6ee4dff83f34fedf2.md) | 552 | `result-track:67fdbdb6ee4dff83f34fedf2bcc0100a046e1c5b836269247baf9c8eafd4b65e` |
| 32 | `theorem` | [norm_zeta_pow_sub_one_of_prime_pow_ne_two](../../../../mathematics/NumberTheory/PrimitiveRoots/Variantd9bef50cb7095450d45e8132a4312d0a6f4d7c08e97a17fb2144812a49960bfe.lean/declarations/norm-zeta-pow-sub-one-of-prime-pow-ne-two--a2d7f9c3c92410f80f24b84f.md) | 560 | `result-track:a2d7f9c3c92410f80f24b84f44e3f3171f80de0bb4a42047ede8e9b21bb44706` |
| 33 | `theorem` | [norm_zeta_pow_sub_one_of_prime_ne_two](../../../../mathematics/NumberTheory/PrimitiveRoots/Variantd9bef50cb7095450d45e8132a4312d0a6f4d7c08e97a17fb2144812a49960bfe.lean/declarations/norm-zeta-pow-sub-one-of-prime-ne-two--a0efe31a7c5d06fa98ce0266.md) | 569 | `result-track:a0efe31a7c5d06fa98ce02666f42c58ac9a922037d8465866f1128dc7e74daf3` |
| 34 | `theorem` | [norm_zeta_sub_one_of_prime_ne_two](../../../../mathematics/NumberTheory/PrimitiveRoots/Variantd9bef50cb7095450d45e8132a4312d0a6f4d7c08e97a17fb2144812a49960bfe.lean/declarations/norm-zeta-sub-one-of-prime-ne-two--a07a887c7059c382f7e682aa.md) | 577 | `result-track:a07a887c7059c382f7e682aa3d080267c536994671e52a714cd61bbbd6a028b2` |
| 35 | `theorem` | [norm_zeta_pow_sub_one_two](../../../../mathematics/NumberTheory/PrimitiveRoots/Variantd9bef50cb7095450d45e8132a4312d0a6f4d7c08e97a17fb2144812a49960bfe.lean/declarations/norm-zeta-pow-sub-one-two--5ccfee36f79a1fa3af16cee5.md) | 584 | `result-track:5ccfee36f79a1fa3af16cee5dd2d4f3ecb9938994b48074187b54cc64bdb8b7d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
