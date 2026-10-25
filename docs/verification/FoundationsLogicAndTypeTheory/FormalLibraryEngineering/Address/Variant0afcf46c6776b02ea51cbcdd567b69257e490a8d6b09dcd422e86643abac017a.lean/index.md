# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Address.Variant0afcf46c6776b02ea51cbcdd567b69257e490a8d6b09dcd422e86643abac017a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "325b64228388f3abfb553f6289d681f144edaa5d",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Address/Variant0afcf46c6776b02ea51cbcdd567b69257e490a8d6b09dcd422e86643abac017a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Address/Variant0afcf46c6776b02ea51cbcdd567b69257e490a8d6b09dcd422e86643abac017a.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Address/Variant0afcf46c6776b02ea51cbcdd567b69257e490a8d6b09dcd422e86643abac017a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `325b64228388f3abfb553f6289d681f144edaa5d`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Address/Variant0afcf46c6776b02ea51cbcdd567b69257e490a8d6b09dcd422e86643abac017a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Address/Variant0afcf46c6776b02ea51cbcdd567b69257e490a8d6b09dcd422e86643abac017a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.BinaryFrontier.Refinement.Tree` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [LocalOrientation](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Address/Variant0afcf46c6776b02ea51cbcdd567b69257e490a8d6b09dcd422e86643abac017a.lean/declarations/localorientation--920a956f67924e551667c2e6.md) | 22 | `declaration-track:920a956f67924e551667c2e699f4211a6a08ea10c6835ef3c8cfdc6a0da97d13` |
| 2 | `def` | [orientBit](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Address/Variant0afcf46c6776b02ea51cbcdd567b69257e490a8d6b09dcd422e86643abac017a.lean/declarations/orientbit--8d448bda63afa3da4f5868cb.md) | 27 | `declaration-track:8d448bda63afa3da4f5868cbd428ef24a840f8ed3efc8cf61ca47a401cb3e23e` |
| 3 | `structure` | [FrontierAddress](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Address/Variant0afcf46c6776b02ea51cbcdd567b69257e490a8d6b09dcd422e86643abac017a.lean/declarations/frontieraddress--0e00a393c9c547958c90c448.md) | 32 | `declaration-track:0e00a393c9c547958c90c448e201dbd28a3c82b93906edf076d4989dd2420d07` |
| 4 | `def` | [FrontierAddress.orientedPath](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Address/Variant0afcf46c6776b02ea51cbcdd567b69257e490a8d6b09dcd422e86643abac017a.lean/declarations/frontieraddress-orientedpath--f73815ecb754145f11905587.md) | 39 | `declaration-track:f73815ecb754145f11905587d5fa14ca6346522471e315ad0ad77e1e65de73e0` |
| 5 | `theorem` | [FrontierAddress.orientedPath_length](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Address/Variant0afcf46c6776b02ea51cbcdd567b69257e490a8d6b09dcd422e86643abac017a.lean/declarations/frontieraddress-orientedpath-length--71beeb37ad63e5cc706cd3f2.md) | 45 | `result-track:71beeb37ad63e5cc706cd3f2794253a54c06f402dbcb39f7dc4c618601426643` |
| 6 | `def` | [binaryPathIndex](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Address/Variant0afcf46c6776b02ea51cbcdd567b69257e490a8d6b09dcd422e86643abac017a.lean/declarations/binarypathindex--75594f9d3cf4f7de1810173a.md) | 52 | `declaration-track:75594f9d3cf4f7de1810173a5a888808a8488665fe86d8c71b6c2a37b6693642` |
| 7 | `def` | [FrontierAddress.equalDepthIndex](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Address/Variant0afcf46c6776b02ea51cbcdd567b69257e490a8d6b09dcd422e86643abac017a.lean/declarations/frontieraddress-equaldepthindex--91feeacf62f6ffc72a1cf448.md) | 58 | `declaration-track:91feeacf62f6ffc72a1cf448270a935996b7971808176dc93085578d07ae3b9b` |
| 8 | `def` | [FrontierAddress.selfDelimitingIndex](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Address/Variant0afcf46c6776b02ea51cbcdd567b69257e490a8d6b09dcd422e86643abac017a.lean/declarations/frontieraddress-selfdelimitingindex--2503f1932afe0a0d1ddfddba.md) | 62 | `declaration-track:2503f1932afe0a0d1ddfddba82b68df22b7fd70997e610733047a80e98e52650` |
| 9 | `structure` | [DyadicInterval](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Address/Variant0afcf46c6776b02ea51cbcdd567b69257e490a8d6b09dcd422e86643abac017a.lean/declarations/dyadicinterval--46b273f5f54510d56039efd2.md) | 67 | `declaration-track:46b273f5f54510d56039efd2d7e0e792db58721cefaf317c88408ce6eb08a473` |
| 10 | `def` | [FrontierAddress.dyadicInterval](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Address/Variant0afcf46c6776b02ea51cbcdd567b69257e490a8d6b09dcd422e86643abac017a.lean/declarations/frontieraddress-dyadicinterval--0f63304a5d90ea2b60f97705.md) | 73 | `declaration-track:0f63304a5d90ea2b60f97705919966b188a4620af5656edf372289291f65ab1b` |
| 11 | `def` | [PathPrefix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Address/Variant0afcf46c6776b02ea51cbcdd567b69257e490a8d6b09dcd422e86643abac017a.lean/declarations/pathprefix--d2de58ab75dc0f689f234f95.md) | 84 | `declaration-track:d2de58ab75dc0f689f234f95753734f12ec7409e4c2bbdd0d0bca48c57c01826` |
| 12 | `def` | [DyadicIntervalsDisjoint](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Address/Variant0afcf46c6776b02ea51cbcdd567b69257e490a8d6b09dcd422e86643abac017a.lean/declarations/dyadicintervalsdisjoint--acc17fac01d7e2d5bbc3f914.md) | 89 | `declaration-track:acc17fac01d7e2d5bbc3f914ccce8a4b36161cdad068f4ce7e25c2a95e95ad63` |
| 13 | `structure` | [TreeAddressRegistry](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Address/Variant0afcf46c6776b02ea51cbcdd567b69257e490a8d6b09dcd422e86643abac017a.lean/declarations/treeaddressregistry--51029c0af5e927898d7dba43.md) | 94 | `declaration-track:51029c0af5e927898d7dba437b169c19e2429c920f26ee64cdf74bcfe9dfda12` |
| 14 | `theorem` | [tree_frontier_address_unique](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Address/Variant0afcf46c6776b02ea51cbcdd567b69257e490a8d6b09dcd422e86643abac017a.lean/declarations/tree-frontier-address-unique--6365e94f0366df1299e9c889.md) | 117 | `result-track:6365e94f0366df1299e9c88918a1b27be4061339081e7b18fe1004de715489b5` |
| 15 | `structure` | [TerminalAddressCertificate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Address/Variant0afcf46c6776b02ea51cbcdd567b69257e490a8d6b09dcd422e86643abac017a.lean/declarations/terminaladdresscertificate--7b65a68557b7794cd44cfa28.md) | 133 | `declaration-track:7b65a68557b7794cd44cfa28b240f6130bf994b2a474ecb49a7498190e24b9e1` |
| 16 | `theorem` | [terminal_addresses_prefix_free](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Address/Variant0afcf46c6776b02ea51cbcdd567b69257e490a8d6b09dcd422e86643abac017a.lean/declarations/terminal-addresses-prefix-free--ca3ca2a4e8010678aa13e99a.md) | 160 | `result-track:ca3ca2a4e8010678aa13e99a5696463f6ecc0fd84b39aed0dd8c1c728deb679d` |
| 17 | `theorem` | [dyadic_terminal_intervals_disjoint](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Address/Variant0afcf46c6776b02ea51cbcdd567b69257e490a8d6b09dcd422e86643abac017a.lean/declarations/dyadic-terminal-intervals-disjoint--2f555e772180750ba1db68d2.md) | 183 | `result-track:2f555e772180750ba1db68d2e8d65e9128f04f5a2384482d5dd6aec35137d707` |
| 18 | `structure` | [OrientedIndexCertificate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Address/Variant0afcf46c6776b02ea51cbcdd567b69257e490a8d6b09dcd422e86643abac017a.lean/declarations/orientedindexcertificate--41c8d09987fa1a2e054fe095.md) | 206 | `declaration-track:41c8d09987fa1a2e054fe095777ab87c9388fe4d4bd9c3f7f11056ea1d7491b3` |
| 19 | `theorem` | [oriented_index_injective_at_fixed_depth](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Address/Variant0afcf46c6776b02ea51cbcdd567b69257e490a8d6b09dcd422e86643abac017a.lean/declarations/oriented-index-injective-at-fixed-depth--f1a720e5075c9c55d7ff4aeb.md) | 216 | `result-track:f1a720e5075c9c55d7ff4aeb23984e5758efe20c247cfd3806dd68a1f6e9f864` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
