# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Finite.Variant188100cfc9359a78681f641434e904916ff23d5d7400b1a7c973ec1bf5e38ebe

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e4364c813a551c8106860047af0879082c75d923",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Finite/Variant188100cfc9359a78681f641434e904916ff23d5d7400b1a7c973ec1bf5e38ebe.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant188100cfc9359a78681f641434e904916ff23d5d7400b1a7c973ec1bf5e38ebe.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant188100cfc9359a78681f641434e904916ff23d5d7400b1a7c973ec1bf5e38ebe.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e4364c813a551c8106860047af0879082c75d923`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Finite/Variant188100cfc9359a78681f641434e904916ff23d5d7400b1a7c973ec1bf5e38ebe.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Finite/Variant188100cfc9359a78681f641434e904916ff23d5d7400b1a7c973ec1bf5e38ebe.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Finite.Lattice` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [biInter_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant188100cfc9359a78681f641434e904916ff23d5d7400b1a7c973ec1bf5e38ebe.lean/declarations/biinter-mem--0a08dacdea5e3229c1e95473.md) | 26 | `result-track:0a08dacdea5e3229c1e95473034fe18ae6757ae5f43418a6c0ce144b7e1e5315` |
| 2 | `theorem` | [biInter_finset_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant188100cfc9359a78681f641434e904916ff23d5d7400b1a7c973ec1bf5e38ebe.lean/declarations/biinter-finset-mem--df775f0b9e0686fd32d95838.md) | 33 | `result-track:df775f0b9e0686fd32d95838dc875515665d92cb8a2ee01ff493f0b7fb8a1c0d` |
| 3 | `theorem` | [sInter_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant188100cfc9359a78681f641434e904916ff23d5d7400b1a7c973ec1bf5e38ebe.lean/declarations/sinter-mem--8d6e1cb71c86d6c12f44c8ea.md) | 40 | `result-track:8d6e1cb71c86d6c12f44c8eafb07227c4b2c3cee306efcd8d3da8ba8254da5fe` |
| 4 | `theorem` | [iInter_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant188100cfc9359a78681f641434e904916ff23d5d7400b1a7c973ec1bf5e38ebe.lean/declarations/iinter-mem--c98da89a5c2347195a67e847.md) | 44 | `result-track:c98da89a5c2347195a67e8472ff799f63dae75b765327466c05d3e1023c3a8d3` |
| 5 | `theorem` | [mem_generate_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant188100cfc9359a78681f641434e904916ff23d5d7400b1a7c973ec1bf5e38ebe.lean/declarations/mem-generate-iff--d6296e56da0667153ebabdaf.md) | 58 | `result-track:d6296e56da0667153ebabdaf2c52ff09e5d291649a08a1275c7b301a000caa9d` |
| 6 | `theorem` | [mem_iInf_of_iInter](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant188100cfc9359a78681f641434e904916ff23d5d7400b1a7c973ec1bf5e38ebe.lean/declarations/mem-iinf-of-iinter--2fb017d570da3a85d945b074.md) | 76 | `result-track:2fb017d570da3a85d945b0744db274227383b08c26442acd52da3d21e5895c8b` |
| 7 | `theorem` | [mem_iInf](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant188100cfc9359a78681f641434e904916ff23d5d7400b1a7c973ec1bf5e38ebe.lean/declarations/mem-iinf--29ad1b0a3a6069c2735e49f4.md) | 82 | `result-track:29ad1b0a3a6069c2735e49f4bb4bc04c21510afaf3d67e1b11b4ee51eb0f4349` |
| 8 | `theorem` | [mem_iInf'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant188100cfc9359a78681f641434e904916ff23d5d7400b1a7c973ec1bf5e38ebe.lean/declarations/mem-iinf--43f3f607953dc6d7b68dd414.md) | 102 | `result-track:43f3f607953dc6d7b68dd414115290fff1e8f0a8cc1110d6656980a260e51053` |
| 9 | `theorem` | [exists_iInter_of_mem_iInf](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant188100cfc9359a78681f641434e904916ff23d5d7400b1a7c973ec1bf5e38ebe.lean/declarations/exists-iinter-of-mem-iinf--8173f55b756b8e746cd14a27.md) | 118 | `result-track:8173f55b756b8e746cd14a278c1d597526c3863eee30e8d4ffae7e0337ab4106` |
| 10 | `theorem` | [mem_iInf_of_finite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant188100cfc9359a78681f641434e904916ff23d5d7400b1a7c973ec1bf5e38ebe.lean/declarations/mem-iinf-of-finite--21cddabd61b6d9550f0240a0.md) | 125 | `result-track:21cddabd61b6d9550f0240a09777c9814a8fde1a660d82067ae03322b2639cbf` |
| 11 | `theorem` | [mem_biInf_principal](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant188100cfc9359a78681f641434e904916ff23d5d7400b1a7c973ec1bf5e38ebe.lean/declarations/mem-biinf-principal--3fac6773006dfe2c3a285ab9.md) | 131 | `result-track:3fac6773006dfe2c3a285ab9aaeb49409cec09f993cbaf6fde462422e0d68c1b` |
| 12 | `theorem` | [_root_.Pairwise.exists_mem_filter_of_disjoint](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant188100cfc9359a78681f641434e904916ff23d5d7400b1a7c973ec1bf5e38ebe.lean/declarations/root-pairwise-exists-mem-filter-of-disjoint--c02e964ca5b58d0fb31cedc9.md) | 149 | `result-track:c02e964ca5b58d0fb31cedc998698b5a861b94b38f5ddb9a9c15ae2097a53d7c` |
| 13 | `theorem` | [_root_.Set.PairwiseDisjoint.exists_mem_filter](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant188100cfc9359a78681f641434e904916ff23d5d7400b1a7c973ec1bf5e38ebe.lean/declarations/root-set-pairwisedisjoint-exists-mem-filter--e401d69d9e39801eeeb3ce07.md) | 160 | `result-track:e401d69d9e39801eeeb3ce074a8b184fa2410bbe0fd2ae7ad0a4d6f806f9169f` |
| 14 | `theorem` | [iInf_sets_eq_finite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant188100cfc9359a78681f641434e904916ff23d5d7400b1a7c973ec1bf5e38ebe.lean/declarations/iinf-sets-eq-finite--bd23162a5d849698df8169df.md) | 170 | `result-track:bd23162a5d849698df8169df21417d3abcf547840775bee374c2d90002bf1339` |
| 15 | `theorem` | [iInf_sets_eq_finite'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant188100cfc9359a78681f641434e904916ff23d5d7400b1a7c973ec1bf5e38ebe.lean/declarations/iinf-sets-eq-finite--cf29ed28745a529d333b1bfa.md) | 175 | `result-track:cf29ed28745a529d333b1bfa28159ce4d3ec2c74e4fcc85fe2290f037b3f0156` |
| 16 | `theorem` | [mem_iInf_finite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant188100cfc9359a78681f641434e904916ff23d5d7400b1a7c973ec1bf5e38ebe.lean/declarations/mem-iinf-finite--f1985624f174766cef69d440.md) | 179 | `result-track:f1985624f174766cef69d440c72f041d6b534b438849fcf6a4b54a3d7261aff0` |
| 17 | `theorem` | [mem_iInf_finite'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant188100cfc9359a78681f641434e904916ff23d5d7400b1a7c973ec1bf5e38ebe.lean/declarations/mem-iinf-finite--a10c6f0971c012b8aac6b45e.md) | 183 | `result-track:a10c6f0971c012b8aac6b45e6deba8daae1e3dacbeb9c6a6941f849875d738c9` |
| 18 | `abbrev` | [coframeMinimalAxioms](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant188100cfc9359a78681f641434e904916ff23d5d7400b1a7c973ec1bf5e38ebe.lean/declarations/coframeminimalaxioms--997d9856be7df0242367dc92.md) | 189 | `declaration-track:997d9856be7df0242367dc92c5fe7e7275a368fc61324517c3ab37d699f258ba` |
| 19 | `instance` | [instCoframe](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant188100cfc9359a78681f641434e904916ff23d5d7400b1a7c973ec1bf5e38ebe.lean/declarations/instcoframe--1edad4f6f883d20629e80a4b.md) | 203 | `declaration-track:1edad4f6f883d20629e80a4bd16b387a22d0c3dc500e02fd5de9757e01f7ac62` |
| 20 | `theorem` | [mem_iInf_finset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant188100cfc9359a78681f641434e904916ff23d5d7400b1a7c973ec1bf5e38ebe.lean/declarations/mem-iinf-finset--7fdcb6d5e960d38aa297282c.md) | 205 | `result-track:7fdcb6d5e960d38aa297282cf10b45252acba8fd2cdf2150cc079098e361930e` |
| 21 | `theorem` | [iInf_sets_induct](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant188100cfc9359a78681f641434e904916ff23d5d7400b1a7c973ec1bf5e38ebe.lean/declarations/iinf-sets-induct--b8bc1a842e90a90bfe40ee6c.md) | 221 | `result-track:b8bc1a842e90a90bfe40ee6c2502dfb394f39b53ac1e4f918e046bcc519a8268` |
| 22 | `theorem` | [iInf_principal_finset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant188100cfc9359a78681f641434e904916ff23d5d7400b1a7c973ec1bf5e38ebe.lean/declarations/iinf-principal-finset--e13b82a8e182137da5d76a36.md) | 237 | `result-track:e13b82a8e182137da5d76a36b49c749eba7b9b4605cb64b53cc854bb49fd27b0` |
| 23 | `theorem` | [iInf_principal](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant188100cfc9359a78681f641434e904916ff23d5d7400b1a7c973ec1bf5e38ebe.lean/declarations/iinf-principal--616f6df6785708a8bf02b139.md) | 244 | `result-track:616f6df6785708a8bf02b13947feb892e65e6f4d8bc55e1a63743258d3439075` |
| 24 | `theorem` | [iInf_principal'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant188100cfc9359a78681f641434e904916ff23d5d7400b1a7c973ec1bf5e38ebe.lean/declarations/iinf-principal--d337a92d18c088a879795ea9.md) | 251 | `result-track:d337a92d18c088a879795ea98eb40215f0a8ce3263bdf5012aa2fa56ade6c4e0` |
| 25 | `theorem` | [iInf_principal_finite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant188100cfc9359a78681f641434e904916ff23d5d7400b1a7c973ec1bf5e38ebe.lean/declarations/iinf-principal-finite--ec9b1b657f28cff058a997a3.md) | 254 | `result-track:ec9b1b657f28cff058a997a36e6e12c58c35e1d88361c2998bf71b55cb1da510` |
| 26 | `theorem` | [eventually_all](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant188100cfc9359a78681f641434e904916ff23d5d7400b1a7c973ec1bf5e38ebe.lean/declarations/eventually-all--634e34a0a2edf1bfc6d4bfed.md) | 264 | `result-track:634e34a0a2edf1bfc6d4bfed9a6c5cf938abab3116bb666b3ecf7f5778889202` |
| 27 | `theorem` | [eventually_all_finite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant188100cfc9359a78681f641434e904916ff23d5d7400b1a7c973ec1bf5e38ebe.lean/declarations/eventually-all-finite--b26df578cece49731b8855bc.md) | 269 | `result-track:b26df578cece49731b8855bc92749b877c452f16612a6cc26c66936323548dd5` |
| 28 | `theorem` | [eventually_all_finset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant188100cfc9359a78681f641434e904916ff23d5d7400b1a7c973ec1bf5e38ebe.lean/declarations/eventually-all-finset--b20815de353be4b77aa0ae59.md) | 277 | `result-track:b20815de353be4b77aa0ae5962cc1221b7d470deb9848cbd02d4dcaec658053b` |
| 29 | `lemma` | [EventuallyLE.iUnion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant188100cfc9359a78681f641434e904916ff23d5d7400b1a7c973ec1bf5e38ebe.lean/declarations/eventuallyle-iunion--a2013c9a1bf12a19aeb0a31b.md) | 294 | `result-track:a2013c9a1bf12a19aeb0a31bf41207e35f7c5ddd3715237576df9847407c2fba` |
| 30 | `lemma` | [EventuallyEq.iUnion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant188100cfc9359a78681f641434e904916ff23d5d7400b1a7c973ec1bf5e38ebe.lean/declarations/eventuallyeq-iunion--7443a4d351d59a8bcb3ebc2f.md) | 299 | `result-track:7443a4d351d59a8bcb3ebc2fc4bf9bb11e20d04a7dff6c0d213397a86937aa45` |
| 31 | `lemma` | [EventuallyLE.iInter](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant188100cfc9359a78681f641434e904916ff23d5d7400b1a7c973ec1bf5e38ebe.lean/declarations/eventuallyle-iinter--27a89ff1a5c59614c3447193.md) | 303 | `result-track:27a89ff1a5c59614c3447193bda146d7a95540b28b76d39e3c3ac81741b6e4ab` |
| 32 | `lemma` | [EventuallyEq.iInter](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant188100cfc9359a78681f641434e904916ff23d5d7400b1a7c973ec1bf5e38ebe.lean/declarations/eventuallyeq-iinter--e9bc8b1b9ed44185d1229720.md) | 307 | `result-track:e9bc8b1b9ed44185d1229720328b178ceee585b4baca6d06448b8ee5a9506a9d` |
| 33 | `lemma` | [_root_.Set.Finite.eventuallyLE_iUnion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant188100cfc9359a78681f641434e904916ff23d5d7400b1a7c973ec1bf5e38ebe.lean/declarations/root-set-finite-eventuallyle-iunion--076bd63a68eafaa6a6b1e9e6.md) | 311 | `result-track:076bd63a68eafaa6a6b1e9e6b0b323340b16caf1b39ea553a050bbf9b7dd771e` |
| 34 | `lemma` | [_root_.Set.Finite.eventuallyEq_iUnion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant188100cfc9359a78681f641434e904916ff23d5d7400b1a7c973ec1bf5e38ebe.lean/declarations/root-set-finite-eventuallyeq-iunion--2b52207fe0209b22c3516304.md) | 319 | `result-track:2b52207fe0209b22c3516304564729100bd22ead4ab9ffec7ba934776b3fe8c1` |
| 35 | `lemma` | [_root_.Set.Finite.eventuallyLE_iInter](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant188100cfc9359a78681f641434e904916ff23d5d7400b1a7c973ec1bf5e38ebe.lean/declarations/root-set-finite-eventuallyle-iinter--60a619972914fc7f5736c17d.md) | 326 | `result-track:60a619972914fc7f5736c17d085cdd0040dc155b89ddab6b8b6011ce2660d64d` |
| 36 | `lemma` | [_root_.Set.Finite.eventuallyEq_iInter](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant188100cfc9359a78681f641434e904916ff23d5d7400b1a7c973ec1bf5e38ebe.lean/declarations/root-set-finite-eventuallyeq-iinter--edbee4011ae7136cfcbacc32.md) | 334 | `result-track:edbee4011ae7136cfcbacc32e97017ce7b69197bedaaf177e0fd2d9aec93360a` |
| 37 | `lemma` | [_root_.Finset.eventuallyLE_iUnion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant188100cfc9359a78681f641434e904916ff23d5d7400b1a7c973ec1bf5e38ebe.lean/declarations/root-finset-eventuallyle-iunion--130cd5867b591f6466214447.md) | 341 | `result-track:130cd5867b591f6466214447620569d4f551027c851c0c60c159ec49f8a71207` |
| 38 | `lemma` | [_root_.Finset.eventuallyEq_iUnion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant188100cfc9359a78681f641434e904916ff23d5d7400b1a7c973ec1bf5e38ebe.lean/declarations/root-finset-eventuallyeq-iunion--748a5ed55b2c5fec998f7511.md) | 345 | `result-track:748a5ed55b2c5fec998f7511b9178ae0c42a1f14e2b751ab1036360e5555c619` |
| 39 | `lemma` | [_root_.Finset.eventuallyLE_iInter](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant188100cfc9359a78681f641434e904916ff23d5d7400b1a7c973ec1bf5e38ebe.lean/declarations/root-finset-eventuallyle-iinter--c309cd27e17edca1995eb121.md) | 349 | `result-track:c309cd27e17edca1995eb121b477cc1d6b418fb8a573f18651556a0caec94c03` |
| 40 | `lemma` | [_root_.Finset.eventuallyEq_iInter](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant188100cfc9359a78681f641434e904916ff23d5d7400b1a7c973ec1bf5e38ebe.lean/declarations/root-finset-eventuallyeq-iinter--9a70bd50a58619fd88a939f6.md) | 353 | `result-track:9a70bd50a58619fd88a939f6efd81e7e32342d2144fcd0c8ada485bc06808942` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
