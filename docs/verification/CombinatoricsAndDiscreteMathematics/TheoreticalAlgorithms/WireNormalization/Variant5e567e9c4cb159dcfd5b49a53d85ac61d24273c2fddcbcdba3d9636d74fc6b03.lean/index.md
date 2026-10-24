# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.WireNormalization.Variant5e567e9c4cb159dcfd5b49a53d85ac61d24273c2fddcbcdba3d9636d74fc6b03

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ac773aeb14f5c6b86a5ac8cdc1d22fc174540395",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WireNormalization/Variant5e567e9c4cb159dcfd5b49a53d85ac61d24273c2fddcbcdba3d9636d74fc6b03.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WireNormalization/Variant5e567e9c4cb159dcfd5b49a53d85ac61d24273c2fddcbcdba3d9636d74fc6b03.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WireNormalization/Variant5e567e9c4cb159dcfd5b49a53d85ac61d24273c2fddcbcdba3d9636d74fc6b03.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ac773aeb14f5c6b86a5ac8cdc1d22fc174540395`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WireNormalization/Variant5e567e9c4cb159dcfd5b49a53d85ac61d24273c2fddcbcdba3d9636d74fc6b03.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WireNormalization/Variant5e567e9c4cb159dcfd5b49a53d85ac61d24273c2fddcbcdba3d9636d74fc6b03.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model.TagReduction` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [WireTerm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WireNormalization/Variant5e567e9c4cb159dcfd5b49a53d85ac61d24273c2fddcbcdba3d9636d74fc6b03.lean/declarations/wireterm--4aa459ae63fb7a2d5e7e5a01.md) | 27 | `declaration-track:4aa459ae63fb7a2d5e7e5a011eeda7cae7c743314bf202a3b9488c26c5af07f1` |
| 2 | `def` | [WireTerm.decode](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WireNormalization/Variant5e567e9c4cb159dcfd5b49a53d85ac61d24273c2fddcbcdba3d9636d74fc6b03.lean/declarations/wireterm-decode--ebd82c8c0dcf2bebf9da5cf1.md) | 33 | `declaration-track:ebd82c8c0dcf2bebf9da5cf1b8d6a90596ea00ed25bcb26379fbc200b57643db` |
| 3 | `def` | [WireTerm.encode](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WireNormalization/Variant5e567e9c4cb159dcfd5b49a53d85ac61d24273c2fddcbcdba3d9636d74fc6b03.lean/declarations/wireterm-encode--24d6c09631597ef78589932c.md) | 38 | `declaration-track:24d6c09631597ef78589932c5731b6241ce51d6e2ff193e67ecbaccb59e97a3d` |
| 4 | `theorem` | [decode_encode](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WireNormalization/Variant5e567e9c4cb159dcfd5b49a53d85ac61d24273c2fddcbcdba3d9636d74fc6b03.lean/declarations/decode-encode--740129d68768cec33e810625.md) | 43 | `result-track:740129d68768cec33e810625e4ba1c6fecfccae10eb1d17e0b2b0645ab54fa27` |
| 5 | `theorem` | [encode_decode](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WireNormalization/Variant5e567e9c4cb159dcfd5b49a53d85ac61d24273c2fddcbcdba3d9636d74fc6b03.lean/declarations/encode-decode--c31c8214caa57f2c68c95872.md) | 49 | `result-track:c31c8214caa57f2c68c958721e643f663b7ecf381e606aa7a8a61b78aae0d5b7` |
| 6 | `def` | [WireTerm.nodeCost](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WireNormalization/Variant5e567e9c4cb159dcfd5b49a53d85ac61d24273c2fddcbcdba3d9636d74fc6b03.lean/declarations/wireterm-nodecost--072418e0b44305ca3687cc88.md) | 55 | `declaration-track:072418e0b44305ca3687cc88687156c59898ae40b57d0d67de4d5cd33d9e2972` |
| 7 | `theorem` | [nodeCost_eq_size](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WireNormalization/Variant5e567e9c4cb159dcfd5b49a53d85ac61d24273c2fddcbcdba3d9636d74fc6b03.lean/declarations/nodecost-eq-size--cbe53891d5b2ac35f2e8dbca.md) | 60 | `result-track:cbe53891d5b2ac35f2e8dbca796291221a8fbc7c1a3c78d6ea99cd2a89a031af` |
| 8 | `structure` | [Packet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WireNormalization/Variant5e567e9c4cb159dcfd5b49a53d85ac61d24273c2fddcbcdba3d9636d74fc6b03.lean/declarations/packet--77184c555f55f691a442ef0c.md) | 66 | `declaration-track:77184c555f55f691a442ef0cf82364053e1bfdacf1442d2aedb5d1c2c89b0bef` |
| 9 | `def` | [PacketValid](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WireNormalization/Variant5e567e9c4cb159dcfd5b49a53d85ac61d24273c2fddcbcdba3d9636d74fc6b03.lean/declarations/packetvalid--974c4901367d6afc78a41d7d.md) | 73 | `declaration-track:974c4901367d6afc78a41d7d1c38c228da1456d20efd4e1e3d99f987906196be` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WireNormalization/Variant5e567e9c4cb159dcfd5b49a53d85ac61d24273c2fddcbcdba3d9636d74fc6b03.lean/declarations/instance--de485b43a1aa96adb98de43c.md) | 79 | `declaration-track:de485b43a1aa96adb98de43c11b594f22ab2f28c30fe11628dae0f9ffcb7376b` |
| 11 | `def` | [checkPacket](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WireNormalization/Variant5e567e9c4cb159dcfd5b49a53d85ac61d24273c2fddcbcdba3d9636d74fc6b03.lean/declarations/checkpacket--92f595c59d96106ed9639aff.md) | 82 | `declaration-track:92f595c59d96106ed9639aff67f81219b3f984b233cbedfaeb0ea6f97ae4a764` |
| 12 | `theorem` | [checkPacket_correct](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WireNormalization/Variant5e567e9c4cb159dcfd5b49a53d85ac61d24273c2fddcbcdba3d9636d74fc6b03.lean/declarations/checkpacket-correct--4b9c3e39c6587b73941c76bc.md) | 84 | `result-track:4b9c3e39c6587b73941c76bc11050d8ba018c21ceee6febeed4c09afc4596003` |
| 13 | `structure` | [CheckedPacket](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WireNormalization/Variant5e567e9c4cb159dcfd5b49a53d85ac61d24273c2fddcbcdba3d9636d74fc6b03.lean/declarations/checkedpacket--71ec7fbf49331c4afae02318.md) | 87 | `declaration-track:71ec7fbf49331c4afae023187467eb8d9268205ea517957b0c4a38aea4b138d1` |
| 14 | `def` | [admitPacket](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WireNormalization/Variant5e567e9c4cb159dcfd5b49a53d85ac61d24273c2fddcbcdba3d9636d74fc6b03.lean/declarations/admitpacket--3474a97302ccdbe212620e8c.md) | 91 | `declaration-track:3474a97302ccdbe212620e8cb466de71228743f90d96c75a979902564fcd8e62` |
| 15 | `theorem` | [admitPacket_sound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WireNormalization/Variant5e567e9c4cb159dcfd5b49a53d85ac61d24273c2fddcbcdba3d9636d74fc6b03.lean/declarations/admitpacket-sound--8fccf1778e72f803704c6481.md) | 95 | `result-track:8fccf1778e72f803704c6481300f2fa7663192f8d2710d758e631c12f0fd4325` |
| 16 | `def` | [normalizePacket](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WireNormalization/Variant5e567e9c4cb159dcfd5b49a53d85ac61d24273c2fddcbcdba3d9636d74fc6b03.lean/declarations/normalizepacket--10f44d32c80986b02edbfced.md) | 103 | `declaration-track:10f44d32c80986b02edbfced22c2416c6731fc650683eadf4e3011231f9760dc` |
| 17 | `theorem` | [normalizePacket_valid](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WireNormalization/Variant5e567e9c4cb159dcfd5b49a53d85ac61d24273c2fddcbcdba3d9636d74fc6b03.lean/declarations/normalizepacket-valid--7d3b49be00c373b82807c4ba.md) | 107 | `result-track:7d3b49be00c373b82807c4baf2eda468a76878ecd20d5a177e109ed598d78862` |
| 18 | `theorem` | [normalizePacket_semantics](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WireNormalization/Variant5e567e9c4cb159dcfd5b49a53d85ac61d24273c2fddcbcdba3d9636d74fc6b03.lean/declarations/normalizepacket-semantics--1fe2a195efa9d73c7ae38760.md) | 121 | `result-track:1fe2a195efa9d73c7ae387600d9c675ce86fa4256d1ab63c8339649c10dc7d07` |
| 19 | `theorem` | [normalizePacket_readout](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WireNormalization/Variant5e567e9c4cb159dcfd5b49a53d85ac61d24273c2fddcbcdba3d9636d74fc6b03.lean/declarations/normalizepacket-readout--8ecd1c095000324e218fd780.md) | 132 | `result-track:8ecd1c095000324e218fd780582bfa6cb6497c3e0376998990e52bf68bed5165` |
| 20 | `def` | [fixture](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WireNormalization/Variant5e567e9c4cb159dcfd5b49a53d85ac61d24273c2fddcbcdba3d9636d74fc6b03.lean/declarations/fixture--ae1e85c5e20c72ae99c0caa3.md) | 139 | `declaration-track:ae1e85c5e20c72ae99c0caa3564c4f11a011c29f8484b7c3c093605797311582` |
| 21 | `theorem` | [fixture_admitted](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WireNormalization/Variant5e567e9c4cb159dcfd5b49a53d85ac61d24273c2fddcbcdba3d9636d74fc6b03.lean/declarations/fixture-admitted--c8151c3c2d9b96f739168339.md) | 143 | `result-track:c8151c3c2d9b96f739168339cd52a2bf0781b799b3542a51c8285755bfc6de50` |
| 22 | `def` | [checkedFixture](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WireNormalization/Variant5e567e9c4cb159dcfd5b49a53d85ac61d24273c2fddcbcdba3d9636d74fc6b03.lean/declarations/checkedfixture--a58808ae6c7ccebd42a2d5fc.md) | 145 | `declaration-track:a58808ae6c7ccebd42a2d5fc0debaa8d491541996f1228a7069dae07e920d21f` |
| 23 | `theorem` | [fixture_normalized](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WireNormalization/Variant5e567e9c4cb159dcfd5b49a53d85ac61d24273c2fddcbcdba3d9636d74fc6b03.lean/declarations/fixture-normalized--8b8771faeb501310e0119455.md) | 147 | `result-track:8b8771faeb501310e0119455460d961dcf5ccb85692462d4ab0c87bb79dabd99` |
| 24 | `theorem` | [wrong_context_rejected](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WireNormalization/Variant5e567e9c4cb159dcfd5b49a53d85ac61d24273c2fddcbcdba3d9636d74fc6b03.lean/declarations/wrong-context-rejected--10ab8d93354c6e058aad505e.md) | 152 | `result-track:10ab8d93354c6e058aad505ed2cb851214c6bc17af13110b7618ffcfa418b6d7` |
| 25 | `theorem` | [undeclared_constructor_rejected](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WireNormalization/Variant5e567e9c4cb159dcfd5b49a53d85ac61d24273c2fddcbcdba3d9636d74fc6b03.lean/declarations/undeclared-constructor-rejected--6fb618b4b5e6f0793264c126.md) | 154 | `result-track:6fb618b4b5e6f0793264c126e33769742178f3b04b5ad6fcedcb98b772357e88` |
| 26 | `theorem` | [changed_source_rejected](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WireNormalization/Variant5e567e9c4cb159dcfd5b49a53d85ac61d24273c2fddcbcdba3d9636d74fc6b03.lean/declarations/changed-source-rejected--c39d678153a032edee6787bb.md) | 157 | `result-track:c39d678153a032edee6787bbee882cd7a92a2262eb72f6b3038df2e2df202dff` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
