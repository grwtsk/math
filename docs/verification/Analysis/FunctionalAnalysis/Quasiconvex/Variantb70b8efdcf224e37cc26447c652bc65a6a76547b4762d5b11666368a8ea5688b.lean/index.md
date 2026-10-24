# Verification target: GRWTSK.Analysis.FunctionalAnalysis.Quasiconvex.Variantb70b8efdcf224e37cc26447c652bc65a6a76547b4762d5b11666368a8ea5688b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "137760ac5e23239690200862fd9a04371b9153a2",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Quasiconvex/Variantb70b8efdcf224e37cc26447c652bc65a6a76547b4762d5b11666368a8ea5688b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/Quasiconvex/Variantb70b8efdcf224e37cc26447c652bc65a6a76547b4762d5b11666368a8ea5688b.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/Quasiconvex/Variantb70b8efdcf224e37cc26447c652bc65a6a76547b4762d5b11666368a8ea5688b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `137760ac5e23239690200862fd9a04371b9153a2`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Quasiconvex/Variantb70b8efdcf224e37cc26447c652bc65a6a76547b4762d5b11666368a8ea5688b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Quasiconvex/Variantb70b8efdcf224e37cc26447c652bc65a6a76547b4762d5b11666368a8ea5688b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Function` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [QuasiconvexOn](../../../../../mathematics/Analysis/FunctionalAnalysis/Quasiconvex/Variantb70b8efdcf224e37cc26447c652bc65a6a76547b4762d5b11666368a8ea5688b.lean/declarations/quasiconvexon--a78966af3152ad1aca7449bb.md) | 56 | `declaration-track:a78966af3152ad1aca7449bb1f57bf19b752c2982e4150d805b07c52819bfe66` |
| 2 | `def` | [QuasiconcaveOn](../../../../../mathematics/Analysis/FunctionalAnalysis/Quasiconvex/Variantb70b8efdcf224e37cc26447c652bc65a6a76547b4762d5b11666368a8ea5688b.lean/declarations/quasiconcaveon--2221f84267dc99747546a41a.md) | 61 | `declaration-track:2221f84267dc99747546a41a25cdf240f7b64912ded9131f3963a832433d0339` |
| 3 | `def` | [QuasilinearOn](../../../../../mathematics/Analysis/FunctionalAnalysis/Quasiconvex/Variantb70b8efdcf224e37cc26447c652bc65a6a76547b4762d5b11666368a8ea5688b.lean/declarations/quasilinearon--05a5effb825601523aece688.md) | 67 | `declaration-track:05a5effb825601523aece688dcd3054a9be6457297899e0f92fa267fe202bdbf` |
| 4 | `theorem` | [QuasiconvexOn.dual](../../../../../mathematics/Analysis/FunctionalAnalysis/Quasiconvex/Variantb70b8efdcf224e37cc26447c652bc65a6a76547b4762d5b11666368a8ea5688b.lean/declarations/quasiconvexon-dual--629076ef757379cde18db2f0.md) | 72 | `result-track:629076ef757379cde18db2f0b4f797314e693073913c31f5a98a131a770aa9c0` |
| 5 | `theorem` | [QuasiconcaveOn.dual](../../../../../mathematics/Analysis/FunctionalAnalysis/Quasiconvex/Variantb70b8efdcf224e37cc26447c652bc65a6a76547b4762d5b11666368a8ea5688b.lean/declarations/quasiconcaveon-dual--9d874cffdda107ee44f793e2.md) | 75 | `result-track:9d874cffdda107ee44f793e213bd8ecf2a0f5e91bc4984f741aff3f6d605c1c9` |
| 6 | `theorem` | [QuasilinearOn.dual](../../../../../mathematics/Analysis/FunctionalAnalysis/Quasiconvex/Variantb70b8efdcf224e37cc26447c652bc65a6a76547b4762d5b11666368a8ea5688b.lean/declarations/quasilinearon-dual--6cdcaa856a04cf81f3318fb6.md) | 78 | `result-track:6cdcaa856a04cf81f3318fb65bc80c9ad3e5f312524fdf697b38eb6223c5d46b` |
| 7 | `theorem` | [Convex.quasiconvexOn_of_convex_le](../../../../../mathematics/Analysis/FunctionalAnalysis/Quasiconvex/Variantb70b8efdcf224e37cc26447c652bc65a6a76547b4762d5b11666368a8ea5688b.lean/declarations/convex-quasiconvexon-of-convex-le--3770b3e2f07ba47c0c29038c.md) | 81 | `result-track:3770b3e2f07ba47c0c29038c507e9f5da1825503a82acff1c46a0cdc79a3f6cb` |
| 8 | `theorem` | [Convex.quasiconcaveOn_of_convex_ge](../../../../../mathematics/Analysis/FunctionalAnalysis/Quasiconvex/Variantb70b8efdcf224e37cc26447c652bc65a6a76547b4762d5b11666368a8ea5688b.lean/declarations/convex-quasiconcaveon-of-convex-ge--e02704f07142ed852a9387f2.md) | 84 | `result-track:e02704f07142ed852a9387f2fe7d7f91fc28bfece32377944e414c03f0739525` |
| 9 | `theorem` | [QuasiconvexOn.convex](../../../../../mathematics/Analysis/FunctionalAnalysis/Quasiconvex/Variantb70b8efdcf224e37cc26447c652bc65a6a76547b4762d5b11666368a8ea5688b.lean/declarations/quasiconvexon-convex--6a5837c99affc14d2d7eebc1.md) | 88 | `result-track:6a5837c99affc14d2d7eebc1aa104e2629943f3b75da7ff204fa066d7c82adde` |
| 10 | `theorem` | [QuasiconcaveOn.convex](../../../../../mathematics/Analysis/FunctionalAnalysis/Quasiconvex/Variantb70b8efdcf224e37cc26447c652bc65a6a76547b4762d5b11666368a8ea5688b.lean/declarations/quasiconcaveon-convex--72c5331da554134d3f03134e.md) | 93 | `result-track:72c5331da554134d3f03134e99c544010a7a66a6312aa35cf8467eda63d5f5c9` |
| 11 | `theorem` | [QuasiconvexOn.sup](../../../../../mathematics/Analysis/FunctionalAnalysis/Quasiconvex/Variantb70b8efdcf224e37cc26447c652bc65a6a76547b4762d5b11666368a8ea5688b.lean/declarations/quasiconvexon-sup--424fb3df8a2ed4c17b33ac1a.md) | 102 | `result-track:424fb3df8a2ed4c17b33ac1a525127f3c234fb6610f972bbd181901cb7a2224f` |
| 12 | `theorem` | [QuasiconcaveOn.inf](../../../../../mathematics/Analysis/FunctionalAnalysis/Quasiconvex/Variantb70b8efdcf224e37cc26447c652bc65a6a76547b4762d5b11666368a8ea5688b.lean/declarations/quasiconcaveon-inf--69909d31557c5916c8aa759c.md) | 108 | `result-track:69909d31557c5916c8aa759c451d71573b56f13baea8b6900096a29c945ba4f3` |
| 13 | `theorem` | [quasiconvexOn_iff_le_max](../../../../../mathematics/Analysis/FunctionalAnalysis/Quasiconvex/Variantb70b8efdcf224e37cc26447c652bc65a6a76547b4762d5b11666368a8ea5688b.lean/declarations/quasiconvexon-iff-le-max--1e5a1b7252131239ed1e83fa.md) | 118 | `result-track:1e5a1b7252131239ed1e83facd5325060a0daadf3844ac50a4ac84889a3a1ece` |
| 14 | `theorem` | [quasiconcaveOn_iff_min_le](../../../../../mathematics/Analysis/FunctionalAnalysis/Quasiconvex/Variantb70b8efdcf224e37cc26447c652bc65a6a76547b4762d5b11666368a8ea5688b.lean/declarations/quasiconcaveon-iff-min-le--6f1c3ce52c81881f720c47a0.md) | 126 | `result-track:6f1c3ce52c81881f720c47a00374d69a878f133ef51be46836d4209819760199` |
| 15 | `theorem` | [quasilinearOn_iff_mem_uIcc](../../../../../mathematics/Analysis/FunctionalAnalysis/Quasiconvex/Variantb70b8efdcf224e37cc26447c652bc65a6a76547b4762d5b11666368a8ea5688b.lean/declarations/quasilinearon-iff-mem-uicc--d7fe79642b86e00f3522df55.md) | 130 | `result-track:d7fe79642b86e00f3522df556925b599fe7f54a4ee7508bdc59bfaa75b5c222b` |
| 16 | `theorem` | [QuasiconvexOn.convex_lt](../../../../../mathematics/Analysis/FunctionalAnalysis/Quasiconvex/Variantb70b8efdcf224e37cc26447c652bc65a6a76547b4762d5b11666368a8ea5688b.lean/declarations/quasiconvexon-convex-lt--116ff6b390c20c056f247009.md) | 137 | `result-track:116ff6b390c20c056f247009e428c7c323acda7625103c209db2b9f414b0c73e` |
| 17 | `theorem` | [QuasiconcaveOn.convex_gt](../../../../../mathematics/Analysis/FunctionalAnalysis/Quasiconvex/Variantb70b8efdcf224e37cc26447c652bc65a6a76547b4762d5b11666368a8ea5688b.lean/declarations/quasiconcaveon-convex-gt--7bc0ddba9270eab23d39bc2e.md) | 143 | `result-track:7bc0ddba9270eab23d39bc2eda4d09edb0dba5c2e5b3af3c73f79057b90ac2e4` |
| 18 | `theorem` | [ConvexOn.quasiconvexOn](../../../../../mathematics/Analysis/FunctionalAnalysis/Quasiconvex/Variantb70b8efdcf224e37cc26447c652bc65a6a76547b4762d5b11666368a8ea5688b.lean/declarations/convexon-quasiconvexon--b83f4eaf949a89e9b9f365ea.md) | 155 | `result-track:b83f4eaf949a89e9b9f365eaffc945bb0107590961f74f762dc3e9f670114906` |
| 19 | `theorem` | [ConcaveOn.quasiconcaveOn](../../../../../mathematics/Analysis/FunctionalAnalysis/Quasiconvex/Variantb70b8efdcf224e37cc26447c652bc65a6a76547b4762d5b11666368a8ea5688b.lean/declarations/concaveon-quasiconcaveon--3f4e75db5ded3668478c3121.md) | 158 | `result-track:3f4e75db5ded3668478c3121e9a2f9e0896f1bf750ba3056ea1f3d921de88f2f` |
| 20 | `theorem` | [MonotoneOn.quasiconvexOn](../../../../../mathematics/Analysis/FunctionalAnalysis/Quasiconvex/Variantb70b8efdcf224e37cc26447c652bc65a6a76547b4762d5b11666368a8ea5688b.lean/declarations/monotoneon-quasiconvexon--5db4af34f7a0df199c2de479.md) | 171 | `result-track:5db4af34f7a0df199c2de479d64fc833f86f41c3731a99181e465b5cb5937edc` |
| 21 | `theorem` | [MonotoneOn.quasiconcaveOn](../../../../../mathematics/Analysis/FunctionalAnalysis/Quasiconvex/Variantb70b8efdcf224e37cc26447c652bc65a6a76547b4762d5b11666368a8ea5688b.lean/declarations/monotoneon-quasiconcaveon--77a3c5e70534e8c55dae7c8e.md) | 174 | `result-track:77a3c5e70534e8c55dae7c8eae0e6c3bf91525329260feb3f9ac0b95b6ac70ed` |
| 22 | `theorem` | [MonotoneOn.quasilinearOn](../../../../../mathematics/Analysis/FunctionalAnalysis/Quasiconvex/Variantb70b8efdcf224e37cc26447c652bc65a6a76547b4762d5b11666368a8ea5688b.lean/declarations/monotoneon-quasilinearon--ac89e18ef2e1fa93b7abe364.md) | 177 | `result-track:ac89e18ef2e1fa93b7abe3646a6bcc8182a2517c565e04654b06d4d0d38a1e15` |
| 23 | `theorem` | [AntitoneOn.quasiconvexOn](../../../../../mathematics/Analysis/FunctionalAnalysis/Quasiconvex/Variantb70b8efdcf224e37cc26447c652bc65a6a76547b4762d5b11666368a8ea5688b.lean/declarations/antitoneon-quasiconvexon--89e8fa1e3d069986eb88fd18.md) | 180 | `result-track:89e8fa1e3d069986eb88fd1809cc3f1897b66892b8fa82c6228a5c9662f8d602` |
| 24 | `theorem` | [AntitoneOn.quasiconcaveOn](../../../../../mathematics/Analysis/FunctionalAnalysis/Quasiconvex/Variantb70b8efdcf224e37cc26447c652bc65a6a76547b4762d5b11666368a8ea5688b.lean/declarations/antitoneon-quasiconcaveon--fa8d7c71930da456dbea1de1.md) | 183 | `result-track:fa8d7c71930da456dbea1de172972dfaa4f7eb717db391b11cfdaa168f3a0519` |
| 25 | `theorem` | [AntitoneOn.quasilinearOn](../../../../../mathematics/Analysis/FunctionalAnalysis/Quasiconvex/Variantb70b8efdcf224e37cc26447c652bc65a6a76547b4762d5b11666368a8ea5688b.lean/declarations/antitoneon-quasilinearon--433017f9b00e831e2c9734a1.md) | 186 | `result-track:433017f9b00e831e2c9734a17bdfa4f80d04dc4a3ca891e66d5070726fd0322d` |
| 26 | `theorem` | [Monotone.quasiconvexOn](../../../../../mathematics/Analysis/FunctionalAnalysis/Quasiconvex/Variantb70b8efdcf224e37cc26447c652bc65a6a76547b4762d5b11666368a8ea5688b.lean/declarations/monotone-quasiconvexon--4d868f5b6eb769d36c05e298.md) | 189 | `result-track:4d868f5b6eb769d36c05e29859fc958241fbd2a525353bc3d48054c7ea525fe0` |
| 27 | `theorem` | [Monotone.quasiconcaveOn](../../../../../mathematics/Analysis/FunctionalAnalysis/Quasiconvex/Variantb70b8efdcf224e37cc26447c652bc65a6a76547b4762d5b11666368a8ea5688b.lean/declarations/monotone-quasiconcaveon--cca602120f8e08c41463ee96.md) | 192 | `result-track:cca602120f8e08c41463ee961cf6b8c057b1a892978d478c4aaebcbf270e147e` |
| 28 | `theorem` | [Monotone.quasilinearOn](../../../../../mathematics/Analysis/FunctionalAnalysis/Quasiconvex/Variantb70b8efdcf224e37cc26447c652bc65a6a76547b4762d5b11666368a8ea5688b.lean/declarations/monotone-quasilinearon--bd61a58968358aab24ebf821.md) | 195 | `result-track:bd61a58968358aab24ebf82102bcbace37ebdc8584805f3e7a0f48fd47ba1c79` |
| 29 | `theorem` | [Antitone.quasiconvexOn](../../../../../mathematics/Analysis/FunctionalAnalysis/Quasiconvex/Variantb70b8efdcf224e37cc26447c652bc65a6a76547b4762d5b11666368a8ea5688b.lean/declarations/antitone-quasiconvexon--b177ea640ecbc001fc582d3c.md) | 198 | `result-track:b177ea640ecbc001fc582d3c8f7f1a3bffc42918ace2533d853cd18868389431` |
| 30 | `theorem` | [Antitone.quasiconcaveOn](../../../../../mathematics/Analysis/FunctionalAnalysis/Quasiconvex/Variantb70b8efdcf224e37cc26447c652bc65a6a76547b4762d5b11666368a8ea5688b.lean/declarations/antitone-quasiconcaveon--a8020b3e73a5a0a315dc2f86.md) | 201 | `result-track:a8020b3e73a5a0a315dc2f86d40b13872ae02a9534cac465c1a6979e037b23c7` |
| 31 | `theorem` | [Antitone.quasilinearOn](../../../../../mathematics/Analysis/FunctionalAnalysis/Quasiconvex/Variantb70b8efdcf224e37cc26447c652bc65a6a76547b4762d5b11666368a8ea5688b.lean/declarations/antitone-quasilinearon--095901af1490e1f1e0e36aac.md) | 204 | `result-track:095901af1490e1f1e0e36aac49c38ade836a47db6c51758fb40b8cc6690e9888` |
| 32 | `theorem` | [QuasilinearOn.monotoneOn_or_antitoneOn](../../../../../mathematics/Analysis/FunctionalAnalysis/Quasiconvex/Variantb70b8efdcf224e37cc26447c652bc65a6a76547b4762d5b11666368a8ea5688b.lean/declarations/quasilinearon-monotoneon-or-antitoneon--4fe49f4a0e08960f1ff888fa.md) | 215 | `result-track:4fe49f4a0e08960f1ff888fa9c89963bcb81d9cc033ba8853ff89a07633cf949` |
| 33 | `theorem` | [quasilinearOn_iff_monotoneOn_or_antitoneOn](../../../../../mathematics/Analysis/FunctionalAnalysis/Quasiconvex/Variantb70b8efdcf224e37cc26447c652bc65a6a76547b4762d5b11666368a8ea5688b.lean/declarations/quasilinearon-iff-monotoneon-or-antitoneon--808c1f7355c5ac8e7a1f4366.md) | 221 | `result-track:808c1f7355c5ac8e7a1f436651953290c18b38c9fa43fb0fc01e33eeea4c6f9f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
