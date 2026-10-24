# Verification target: GRWTSK.NumberTheory.Ideal.Variantcee7e98bbac003c2af71218f6d7d808d4ff1464c3425f1e2a5c1b8dc3bb450f6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1a7f19b849fdbfd6c34175328163d2742bd6a5d4",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Ideal/Variantcee7e98bbac003c2af71218f6d7d808d4ff1464c3425f1e2a5c1b8dc3bb450f6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Ideal/Variantcee7e98bbac003c2af71218f6d7d808d4ff1464c3425f1e2a5c1b8dc3bb450f6.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Ideal/Variantcee7e98bbac003c2af71218f6d7d808d4ff1464c3425f1e2a5c1b8dc3bb450f6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1a7f19b849fdbfd6c34175328163d2742bd6a5d4`.

Source path: `GRWTSK/NumberTheory/Ideal/Variantcee7e98bbac003c2af71218f6d7d808d4ff1464c3425f1e2a5c1b8dc3bb450f6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Ideal/Variantcee7e98bbac003c2af71218f6d7d808d4ff1464c3425f1e2a5c1b8dc3bb450f6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [isPrime_span_zeta_sub_one](../../../../mathematics/NumberTheory/Ideal/Variantcee7e98bbac003c2af71218f6d7d808d4ff1464c3425f1e2a5c1b8dc3bb450f6.lean/declarations/isprime-span-zeta-sub-one--cfd995e9d4f15d152c579923.md) | 67 | `declaration-track:cfd995e9d4f15d152c5799235d44bfa6a9055226b7f4fb5c2b410a661999c003` |
| 2 | `theorem` | [associated_norm_zeta_sub_one](../../../../mathematics/NumberTheory/Ideal/Variantcee7e98bbac003c2af71218f6d7d808d4ff1464c3425f1e2a5c1b8dc3bb450f6.lean/declarations/associated-norm-zeta-sub-one--5f052eba1234b817466267de.md) | 72 | `result-track:5f052eba1234b817466267de57dbd9af6867e0229f4a573940094503e800b266` |
| 3 | `theorem` | [zeta_sub_one_dvd_intCast_iff](../../../../mathematics/NumberTheory/Ideal/Variantcee7e98bbac003c2af71218f6d7d808d4ff1464c3425f1e2a5c1b8dc3bb450f6.lean/declarations/zeta-sub-one-dvd-intcast-iff--436281acb363a1eaf6b4fabc.md) | 85 | `result-track:436281acb363a1eaf6b4fabc22e5edbeafd9e4c7183648aeadcef5904e2036ff` |
| 4 | `theorem` | [absNorm_span_zeta_sub_one](../../../../mathematics/NumberTheory/Ideal/Variantcee7e98bbac003c2af71218f6d7d808d4ff1464c3425f1e2a5c1b8dc3bb450f6.lean/declarations/absnorm-span-zeta-sub-one--9d7ae968021661b528037a92.md) | 91 | `result-track:9d7ae968021661b528037a9221aa1831ba66cc742c8ab4137403f39e0506629a` |
| 5 | `theorem` | [p_mem_span_zeta_sub_one](../../../../mathematics/NumberTheory/Ideal/Variantcee7e98bbac003c2af71218f6d7d808d4ff1464c3425f1e2a5c1b8dc3bb450f6.lean/declarations/p-mem-span-zeta-sub-one--1de5d298729e379386246cbf.md) | 95 | `result-track:1de5d298729e379386246cbfe38e43ab6f49549c317e8c36a5e702c04f0540f3` |
| 6 | `theorem` | [span_zeta_sub_one_ne_bot](../../../../mathematics/NumberTheory/Ideal/Variantcee7e98bbac003c2af71218f6d7d808d4ff1464c3425f1e2a5c1b8dc3bb450f6.lean/declarations/span-zeta-sub-one-ne-bot--d7a141eaa0ee2eb4d0c9a458.md) | 99 | `result-track:d7a141eaa0ee2eb4d0c9a45871a70d5298b673faf96eff49cfc37ca26e102353` |
| 7 | `instance` | [liesOver_span_zeta_sub_one](../../../../mathematics/NumberTheory/Ideal/Variantcee7e98bbac003c2af71218f6d7d808d4ff1464c3425f1e2a5c1b8dc3bb450f6.lean/declarations/liesover-span-zeta-sub-one--1d6ba03f89c06b7bb2991e15.md) | 102 | `declaration-track:1d6ba03f89c06b7bb2991e1572182657701276b12732aa72c0dcc841619ad8a1` |
| 8 | `theorem` | [inertiaDeg_span_zeta_sub_one](../../../../mathematics/NumberTheory/Ideal/Variantcee7e98bbac003c2af71218f6d7d808d4ff1464c3425f1e2a5c1b8dc3bb450f6.lean/declarations/inertiadeg-span-zeta-sub-one--c7e85792539a53521614985b.md) | 108 | `result-track:c7e85792539a53521614985b195b3ff340b5f0a583e72c0024f7ed5b9066609b` |
| 9 | `theorem` | [map_eq_span_zeta_sub_one_pow](../../../../mathematics/NumberTheory/Ideal/Variantcee7e98bbac003c2af71218f6d7d808d4ff1464c3425f1e2a5c1b8dc3bb450f6.lean/declarations/map-eq-span-zeta-sub-one-pow--5bedfd2c223ecc95dcd30ce3.md) | 114 | `result-track:5bedfd2c223ecc95dcd30ce3fb007c4964ddbaac68174e4081cf9a44573785df` |
| 10 | `theorem` | [ramificationIdx_span_zeta_sub_one](../../../../mathematics/NumberTheory/Ideal/Variantcee7e98bbac003c2af71218f6d7d808d4ff1464c3425f1e2a5c1b8dc3bb450f6.lean/declarations/ramificationidx-span-zeta-sub-one--7aea060eb7505c11dc3a5662.md) | 132 | `result-track:7aea060eb7505c11dc3a566219c7bc309dc4a921584e33790dd94d15f4799b9d` |
| 11 | `theorem` | [ncard_primesOver_of_prime_pow](../../../../mathematics/NumberTheory/Ideal/Variantcee7e98bbac003c2af71218f6d7d808d4ff1464c3425f1e2a5c1b8dc3bb450f6.lean/declarations/ncard-primesover-of-prime-pow--b8ed50ee62f88eb93a5f6fee.md) | 144 | `result-track:b8ed50ee62f88eb93a5f6fee0d4889775ab52347e80711ccef843ecb2f2d2ccc` |
| 12 | `theorem` | [eq_span_zeta_sub_one_of_liesOver](../../../../mathematics/NumberTheory/Ideal/Variantcee7e98bbac003c2af71218f6d7d808d4ff1464c3425f1e2a5c1b8dc3bb450f6.lean/declarations/eq-span-zeta-sub-one-of-liesover--8521ba1ea9eed4267ae3feb7.md) | 157 | `result-track:8521ba1ea9eed4267ae3feb7b2a37b4da1a0838f4ebb03cb0e1a575172f19139` |
| 13 | `theorem` | [inertiaDeg_eq_of_prime_pow](../../../../mathematics/NumberTheory/Ideal/Variantcee7e98bbac003c2af71218f6d7d808d4ff1464c3425f1e2a5c1b8dc3bb450f6.lean/declarations/inertiadeg-eq-of-prime-pow--9724be2279cc58226d62cf68.md) | 166 | `result-track:9724be2279cc58226d62cf685a6d72c83e934ca0b864f325f443a8dde11905b0` |
| 14 | `theorem` | [ramificationIdx_eq_of_prime_pow](../../../../mathematics/NumberTheory/Ideal/Variantcee7e98bbac003c2af71218f6d7d808d4ff1464c3425f1e2a5c1b8dc3bb450f6.lean/declarations/ramificationidx-eq-of-prime-pow--d43481635fb0d38cfecdcc82.md) | 171 | `result-track:d43481635fb0d38cfecdcc82386941b8146fb16e9bc85ad58cb2b7382682c179` |
| 15 | `theorem` | [inertiaDegIn_eq_of_prime_pow](../../../../mathematics/NumberTheory/Ideal/Variantcee7e98bbac003c2af71218f6d7d808d4ff1464c3425f1e2a5c1b8dc3bb450f6.lean/declarations/inertiadegin-eq-of-prime-pow--dd6ddd0e39e2f0f80c5fb252.md) | 176 | `result-track:dd6ddd0e39e2f0f80c5fb252fab72e9d705dc5572854e0feb18456eb48e9f5b1` |
| 16 | `theorem` | [ramificationIdxIn_eq_of_prime_pow](../../../../mathematics/NumberTheory/Ideal/Variantcee7e98bbac003c2af71218f6d7d808d4ff1464c3425f1e2a5c1b8dc3bb450f6.lean/declarations/ramificationidxin-eq-of-prime-pow--9492150f50d632eeab4b6beb.md) | 183 | `result-track:9492150f50d632eeab4b6beb4c0458481357c8ecde65121a4af1d4a27f26e841` |
| 17 | `instance` | [isPrime_span_zeta_sub_one'](../../../../mathematics/NumberTheory/Ideal/Variantcee7e98bbac003c2af71218f6d7d808d4ff1464c3425f1e2a5c1b8dc3bb450f6.lean/declarations/isprime-span-zeta-sub-one--ef2a89611878b8b316756c71.md) | 195 | `declaration-track:ef2a89611878b8b316756c71cb19852e6c94a25df26e3a5aa9a140f2b17dfb51` |
| 18 | `theorem` | [two_not_mem_span_zeta_sub_one'](../../../../mathematics/NumberTheory/Ideal/Variantcee7e98bbac003c2af71218f6d7d808d4ff1464c3425f1e2a5c1b8dc3bb450f6.lean/declarations/two-not-mem-span-zeta-sub-one--c87495a41087fd804655f5e1.md) | 201 | `result-track:c87495a41087fd804655f5e18a75d1184fec65a649ba9a617244a350dd0e61ad` |
| 19 | `lemma` | [associated_sub_one_of_isPrimitiveRoot](../../../../mathematics/NumberTheory/Ideal/Variantcee7e98bbac003c2af71218f6d7d808d4ff1464c3425f1e2a5c1b8dc3bb450f6.lean/declarations/associated-sub-one-of-isprimitiveroot--8e462c78aea2d00cac9af7b3.md) | 207 | `result-track:8e462c78aea2d00cac9af7b360825e0bbe5ba809b23cc854b96aae793ecda70b` |
| 20 | `theorem` | [associated_zeta_sub_one_pow_prime](../../../../mathematics/NumberTheory/Ideal/Variantcee7e98bbac003c2af71218f6d7d808d4ff1464c3425f1e2a5c1b8dc3bb450f6.lean/declarations/associated-zeta-sub-one-pow-prime--f6bd2f701a0fda96a7d7645f.md) | 217 | `result-track:f6bd2f701a0fda96a7d7645f1084035ec0efe9e96f1d213e217bb3dc712e9d53` |
| 21 | `theorem` | [isCoprime_of_not_zeta_sub_one_dvd](../../../../mathematics/NumberTheory/Ideal/Variantcee7e98bbac003c2af71218f6d7d808d4ff1464c3425f1e2a5c1b8dc3bb450f6.lean/declarations/iscoprime-of-not-zeta-sub-one-dvd--5b3f06a29fa0fcad8ba57c86.md) | 231 | `result-track:5b3f06a29fa0fcad8ba57c86b14342113d9a9e8d84fb83735b2d870096f7bb54` |
| 22 | `theorem` | [inertiaDeg_span_zeta_sub_one'](../../../../mathematics/NumberTheory/Ideal/Variantcee7e98bbac003c2af71218f6d7d808d4ff1464c3425f1e2a5c1b8dc3bb450f6.lean/declarations/inertiadeg-span-zeta-sub-one--9101c9fd4f09432d12732d05.md) | 239 | `result-track:9101c9fd4f09432d12732d05eef31b9854b646e25233ee8b9ae4a355920da1f4` |
| 23 | `theorem` | [ramificationIdx_span_zeta_sub_one'](../../../../mathematics/NumberTheory/Ideal/Variantcee7e98bbac003c2af71218f6d7d808d4ff1464c3425f1e2a5c1b8dc3bb450f6.lean/declarations/ramificationidx-span-zeta-sub-one--0f5e62d145f102ee8b9e33c6.md) | 243 | `result-track:0f5e62d145f102ee8b9e33c6e5a85224b4ca8d2cb5aa8c0a9deae0cbed73d9bd` |
| 24 | `theorem` | [zeta_sub_one_dvd_intCast_iff'](../../../../mathematics/NumberTheory/Ideal/Variantcee7e98bbac003c2af71218f6d7d808d4ff1464c3425f1e2a5c1b8dc3bb450f6.lean/declarations/zeta-sub-one-dvd-intcast-iff--eeba0828022b10533daae983.md) | 250 | `result-track:eeba0828022b10533daae9831c869b63ae200007604c0874b36d38f354512ec5` |
| 25 | `theorem` | [ncard_primesOver_of_prime](../../../../mathematics/NumberTheory/Ideal/Variantcee7e98bbac003c2af71218f6d7d808d4ff1464c3425f1e2a5c1b8dc3bb450f6.lean/declarations/ncard-primesover-of-prime--1916d599a657c135b8ab04d4.md) | 258 | `result-track:1916d599a657c135b8ab04d4e0611e5102dc0306df29ec802c056d52f4dbc1ab` |
| 26 | `theorem` | [eq_span_zeta_sub_one_of_liesOver'](../../../../mathematics/NumberTheory/Ideal/Variantcee7e98bbac003c2af71218f6d7d808d4ff1464c3425f1e2a5c1b8dc3bb450f6.lean/declarations/eq-span-zeta-sub-one-of-liesover--e278be110d857b015d01fcb6.md) | 263 | `result-track:e278be110d857b015d01fcb6f72b3918ddd8e0a23bbddf1f87917b65d60c7c9a` |
| 27 | `theorem` | [inertiaDeg_eq_of_prime](../../../../mathematics/NumberTheory/Ideal/Variantcee7e98bbac003c2af71218f6d7d808d4ff1464c3425f1e2a5c1b8dc3bb450f6.lean/declarations/inertiadeg-eq-of-prime--dff1c92926305ac60ad4ea4c.md) | 269 | `result-track:dff1c92926305ac60ad4ea4ccaaabdaec770c8af6b8063d0df60b6ab66a8f83b` |
| 28 | `theorem` | [ramificationIdx_eq_of_prime](../../../../mathematics/NumberTheory/Ideal/Variantcee7e98bbac003c2af71218f6d7d808d4ff1464c3425f1e2a5c1b8dc3bb450f6.lean/declarations/ramificationidx-eq-of-prime--c63f5403593b175289e2ea79.md) | 274 | `result-track:c63f5403593b175289e2ea797633c8dcbc297f058133db6059aafeac7402baa4` |
| 29 | `theorem` | [inertiaDegIn_eq_of_prime](../../../../mathematics/NumberTheory/Ideal/Variantcee7e98bbac003c2af71218f6d7d808d4ff1464c3425f1e2a5c1b8dc3bb450f6.lean/declarations/inertiadegin-eq-of-prime--fb78760f0e48b4bc3dc919a7.md) | 279 | `result-track:fb78760f0e48b4bc3dc919a759e27506324b6c91591c9866f6998c2f404fa6d3` |
| 30 | `theorem` | [ramificationIdxIn_eq_of_prime](../../../../mathematics/NumberTheory/Ideal/Variantcee7e98bbac003c2af71218f6d7d808d4ff1464c3425f1e2a5c1b8dc3bb450f6.lean/declarations/ramificationidxin-eq-of-prime--fbc1949d265376ba783bf0c0.md) | 285 | `result-track:fbc1949d265376ba783bf0c09e2a30f5a863a73c0a981c9b142ba5de21a3af2a` |
| 31 | `theorem` | [inertiaDeg_eq_of_not_dvd](../../../../mathematics/NumberTheory/Ideal/Variantcee7e98bbac003c2af71218f6d7d808d4ff1464c3425f1e2a5c1b8dc3bb450f6.lean/declarations/inertiadeg-eq-of-not-dvd--e7811d8510ac487ae12c191f.md) | 299 | `result-track:e7811d8510ac487ae12c191f01e12eb451ded099871bd32aafcefb15d68a0f7c` |
| 32 | `theorem` | [ramificationIdx_eq_of_not_dvd](../../../../mathematics/NumberTheory/Ideal/Variantcee7e98bbac003c2af71218f6d7d808d4ff1464c3425f1e2a5c1b8dc3bb450f6.lean/declarations/ramificationidx-eq-of-not-dvd--1876d643d974d9e0803e5d3b.md) | 319 | `result-track:1876d643d974d9e0803e5d3b53f535fa50a1c6bb12724a768abff34bb00c4aeb` |
| 33 | `theorem` | [inertiaDegIn_eq_of_not_dvd](../../../../mathematics/NumberTheory/Ideal/Variantcee7e98bbac003c2af71218f6d7d808d4ff1464c3425f1e2a5c1b8dc3bb450f6.lean/declarations/inertiadegin-eq-of-not-dvd--fa6956600edfb3615960f5a1.md) | 338 | `result-track:fa6956600edfb3615960f5a17d5a23d8da7c4778ff06149315b9a7cfb4f2792e` |
| 34 | `theorem` | [ramificationIdxIn_eq_of_not_dvd](../../../../mathematics/NumberTheory/Ideal/Variantcee7e98bbac003c2af71218f6d7d808d4ff1464c3425f1e2a5c1b8dc3bb450f6.lean/declarations/ramificationidxin-eq-of-not-dvd--6c9992d82575b010a1682203.md) | 344 | `result-track:6c9992d82575b010a1682203118e916bb6b29a58834dd3a6b78e4d5b9ac61516` |
| 35 | `theorem` | [inertiaDegIn_ramificationIdxIn_aux](../../../../mathematics/NumberTheory/Ideal/Variantcee7e98bbac003c2af71218f6d7d808d4ff1464c3425f1e2a5c1b8dc3bb450f6.lean/declarations/inertiadegin-ramificationidxin-aux--715137219fcb917887dbf4cc.md) | 357 | `result-track:715137219fcb917887dbf4cc8ef214478c6cc34aca78693aac24af226f347895` |
| 36 | `theorem` | [inertiaDegIn_eq](../../../../mathematics/NumberTheory/Ideal/Variantcee7e98bbac003c2af71218f6d7d808d4ff1464c3425f1e2a5c1b8dc3bb450f6.lean/declarations/inertiadegin-eq--08d4f52ab6457f6a53f5951b.md) | 412 | `result-track:08d4f52ab6457f6a53f5951be75c463d7b3c3116ba677d7c6e6a3ab7e94b2c34` |
| 37 | `theorem` | [ramificationIdxIn_eq](../../../../mathematics/NumberTheory/Ideal/Variantcee7e98bbac003c2af71218f6d7d808d4ff1464c3425f1e2a5c1b8dc3bb450f6.lean/declarations/ramificationidxin-eq--3bfe76559827e97694e0f00d.md) | 420 | `result-track:3bfe76559827e97694e0f00dac9a936d3124a1bad992574426fb1fad2f6a89b4` |
| 38 | `theorem` | [inertiaDeg_eq](../../../../mathematics/NumberTheory/Ideal/Variantcee7e98bbac003c2af71218f6d7d808d4ff1464c3425f1e2a5c1b8dc3bb450f6.lean/declarations/inertiadeg-eq--d4f87512967afc90ba682672.md) | 424 | `result-track:d4f87512967afc90ba6826729f230a510652686acdac9f8c791ff2fa5dd9a648` |
| 39 | `theorem` | [ramificationIdx_eq](../../../../mathematics/NumberTheory/Ideal/Variantcee7e98bbac003c2af71218f6d7d808d4ff1464c3425f1e2a5c1b8dc3bb450f6.lean/declarations/ramificationidx-eq--306c6aed1ddcd50353cecace.md) | 429 | `result-track:306c6aed1ddcd50353cecaceb02546c5e16128de454394ebedd3fd215fc5b284` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
