# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Pi.Variantcf9e4877ac739de814219f540c0a66fb8876fcd7383c248359fd06ae41bdc15e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "00d1a5bc007310c93f0cca4370d3efaa0c8be81f",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pi/Variantcf9e4877ac739de814219f540c0a66fb8876fcd7383c248359fd06ae41bdc15e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pi/Variantcf9e4877ac739de814219f540c0a66fb8876fcd7383c248359fd06ae41bdc15e.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pi/Variantcf9e4877ac739de814219f540c0a66fb8876fcd7383c248359fd06ae41bdc15e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `00d1a5bc007310c93f0cca4370d3efaa0c8be81f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pi/Variantcf9e4877ac739de814219f540c0a66fb8876fcd7383c248359fd06ae41bdc15e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pi/Variantcf9e4877ac739de814219f540c0a66fb8876fcd7383c248359fd06ae41bdc15e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Pi.Algebra` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Intervals.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Intervals.UnorderedInterval` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Lattice` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [pi_univ_Ici](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pi/Variantcf9e4877ac739de814219f540c0a66fb8876fcd7383c248359fd06ae41bdc15e.lean/declarations/pi-univ-ici--0f128b2ad7b1d70900be6d58.md) | 33 | `result-track:0f128b2ad7b1d70900be6d58b4068cc8a2b24aa9b1d19370a01b17baebce1175` |
| 2 | `theorem` | [pi_univ_Iic](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pi/Variantcf9e4877ac739de814219f540c0a66fb8876fcd7383c248359fd06ae41bdc15e.lean/declarations/pi-univ-iic--147ebbe15c144e02da87674d.md) | 38 | `result-track:147ebbe15c144e02da87674dd598f1fa8bef88730b414c1ab3df7d699869a233` |
| 3 | `theorem` | [pi_univ_Icc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pi/Variantcf9e4877ac739de814219f540c0a66fb8876fcd7383c248359fd06ae41bdc15e.lean/declarations/pi-univ-icc--a9a14dc8389a3638cb192963.md) | 43 | `result-track:a9a14dc8389a3638cb192963f1cdd9b8c8b52a818b1e3da246aaa82d05e0e69c` |
| 4 | `theorem` | [piecewise_mem_Icc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pi/Variantcf9e4877ac739de814219f540c0a66fb8876fcd7383c248359fd06ae41bdc15e.lean/declarations/piecewise-mem-icc--88c8bb016d1336330548fd80.md) | 47 | `result-track:88c8bb016d1336330548fd80d5bf1066a1b23c7bdd6fd62c0217a61de369c52e` |
| 5 | `theorem` | [piecewise_mem_Icc'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pi/Variantcf9e4877ac739de814219f540c0a66fb8876fcd7383c248359fd06ae41bdc15e.lean/declarations/piecewise-mem-icc--e9414345a3e792722a4118c9.md) | 54 | `result-track:e9414345a3e792722a4118c91a5e2448348a47463246935d3322c77de6ff4ed4` |
| 6 | `theorem` | [pi_univ_Ioi_subset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pi/Variantcf9e4877ac739de814219f540c0a66fb8876fcd7383c248359fd06ae41bdc15e.lean/declarations/pi-univ-ioi-subset--5fb6a5b4387aa8d99bd50692.md) | 63 | `result-track:5fb6a5b4387aa8d99bd5069217cd030302505d6896f8322d66e155e615a2516b` |
| 7 | `theorem` | [pi_univ_Iio_subset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pi/Variantcf9e4877ac739de814219f540c0a66fb8876fcd7383c248359fd06ae41bdc15e.lean/declarations/pi-univ-iio-subset--1274d5f9c8586c54104db7c4.md) | 68 | `result-track:1274d5f9c8586c54104db7c46768d67559a89a41e435c8bd66c11579da00215b` |
| 8 | `theorem` | [pi_univ_Ioo_subset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pi/Variantcf9e4877ac739de814219f540c0a66fb8876fcd7383c248359fd06ae41bdc15e.lean/declarations/pi-univ-ioo-subset--52d3e8c62ece5e811a3b3137.md) | 72 | `result-track:52d3e8c62ece5e811a3b3137f9c3d8566a1f3c2569ca42968740d215659c09fb` |
| 9 | `theorem` | [pi_univ_Ioc_subset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pi/Variantcf9e4877ac739de814219f540c0a66fb8876fcd7383c248359fd06ae41bdc15e.lean/declarations/pi-univ-ioc-subset--25827e2199d793bc56e6ed4e.md) | 76 | `result-track:25827e2199d793bc56e6ed4e7e618528a7c30eee4ba9d69ea4e6d130ae369a02` |
| 10 | `theorem` | [pi_univ_Ico_subset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pi/Variantcf9e4877ac739de814219f540c0a66fb8876fcd7383c248359fd06ae41bdc15e.lean/declarations/pi-univ-ico-subset--e9873f115dcb9e71fd42fb7e.md) | 80 | `result-track:e9873f115dcb9e71fd42fb7e628650f364dab69832c064de2bc6deb52b787fc5` |
| 11 | `theorem` | [pi_univ_Ioc_update_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pi/Variantcf9e4877ac739de814219f540c0a66fb8876fcd7383c248359fd06ae41bdc15e.lean/declarations/pi-univ-ioc-update-left--6f9fc1328e039368b0f2268f.md) | 90 | `result-track:6f9fc1328e039368b0f2268fe4b2a12b45bc0eeb5c8f42665b7bfe5030e4b55c` |
| 12 | `theorem` | [pi_univ_Ioc_update_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pi/Variantcf9e4877ac739de814219f540c0a66fb8876fcd7383c248359fd06ae41bdc15e.lean/declarations/pi-univ-ioc-update-right--aca2978e4a86bce1951c0aef.md) | 101 | `result-track:aca2978e4a86bce1951c0aef59d21e0c90613bc689770bfd8fe8dff4d4c7c1b9` |
| 13 | `theorem` | [disjoint_pi_univ_Ioc_update_left_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pi/Variantcf9e4877ac739de814219f540c0a66fb8876fcd7383c248359fd06ae41bdc15e.lean/declarations/disjoint-pi-univ-ioc-update-left-right--558ffb62435215083d830bdd.md) | 112 | `result-track:558ffb62435215083d830bdd0d24e6ad606b9ac879312445faf2d8b5b4c0904e` |
| 14 | `theorem` | [image_update_Icc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pi/Variantcf9e4877ac739de814219f540c0a66fb8876fcd7383c248359fd06ae41bdc15e.lean/declarations/image-update-icc--3ecf710348035789e2af1161.md) | 128 | `result-track:3ecf710348035789e2af1161cc894dc202bc1974532d1a160bb27d237b6ea3e9` |
| 15 | `theorem` | [image_update_Ico](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pi/Variantcf9e4877ac739de814219f540c0a66fb8876fcd7383c248359fd06ae41bdc15e.lean/declarations/image-update-ico--347b5fb1f0d476aac215aa40.md) | 142 | `result-track:347b5fb1f0d476aac215aa40598c6c32a67258fbe4d8f272ba18f6e0423169ea` |
| 16 | `theorem` | [image_update_Ioc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pi/Variantcf9e4877ac739de814219f540c0a66fb8876fcd7383c248359fd06ae41bdc15e.lean/declarations/image-update-ioc--7ae29c4491b28e687f68bd59.md) | 148 | `result-track:7ae29c4491b28e687f68bd59ef2ec6caa0d390a307c5524cce4a289a71855a9f` |
| 17 | `theorem` | [image_update_Ioo](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pi/Variantcf9e4877ac739de814219f540c0a66fb8876fcd7383c248359fd06ae41bdc15e.lean/declarations/image-update-ioo--ec65ba3089849de82c1d2150.md) | 154 | `result-track:ec65ba3089849de82c1d2150d26979681d1e1fb42fd9c4312d4d59f359e5975d` |
| 18 | `theorem` | [image_update_Icc_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pi/Variantcf9e4877ac739de814219f540c0a66fb8876fcd7383c248359fd06ae41bdc15e.lean/declarations/image-update-icc-left--22b3ddaf0e3995208e92d109.md) | 160 | `result-track:22b3ddaf0e3995208e92d10957b12862697dd20166de2f2b73fd100c55fefb66` |
| 19 | `theorem` | [image_update_Ico_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pi/Variantcf9e4877ac739de814219f540c0a66fb8876fcd7383c248359fd06ae41bdc15e.lean/declarations/image-update-ico-left--82683cab7643b9c1df020565.md) | 164 | `result-track:82683cab7643b9c1df020565c8361a29a2870b601de5ee109b71476423757074` |
| 20 | `theorem` | [image_update_Ioc_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pi/Variantcf9e4877ac739de814219f540c0a66fb8876fcd7383c248359fd06ae41bdc15e.lean/declarations/image-update-ioc-left--3e3368606930a4f48d278d8b.md) | 168 | `result-track:3e3368606930a4f48d278d8ba67f97e510295b10996539a00275cb873166c90e` |
| 21 | `theorem` | [image_update_Ioo_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pi/Variantcf9e4877ac739de814219f540c0a66fb8876fcd7383c248359fd06ae41bdc15e.lean/declarations/image-update-ioo-left--4107afce49d032af167ae33e.md) | 172 | `result-track:4107afce49d032af167ae33eb682e82bcbec3f20cc60ba5c7c79571d4896d913` |
| 22 | `theorem` | [image_update_Icc_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pi/Variantcf9e4877ac739de814219f540c0a66fb8876fcd7383c248359fd06ae41bdc15e.lean/declarations/image-update-icc-right--368567f05671711daba6b094.md) | 176 | `result-track:368567f05671711daba6b0949ea92bf9c55602ce9a409ff2d696390cf2f1a7ce` |
| 23 | `theorem` | [image_update_Ico_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pi/Variantcf9e4877ac739de814219f540c0a66fb8876fcd7383c248359fd06ae41bdc15e.lean/declarations/image-update-ico-right--a8567c2339f6d3671745b82d.md) | 180 | `result-track:a8567c2339f6d3671745b82d152eab575816606b17cd52638a9d6fe9e9996025` |
| 24 | `theorem` | [image_update_Ioc_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pi/Variantcf9e4877ac739de814219f540c0a66fb8876fcd7383c248359fd06ae41bdc15e.lean/declarations/image-update-ioc-right--5aab77006d5c0ae9476a674e.md) | 184 | `result-track:5aab77006d5c0ae9476a674e9d683b55014c2483f457e80bc179103bd00ecc60` |
| 25 | `theorem` | [image_update_Ioo_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pi/Variantcf9e4877ac739de814219f540c0a66fb8876fcd7383c248359fd06ae41bdc15e.lean/declarations/image-update-ioo-right--52009d5a9bd44d86487b6777.md) | 188 | `result-track:52009d5a9bd44d86487b6777dd9898ec13b39b89e518be130faaabf4cd867785` |
| 26 | `theorem` | [image_mulSingle_Icc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pi/Variantcf9e4877ac739de814219f540c0a66fb8876fcd7383c248359fd06ae41bdc15e.lean/declarations/image-mulsingle-icc--ab781f731aef6ba7a55ee387.md) | 195 | `result-track:ab781f731aef6ba7a55ee3879638cb15780a1e0f3af9f026f68d3d5d881effd5` |
| 27 | `theorem` | [image_mulSingle_Ico](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pi/Variantcf9e4877ac739de814219f540c0a66fb8876fcd7383c248359fd06ae41bdc15e.lean/declarations/image-mulsingle-ico--cf37246ee950c4cf03e1614a.md) | 202 | `result-track:cf37246ee950c4cf03e1614a8ae3a4dc9878404111a9daca79793dceee7f8f91` |
| 28 | `theorem` | [image_mulSingle_Ioc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pi/Variantcf9e4877ac739de814219f540c0a66fb8876fcd7383c248359fd06ae41bdc15e.lean/declarations/image-mulsingle-ioc--e1b03d133bafcf8001a92ffa.md) | 209 | `result-track:e1b03d133bafcf8001a92ffa7a76703033e2c7594369d118ac603be6bddb913d` |
| 29 | `theorem` | [image_mulSingle_Ioo](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pi/Variantcf9e4877ac739de814219f540c0a66fb8876fcd7383c248359fd06ae41bdc15e.lean/declarations/image-mulsingle-ioo--cca7e67b3c4455d0dee2f527.md) | 216 | `result-track:cca7e67b3c4455d0dee2f527f7b7beeadcf240d5e2760ecdb95a2d956f2485ec` |
| 30 | `theorem` | [image_mulSingle_Icc_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pi/Variantcf9e4877ac739de814219f540c0a66fb8876fcd7383c248359fd06ae41bdc15e.lean/declarations/image-mulsingle-icc-left--ef05171f4cd4304cb4f9d547.md) | 223 | `result-track:ef05171f4cd4304cb4f9d547f42c1e91ade0b84ebcb870ec45bae73e4534887c` |
| 31 | `theorem` | [image_mulSingle_Ico_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pi/Variantcf9e4877ac739de814219f540c0a66fb8876fcd7383c248359fd06ae41bdc15e.lean/declarations/image-mulsingle-ico-left--789265ecbe65716ec01a8ca4.md) | 230 | `result-track:789265ecbe65716ec01a8ca4516cd50a0e372d58a089dba2e8201a99652d6217` |
| 32 | `theorem` | [image_mulSingle_Ioc_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pi/Variantcf9e4877ac739de814219f540c0a66fb8876fcd7383c248359fd06ae41bdc15e.lean/declarations/image-mulsingle-ioc-left--f26618b25afa358b55516465.md) | 237 | `result-track:f26618b25afa358b555164659da452bb52a13123cb11a2c7f863697dc2fa8b84` |
| 33 | `theorem` | [image_mulSingle_Ioo_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pi/Variantcf9e4877ac739de814219f540c0a66fb8876fcd7383c248359fd06ae41bdc15e.lean/declarations/image-mulsingle-ioo-left--f0f394e19a984be7d9491421.md) | 244 | `result-track:f0f394e19a984be7d94914217e747cdc04693fbd13851d0ce07d9b346b24f203` |
| 34 | `theorem` | [image_mulSingle_Icc_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pi/Variantcf9e4877ac739de814219f540c0a66fb8876fcd7383c248359fd06ae41bdc15e.lean/declarations/image-mulsingle-icc-right--6e4dc1c11099f3fe157fbf21.md) | 251 | `result-track:6e4dc1c11099f3fe157fbf21cf8b3c0dedad2f97a93634818981db74fbd193fb` |
| 35 | `theorem` | [image_mulSingle_Ico_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pi/Variantcf9e4877ac739de814219f540c0a66fb8876fcd7383c248359fd06ae41bdc15e.lean/declarations/image-mulsingle-ico-right--6b3eecb137bd0cef82c3f574.md) | 258 | `result-track:6b3eecb137bd0cef82c3f574021f16b83fb4e339b2dc0f8df997ea0def452b1f` |
| 36 | `theorem` | [image_mulSingle_Ioc_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pi/Variantcf9e4877ac739de814219f540c0a66fb8876fcd7383c248359fd06ae41bdc15e.lean/declarations/image-mulsingle-ioc-right--3c2d98d153e84116e3986891.md) | 265 | `result-track:3c2d98d153e84116e3986891b579c2b4d75b146228a6bac8b245c3c82ad9485b` |
| 37 | `theorem` | [image_mulSingle_Ioo_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pi/Variantcf9e4877ac739de814219f540c0a66fb8876fcd7383c248359fd06ae41bdc15e.lean/declarations/image-mulsingle-ioo-right--2b0b03d9c70e8b6fb104d31b.md) | 272 | `result-track:2b0b03d9c70e8b6fb104d31b92cd83d79ea9ca3517eee5654fcce14178a78e6b` |
| 38 | `theorem` | [pi_univ_uIcc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pi/Variantcf9e4877ac739de814219f540c0a66fb8876fcd7383c248359fd06ae41bdc15e.lean/declarations/pi-univ-uicc--e81ca3f6e75bb2178b80eb6f.md) | 285 | `result-track:e81ca3f6e75bb2178b80eb6ffa44d2830489b01aa42babc540172f0700675b8e` |
| 39 | `theorem` | [image_update_uIcc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pi/Variantcf9e4877ac739de814219f540c0a66fb8876fcd7383c248359fd06ae41bdc15e.lean/declarations/image-update-uicc--ed63f6d529827c577b8b465e.md) | 291 | `result-track:ed63f6d529827c577b8b465ea5f259b5d70ebfc4037584f8dfbdf0a7ccfd6af5` |
| 40 | `theorem` | [image_update_uIcc_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pi/Variantcf9e4877ac739de814219f540c0a66fb8876fcd7383c248359fd06ae41bdc15e.lean/declarations/image-update-uicc-left--9b73f66443160f83e9d02b3a.md) | 296 | `result-track:9b73f66443160f83e9d02b3ab5099a7fd142f3e95947c056dbf3fc2b9583e506` |
| 41 | `theorem` | [image_update_uIcc_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pi/Variantcf9e4877ac739de814219f540c0a66fb8876fcd7383c248359fd06ae41bdc15e.lean/declarations/image-update-uicc-right--4abaa96432e766402f368b3d.md) | 301 | `result-track:4abaa96432e766402f368b3dda8d0f967a84d7dee50c434fe8202a605e150c47` |
| 42 | `theorem` | [image_mulSingle_uIcc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pi/Variantcf9e4877ac739de814219f540c0a66fb8876fcd7383c248359fd06ae41bdc15e.lean/declarations/image-mulsingle-uicc--4e62f2a9c11b7013b9281dd9.md) | 309 | `result-track:4e62f2a9c11b7013b9281dd9801e278307c8cba3cbf69222400872cb71c02b2e` |
| 43 | `theorem` | [image_mulSingle_uIcc_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pi/Variantcf9e4877ac739de814219f540c0a66fb8876fcd7383c248359fd06ae41bdc15e.lean/declarations/image-mulsingle-uicc-left--b73032660036d30f908abfd5.md) | 316 | `result-track:b73032660036d30f908abfd5801630ed0da5bb1070920fd14c9b6c5c332e8844` |
| 44 | `theorem` | [image_mulSingle_uIcc_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pi/Variantcf9e4877ac739de814219f540c0a66fb8876fcd7383c248359fd06ae41bdc15e.lean/declarations/image-mulsingle-uicc-right--4d7451434db3a70a879ea5ab.md) | 323 | `result-track:4d7451434db3a70a879ea5abc0ff50983b0c6040d99c3497b2bc32d456462ba0` |
| 45 | `theorem` | [pi_univ_Ioc_update_union](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pi/Variantcf9e4877ac739de814219f540c0a66fb8876fcd7383c248359fd06ae41bdc15e.lean/declarations/pi-univ-ioc-update-union--ddefb761b54cf349e40d9c87.md) | 335 | `result-track:ddefb761b54cf349e40d9c87d343351f2a9793a5606e90ecbbfe3ab76067555f` |
| 46 | `theorem` | [Icc_diff_pi_univ_Ioo_subset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pi/Variantcf9e4877ac739de814219f540c0a66fb8876fcd7383c248359fd06ae41bdc15e.lean/declarations/icc-diff-pi-univ-ioo-subset--7a2d4a7365675d4df1a8bbeb.md) | 351 | `result-track:7a2d4a7365675d4df1a8bbebe52cc8b8810b3a4bdbc4d3e72f69029e2697b286` |
| 47 | `theorem` | [Icc_diff_pi_univ_Ioc_subset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pi/Variantcf9e4877ac739de814219f540c0a66fb8876fcd7383c248359fd06ae41bdc15e.lean/declarations/icc-diff-pi-univ-ioc-subset--213c3b811269b84b3192aa55.md) | 369 | `result-track:213c3b811269b84b3192aa55b62d5751d1e4829faa726c5a63498f70c473cb30` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
