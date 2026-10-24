# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Soundness.Variant84fbdef1432d3ef3cb50461996b9fff42e822cbc3a82954715ee48e00e2660a6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "03d4ab4d8772e279368bb50137728e8ba9d7afc7",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Soundness/Variant84fbdef1432d3ef3cb50461996b9fff42e822cbc3a82954715ee48e00e2660a6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Soundness/Variant84fbdef1432d3ef3cb50461996b9fff42e822cbc3a82954715ee48e00e2660a6.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Soundness/Variant84fbdef1432d3ef3cb50461996b9fff42e822cbc3a82954715ee48e00e2660a6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `03d4ab4d8772e279368bb50137728e8ba9d7afc7`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Soundness/Variant84fbdef1432d3ef3cb50461996b9fff42e822cbc3a82954715ee48e00e2660a6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Soundness/Variant84fbdef1432d3ef3cb50461996b9fff42e822cbc3a82954715ee48e00e2660a6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Runtime.Trace` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [rustProducer](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Soundness/Variant84fbdef1432d3ef3cb50461996b9fff42e822cbc3a82954715ee48e00e2660a6.lean/declarations/rustproducer--5ebf9b205fb9e8d7d332c214.md) | 30 | `declaration-track:5ebf9b205fb9e8d7d332c214ef363f8a2b065681ad0ac2decb71ec4f2152fb70` |
| 2 | `def` | [characterMatches](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Soundness/Variant84fbdef1432d3ef3cb50461996b9fff42e822cbc3a82954715ee48e00e2660a6.lean/declarations/charactermatches--3c47e8493f3cb823d897e378.md) | 34 | `declaration-track:3c47e8493f3cb823d897e37871a2f97ef94df10a251a6e1e13ab956904816fb5` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Soundness/Variant84fbdef1432d3ef3cb50461996b9fff42e822cbc3a82954715ee48e00e2660a6.lean/declarations/instance--884fb9a4a7d39d66d564459e.md) | 46 | `declaration-track:884fb9a4a7d39d66d564459ed850efad80d2553d7a4fcb0fd2a8d3d3414a254c` |
| 4 | `def` | [AcceptanceConditions](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Soundness/Variant84fbdef1432d3ef3cb50461996b9fff42e822cbc3a82954715ee48e00e2660a6.lean/declarations/acceptanceconditions--7ccf3ca66bde8e502ae53de3.md) | 51 | `declaration-track:7ccf3ca66bde8e502ae53de3bd35cf44200a1e9c67971f127638f2ed1bcdb7bb` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Soundness/Variant84fbdef1432d3ef3cb50461996b9fff42e822cbc3a82954715ee48e00e2660a6.lean/declarations/instance--af21e3f443a1d93bb931eb15.md) | 72 | `declaration-track:af21e3f443a1d93bb931eb15a79c13fb8bdfa4180645ca5642d95bd82501dffe` |
| 6 | `def` | [verifySubmission](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Soundness/Variant84fbdef1432d3ef3cb50461996b9fff42e822cbc3a82954715ee48e00e2660a6.lean/declarations/verifysubmission--319cee064163dcc5620e5f84.md) | 82 | `declaration-track:319cee064163dcc5620e5f845bedb36725c19401d1213f0c9d998ed4ac49f7d6` |
| 7 | `def` | [AcceptedTrace](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Soundness/Variant84fbdef1432d3ef3cb50461996b9fff42e822cbc3a82954715ee48e00e2660a6.lean/declarations/acceptedtrace--ea2981bbb69d92c6c672c3a1.md) | 101 | `declaration-track:ea2981bbb69d92c6c672c3a1c5a53a5240984faa3c929d282dfb5e898262d3d5` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Soundness/Variant84fbdef1432d3ef3cb50461996b9fff42e822cbc3a82954715ee48e00e2660a6.lean/declarations/instance--6e1c69c2300bf78c47d32c33.md) | 104 | `declaration-track:6e1c69c2300bf78c47d32c33dfd099e0b6b0ab42783b93f328e3a7d599269391` |
| 9 | `structure` | [CanonicalManifestCommitment](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Soundness/Variant84fbdef1432d3ef3cb50461996b9fff42e822cbc3a82954715ee48e00e2660a6.lean/declarations/canonicalmanifestcommitment--3dd3ac4856c0e5ad99fb8f32.md) | 118 | `declaration-track:3dd3ac4856c0e5ad99fb8f32da6eef0cc54ffb342bdfb09e53ba3b53e2c6f4b7` |
| 10 | `def` | [manifestPinnedCheck](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Soundness/Variant84fbdef1432d3ef3cb50461996b9fff42e822cbc3a82954715ee48e00e2660a6.lean/declarations/manifestpinnedcheck--3d9ae46a1b4ea77f71af6a85.md) | 128 | `declaration-track:3d9ae46a1b4ea77f71af6a8502b1c5b1c13f7b6985ad736275ab93fd2a7cefd8` |
| 11 | `def` | [ManifestPinned](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Soundness/Variant84fbdef1432d3ef3cb50461996b9fff42e822cbc3a82954715ee48e00e2660a6.lean/declarations/manifestpinned--086cdd2f1568797ff108ace1.md) | 142 | `declaration-track:086cdd2f1568797ff108ace1d2d0a05dd3e4841c3c76afff77b98cd8a0bc8199` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Soundness/Variant84fbdef1432d3ef3cb50461996b9fff42e822cbc3a82954715ee48e00e2660a6.lean/declarations/instance--eabf425a4cd3fadcc311884d.md) | 146 | `declaration-track:eabf425a4cd3fadcc311884d4ff091d274a4b27188c64ad00891c5c5601c7287` |
| 13 | `theorem` | [manifestPinned_sound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Soundness/Variant84fbdef1432d3ef3cb50461996b9fff42e822cbc3a82954715ee48e00e2660a6.lean/declarations/manifestpinned-sound--58278d6f03a4b8a8dd28f3e2.md) | 153 | `result-track:58278d6f03a4b8a8dd28f3e26e266466de470f4d0b0388efa5cd6db8ee4d5978` |
| 14 | `def` | [verifyCanonicalSubmission](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Soundness/Variant84fbdef1432d3ef3cb50461996b9fff42e822cbc3a82954715ee48e00e2660a6.lean/declarations/verifycanonicalsubmission--551acd2023521773e856aa6c.md) | 177 | `declaration-track:551acd2023521773e856aa6c32fd6b5ea70a7287de1f67624d38b8f604f451e8` |
| 15 | `def` | [CanonicallyAcceptedTrace](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Soundness/Variant84fbdef1432d3ef3cb50461996b9fff42e822cbc3a82954715ee48e00e2660a6.lean/declarations/canonicallyacceptedtrace--0376c31f06be782af7955766.md) | 183 | `declaration-track:0376c31f06be782af7955766d6d5f806c5cf5ba081b01f536c87fb4c42f8ad36` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Soundness/Variant84fbdef1432d3ef3cb50461996b9fff42e822cbc3a82954715ee48e00e2660a6.lean/declarations/instance--f6596ad667d5b790562d12ac.md) | 187 | `declaration-track:f6596ad667d5b790562d12ac9a0adb91a102f1d482a185e8bcc0e7c32472f35b` |
| 17 | `def` | [Represents](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Soundness/Variant84fbdef1432d3ef3cb50461996b9fff42e822cbc3a82954715ee48e00e2660a6.lean/declarations/represents--087701cd79aaf6468df9af77.md) | 195 | `declaration-track:087701cd79aaf6468df9af77f322d004c9df4ecaeebe3848dc1bda0c9be45fa0` |
| 18 | `theorem` | [acceptedTrace_sound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Soundness/Variant84fbdef1432d3ef3cb50461996b9fff42e822cbc3a82954715ee48e00e2660a6.lean/declarations/acceptedtrace-sound--e41d4a66b98a1de3c4207d43.md) | 205 | `result-track:e41d4a66b98a1de3c4207d431a9add931e794b3fb6df1351b475caec02e0e353` |
| 19 | `theorem` | [acceptedTrace_represents](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Soundness/Variant84fbdef1432d3ef3cb50461996b9fff42e822cbc3a82954715ee48e00e2660a6.lean/declarations/acceptedtrace-represents--8ed124acbc9370299dd4b88b.md) | 244 | `result-track:8ed124acbc9370299dd4b88b8e45ac769ab7e02c2ff0412cfe0140682ca43774` |
| 20 | `theorem` | [acceptedTrace_operation_preserved](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Soundness/Variant84fbdef1432d3ef3cb50461996b9fff42e822cbc3a82954715ee48e00e2660a6.lean/declarations/acceptedtrace-operation-preserved--57ed7a798f9158475f4ce566.md) | 255 | `result-track:57ed7a798f9158475f4ce566b571b1c0e02ec4afb72643c5331c7b0da9726e7d` |
| 21 | `theorem` | [canonicallyAcceptedTrace_selfContained](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Soundness/Variant84fbdef1432d3ef3cb50461996b9fff42e822cbc3a82954715ee48e00e2660a6.lean/declarations/canonicallyacceptedtrace-selfcontained--1226849c7927612cf433cfb4.md) | 269 | `result-track:1226849c7927612cf433cfb440523d10affd108f7f797c13e6edc76be5e192f0` |
| 22 | `theorem` | [canonicallyAcceptedTrace_manifestPinned](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Soundness/Variant84fbdef1432d3ef3cb50461996b9fff42e822cbc3a82954715ee48e00e2660a6.lean/declarations/canonicallyacceptedtrace-manifestpinned--b106da2543f3b7ff4f10c30f.md) | 280 | `result-track:b106da2543f3b7ff4f10c30f5c990541be1e17d22ca8bbe8842e1566eaef1bc1` |
| 23 | `theorem` | [canonicallyAcceptedTrace_exact_manifest_bytes](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Soundness/Variant84fbdef1432d3ef3cb50461996b9fff42e822cbc3a82954715ee48e00e2660a6.lean/declarations/canonicallyacceptedtrace-exact-manifest-bytes--a5eea938ed850345f6556bd1.md) | 291 | `result-track:a5eea938ed850345f6556bd1ceef08e2f2dce349eac345ba8122db1779479c50` |
| 24 | `theorem` | [canonicallyAcceptedTrace_manifest_identity](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Soundness/Variant84fbdef1432d3ef3cb50461996b9fff42e822cbc3a82954715ee48e00e2660a6.lean/declarations/canonicallyacceptedtrace-manifest-identity--cbb3b451dd338611067452d3.md) | 301 | `result-track:cbb3b451dd338611067452d3fd0ee365d95d2cca3a29313ccadecd3bf204f00a` |
| 25 | `theorem` | [canonicallyAcceptedTrace_operation_preserved](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Soundness/Variant84fbdef1432d3ef3cb50461996b9fff42e822cbc3a82954715ee48e00e2660a6.lean/declarations/canonicallyacceptedtrace-operation-preserved--c17168e29eb19d3f0aef0ed8.md) | 316 | `result-track:c17168e29eb19d3f0aef0ed81113f52a6f885ee98f11a5e96526069d917ef7f4` |
| 26 | `theorem` | [acceptedTrace_has_no_advisory_gamma](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Soundness/Variant84fbdef1432d3ef3cb50461996b9fff42e822cbc3a82954715ee48e00e2660a6.lean/declarations/acceptedtrace-has-no-advisory-gamma--cc962f7bb36473b7d39257b9.md) | 325 | `result-track:cc962f7bb36473b7d39257b9196048a7d4f350b349ed22aad07268cfa2027825` |
| 27 | `theorem` | [advisoryGamma_trace_not_accepted](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Soundness/Variant84fbdef1432d3ef3cb50461996b9fff42e822cbc3a82954715ee48e00e2660a6.lean/declarations/advisorygamma-trace-not-accepted--5877c086b36246676196676e.md) | 343 | `result-track:5877c086b36246676196676e24f78925fe48c4c9efc93078d1a5d1e391570b05` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
