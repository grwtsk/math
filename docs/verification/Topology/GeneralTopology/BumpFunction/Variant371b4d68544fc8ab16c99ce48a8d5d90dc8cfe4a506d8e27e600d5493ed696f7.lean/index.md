# Verification target: GRWTSK.Topology.GeneralTopology.BumpFunction.Variant371b4d68544fc8ab16c99ce48a8d5d90dc8cfe4a506d8e27e600d5493ed696f7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cbbccbe984aec68ded8909d9aad9485261207caf",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/BumpFunction/Variant371b4d68544fc8ab16c99ce48a8d5d90dc8cfe4a506d8e27e600d5493ed696f7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/BumpFunction/Variant371b4d68544fc8ab16c99ce48a8d5d90dc8cfe4a506d8e27e600d5493ed696f7.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/BumpFunction/Variant371b4d68544fc8ab16c99ce48a8d5d90dc8cfe4a506d8e27e600d5493ed696f7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cbbccbe984aec68ded8909d9aad9485261207caf`.

Source path: `GRWTSK/Topology/GeneralTopology/BumpFunction/Variant371b4d68544fc8ab16c99ce48a8d5d90dc8cfe4a506d8e27e600d5493ed696f7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/BumpFunction/Variant371b4d68544fc8ab16c99ce48a8d5d90dc8cfe4a506d8e27e600d5493ed696f7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.BumpFunction.FiniteDimension` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Manifold.ContMDiff` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [SmoothBumpFunction](../../../../../mathematics/Topology/GeneralTopology/BumpFunction/Variant371b4d68544fc8ab16c99ce48a8d5d90dc8cfe4a506d8e27e600d5493ed696f7.lean/declarations/smoothbumpfunction--880276a11859093daca3fd56.md) | 69 | `declaration-track:880276a11859093daca3fd563293c141b905f37d0fa971654b00bbe284b1a6bf` |
| 2 | `def` | [toFun](../../../../../mathematics/Topology/GeneralTopology/BumpFunction/Variant371b4d68544fc8ab16c99ce48a8d5d90dc8cfe4a506d8e27e600d5493ed696f7.lean/declarations/tofun--c72a79a7ea071703f34d70a5.md) | 79 | `declaration-track:c72a79a7ea071703f34d70a545f96db5c24e1ecdac768f487531565d84947bd2` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/BumpFunction/Variant371b4d68544fc8ab16c99ce48a8d5d90dc8cfe4a506d8e27e600d5493ed696f7.lean/declarations/instance--7f6386b0f65113db146c52f2.md) | 83 | `declaration-track:7f6386b0f65113db146c52f22d8ca08553b5558d5338ad337148f0d156058593` |
| 4 | `theorem` | [coe_def](../../../../../mathematics/Topology/GeneralTopology/BumpFunction/Variant371b4d68544fc8ab16c99ce48a8d5d90dc8cfe4a506d8e27e600d5493ed696f7.lean/declarations/coe-def--40db214b5291e019d1100b28.md) | 86 | `result-track:40db214b5291e019d1100b289ea8ad7706e6c3dee7a9b3d040b6cc24ddd72b41` |
| 5 | `theorem` | [rOut_pos](../../../../../mathematics/Topology/GeneralTopology/BumpFunction/Variant371b4d68544fc8ab16c99ce48a8d5d90dc8cfe4a506d8e27e600d5493ed696f7.lean/declarations/rout-pos--6a68cb7750f10d1ca878b45e.md) | 90 | `result-track:6a68cb7750f10d1ca878b45e62e25dda0ad5d2f1344937b5e2b18084c5d813b3` |
| 6 | `theorem` | [ball_subset](../../../../../mathematics/Topology/GeneralTopology/BumpFunction/Variant371b4d68544fc8ab16c99ce48a8d5d90dc8cfe4a506d8e27e600d5493ed696f7.lean/declarations/ball-subset--7c2c27b0b9c411caa4ec0f2b.md) | 95 | `result-track:7c2c27b0b9c411caa4ec0f2b21e93d71e2718ee1d0ee66982b49e95a5add44cf` |
| 7 | `theorem` | [ball_inter_range_eq_ball_inter_target](../../../../../mathematics/Topology/GeneralTopology/BumpFunction/Variant371b4d68544fc8ab16c99ce48a8d5d90dc8cfe4a506d8e27e600d5493ed696f7.lean/declarations/ball-inter-range-eq-ball-inter-target--47b3c55f34d5ff51572147bd.md) | 99 | `result-track:47b3c55f34d5ff51572147bd7bf9543d53b7592545a73314d30010ea6a6c750a` |
| 8 | `theorem` | [eqOn_source](../../../../../mathematics/Topology/GeneralTopology/BumpFunction/Variant371b4d68544fc8ab16c99ce48a8d5d90dc8cfe4a506d8e27e600d5493ed696f7.lean/declarations/eqon-source--920270bfb976dcc8a030a0a6.md) | 105 | `result-track:920270bfb976dcc8a030a0a60a3d14d3da914f2580fd87ed139d0faee1fbfeef` |
| 9 | `theorem` | [eventuallyEq_of_mem_source](../../../../../mathematics/Topology/GeneralTopology/BumpFunction/Variant371b4d68544fc8ab16c99ce48a8d5d90dc8cfe4a506d8e27e600d5493ed696f7.lean/declarations/eventuallyeq-of-mem-source--f0640aa136384297b6a6dcab.md) | 109 | `result-track:f0640aa136384297b6a6dcaba04037daf0cc6ad7d0c4be30f966d457ef0bdc41` |
| 10 | `theorem` | [one_of_dist_le](../../../../../mathematics/Topology/GeneralTopology/BumpFunction/Variant371b4d68544fc8ab16c99ce48a8d5d90dc8cfe4a506d8e27e600d5493ed696f7.lean/declarations/one-of-dist-le--e4771c8b8cb528b5086d3361.md) | 114 | `result-track:e4771c8b8cb528b5086d336125881bf322e323ac56169b278c32d36a5d404f6f` |
| 11 | `theorem` | [support_eq_inter_preimage](../../../../../mathematics/Topology/GeneralTopology/BumpFunction/Variant371b4d68544fc8ab16c99ce48a8d5d90dc8cfe4a506d8e27e600d5493ed696f7.lean/declarations/support-eq-inter-preimage--e1773f95fa9c8d4a214b82ce.md) | 119 | `result-track:e1773f95fa9c8d4a214b82cea6cf968db5f3d3e40d48d2fb3178bd390c774f68` |
| 12 | `theorem` | [isOpen_support](../../../../../mathematics/Topology/GeneralTopology/BumpFunction/Variant371b4d68544fc8ab16c99ce48a8d5d90dc8cfe4a506d8e27e600d5493ed696f7.lean/declarations/isopen-support--a0395c733ff3e87b5d6ccfe0.md) | 126 | `result-track:a0395c733ff3e87b5d6ccfe0653f29eaf5c06e5693bfa938a8916404cbf59db6` |
| 13 | `theorem` | [support_eq_symm_image](../../../../../mathematics/Topology/GeneralTopology/BumpFunction/Variant371b4d68544fc8ab16c99ce48a8d5d90dc8cfe4a506d8e27e600d5493ed696f7.lean/declarations/support-eq-symm-image--b2f61843cd0e787f59b28012.md) | 131 | `result-track:b2f61843cd0e787f59b280127cccf37fc7303f77fafbb3407e08d4d456a7cc63` |
| 14 | `theorem` | [support_subset_source](../../../../../mathematics/Topology/GeneralTopology/BumpFunction/Variant371b4d68544fc8ab16c99ce48a8d5d90dc8cfe4a506d8e27e600d5493ed696f7.lean/declarations/support-subset-source--4f5dc4280e423cb387610e24.md) | 138 | `result-track:4f5dc4280e423cb387610e243b7f41c512cec7a967be2ea94bfafde126f3d793` |
| 15 | `theorem` | [image_eq_inter_preimage_of_subset_support](../../../../../mathematics/Topology/GeneralTopology/BumpFunction/Variant371b4d68544fc8ab16c99ce48a8d5d90dc8cfe4a506d8e27e600d5493ed696f7.lean/declarations/image-eq-inter-preimage-of-subset-support--3d9620f5a184249d379fadfd.md) | 142 | `result-track:3d9620f5a184249d379fadfd59b26e26e6c0904e44adf8dc7a9be9c12489730d` |
| 16 | `theorem` | [mem_Icc](../../../../../mathematics/Topology/GeneralTopology/BumpFunction/Variant371b4d68544fc8ab16c99ce48a8d5d90dc8cfe4a506d8e27e600d5493ed696f7.lean/declarations/mem-icc--9339a3fba71723008a1cf519.md) | 156 | `result-track:9339a3fba71723008a1cf519bbc6ac677730066c7a3b4fb1fd2b771109f8e74a` |
| 17 | `theorem` | [nonneg](../../../../../mathematics/Topology/GeneralTopology/BumpFunction/Variant371b4d68544fc8ab16c99ce48a8d5d90dc8cfe4a506d8e27e600d5493ed696f7.lean/declarations/nonneg--cc4bd0f3c0cdff398ffc6b5c.md) | 162 | `result-track:cc4bd0f3c0cdff398ffc6b5c9d0aae5b86188b8c9265aa1a76500ec02628d093` |
| 18 | `theorem` | [le_one](../../../../../mathematics/Topology/GeneralTopology/BumpFunction/Variant371b4d68544fc8ab16c99ce48a8d5d90dc8cfe4a506d8e27e600d5493ed696f7.lean/declarations/le-one--6aef495d147c9f46f389df9a.md) | 166 | `result-track:6aef495d147c9f46f389df9a880c5714c63b68874c49166f5b36c5e2bffdc650` |
| 19 | `theorem` | [eventuallyEq_one_of_dist_lt](../../../../../mathematics/Topology/GeneralTopology/BumpFunction/Variant371b4d68544fc8ab16c99ce48a8d5d90dc8cfe4a506d8e27e600d5493ed696f7.lean/declarations/eventuallyeq-one-of-dist-lt--ea05fbb5e48ad7bd9dc6c15f.md) | 170 | `result-track:ea05fbb5e48ad7bd9dc6c15ff42f7f4761de06d115d1cddcd76b21f95323a43e` |
| 20 | `theorem` | [eventuallyEq_one](../../../../../mathematics/Topology/GeneralTopology/BumpFunction/Variant371b4d68544fc8ab16c99ce48a8d5d90dc8cfe4a506d8e27e600d5493ed696f7.lean/declarations/eventuallyeq-one--de324aeb641ea3a4cb3ec2d1.md) | 177 | `result-track:de324aeb641ea3a4cb3ec2d11aeae483e004a0a3faa277b77788b57e99093912` |
| 21 | `theorem` | [eq_one](../../../../../mathematics/Topology/GeneralTopology/BumpFunction/Variant371b4d68544fc8ab16c99ce48a8d5d90dc8cfe4a506d8e27e600d5493ed696f7.lean/declarations/eq-one--ae1f0a9b539582072867f9a0.md) | 182 | `result-track:ae1f0a9b539582072867f9a0ee00e1f76a9534d2d1f05a3872e966a95a44f6a0` |
| 22 | `theorem` | [support_mem_nhds](../../../../../mathematics/Topology/GeneralTopology/BumpFunction/Variant371b4d68544fc8ab16c99ce48a8d5d90dc8cfe4a506d8e27e600d5493ed696f7.lean/declarations/support-mem-nhds--d48b93afec6094c4a78c00d2.md) | 186 | `result-track:d48b93afec6094c4a78c00d2ba237b640433b29aa77ab1c7fabe4828ed8bc290` |
| 23 | `theorem` | [tsupport_mem_nhds](../../../../../mathematics/Topology/GeneralTopology/BumpFunction/Variant371b4d68544fc8ab16c99ce48a8d5d90dc8cfe4a506d8e27e600d5493ed696f7.lean/declarations/tsupport-mem-nhds--2d38ec01ef704b9caddfd7f8.md) | 190 | `result-track:2d38ec01ef704b9caddfd7f89753690e3dbab6771d51d4154cf8fe16d51f8da7` |
| 24 | `theorem` | [c_mem_support](../../../../../mathematics/Topology/GeneralTopology/BumpFunction/Variant371b4d68544fc8ab16c99ce48a8d5d90dc8cfe4a506d8e27e600d5493ed696f7.lean/declarations/c-mem-support--e4b7504247ff6b3617a09d84.md) | 194 | `result-track:e4b7504247ff6b3617a09d846645703ab364dd8a92ef4fa32776a8a8bac0615e` |
| 25 | `theorem` | [nonempty_support](../../../../../mathematics/Topology/GeneralTopology/BumpFunction/Variant371b4d68544fc8ab16c99ce48a8d5d90dc8cfe4a506d8e27e600d5493ed696f7.lean/declarations/nonempty-support--2a39b8d33d18450306178654.md) | 198 | `result-track:2a39b8d33d184503061786546151c18ced00bd5ac66248be0e9fc2c23a3009fd` |
| 26 | `theorem` | [isCompact_symm_image_closedBall](../../../../../mathematics/Topology/GeneralTopology/BumpFunction/Variant371b4d68544fc8ab16c99ce48a8d5d90dc8cfe4a506d8e27e600d5493ed696f7.lean/declarations/iscompact-symm-image-closedball--20e1d014363eb589ea29e0df.md) | 202 | `result-track:20e1d014363eb589ea29e0df01615f5394cb59a75d326dbac4e488d80ea072a6` |
| 27 | `theorem` | [nhdsWithin_range_basis](../../../../../mathematics/Topology/GeneralTopology/BumpFunction/Variant371b4d68544fc8ab16c99ce48a8d5d90dc8cfe4a506d8e27e600d5493ed696f7.lean/declarations/nhdswithin-range-basis--9332f48b56a901405bafa189.md) | 211 | `result-track:9332f48b56a901405bafa1890f804ea3d2810200feb5dcc12550ad54ee34c382` |
| 28 | `theorem` | [isClosed_image_of_isClosed](../../../../../mathematics/Topology/GeneralTopology/BumpFunction/Variant371b4d68544fc8ab16c99ce48a8d5d90dc8cfe4a506d8e27e600d5493ed696f7.lean/declarations/isclosed-image-of-isclosed--b6a92fd60f85836642e890e5.md) | 222 | `result-track:b6a92fd60f85836642e890e5a8c7bdb341dd28ab9920b919e662951b0c7e6b8c` |
| 29 | `theorem` | [exists_r_pos_lt_subset_ball](../../../../../mathematics/Topology/GeneralTopology/BumpFunction/Variant371b4d68544fc8ab16c99ce48a8d5d90dc8cfe4a506d8e27e600d5493ed696f7.lean/declarations/exists-r-pos-lt-subset-ball--0749d19d223d5a8595decabd.md) | 233 | `result-track:0749d19d223d5a8595decabd73e3e80893373e74d1d07c9e2fc283320347bd7b` |
| 30 | `def` | [updateRIn](../../../../../mathematics/Topology/GeneralTopology/BumpFunction/Variant371b4d68544fc8ab16c99ce48a8d5d90dc8cfe4a506d8e27e600d5493ed696f7.lean/declarations/updaterin--7130034643d0c991cc6d7a11.md) | 245 | `declaration-track:7130034643d0c991cc6d7a11c96c350ceb1d8dd08a4e9e2dd451b74d29a04066` |
| 31 | `theorem` | [support_updateRIn](../../../../../mathematics/Topology/GeneralTopology/BumpFunction/Variant371b4d68544fc8ab16c99ce48a8d5d90dc8cfe4a506d8e27e600d5493ed696f7.lean/declarations/support-updaterin--7111e0105664a205d7e058aa.md) | 253 | `result-track:7111e0105664a205d7e058aa5f3ae6d12b2225f6a965726a9eed93e135bcaa82` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/BumpFunction/Variant371b4d68544fc8ab16c99ce48a8d5d90dc8cfe4a506d8e27e600d5493ed696f7.lean/declarations/instance--fd1ae654bf6cf889683c25ed.md) | 259 | `declaration-track:fd1ae654bf6cf889683c25edfc6305599dee2ec7c2e1bfba064d5cdafc1d41d0` |
| 33 | `theorem` | [isClosed_symm_image_closedBall](../../../../../mathematics/Topology/GeneralTopology/BumpFunction/Variant371b4d68544fc8ab16c99ce48a8d5d90dc8cfe4a506d8e27e600d5493ed696f7.lean/declarations/isclosed-symm-image-closedball--1ce81aa4808c92dc7c4306b6.md) | 263 | `result-track:1ce81aa4808c92dc7c4306b66b1346880021bd3f574389b07402aef9b50404a1` |
| 34 | `theorem` | [tsupport_subset_symm_image_closedBall](../../../../../mathematics/Topology/GeneralTopology/BumpFunction/Variant371b4d68544fc8ab16c99ce48a8d5d90dc8cfe4a506d8e27e600d5493ed696f7.lean/declarations/tsupport-subset-symm-image-closedball--eb7ed0491f3a9876f2058fcc.md) | 268 | `result-track:eb7ed0491f3a9876f2058fccfd93697563af85bc270e29444e56b5c2906e9dcf` |
| 35 | `theorem` | [tsupport_subset_extChartAt_source](../../../../../mathematics/Topology/GeneralTopology/BumpFunction/Variant371b4d68544fc8ab16c99ce48a8d5d90dc8cfe4a506d8e27e600d5493ed696f7.lean/declarations/tsupport-subset-extchartat-source--2dfc8d81d6be53e3100c7029.md) | 275 | `result-track:2dfc8d81d6be53e3100c702944b93fcc53c26d5aa3d478ca6b6e893daea242b0` |
| 36 | `theorem` | [tsupport_subset_chartAt_source](../../../../../mathematics/Topology/GeneralTopology/BumpFunction/Variant371b4d68544fc8ab16c99ce48a8d5d90dc8cfe4a506d8e27e600d5493ed696f7.lean/declarations/tsupport-subset-chartat-source--e8eb14968bdb8b98660ea33e.md) | 283 | `result-track:e8eb14968bdb8b98660ea33efe91eaa671c1d4158d8e0176f4d4f78c8b39bafd` |
| 37 | `theorem` | [hasCompactSupport](../../../../../mathematics/Topology/GeneralTopology/BumpFunction/Variant371b4d68544fc8ab16c99ce48a8d5d90dc8cfe4a506d8e27e600d5493ed696f7.lean/declarations/hascompactsupport--7f9272b1c1cca3926945a007.md) | 287 | `result-track:7f9272b1c1cca3926945a0073ae2a416355a7d68744747997e3a8e8e0dcfaf57` |
| 38 | `theorem` | [nhds_basis_tsupport](../../../../../mathematics/Topology/GeneralTopology/BumpFunction/Variant371b4d68544fc8ab16c99ce48a8d5d90dc8cfe4a506d8e27e600d5493ed696f7.lean/declarations/nhds-basis-tsupport--2fc73ab67e997bdaba1a9700.md) | 297 | `result-track:2fc73ab67e997bdaba1a970054b464b36ea608564a64ac9aaab742877d0be587` |
| 39 | `theorem` | [nhds_basis_support](../../../../../mathematics/Topology/GeneralTopology/BumpFunction/Variant371b4d68544fc8ab16c99ce48a8d5d90dc8cfe4a506d8e27e600d5493ed696f7.lean/declarations/nhds-basis-support--8fab200e7bacb5412dfef70e.md) | 314 | `result-track:8fab200e7bacb5412dfef70e5357e86fefd61abb5774cd20c7224fff269a2fc2` |
| 40 | `theorem` | [smooth](../../../../../mathematics/Topology/GeneralTopology/BumpFunction/Variant371b4d68544fc8ab16c99ce48a8d5d90dc8cfe4a506d8e27e600d5493ed696f7.lean/declarations/smooth--adc64a57906bceada477dc91.md) | 323 | `result-track:adc64a57906bceada477dc9140102bacc7b065647f9f1cc7c220a9640e088434` |
| 41 | `theorem` | [smoothAt](../../../../../mathematics/Topology/GeneralTopology/BumpFunction/Variant371b4d68544fc8ab16c99ce48a8d5d90dc8cfe4a506d8e27e600d5493ed696f7.lean/declarations/smoothat--05c6432b8a839e9808be4bec.md) | 331 | `result-track:05c6432b8a839e9808be4bec27a8797a85ee1d02dfba9734f09c1561a547cad3` |
| 42 | `theorem` | [continuous](../../../../../mathematics/Topology/GeneralTopology/BumpFunction/Variant371b4d68544fc8ab16c99ce48a8d5d90dc8cfe4a506d8e27e600d5493ed696f7.lean/declarations/continuous--d64ffc9880bd914237849625.md) | 335 | `result-track:d64ffc9880bd9142378496259624c203648e7bc60595c4cdf3c5b1c98c9d5280` |
| 43 | `theorem` | [smooth_smul](../../../../../mathematics/Topology/GeneralTopology/BumpFunction/Variant371b4d68544fc8ab16c99ce48a8d5d90dc8cfe4a506d8e27e600d5493ed696f7.lean/declarations/smooth-smul--5b674db637a6ebd0d1935d3d.md) | 341 | `result-track:5b674db637a6ebd0d1935d3d81e62ec1241b3b51e6e13dbe875f025dd5215e92` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
