# Verification target: GRWTSK.Geometry.LocalFrame.Varianta99b2545f22b71aacfaecf7a6488dd2ec40d3252de331cabb781c73c2779436e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8faf46c7aa6cf751428e604e21bad1cbbe246750",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/LocalFrame/Varianta99b2545f22b71aacfaecf7a6488dd2ec40d3252de331cabb781c73c2779436e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Geometry/LocalFrame/Varianta99b2545f22b71aacfaecf7a6488dd2ec40d3252de331cabb781c73c2779436e.lean/index.md) · [Full source](../../../../mathematics/Geometry/LocalFrame/Varianta99b2545f22b71aacfaecf7a6488dd2ec40d3252de331cabb781c73c2779436e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8faf46c7aa6cf751428e604e21bad1cbbe246750`.

Source path: `GRWTSK/Geometry/LocalFrame/Varianta99b2545f22b71aacfaecf7a6488dd2ec40d3252de331cabb781c73c2779436e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/LocalFrame/Varianta99b2545f22b71aacfaecf7a6488dd2ec40d3252de331cabb781c73c2779436e.lean.json)

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
| 1 | `structure` | [IsLocalFrameOn](../../../../mathematics/Geometry/LocalFrame/Varianta99b2545f22b71aacfaecf7a6488dd2ec40d3252de331cabb781c73c2779436e.lean/declarations/islocalframeon--bd1b06bc348bcdb5e043ce75.md) | 130 | `declaration-track:bd1b06bc348bcdb5e043ce7543050b128a23559ece00fa87e5d5ee20f37bcd49` |
| 2 | `lemma` | [congr](../../../../mathematics/Geometry/LocalFrame/Varianta99b2545f22b71aacfaecf7a6488dd2ec40d3252de331cabb781c73c2779436e.lean/declarations/congr--2b0bf34e146a45332b3f2a20.md) | 138 | `result-track:2b0bf34e146a45332b3f2a20e860ac021af701189b5df75260a1b0beb00e1e42` |
| 3 | `lemma` | [mono](../../../../mathematics/Geometry/LocalFrame/Varianta99b2545f22b71aacfaecf7a6488dd2ec40d3252de331cabb781c73c2779436e.lean/declarations/mono--f76a6249c6d15719541b3893.md) | 150 | `result-track:f76a6249c6d15719541b3893db8012b2fa8153deb03319efa633e3d5bfde1c8b` |
| 4 | `lemma` | [contMDiffAt](../../../../mathematics/Geometry/LocalFrame/Varianta99b2545f22b71aacfaecf7a6488dd2ec40d3252de331cabb781c73c2779436e.lean/declarations/contmdiffat--d95a2ba131b1e87d69ae0a26.md) | 159 | `result-track:d95a2ba131b1e87d69ae0a26064523ef30395b8a316ea8b0c467aa5710f1407c` |
| 5 | `def` | [toBasisAt](../../../../mathematics/Geometry/LocalFrame/Varianta99b2545f22b71aacfaecf7a6488dd2ec40d3252de331cabb781c73c2779436e.lean/declarations/tobasisat--3abd486fee01d287830057ac.md) | 164 | `declaration-track:3abd486fee01d287830057ace89fb1fd60f22fe08ba46b9fe2b0e5033dd18b3e` |
| 6 | `lemma` | [toBasisAt_coe](../../../../mathematics/Geometry/LocalFrame/Varianta99b2545f22b71aacfaecf7a6488dd2ec40d3252de331cabb781c73c2779436e.lean/declarations/tobasisat-coe--1f0125ce04750e215582d9b2.md) | 168 | `result-track:1f0125ce04750e215582d9b2a9ab86ecaf743d852305288f59673d460624b450` |
| 7 | `def` | [fintypeOfFiniteDimensional](../../../../mathematics/Geometry/LocalFrame/Varianta99b2545f22b71aacfaecf7a6488dd2ec40d3252de331cabb781c73c2779436e.lean/declarations/fintypeoffinitedimensional--d07a743b2ada50e69936638f.md) | 175 | `declaration-track:d07a743b2ada50e69936638fbf0c14d4ca4b27347632f6e0140eafd69b5b53be` |
| 8 | `def` | [coeff](../../../../mathematics/Geometry/LocalFrame/Varianta99b2545f22b71aacfaecf7a6488dd2ec40d3252de331cabb781c73c2779436e.lean/declarations/coeff--a339eeb958dadadec0318446.md) | 186 | `declaration-track:a339eeb958dadadec031844634a81edc8d4d3b3a111db38d6aef2470a09e5a10` |
| 9 | `lemma` | [coeff_apply_of_notMem](../../../../mathematics/Geometry/LocalFrame/Varianta99b2545f22b71aacfaecf7a6488dd2ec40d3252de331cabb781c73c2779436e.lean/declarations/coeff-apply-of-notmem--f8d1dc3830be1d7e4d6582d5.md) | 192 | `result-track:f8d1dc3830be1d7e4d6582d579c480102c945e1cc9ff060b95cbd00b9c466580` |
| 10 | `lemma` | [coeff_apply_of_mem](../../../../mathematics/Geometry/LocalFrame/Varianta99b2545f22b71aacfaecf7a6488dd2ec40d3252de331cabb781c73c2779436e.lean/declarations/coeff-apply-of-mem--1be632ee8031e3b94eb6f459.md) | 197 | `result-track:1be632ee8031e3b94eb6f4590c03540727c1d790c834867cd737ed3e1b9b554b` |
| 11 | `lemma` | [coeff_sum_eq](../../../../mathematics/Geometry/LocalFrame/Varianta99b2545f22b71aacfaecf7a6488dd2ec40d3252de331cabb781c73c2779436e.lean/declarations/coeff-sum-eq--6dbc7cd102d79a6773a7f333.md) | 201 | `result-track:6dbc7cd102d79a6773a7f3334ae890292c8ad75ea65429d758ee84fe2c3a3d81` |
| 12 | `lemma` | [eq_of_coeff_eq](../../../../mathematics/Geometry/LocalFrame/Varianta99b2545f22b71aacfaecf7a6488dd2ec40d3252de331cabb781c73c2779436e.lean/declarations/eq-of-coeff-eq--3284babea6996da0e5336fde.md) | 205 | `result-track:3284babea6996da0e5336fdeac3b81a097380fa391a45cca3fe1aea6710a8f22` |
| 13 | `lemma` | [eventually_eq_sum_coeff_smul](../../../../mathematics/Geometry/LocalFrame/Varianta99b2545f22b71aacfaecf7a6488dd2ec40d3252de331cabb781c73c2779436e.lean/declarations/eventually-eq-sum-coeff-smul--7b26e4feea77b066bced304d.md) | 217 | `result-track:7b26e4feea77b066bced304d53248fee90b731df1d47b6084b87caba35964541` |
| 14 | `lemma` | [coeff_congr](../../../../mathematics/Geometry/LocalFrame/Varianta99b2545f22b71aacfaecf7a6488dd2ec40d3252de331cabb781c73c2779436e.lean/declarations/coeff-congr--885af47dbdffae3ea148579f.md) | 225 | `result-track:885af47dbdffae3ea148579f8c11f6872632742ff46a42f9b7b4e4e823d64d9d` |
| 15 | `lemma` | [coeff_eq_of_eq](../../../../mathematics/Geometry/LocalFrame/Varianta99b2545f22b71aacfaecf7a6488dd2ec40d3252de331cabb781c73c2779436e.lean/declarations/coeff-eq-of-eq--d734895644e37fc08ebb2ff2.md) | 231 | `result-track:d734895644e37fc08ebb2ff255dede81c3a28cb87602d31174de894262388cb0` |
| 16 | `lemma` | [eq_iff_coeff](../../../../mathematics/Geometry/LocalFrame/Varianta99b2545f22b71aacfaecf7a6488dd2ec40d3252de331cabb781c73c2779436e.lean/declarations/eq-iff-coeff--a2b267d026109c51c66c7d64.md) | 241 | `result-track:a2b267d026109c51c66c7d648e4c91051915a6d8379a1468a4ca56988836f119` |
| 17 | `lemma` | [contMDiffOn_of_coeff](../../../../mathematics/Geometry/LocalFrame/Varianta99b2545f22b71aacfaecf7a6488dd2ec40d3252de331cabb781c73c2779436e.lean/declarations/contmdiffon-of-coeff--69e22289221f29b60a39e7d9.md) | 251 | `result-track:69e22289221f29b60a39e7d97a1bee1d271b8f9cc1e3ffb4b4da58c2d15380c1` |
| 18 | `lemma` | [contMDiffAt_of_coeff](../../../../mathematics/Geometry/LocalFrame/Varianta99b2545f22b71aacfaecf7a6488dd2ec40d3252de331cabb781c73c2779436e.lean/declarations/contmdiffat-of-coeff--ddf68c661f386d4b678ed21d.md) | 266 | `result-track:ddf68c661f386d4b678ed21d0f3b5e3e8229d6f28ed8a30f54d0c904e8b50507` |
| 19 | `lemma` | [contMDiffAt_of_coeff_aux](../../../../mathematics/Geometry/LocalFrame/Varianta99b2545f22b71aacfaecf7a6488dd2ec40d3252de331cabb781c73c2779436e.lean/declarations/contmdiffat-of-coeff-aux--d29cee8c08bbf9d9963b702a.md) | 276 | `result-track:d29cee8c08bbf9d9963b702aa1818808d5850bf057e27f24ac1bc8027d529031` |
| 20 | `lemma` | [mdifferentiableOn_of_coeff](../../../../mathematics/Geometry/LocalFrame/Varianta99b2545f22b71aacfaecf7a6488dd2ec40d3252de331cabb781c73c2779436e.lean/declarations/mdifferentiableon-of-coeff--1dfafeb4a6a900e73e522f7a.md) | 288 | `result-track:1dfafeb4a6a900e73e522f7aba560f6f298978448b36c8e7ee0a7a4a32458a5e` |
| 21 | `lemma` | [mdifferentiableAt_of_coeff](../../../../mathematics/Geometry/LocalFrame/Varianta99b2545f22b71aacfaecf7a6488dd2ec40d3252de331cabb781c73c2779436e.lean/declarations/mdifferentiableat-of-coeff--b74a8dc5f82538ab0b1b2614.md) | 303 | `result-track:b74a8dc5f82538ab0b1b26146f68b049aeb50cd757ecf27855d41ad68dc45554` |
| 22 | `lemma` | [mdifferentiableAt_of_coeff_aux](../../../../mathematics/Geometry/LocalFrame/Varianta99b2545f22b71aacfaecf7a6488dd2ec40d3252de331cabb781c73c2779436e.lean/declarations/mdifferentiableat-of-coeff-aux--384be7cc36e98ac06ec2f02f.md) | 314 | `result-track:384be7cc36e98ac06ec2f02fbf7260a094497f73d4a278138bd1fc8ab14172ee` |
| 23 | `def` | [basisAt](../../../../mathematics/Geometry/LocalFrame/Varianta99b2545f22b71aacfaecf7a6488dd2ec40d3252de331cabb781c73c2779436e.lean/declarations/basisat--8316913de9ce7c95eeb1ab6e.md) | 333 | `declaration-track:8316913de9ce7c95eeb1ab6e31f00988d09235bf7516e595ffa579528e0fb7d1` |
| 24 | `def` | [localFrame](../../../../mathematics/Geometry/LocalFrame/Varianta99b2545f22b71aacfaecf7a6488dd2ec40d3252de331cabb781c73c2779436e.lean/declarations/localframe--02d912dbf6e7610a7b731bff.md) | 341 | `declaration-track:02d912dbf6e7610a7b731bffdbc5340d47fc41e5ad5c418a5b10d1ffbda9a1f5` |
| 25 | `lemma` | [localFrame_apply_of_mem_baseSet](../../../../mathematics/Geometry/LocalFrame/Varianta99b2545f22b71aacfaecf7a6488dd2ec40d3252de331cabb781c73c2779436e.lean/declarations/localframe-apply-of-mem-baseset--d1bb6e3e480865b8bcdc12c2.md) | 345 | `result-track:d1bb6e3e480865b8bcdc12c2263131cf99874390e79b733b15419a1efbb69af3` |
| 26 | `lemma` | [localFrame_apply_of_notMem](../../../../mathematics/Geometry/LocalFrame/Varianta99b2545f22b71aacfaecf7a6488dd2ec40d3252de331cabb781c73c2779436e.lean/declarations/localframe-apply-of-notmem--ad1dee1cc98acba187021c54.md) | 349 | `result-track:ad1dee1cc98acba187021c54b8c1ef78e124357eddfb403c3d4509370218c176` |
| 27 | `lemma` | [contMDiffOn_localFrame_baseSet](../../../../mathematics/Geometry/LocalFrame/Varianta99b2545f22b71aacfaecf7a6488dd2ec40d3252de331cabb781c73c2779436e.lean/declarations/contmdiffon-localframe-baseset--e24098770c7a30b571cb793e.md) | 354 | `result-track:e24098770c7a30b571cb793e1e5f8849f93b921240d5bdd7dd2af57e2a59dd27` |
| 28 | `lemma` | [isLocalFrameOn_localFrame_baseSet](../../../../mathematics/Geometry/LocalFrame/Varianta99b2545f22b71aacfaecf7a6488dd2ec40d3252de331cabb781c73c2779436e.lean/declarations/islocalframeon-localframe-baseset--23e9dd0fc09c1b0e1fe67dc2.md) | 362 | `result-track:23e9dd0fc09c1b0e1fe67dc236b4d849153b62f8e74e44aa05205b72f03e878b` |
| 29 | `lemma` | [_root_.contMDiffAt_localFrame_of_mem](../../../../mathematics/Geometry/LocalFrame/Varianta99b2545f22b71aacfaecf7a6488dd2ec40d3252de331cabb781c73c2779436e.lean/declarations/root-contmdiffat-localframe-of-mem--114c00d6538921c7db5e9bc4.md) | 373 | `result-track:114c00d6538921c7db5e9bc4eeeef652188d6f6b530718dc2b9b69f82038cc96` |
| 30 | `def` | [localFrameCoeff](../../../../mathematics/Geometry/LocalFrame/Varianta99b2545f22b71aacfaecf7a6488dd2ec40d3252de331cabb781c73c2779436e.lean/declarations/localframecoeff--351567d7da1e7211bb09e260.md) | 383 | `declaration-track:351567d7da1e7211bb09e260229bedfa2c58c279593a833ce9a957ef7917c097` |
| 31 | `lemma` | [localFrameCoeff_apply_of_notMem_baseSet](../../../../mathematics/Geometry/LocalFrame/Varianta99b2545f22b71aacfaecf7a6488dd2ec40d3252de331cabb781c73c2779436e.lean/declarations/localframecoeff-apply-of-notmem-baseset--c69224dcf3da308b5ece0ee9.md) | 393 | `result-track:c69224dcf3da308b5ece0ee98e9ae5a465513f6d4e859507c9c175f74a65ad50` |
| 32 | `lemma` | [localFrameCoeff_apply_of_mem_baseSet](../../../../mathematics/Geometry/LocalFrame/Varianta99b2545f22b71aacfaecf7a6488dd2ec40d3252de331cabb781c73c2779436e.lean/declarations/localframecoeff-apply-of-mem-baseset--a2ae261090d53461504511a8.md) | 403 | `result-track:a2ae261090d53461504511a848867c5086bf445ee586cc24e57933aae4d7f08b` |
| 33 | `lemma` | [eq_sum_localFrameCoeff_smul](../../../../mathematics/Geometry/LocalFrame/Varianta99b2545f22b71aacfaecf7a6488dd2ec40d3252de331cabb781c73c2779436e.lean/declarations/eq-sum-localframecoeff-smul--fa8865cd24a32a3914f50d61.md) | 416 | `result-track:fa8865cd24a32a3914f50d61850f9657018042bbdc529b4cb7038b70e5f41475` |
| 34 | `lemma` | [eventually_eq_localFrame_sum_coeff_smul](../../../../mathematics/Geometry/LocalFrame/Varianta99b2545f22b71aacfaecf7a6488dd2ec40d3252de331cabb781c73c2779436e.lean/declarations/eventually-eq-localframe-sum-coeff-smul--112af7132b3b0c1996308c74.md) | 427 | `result-track:112af7132b3b0c1996308c74fe93c9cd8e9f30ebcc33ee7595b5cf2da96bd390` |
| 35 | `lemma` | [localFrameCoeff_congr](../../../../mathematics/Geometry/LocalFrame/Varianta99b2545f22b71aacfaecf7a6488dd2ec40d3252de331cabb781c73c2779436e.lean/declarations/localframecoeff-congr--d54ca8959b381708a4f27f68.md) | 433 | `result-track:d54ca8959b381708a4f27f686c2ee95dc02c62913c5f856ee52ef90eef36cb94` |
| 36 | `lemma` | [localFrameCoeff_eq_coeff](../../../../mathematics/Geometry/LocalFrame/Varianta99b2545f22b71aacfaecf7a6488dd2ec40d3252de331cabb781c73c2779436e.lean/declarations/localframecoeff-eq-coeff--74a52c04d2ece4f9a41dbdaa.md) | 445 | `result-track:74a52c04d2ece4f9a41dbdaa2caf372086fa02961cd646b04815e9dacbf008c4` |
| 37 | `lemma` | [contMDiffAt_localFrameCoeff](../../../../mathematics/Geometry/LocalFrame/Varianta99b2545f22b71aacfaecf7a6488dd2ec40d3252de331cabb781c73c2779436e.lean/declarations/contmdiffat-localframecoeff--fe7e9d4ced7358a04ff838b1.md) | 467 | `result-track:fe7e9d4ced7358a04ff838b1a4ccd2c75db855c443e4bf09c3ddc2f69f5bb329` |
| 38 | `lemma` | [contMDiffOn_localFrameCoeff](../../../../mathematics/Geometry/LocalFrame/Varianta99b2545f22b71aacfaecf7a6488dd2ec40d3252de331cabb781c73c2779436e.lean/declarations/contmdiffon-localframecoeff--5cda50ed998a37e2e77a971e.md) | 496 | `result-track:5cda50ed998a37e2e77a971e6d97e71f898eaf087bace70c5ab913ec3f0e9a5d` |
| 39 | `lemma` | [contMDiffOn_baseSet_localFrameCoeff](../../../../mathematics/Geometry/LocalFrame/Varianta99b2545f22b71aacfaecf7a6488dd2ec40d3252de331cabb781c73c2779436e.lean/declarations/contmdiffon-baseset-localframecoeff--a4b7a87db7526d706ce1a7f0.md) | 507 | `result-track:a4b7a87db7526d706ce1a7f0f1b08cad804b36a360878ce980f2c43bf0ceff8b` |
| 40 | `lemma` | [contMDiffAt_iff_localFrameCoeff](../../../../mathematics/Geometry/LocalFrame/Varianta99b2545f22b71aacfaecf7a6488dd2ec40d3252de331cabb781c73c2779436e.lean/declarations/contmdiffat-iff-localframecoeff--9030948a30fa03c52d9d35c2.md) | 516 | `result-track:9030948a30fa03c52d9d35c23af343dbf1438538a6caff00845aa0285354ceee` |
| 41 | `lemma` | [contMDiffOn_iff_localFrameCoeff](../../../../mathematics/Geometry/LocalFrame/Varianta99b2545f22b71aacfaecf7a6488dd2ec40d3252de331cabb781c73c2779436e.lean/declarations/contmdiffon-iff-localframecoeff--5f7de7a4e21116f025e762d3.md) | 527 | `result-track:5f7de7a4e21116f025e762d3c8f7e06fc1ab1e897e10badf20757851b662bee2` |
| 42 | `lemma` | [contMDiffOn_baseSet_iff_localFrameCoeff](../../../../mathematics/Geometry/LocalFrame/Varianta99b2545f22b71aacfaecf7a6488dd2ec40d3252de331cabb781c73c2779436e.lean/declarations/contmdiffon-baseset-iff-localframecoeff--e390b035683bcc15f58e264b.md) | 538 | `result-track:e390b035683bcc15f58e264b5c220627a26d1c79ade94ce3085a0169fcdb6df5` |
| 43 | `lemma` | [mdifferentiableAt_localFrameCoeff](../../../../mathematics/Geometry/LocalFrame/Varianta99b2545f22b71aacfaecf7a6488dd2ec40d3252de331cabb781c73c2779436e.lean/declarations/mdifferentiableat-localframecoeff--f0fd8790496a1a8ac819549a.md) | 551 | `result-track:f0fd8790496a1a8ac819549a8fb6157e2111f39305d8e2ab8442e752009e1052` |
| 44 | `lemma` | [mdifferentiableOn_localFrameCoeff](../../../../mathematics/Geometry/LocalFrame/Varianta99b2545f22b71aacfaecf7a6488dd2ec40d3252de331cabb781c73c2779436e.lean/declarations/mdifferentiableon-localframecoeff--69c872e1f42bfe4bb03c55a9.md) | 581 | `result-track:69c872e1f42bfe4bb03c55a9a100c4b34a2a137cb2781670581b98da8a42c78a` |
| 45 | `lemma` | [mdifferentiableOn_baseSet_localFrameCoeff](../../../../mathematics/Geometry/LocalFrame/Varianta99b2545f22b71aacfaecf7a6488dd2ec40d3252de331cabb781c73c2779436e.lean/declarations/mdifferentiableon-baseset-localframecoeff--4ac3715b8648f5f07ef84503.md) | 591 | `result-track:4ac3715b8648f5f07ef845036fb1e08883e2d9091f0f25a98348822954a98548` |
| 46 | `lemma` | [mdifferentiableAt_iff_localFrameCoeff](../../../../mathematics/Geometry/LocalFrame/Varianta99b2545f22b71aacfaecf7a6488dd2ec40d3252de331cabb781c73c2779436e.lean/declarations/mdifferentiableat-iff-localframecoeff--28ce8d6b414afdf73c712a01.md) | 600 | `result-track:28ce8d6b414afdf73c712a0194ccb12398681fb644a1e3451fc9992b1919a846` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
