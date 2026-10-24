# Verification target: GRWTSK.Algebra.RingTheory.Basic.Variant7258cd8bfd387804fcd3270e18e14bc52f76e79bfd1bd53131b7753eccb2feb8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e9a40d6be7d894fbff62b09327a438ef68d3972a",
  "lexical_observation_count": 61,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/RingTheory/Basic/Variant7258cd8bfd387804fcd3270e18e14bc52f76e79bfd1bd53131b7753eccb2feb8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/RingTheory/Basic/Variant7258cd8bfd387804fcd3270e18e14bc52f76e79bfd1bd53131b7753eccb2feb8.lean/index.md) · [Full source](../../../../../mathematics/Algebra/RingTheory/Basic/Variant7258cd8bfd387804fcd3270e18e14bc52f76e79bfd1bd53131b7753eccb2feb8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e9a40d6be7d894fbff62b09327a438ef68d3972a`.

Source path: `GRWTSK/Algebra/RingTheory/Basic/Variant7258cd8bfd387804fcd3270e18e14bc52f76e79bfd1bd53131b7753eccb2feb8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/RingTheory/Basic/Variant7258cd8bfd387804fcd3270e18e14bc52f76e79bfd1bd53131b7753eccb2feb8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [primeFactors](../../../../../mathematics/Algebra/RingTheory/Basic/Variant7258cd8bfd387804fcd3270e18e14bc52f76e79bfd1bd53131b7753eccb2feb8.lean/declarations/primefactors--ab187f4f41a52bd2c74fa30a.md) | 52 | `declaration-track:ab187f4f41a52bd2c74fa30a1ba51b14068437cdd2d414e627823defa66da061` |
| 2 | `theorem` | [toFinset_normalizedFactors](../../../../../mathematics/Algebra/RingTheory/Basic/Variant7258cd8bfd387804fcd3270e18e14bc52f76e79bfd1bd53131b7753eccb2feb8.lean/declarations/tofinset-normalizedfactors--0a43c413367b6f77ec0521f5.md) | 56 | `result-track:0a43c413367b6f77ec0521f58acd82dea32d2359ce1177721bd6c8ca18b91bd4` |
| 3 | `lemma` | [mem_primeFactors](../../../../../mathematics/Algebra/RingTheory/Basic/Variant7258cd8bfd387804fcd3270e18e14bc52f76e79bfd1bd53131b7753eccb2feb8.lean/declarations/mem-primefactors--b1d430d799745de7a1d43f91.md) | 61 | `result-track:b1d430d799745de7a1d43f9181c2c3c8f13302b26f0dc1b2a20d8957925d8213` |
| 4 | `theorem` | [_root_.Associated.primeFactors_eq](../../../../../mathematics/Algebra/RingTheory/Basic/Variant7258cd8bfd387804fcd3270e18e14bc52f76e79bfd1bd53131b7753eccb2feb8.lean/declarations/root-associated-primefactors-eq--a67b2569df519843a63c4e5c.md) | 64 | `result-track:a67b2569df519843a63c4e5c5cd0ecc8b06d963269aaac5923607b0e0cc18aea` |
| 5 | `lemma` | [primeFactors_zero](../../../../../mathematics/Algebra/RingTheory/Basic/Variant7258cd8bfd387804fcd3270e18e14bc52f76e79bfd1bd53131b7753eccb2feb8.lean/declarations/primefactors-zero--0e82d9a5eb2a6793bc696e8b.md) | 69 | `result-track:0e82d9a5eb2a6793bc696e8bdbf479127ddeda1ee404bbcb7c57647734fbb5bf` |
| 6 | `lemma` | [primeFactors_one](../../../../../mathematics/Algebra/RingTheory/Basic/Variant7258cd8bfd387804fcd3270e18e14bc52f76e79bfd1bd53131b7753eccb2feb8.lean/declarations/primefactors-one--09213114bf02bc57d739dae7.md) | 71 | `result-track:09213114bf02bc57d739dae7c41378c5be206d8cc6098c23f3d6757af77fcdad` |
| 7 | `lemma` | [pairwise_primeFactors_isRelPrime](../../../../../mathematics/Algebra/RingTheory/Basic/Variant7258cd8bfd387804fcd3270e18e14bc52f76e79bfd1bd53131b7753eccb2feb8.lean/declarations/pairwise-primefactors-isrelprime--c7c3c524a7ff6c44179c2539.md) | 73 | `result-track:c7c3c524a7ff6c44179c2539aa838a400e9ebee4ec8ba0bbafd0f846e971e4db` |
| 8 | `theorem` | [primeFactors_pow](../../../../../mathematics/Algebra/RingTheory/Basic/Variant7258cd8bfd387804fcd3270e18e14bc52f76e79bfd1bd53131b7753eccb2feb8.lean/declarations/primefactors-pow--662cdd13121061d534c503fd.md) | 84 | `result-track:662cdd13121061d534c503fdb06237c21092a8d6e561198bfd475cc04e737bd1` |
| 9 | `theorem` | [primeFactors_pow'](../../../../../mathematics/Algebra/RingTheory/Basic/Variant7258cd8bfd387804fcd3270e18e14bc52f76e79bfd1bd53131b7753eccb2feb8.lean/declarations/primefactors-pow--fc8dd5a934e5d7a1740aa333.md) | 88 | `result-track:fc8dd5a934e5d7a1740aa333025ced2956c4e51464b53182bd914c58c89ef46c` |
| 10 | `lemma` | [normalizedFactors_nodup](../../../../../mathematics/Algebra/RingTheory/Basic/Variant7258cd8bfd387804fcd3270e18e14bc52f76e79bfd1bd53131b7753eccb2feb8.lean/declarations/normalizedfactors-nodup--736a76911aad7ce0e8f42cc9.md) | 91 | `result-track:736a76911aad7ce0e8f42cc9ce0411d806e3c92194533d0ab1840297fcbf9406` |
| 11 | `lemma` | [primeFactors_of_isUnit](../../../../../mathematics/Algebra/RingTheory/Basic/Variant7258cd8bfd387804fcd3270e18e14bc52f76e79bfd1bd53131b7753eccb2feb8.lean/declarations/primefactors-of-isunit--e0993dd40de75675b8265b67.md) | 100 | `result-track:e0993dd40de75675b8265b67a72e411fbd08508fad7418b2933eb9849f20134d` |
| 12 | `theorem` | [primeFactors_eq_empty_iff](../../../../../mathematics/Algebra/RingTheory/Basic/Variant7258cd8bfd387804fcd3270e18e14bc52f76e79bfd1bd53131b7753eccb2feb8.lean/declarations/primefactors-eq-empty-iff--5b65dbce688abfc42cab1904.md) | 108 | `result-track:5b65dbce688abfc42cab1904b2b4e67ec6f6fc3f25aebd819a7a32995ed43c3b` |
| 13 | `lemma` | [primeFactors_val_eq_normalizedFactors](../../../../../mathematics/Algebra/RingTheory/Basic/Variant7258cd8bfd387804fcd3270e18e14bc52f76e79bfd1bd53131b7753eccb2feb8.lean/declarations/primefactors-val-eq-normalizedfactors--4cc3b6f6d56b6b73b70d9cdc.md) | 112 | `result-track:4cc3b6f6d56b6b73b70d9cdcb6fe950e2f04cd9e675a6d71ea24b4bb5d623e4c` |
| 14 | `theorem` | [primeFactors_mul_eq_union](../../../../../mathematics/Algebra/RingTheory/Basic/Variant7258cd8bfd387804fcd3270e18e14bc52f76e79bfd1bd53131b7753eccb2feb8.lean/declarations/primefactors-mul-eq-union--f28c85dce6fbd4c3acdcda35.md) | 119 | `result-track:f28c85dce6fbd4c3acdcda35ab36956590d27cc9ba6bdc88f826bac66d206784` |
| 15 | `theorem` | [disjoint_primeFactors](../../../../../mathematics/Algebra/RingTheory/Basic/Variant7258cd8bfd387804fcd3270e18e14bc52f76e79bfd1bd53131b7753eccb2feb8.lean/declarations/disjoint-primefactors--0924a7fb9dce3effd8cf1890.md) | 125 | `result-track:0924a7fb9dce3effd8cf1890528b4f14996ed57f3f1079e092d1c6128268db39` |
| 16 | `theorem` | [primeFactors_mul_eq_disjUnion](../../../../../mathematics/Algebra/RingTheory/Basic/Variant7258cd8bfd387804fcd3270e18e14bc52f76e79bfd1bd53131b7753eccb2feb8.lean/declarations/primefactors-mul-eq-disjunion--044dc7f68e1a61d4001a182c.md) | 130 | `result-track:044dc7f68e1a61d4001a182cde0f41236263f96be8535cfe89e8b453f8f401e9` |
| 17 | `def` | [radical](../../../../../mathematics/Algebra/RingTheory/Basic/Variant7258cd8bfd387804fcd3270e18e14bc52f76e79bfd1bd53131b7753eccb2feb8.lean/declarations/radical--587ec1ff8174cf1a01a8c31c.md) | 144 | `declaration-track:587ec1ff8174cf1a01a8c31c4849ab8e59f94105dbd5708573cb74c973f0612e` |
| 18 | `theorem` | [radical_zero](../../../../../mathematics/Algebra/RingTheory/Basic/Variant7258cd8bfd387804fcd3270e18e14bc52f76e79bfd1bd53131b7753eccb2feb8.lean/declarations/radical-zero--76df02c10a31e8a5d627a40c.md) | 147 | `result-track:76df02c10a31e8a5d627a40c28c70fa08e6de23e13d3347dff79cd379f66ecc5` |
| 19 | `theorem` | [radical_one](../../../../../mathematics/Algebra/RingTheory/Basic/Variant7258cd8bfd387804fcd3270e18e14bc52f76e79bfd1bd53131b7753eccb2feb8.lean/declarations/radical-one--d989f23e70518c5415b31bf4.md) | 148 | `result-track:d989f23e70518c5415b31bf49e2f76379c22bad0d91e6b4b7e67180ad19e7a28` |
| 20 | `theorem` | [radical_eq_of_associated](../../../../../mathematics/Algebra/RingTheory/Basic/Variant7258cd8bfd387804fcd3270e18e14bc52f76e79bfd1bd53131b7753eccb2feb8.lean/declarations/radical-eq-of-associated--ce5e1dac320f6543e55281b3.md) | 149 | `result-track:ce5e1dac320f6543e55281b30a12e12d9be3d83cbab0112b77b77d3aa51ec0c5` |
| 21 | `lemma` | [radical_associated](../../../../../mathematics/Algebra/RingTheory/Basic/Variant7258cd8bfd387804fcd3270e18e14bc52f76e79bfd1bd53131b7753eccb2feb8.lean/declarations/radical-associated--de371f8c946fe836a177a50b.md) | 152 | `result-track:de371f8c946fe836a177a50b0b278be56789ef6ce3627cfa8efe2392f6b5382f` |
| 22 | `lemma` | [_root_.IsRadical.dvd_radical](../../../../../mathematics/Algebra/RingTheory/Basic/Variant7258cd8bfd387804fcd3270e18e14bc52f76e79bfd1bd53131b7753eccb2feb8.lean/declarations/root-isradical-dvd-radical--44b93a9e9e72da730e17f518.md) | 158 | `result-track:44b93a9e9e72da730e17f518ec853bcf3262bfab5afd965ee70ead76376fd2d7` |
| 23 | `theorem` | [radical_of_isUnit](../../../../../mathematics/Algebra/RingTheory/Basic/Variant7258cd8bfd387804fcd3270e18e14bc52f76e79bfd1bd53131b7753eccb2feb8.lean/declarations/radical-of-isunit--350b6fd31bce381dd933dfd0.md) | 161 | `result-track:350b6fd31bce381dd933dfd0dbf882d2a8d7ecde50cc98d6bee29790f0e757c2` |
| 24 | `theorem` | [radical_mul_of_isUnit_left](../../../../../mathematics/Algebra/RingTheory/Basic/Variant7258cd8bfd387804fcd3270e18e14bc52f76e79bfd1bd53131b7753eccb2feb8.lean/declarations/radical-mul-of-isunit-left--5d2b05036b66a043df314db3.md) | 164 | `result-track:5d2b05036b66a043df314db33f2be9230d0d8dce591b66160b4959dce031d3cb` |
| 25 | `theorem` | [radical_mul_of_isUnit_right](../../../../../mathematics/Algebra/RingTheory/Basic/Variant7258cd8bfd387804fcd3270e18e14bc52f76e79bfd1bd53131b7753eccb2feb8.lean/declarations/radical-mul-of-isunit-right--0cc0659994a27d2d5f28bbbb.md) | 167 | `result-track:0cc0659994a27d2d5f28bbbbb2ab0d378887a13b34aaff884e275535a896e934` |
| 26 | `theorem` | [radical_pow](../../../../../mathematics/Algebra/RingTheory/Basic/Variant7258cd8bfd387804fcd3270e18e14bc52f76e79bfd1bd53131b7753eccb2feb8.lean/declarations/radical-pow--d3bf879ce1194a28df32b095.md) | 170 | `result-track:d3bf879ce1194a28df32b09584c234f8ab2fcd5ef09fd331c3a2a8380fdbfb1e` |
| 27 | `theorem` | [radical_pow_dvd](../../../../../mathematics/Algebra/RingTheory/Basic/Variant7258cd8bfd387804fcd3270e18e14bc52f76e79bfd1bd53131b7753eccb2feb8.lean/declarations/radical-pow-dvd--263e9ca6187d7f44314e7ee9.md) | 173 | `result-track:263e9ca6187d7f44314e7ee9a9b4ffbaba0a78351a24209caf1cebed2d2ca0ce` |
| 28 | `theorem` | [radical_dvd_self](../../../../../mathematics/Algebra/RingTheory/Basic/Variant7258cd8bfd387804fcd3270e18e14bc52f76e79bfd1bd53131b7753eccb2feb8.lean/declarations/radical-dvd-self--830ec73199efd70449cb91e1.md) | 178 | `result-track:830ec73199efd70449cb91e17b2a06737c973314ba35f52bfddae051589bce18` |
| 29 | `theorem` | [radical_of_prime](../../../../../mathematics/Algebra/RingTheory/Basic/Variant7258cd8bfd387804fcd3270e18e14bc52f76e79bfd1bd53131b7753eccb2feb8.lean/declarations/radical-of-prime--7915b5864e4b3219946f1fc7.md) | 188 | `result-track:7915b5864e4b3219946f1fc7b6be03d72990f5c959d03de1a97c7cc229ecb34b` |
| 30 | `theorem` | [radical_pow_of_prime](../../../../../mathematics/Algebra/RingTheory/Basic/Variant7258cd8bfd387804fcd3270e18e14bc52f76e79bfd1bd53131b7753eccb2feb8.lean/declarations/radical-pow-of-prime--8a799e97e0272e05823e0abb.md) | 193 | `result-track:8a799e97e0272e05823e0abbba8d341bd724138212abee0e5cc06ce5be48b2ed` |
| 31 | `theorem` | [radical_ne_zero](../../../../../mathematics/Algebra/RingTheory/Basic/Variant7258cd8bfd387804fcd3270e18e14bc52f76e79bfd1bd53131b7753eccb2feb8.lean/declarations/radical-ne-zero--d3a49f2e1388dfaff86f72cc.md) | 198 | `result-track:d3a49f2e1388dfaff86f72cc3520784653371c6e0202c22480b7662dbf7c4c1b` |
| 32 | `lemma` | [dvd_radical_iff_of_irreducible](../../../../../mathematics/Algebra/RingTheory/Basic/Variant7258cd8bfd387804fcd3270e18e14bc52f76e79bfd1bd53131b7753eccb2feb8.lean/declarations/dvd-radical-iff-of-irreducible--b4691c8a07c0bd94d2012514.md) | 209 | `result-track:b4691c8a07c0bd94d20125141abe2a33881b642cdbe20b3f2ecf0bd94b88e17a` |
| 33 | `lemma` | [isRadical_radical](../../../../../mathematics/Algebra/RingTheory/Basic/Variant7258cd8bfd387804fcd3270e18e14bc52f76e79bfd1bd53131b7753eccb2feb8.lean/declarations/isradical-radical--2ce92163aaf36726d8329cc2.md) | 218 | `result-track:2ce92163aaf36726d8329cc26c8ef7beab53af57ae4920043ee681bfdc0cb35d` |
| 34 | `lemma` | [squarefree_radical](../../../../../mathematics/Algebra/RingTheory/Basic/Variant7258cd8bfd387804fcd3270e18e14bc52f76e79bfd1bd53131b7753eccb2feb8.lean/declarations/squarefree-radical--6ea07830fe0089b14a8a2a2d.md) | 233 | `result-track:6ea07830fe0089b14a8a2a2d8bebbacc1c54ce12f15b261c5e4e118b95e67694` |
| 35 | `lemma` | [primeFactors_radical](../../../../../mathematics/Algebra/RingTheory/Basic/Variant7258cd8bfd387804fcd3270e18e14bc52f76e79bfd1bd53131b7753eccb2feb8.lean/declarations/primefactors-radical--fe9761dfce47365586380746.md) | 237 | `result-track:fe9761dfce47365586380746b2f8a9517f6345ae1c519fe27ab835210dc5d832` |
| 36 | `lemma` | [radical_eq_iff_primeFactors_eq](../../../../../mathematics/Algebra/RingTheory/Basic/Variant7258cd8bfd387804fcd3270e18e14bc52f76e79bfd1bd53131b7753eccb2feb8.lean/declarations/radical-eq-iff-primefactors-eq--c9a10ce758df54eccf494005.md) | 245 | `result-track:c9a10ce758df54eccf494005b4acf5a4fc6af9db24cf5d6a24e3a174de379c0e` |
| 37 | `theorem` | [radical_eq_one_iff](../../../../../mathematics/Algebra/RingTheory/Basic/Variant7258cd8bfd387804fcd3270e18e14bc52f76e79bfd1bd53131b7753eccb2feb8.lean/declarations/radical-eq-one-iff--34d80c98718b59a9e047c8b4.md) | 250 | `result-track:34d80c98718b59a9e047c8b40794f3cf8845007c7341071dd1117507b87de3cd` |
| 38 | `lemma` | [radical_radical](../../../../../mathematics/Algebra/RingTheory/Basic/Variant7258cd8bfd387804fcd3270e18e14bc52f76e79bfd1bd53131b7753eccb2feb8.lean/declarations/radical-radical--ad04ccacf7d7862e24104f30.md) | 259 | `result-track:ad04ccacf7d7862e24104f3027cc131bd133cb732735ba1ffd377932140f56cf` |
| 39 | `lemma` | [radical_dvd_radical_iff_normalizedFactors_subset_normalizedFactors](../../../../../mathematics/Algebra/RingTheory/Basic/Variant7258cd8bfd387804fcd3270e18e14bc52f76e79bfd1bd53131b7753eccb2feb8.lean/declarations/radical-dvd-radical-iff-normalizedfactors-subset-normalizedfactors--c472911b83f0ad99a3e5a2c8.md) | 262 | `result-track:c472911b83f0ad99a3e5a2c841d8ae60279fa32ef531e0e6530e6fc123b77623` |
| 40 | `lemma` | [radical_dvd_radical_iff_primeFactors_subset_primeFactors](../../../../../mathematics/Algebra/RingTheory/Basic/Variant7258cd8bfd387804fcd3270e18e14bc52f76e79bfd1bd53131b7753eccb2feb8.lean/declarations/radical-dvd-radical-iff-primefactors-subset-primefactors--50c52d9c045918c747b4c3c3.md) | 271 | `result-track:50c52d9c045918c747b4c3c3cd4a0ac189883b4b1f3562d679ac4070c4534e8e` |
| 41 | `lemma` | [radical_dvd_radical](../../../../../mathematics/Algebra/RingTheory/Basic/Variant7258cd8bfd387804fcd3270e18e14bc52f76e79bfd1bd53131b7753eccb2feb8.lean/declarations/radical-dvd-radical--cfc2d09a2e4cf4bcab617295.md) | 279 | `result-track:cfc2d09a2e4cf4bcab617295d45b1b117027a453f3935d9d288ec8854de770ca` |
| 42 | `lemma` | [dvd_radical_iff](../../../../../mathematics/Algebra/RingTheory/Basic/Variant7258cd8bfd387804fcd3270e18e14bc52f76e79bfd1bd53131b7753eccb2feb8.lean/declarations/dvd-radical-iff--4e5ae8218ceb3386f63a2aea.md) | 290 | `result-track:4e5ae8218ceb3386f63a2aeace4ef33e2a81d4e68c1a952dc2f2a68ef640a61b` |
| 43 | `theorem` | [radical_dvd_iff_primeFactors_subset](../../../../../mathematics/Algebra/RingTheory/Basic/Variant7258cd8bfd387804fcd3270e18e14bc52f76e79bfd1bd53131b7753eccb2feb8.lean/declarations/radical-dvd-iff-primefactors-subset--0d625559eecc5bda11ff0bda.md) | 296 | `result-track:0d625559eecc5bda11ff0bda71bd0a2ab8f64bb84738102d8fdd3ca2ea18082d` |
| 44 | `theorem` | [exists_dvd_pow_iff_radical_dvd](../../../../../mathematics/Algebra/RingTheory/Basic/Variant7258cd8bfd387804fcd3270e18e14bc52f76e79bfd1bd53131b7753eccb2feb8.lean/declarations/exists-dvd-pow-iff-radical-dvd--6734a21f34246cdf8c4cb870.md) | 301 | `result-track:6734a21f34246cdf8c4cb8700935d665dc4c7b2f0cb077a9dd49655c64ea279e` |
| 45 | `theorem` | [exists_dvd_radical_self_pow](../../../../../mathematics/Algebra/RingTheory/Basic/Variant7258cd8bfd387804fcd3270e18e14bc52f76e79bfd1bd53131b7753eccb2feb8.lean/declarations/exists-dvd-radical-self-pow--8dec75a2a30249a77f4277f7.md) | 314 | `result-track:8dec75a2a30249a77f4277f7c9aa8a369e067c53975eb808a92d865314120c11` |
| 46 | `theorem` | [radical_mul](../../../../../mathematics/Algebra/RingTheory/Basic/Variant7258cd8bfd387804fcd3270e18e14bc52f76e79bfd1bd53131b7753eccb2feb8.lean/declarations/radical-mul--47f7a5b1e9f94f1156a8ae79.md) | 318 | `result-track:47f7a5b1e9f94f1156a8ae7944aec4fb162a36c9117713f6a7be0e0a8d9422a1` |
| 47 | `theorem` | [radical_prod](../../../../../mathematics/Algebra/RingTheory/Basic/Variant7258cd8bfd387804fcd3270e18e14bc52f76e79bfd1bd53131b7753eccb2feb8.lean/declarations/radical-prod--6b52625a0e0529526922de12.md) | 323 | `result-track:6b52625a0e0529526922de1266d4bc48c37bf2a5fe1161ee67d1657dc6651182` |
| 48 | `theorem` | [radical_mul_dvd](../../../../../mathematics/Algebra/RingTheory/Basic/Variant7258cd8bfd387804fcd3270e18e14bc52f76e79bfd1bd53131b7753eccb2feb8.lean/declarations/radical-mul-dvd--11f1fb6ce8d3be2ef6e88817.md) | 334 | `result-track:11f1fb6ce8d3be2ef6e888177964add40e100cab49d6409ec81ef6a9a2631557` |
| 49 | `theorem` | [radical_prod_dvd](../../../../../mathematics/Algebra/RingTheory/Basic/Variant7258cd8bfd387804fcd3270e18e14bc52f76e79bfd1bd53131b7753eccb2feb8.lean/declarations/radical-prod-dvd--a905bb4f25dd8918d06d9b26.md) | 344 | `result-track:a905bb4f25dd8918d06d9b26c2fe04bf0167143e98b8bc00ea6bdbb8ecd4854b` |
| 50 | `theorem` | [radical_mul_of_dvd](../../../../../mathematics/Algebra/RingTheory/Basic/Variant7258cd8bfd387804fcd3270e18e14bc52f76e79bfd1bd53131b7753eccb2feb8.lean/declarations/radical-mul-of-dvd--ad1d15a8d9f5a61848aee478.md) | 352 | `result-track:ad1d15a8d9f5a61848aee47821369ef65a40a848e60516d04a3e3feb2e9f15bf` |
| 51 | `theorem` | [radical_neg](../../../../../mathematics/Algebra/RingTheory/Basic/Variant7258cd8bfd387804fcd3270e18e14bc52f76e79bfd1bd53131b7753eccb2feb8.lean/declarations/radical-neg--ca9eb54ec23839a5b30635f2.md) | 371 | `result-track:ca9eb54ec23839a5b30635f28f4b85a59935c6b44bd292fb6cd9a4703fcbd787` |
| 52 | `theorem` | [radical_neg_one](../../../../../mathematics/Algebra/RingTheory/Basic/Variant7258cd8bfd387804fcd3270e18e14bc52f76e79bfd1bd53131b7753eccb2feb8.lean/declarations/radical-neg-one--7c3e4fd7a13005e7b607c7e2.md) | 374 | `result-track:7c3e4fd7a13005e7b607c7e2948467b507f6deace709e1af737e9aa24a00ac86` |
| 53 | `def` | [divRadical](../../../../../mathematics/Algebra/RingTheory/Basic/Variant7258cd8bfd387804fcd3270e18e14bc52f76e79bfd1bd53131b7753eccb2feb8.lean/declarations/divradical--514e5a603861a1a9acd30d33.md) | 384 | `declaration-track:514e5a603861a1a9acd30d3344448a0a2d4b1ba3f15cb91b950d77bbfdb6586d` |
| 54 | `theorem` | [radical_mul_divRadical](../../../../../mathematics/Algebra/RingTheory/Basic/Variant7258cd8bfd387804fcd3270e18e14bc52f76e79bfd1bd53131b7753eccb2feb8.lean/declarations/radical-mul-divradical--68f0216d2064c9eb1bad432d.md) | 386 | `result-track:68f0216d2064c9eb1bad432da73457673eca1244796f0c4c409714193fea6b99` |
| 55 | `theorem` | [divRadical_mul_radical](../../../../../mathematics/Algebra/RingTheory/Basic/Variant7258cd8bfd387804fcd3270e18e14bc52f76e79bfd1bd53131b7753eccb2feb8.lean/declarations/divradical-mul-radical--7fc2004c0ee997bb8837e630.md) | 390 | `result-track:7fc2004c0ee997bb8837e630a453cc2e43a6dcbb0a760ae2caa07cb90ecaf534` |
| 56 | `theorem` | [divRadical_ne_zero](../../../../../mathematics/Algebra/RingTheory/Basic/Variant7258cd8bfd387804fcd3270e18e14bc52f76e79bfd1bd53131b7753eccb2feb8.lean/declarations/divradical-ne-zero--3d754dfcb0f6ad9e2c9d2756.md) | 394 | `result-track:3d754dfcb0f6ad9e2c9d2756b024b9afb0f427170debe401c385f5bff2d993aa` |
| 57 | `theorem` | [divRadical_isUnit](../../../../../mathematics/Algebra/RingTheory/Basic/Variant7258cd8bfd387804fcd3270e18e14bc52f76e79bfd1bd53131b7753eccb2feb8.lean/declarations/divradical-isunit--7609c6c88e67a45a155d574e.md) | 398 | `result-track:7609c6c88e67a45a155d574ea19fa7415999e8e1ffe2903fb6ad2795965b9676` |
| 58 | `theorem` | [eq_divRadical](../../../../../mathematics/Algebra/RingTheory/Basic/Variant7258cd8bfd387804fcd3270e18e14bc52f76e79bfd1bd53131b7753eccb2feb8.lean/declarations/eq-divradical--09ff2eafb4c11394596eb210.md) | 401 | `result-track:09ff2eafb4c11394596eb2107fcf1119dfa38f4e821c8ad58b1d0612f7d7f2ff` |
| 59 | `theorem` | [divRadical_mul](../../../../../mathematics/Algebra/RingTheory/Basic/Variant7258cd8bfd387804fcd3270e18e14bc52f76e79bfd1bd53131b7753eccb2feb8.lean/declarations/divradical-mul--aaf0a1c4796c9ddc7d60639b.md) | 405 | `result-track:aaf0a1c4796c9ddc7d60639b83ebc32986f49ec983790ba065f3b462bb9f5de2` |
| 60 | `theorem` | [divRadical_dvd_self](../../../../../mathematics/Algebra/RingTheory/Basic/Variant7258cd8bfd387804fcd3270e18e14bc52f76e79bfd1bd53131b7753eccb2feb8.lean/declarations/divradical-dvd-self--a47a330a5eb17c3e74a20f26.md) | 411 | `result-track:a47a330a5eb17c3e74a20f266d49277f4075fc46a744e884a24509eac7bbb9f5` |
| 61 | `theorem` | [_root_.IsCoprime.divRadical](../../../../../mathematics/Algebra/RingTheory/Basic/Variant7258cd8bfd387804fcd3270e18e14bc52f76e79bfd1bd53131b7753eccb2feb8.lean/declarations/root-iscoprime-divradical--54cc3ea0b56f55357011753f.md) | 414 | `result-track:54cc3ea0b56f55357011753f1db37cf048c55ba08a70d91af3a47c42d4edef73` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
