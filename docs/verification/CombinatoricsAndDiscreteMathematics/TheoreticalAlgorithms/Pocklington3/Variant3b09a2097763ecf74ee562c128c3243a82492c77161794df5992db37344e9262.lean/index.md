# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Pocklington3.Variant3b09a2097763ecf74ee562c128c3243a82492c77161794df5992db37344e9262

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "db6c51b6928b80e89948a68e8ad4008f51272d82",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington3/Variant3b09a2097763ecf74ee562c128c3243a82492c77161794df5992db37344e9262.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington3/Variant3b09a2097763ecf74ee562c128c3243a82492c77161794df5992db37344e9262.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington3/Variant3b09a2097763ecf74ee562c128c3243a82492c77161794df5992db37344e9262.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `db6c51b6928b80e89948a68e8ad4008f51272d82`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington3/Variant3b09a2097763ecf74ee562c128c3243a82492c77161794df5992db37344e9262.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington3/Variant3b09a2097763ecf74ee562c128c3243a82492c77161794df5992db37344e9262.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.LegendreSymbol.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `PrimeCert.Pocklington` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Nat.prime_iff_not_exists_mul_eq'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington3/Variant3b09a2097763ecf74ee562c128c3243a82492c77161794df5992db37344e9262.lean/declarations/nat-prime-iff-not-exists-mul-eq--6ee50359c3462623ecb1aaf3.md) | 18 | `result-track:6ee50359c3462623ecb1aaf39e33f9ccbc56c5ab54e109713cca7f2e4e6276ff` |
| 2 | `theorem` | [Nat.modEq_prod](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington3/Variant3b09a2097763ecf74ee562c128c3243a82492c77161794df5992db37344e9262.lean/declarations/nat-modeq-prod--79e770f9de016cef0198105f.md) | 26 | `result-track:79e770f9de016cef0198105fa95d0d8f49cc968e0cfa41e297b26558970d6a09` |
| 3 | `theorem` | [Nat.modEq_one_of_dvd_of_prime](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington3/Variant3b09a2097763ecf74ee562c128c3243a82492c77161794df5992db37344e9262.lean/declarations/nat-modeq-one-of-dvd-of-prime--e904e364917ab87e1ae04763.md) | 32 | `result-track:e904e364917ab87e1ae0476384a0d3da842293932de53336606786ab97919d05` |
| 4 | `theorem` | [Nat.modEq_iff_exists_mul_add](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington3/Variant3b09a2097763ecf74ee562c128c3243a82492c77161794df5992db37344e9262.lean/declarations/nat-modeq-iff-exists-mul-add--746f99d94292eb195db03df3.md) | 45 | `result-track:746f99d94292eb195db03df3c412911bf753cf497aab9b735f42728fbeef8899` |
| 5 | `theorem` | [Nat.modEq_iff_exists_mul_add'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington3/Variant3b09a2097763ecf74ee562c128c3243a82492c77161794df5992db37344e9262.lean/declarations/nat-modeq-iff-exists-mul-add--5eb61958da426db018b2709b.md) | 55 | `result-track:5eb61958da426db018b2709bb1f48c47178c7cdc23bcfeb362ab130a59103242` |
| 6 | `theorem` | [Nat.add_sq_eq_dist_sq_add_four_mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington3/Variant3b09a2097763ecf74ee562c128c3243a82492c77161794df5992db37344e9262.lean/declarations/nat-add-sq-eq-dist-sq-add-four-mul--ee8e4d646354fa79dc2e84d4.md) | 62 | `result-track:ee8e4d646354fa79dc2e84d459c292348a160a53dd7df77abb7b0fe33a06af83` |
| 7 | `def` | [Pocklington3Cert](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington3/Variant3b09a2097763ecf74ee562c128c3243a82492c77161794df5992db37344e9262.lean/declarations/pocklington3cert--3f29bcaa8dfaab864609b39e.md) | 74 | `declaration-track:3f29bcaa8dfaab864609b39e58ff4d1fb73ebb15f7aa11651ef54997c41a16af` |
| 8 | `theorem` | [pocklington3_test](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington3/Variant3b09a2097763ecf74ee562c128c3243a82492c77161794df5992db37344e9262.lean/declarations/pocklington3-test--2aa9ed2e818a2144f0bbd145.md) | 77 | `result-track:2aa9ed2e818a2144f0bbd14527ae6d3b658b85f36122fb6a2dd1449659ab79a5` |
| 9 | `def` | [forallB](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington3/Variant3b09a2097763ecf74ee562c128c3243a82492c77161794df5992db37344e9262.lean/declarations/forallb--c98bb469acd0e21ed0b48360.md) | 157 | `declaration-track:c98bb469acd0e21ed0b48360284429d36924df6d534832ebaf4dd35e398e42e2` |
| 10 | `theorem` | [forallB_iff_range'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington3/Variant3b09a2097763ecf74ee562c128c3243a82492c77161794df5992db37344e9262.lean/declarations/forallb-iff-range--dbbfc3f98b1a82a534ba804e.md) | 161 | `result-track:dbbfc3f98b1a82a534ba804ee545a1362431c43e2eb1441fb5d93a88b8367571` |
| 11 | `theorem` | [forallB_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington3/Variant3b09a2097763ecf74ee562c128c3243a82492c77161794df5992db37344e9262.lean/declarations/forallb-iff--5e3571996c44910556c1512e.md) | 175 | `result-track:5e3571996c44910556c1512e123fb6d0d524ff6589dc9511ec8568dd37f8f098` |
| 12 | `theorem` | [forallB_iff'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington3/Variant3b09a2097763ecf74ee562c128c3243a82492c77161794df5992db37344e9262.lean/declarations/forallb-iff--867e194e28938030b36f77d4.md) | 179 | `result-track:867e194e28938030b36f77d4b098499319ba483661211fc460f2cc62d579f0e9` |
| 13 | `theorem` | [forallB_one_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington3/Variant3b09a2097763ecf74ee562c128c3243a82492c77161794df5992db37344e9262.lean/declarations/forallb-one-iff--dbf9828c1d0ed9dd07bc0b56.md) | 185 | `result-track:dbf9828c1d0ed9dd07bc0b561ab32851e83d56c180c89004303969edee18093f` |
| 14 | `theorem` | [Pocklington3Cert.of_prime](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington3/Variant3b09a2097763ecf74ee562c128c3243a82492c77161794df5992db37344e9262.lean/declarations/pocklington3cert-of-prime--166721f93ad10cc1b25d3484.md) | 190 | `result-track:166721f93ad10cc1b25d3484659aa4e295553aadc0ab13b2f596eca701f40234` |
| 15 | `inductive` | [Pocklington3CertMode](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington3/Variant3b09a2097763ecf74ee562c128c3243a82492c77161794df5992db37344e9262.lean/declarations/pocklington3certmode--dfd5cc731f1967eae3edb9ac.md) | 211 | `declaration-track:dfd5cc731f1967eae3edb9acfb9f5ec33018f28fff97ee02f4149cb252b0b970` |
| 16 | `def` | [Pocklington3CertMode.calculate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington3/Variant3b09a2097763ecf74ee562c128c3243a82492c77161794df5992db37344e9262.lean/declarations/pocklington3certmode-calculate--98e255c3b3b1fcbc9e0f0233.md) | 214 | `declaration-track:98e255c3b3b1fcbc9e0f0233e0629c6bf55c2d711010bd617d40383f5a2312c4` |
| 17 | `theorem` | [Pocklington3CertMode.to_cert](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington3/Variant3b09a2097763ecf74ee562c128c3243a82492c77161794df5992db37344e9262.lean/declarations/pocklington3certmode-to-cert--c39659b9f016f2c158d928fb.md) | 218 | `result-track:c39659b9f016f2c158d928fb3b64eb0fa6c42ec422948fe3a72659bcbc648a23` |
| 18 | `structure` | [PrimePow](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington3/Variant3b09a2097763ecf74ee562c128c3243a82492c77161794df5992db37344e9262.lean/declarations/primepow--326caf7ff3b6b6b814c32a9e.md) | 228 | `declaration-track:326caf7ff3b6b6b814c32a9e332869e03b26e7c152b5a7f4eab3380d8f920d47` |
| 19 | `def` | [PrimePow.toNat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington3/Variant3b09a2097763ecf74ee562c128c3243a82492c77161794df5992db37344e9262.lean/declarations/primepow-tonat--79c02bd1b70f0ac884806329.md) | 231 | `declaration-track:79c02bd1b70f0ac884806329e74f846bc5877849ea18ea8b4416a8f201de46c7` |
| 20 | `theorem` | [PrimePow.toNat_def](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington3/Variant3b09a2097763ecf74ee562c128c3243a82492c77161794df5992db37344e9262.lean/declarations/primepow-tonat-def--7eac0d2ff4bf94307206d1a8.md) | 234 | `result-track:7eac0d2ff4bf94307206d1a8beeed57321c4550c2a8b6644df794b42575d598f` |
| 21 | `theorem` | [PrimePow.prime_dvd_toNat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington3/Variant3b09a2097763ecf74ee562c128c3243a82492c77161794df5992db37344e9262.lean/declarations/primepow-prime-dvd-tonat--4b6e06377fd85608e11ee59f.md) | 236 | `result-track:4b6e06377fd85608e11ee59fe89921a7b9e8cc3e4a4d9552bfa4f00e0bc12aa2` |
| 22 | `def` | [pocklington3_calculate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington3/Variant3b09a2097763ecf74ee562c128c3243a82492c77161794df5992db37344e9262.lean/declarations/pocklington3-calculate--1e256ff669e993912894238f.md) | 239 | `declaration-track:1e256ff669e993912894238fb795962beb1ee92aa8daabda09eae38c9a2edc9d` |
| 23 | `theorem` | [_root_.List.rec_and](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington3/Variant3b09a2097763ecf74ee562c128c3243a82492c77161794df5992db37344e9262.lean/declarations/root-list-rec-and--15303f323ecac6cd2a9a28f2.md) | 257 | `result-track:15303f323ecac6cd2a9a28f22cae7aebb52b33e039abda34c0e35ed61e2e3f83` |
| 24 | `theorem` | [mem_primeFactors_prod_toNat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington3/Variant3b09a2097763ecf74ee562c128c3243a82492c77161794df5992db37344e9262.lean/declarations/mem-primefactors-prod-tonat--8a8176998f9c73bae057385f.md) | 264 | `result-track:8a8176998f9c73bae057385fed7c24c80f72fd25b8f2633f37ca179e53b437c1` |
| 25 | `theorem` | [of_gcd_pred_mod_eq_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington3/Variant3b09a2097763ecf74ee562c128c3243a82492c77161794df5992db37344e9262.lean/declarations/of-gcd-pred-mod-eq-one--7560c3a71afa90ff254761d0.md) | 281 | `result-track:7560c3a71afa90ff254761d05e5960cf2dcf5eddcd5ca8bd15bdc9c115293723` |
| 26 | `theorem` | [pocklington3_certKR](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington3/Variant3b09a2097763ecf74ee562c128c3243a82492c77161794df5992db37344e9262.lean/declarations/pocklington3-certkr--fe40341c237ed3289ce993e7.md) | 299 | `result-track:fe40341c237ed3289ce993e7d181ddfe72c8ce10ffc913ba7ba70656f001ff54` |
| 27 | `syntax` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington3/Variant3b09a2097763ecf74ee562c128c3243a82492c77161794df5992db37344e9262.lean/declarations/syntax--7bcd9ffb65b4cea24ade2716.md) | 377 | `declaration-track:7bcd9ffb65b4cea24ade27164666b33ac2844b5f13838768d45310727f0f2a61` |
| 28 | `def` | [parsePock3Mode](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington3/Variant3b09a2097763ecf74ee562c128c3243a82492c77161794df5992db37344e9262.lean/declarations/parsepock3mode--269cdb2690989f6643e56ee1.md) | 379 | `declaration-track:269cdb2690989f6643e56ee1241712993a0893baf37877e29c18b27f5ddf8f47` |
| 29 | `syntax` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington3/Variant3b09a2097763ecf74ee562c128c3243a82492c77161794df5992db37344e9262.lean/declarations/syntax--5bdc28421df608f3cf1901d9.md) | 408 | `declaration-track:5bdc28421df608f3cf1901d9e7ecca9ab6a0a5aa4a6e1d640e352427003a435f` |
| 30 | `def` | [PrimePow.base](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington3/Variant3b09a2097763ecf74ee562c128c3243a82492c77161794df5992db37344e9262.lean/declarations/primepow-base--59e072177ec63a8b3cd746c7.md) | 410 | `declaration-track:59e072177ec63a8b3cd746c721f3705c2806cea851cb5cbf9db09b5b703adc3c` |
| 31 | `def` | [parsePrimePow'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington3/Variant3b09a2097763ecf74ee562c128c3243a82492c77161794df5992db37344e9262.lean/declarations/parseprimepow--6f556eb0e5022b17cf88f762.md) | 414 | `declaration-track:6f556eb0e5022b17cf88f76216dfebffb185382af33eac73b709e3b9ef12b284` |
| 32 | `def` | [parseFactored'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington3/Variant3b09a2097763ecf74ee562c128c3243a82492c77161794df5992db37344e9262.lean/declarations/parsefactored--b02c82281dbe6348d9d9bcfb.md) | 427 | `declaration-track:b02c82281dbe6348d9d9bcfb2d17f433891ee456c8875f71a193531ec03195e0` |
| 33 | `def` | [parsePock3Spec](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington3/Variant3b09a2097763ecf74ee562c128c3243a82492c77161794df5992db37344e9262.lean/declarations/parsepock3spec--b7722583b1826feecfd22992.md) | 436 | `declaration-track:b7722583b1826feecfd229926bb71789d7ecfedda5294ee1de4cad740c214bc7` |
| 34 | `def` | [pock3](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington3/Variant3b09a2097763ecf74ee562c128c3243a82492c77161794df5992db37344e9262.lean/declarations/pock3--e5280e05b00f0b3ecd038123.md) | 456 | `declaration-track:e5280e05b00f0b3ecd03812311b21b7e26b2faca1616a1e011b28de36f8cf5c5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
