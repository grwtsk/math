# Verification target: GRWTSK.Topology.GeneralTopology.CompactlyGeneratedSpace.Variant93c9ca7c26fdcb2f0d09f60c7713c78710d2b388e3ece81141bb8dc1b46f3e44

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d3d32971837ad75ce581df1c767f199fede62fa3",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/CompactlyGeneratedSpace/Variant93c9ca7c26fdcb2f0d09f60c7713c78710d2b388e3ece81141bb8dc1b46f3e44.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/CompactlyGeneratedSpace/Variant93c9ca7c26fdcb2f0d09f60c7713c78710d2b388e3ece81141bb8dc1b46f3e44.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/CompactlyGeneratedSpace/Variant93c9ca7c26fdcb2f0d09f60c7713c78710d2b388e3ece81141bb8dc1b46f3e44.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d3d32971837ad75ce581df1c767f199fede62fa3`.

Source path: `GRWTSK/Topology/GeneralTopology/CompactlyGeneratedSpace/Variant93c9ca7c26fdcb2f0d09f60c7713c78710d2b388e3ece81141bb8dc1b46f3e44.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/CompactlyGeneratedSpace/Variant93c9ca7c26fdcb2f0d09f60c7713c78710d2b388e3ece81141bb8dc1b46f3e44.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Category.CompHaus.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Compactification.OnePoint` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [TopologicalSpace.compactlyGenerated](../../../../../mathematics/Topology/GeneralTopology/CompactlyGeneratedSpace/Variant93c9ca7c26fdcb2f0d09f60c7713c78710d2b388e3ece81141bb8dc1b46f3e44.lean/declarations/topologicalspace-compactlygenerated--8bc76b4864f51106aa92161e.md) | 68 | `declaration-track:8bc76b4864f51106aa92161eb335d4cc63826c453e843d5587018ff6b67584c4` |
| 2 | `lemma` | [continuous_from_compactlyGenerated](../../../../../mathematics/Topology/GeneralTopology/CompactlyGeneratedSpace/Variant93c9ca7c26fdcb2f0d09f60c7713c78710d2b388e3ece81141bb8dc1b46f3e44.lean/declarations/continuous-from-compactlygenerated--6611b32cb31b226a487229b9.md) | 72 | `result-track:6611b32cb31b226a487229b9a5dc158039cd65b1b61ec30069842c609d1285ac` |
| 3 | `class` | [UCompactlyGeneratedSpace](../../../../../mathematics/Topology/GeneralTopology/CompactlyGeneratedSpace/Variant93c9ca7c26fdcb2f0d09f60c7713c78710d2b388e3ece81141bb8dc1b46f3e44.lean/declarations/ucompactlygeneratedspace--1ea13c933e5157b9aaf8d54e.md) | 87 | `declaration-track:1ea13c933e5157b9aaf8d54ed2c36bd42e082f6d56a85d3eb89d1a559aaec2ee` |
| 4 | `lemma` | [eq_compactlyGenerated](../../../../../mathematics/Topology/GeneralTopology/CompactlyGeneratedSpace/Variant93c9ca7c26fdcb2f0d09f60c7713c78710d2b388e3ece81141bb8dc1b46f3e44.lean/declarations/eq-compactlygenerated--d0684f567b00387b4816a949.md) | 91 | `result-track:d0684f567b00387b4816a9497734e1546cee14d87b0da0d1516956ccdd09cf72` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/CompactlyGeneratedSpace/Variant93c9ca7c26fdcb2f0d09f60c7713c78710d2b388e3ece81141bb8dc1b46f3e44.lean/declarations/instance--988c0d89673b013eb08cb855.md) | 99 | `declaration-track:988c0d89673b013eb08cb8554a9f6459f7eeea3b24426b3688efbf4813bee073` |
| 6 | `lemma` | [uCompactlyGeneratedSpace_of_continuous_maps](../../../../../mathematics/Topology/GeneralTopology/CompactlyGeneratedSpace/Variant93c9ca7c26fdcb2f0d09f60c7713c78710d2b388e3ece81141bb8dc1b46f3e44.lean/declarations/ucompactlygeneratedspace-of-continuous-maps--6fa1251b6916c13f5cc3a910.md) | 112 | `result-track:6fa1251b6916c13f5cc3a910ce76989576f158d10d217e3efbb1199317a8d1e7` |
| 7 | `lemma` | [continuous_from_uCompactlyGeneratedSpace](../../../../../mathematics/Topology/GeneralTopology/CompactlyGeneratedSpace/Variant93c9ca7c26fdcb2f0d09f60c7713c78710d2b388e3ece81141bb8dc1b46f3e44.lean/declarations/continuous-from-ucompactlygeneratedspace--699374eb5999deaac00d2f3c.md) | 132 | `result-track:699374eb5999deaac00d2f3c3c9c011b2329f1d54289880bc2507fb689093c10` |
| 8 | `theorem` | [uCompactlyGeneratedSpace_of_isClosed](../../../../../mathematics/Topology/GeneralTopology/CompactlyGeneratedSpace/Variant93c9ca7c26fdcb2f0d09f60c7713c78710d2b388e3ece81141bb8dc1b46f3e44.lean/declarations/ucompactlygeneratedspace-of-isclosed--df40adfb62d3c06527703078.md) | 139 | `result-track:df40adfb62d3c065277030789e93ad2e65a756e33524de50ff1a0e2099eaaa62` |
| 9 | `theorem` | [uCompactlyGeneratedSpace_of_isOpen](../../../../../mathematics/Topology/GeneralTopology/CompactlyGeneratedSpace/Variant93c9ca7c26fdcb2f0d09f60c7713c78710d2b388e3ece81141bb8dc1b46f3e44.lean/declarations/ucompactlygeneratedspace-of-isopen--9f5fb96d5967f82dc38e4225.md) | 147 | `result-track:9f5fb96d5967f82dc38e4225aa98b8be6d02e4f0acaea76facc83b61f69161be` |
| 10 | `theorem` | [UCompactlyGeneratedSpace.isClosed](../../../../../mathematics/Topology/GeneralTopology/CompactlyGeneratedSpace/Variant93c9ca7c26fdcb2f0d09f60c7713c78710d2b388e3ece81141bb8dc1b46f3e44.lean/declarations/ucompactlygeneratedspace-isclosed--bc0b4a4a2ae794cb9d0eda4f.md) | 155 | `result-track:bc0b4a4a2ae794cb9d0eda4f27ce82831bb2d630a7f38ad1a88a2ba2ccadb614` |
| 11 | `theorem` | [UCompactlyGeneratedSpace.isOpen](../../../../../mathematics/Topology/GeneralTopology/CompactlyGeneratedSpace/Variant93c9ca7c26fdcb2f0d09f60c7713c78710d2b388e3ece81141bb8dc1b46f3e44.lean/declarations/ucompactlygeneratedspace-isopen--916304daeeebb78a0751f818.md) | 163 | `result-track:916304daeeebb78a0751f8189d775f90e70b811b4f59dc0c30b0aff2ad022a1f` |
| 12 | `theorem` | [uCompactlyGeneratedSpace_of_coinduced](../../../../../mathematics/Topology/GeneralTopology/CompactlyGeneratedSpace/Variant93c9ca7c26fdcb2f0d09f60c7713c78710d2b388e3ece81141bb8dc1b46f3e44.lean/declarations/ucompactlygeneratedspace-of-coinduced--55e1af38d70e0b16f91d2eaa.md) | 171 | `result-track:55e1af38d70e0b16f91d2eaab4e5fd9612360ce16ba2e37e73db379680396db7` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/CompactlyGeneratedSpace/Variant93c9ca7c26fdcb2f0d09f60c7713c78710d2b388e3ece81141bb8dc1b46f3e44.lean/declarations/instance--7d7a043ad9a99fbc13d1985b.md) | 179 | `declaration-track:7d7a043ad9a99fbc13d1985b479e0f51bebf50a09b2369e02d58200434b19f73` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/CompactlyGeneratedSpace/Variant93c9ca7c26fdcb2f0d09f60c7713c78710d2b388e3ece81141bb8dc1b46f3e44.lean/declarations/instance--29a6a61ea87ceb44231941e0.md) | 184 | `declaration-track:29a6a61ea87ceb44231941e0c88692dfa84fcad2e54fc21d887001f75fe472e3` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/CompactlyGeneratedSpace/Variant93c9ca7c26fdcb2f0d09f60c7713c78710d2b388e3ece81141bb8dc1b46f3e44.lean/declarations/instance--2609ad511827d1b4c5afae65.md) | 197 | `declaration-track:2609ad511827d1b4c5afae655489e190b0dd436efcc2c4156b7f83ae3029c863` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/CompactlyGeneratedSpace/Variant93c9ca7c26fdcb2f0d09f60c7713c78710d2b388e3ece81141bb8dc1b46f3e44.lean/declarations/instance--a245430156b82febc5109014.md) | 208 | `declaration-track:a245430156b82febc51090148ad6e007548608d9d776d63ee8b19537c375def7` |
| 17 | `abbrev` | [CompactlyGeneratedSpace](../../../../../mathematics/Topology/GeneralTopology/CompactlyGeneratedSpace/Variant93c9ca7c26fdcb2f0d09f60c7713c78710d2b388e3ece81141bb8dc1b46f3e44.lean/declarations/compactlygeneratedspace--7540520e6f03819c1cca5d17.md) | 237 | `declaration-track:7540520e6f03819c1cca5d17062676981b702a8408da8699c3f1ab014fb3d7f0` |
| 18 | `lemma` | [continuous_from_compactlyGeneratedSpace](../../../../../mathematics/Topology/GeneralTopology/CompactlyGeneratedSpace/Variant93c9ca7c26fdcb2f0d09f60c7713c78710d2b388e3ece81141bb8dc1b46f3e44.lean/declarations/continuous-from-compactlygeneratedspace--a1e00095b25cf122a7e9299c.md) | 243 | `result-track:a1e00095b25cf122a7e9299c14626800a90e1e7873c3d139fb4c77592b8edabb` |
| 19 | `lemma` | [compactlyGeneratedSpace_of_continuous_maps](../../../../../mathematics/Topology/GeneralTopology/CompactlyGeneratedSpace/Variant93c9ca7c26fdcb2f0d09f60c7713c78710d2b388e3ece81141bb8dc1b46f3e44.lean/declarations/compactlygeneratedspace-of-continuous-maps--e7df485ec16aab42346ad2b2.md) | 251 | `result-track:e7df485ec16aab42346ad2b2dbaecb79655f54e764425df7fa37508486dc71e0` |
| 20 | `theorem` | [compactlyGeneratedSpace_of_isClosed](../../../../../mathematics/Topology/GeneralTopology/CompactlyGeneratedSpace/Variant93c9ca7c26fdcb2f0d09f60c7713c78710d2b388e3ece81141bb8dc1b46f3e44.lean/declarations/compactlygeneratedspace-of-isclosed--9255d5eedd973eddb02d27a8.md) | 261 | `result-track:9255d5eedd973eddb02d27a8455a421a4d2146a878d3561576f0d3b238af94f5` |
| 21 | `theorem` | [CompactlyGeneratedSpace.isClosed'](../../../../../mathematics/Topology/GeneralTopology/CompactlyGeneratedSpace/Variant93c9ca7c26fdcb2f0d09f60c7713c78710d2b388e3ece81141bb8dc1b46f3e44.lean/declarations/compactlygeneratedspace-isclosed--49e1cc5118ecc0649aa92345.md) | 269 | `result-track:49e1cc5118ecc0649aa9234565bad7e1c979b2f0ebc55f0765020700c0b5b925` |
| 22 | `theorem` | [CompactlyGeneratedSpace.isClosed](../../../../../mathematics/Topology/GeneralTopology/CompactlyGeneratedSpace/Variant93c9ca7c26fdcb2f0d09f60c7713c78710d2b388e3ece81141bb8dc1b46f3e44.lean/declarations/compactlygeneratedspace-isclosed--2faa0ac21b88ad07c4493094.md) | 276 | `result-track:2faa0ac21b88ad07c44930947310da43ada9478f89ed5eaa1aebb85b4084038c` |
| 23 | `theorem` | [compactlyGeneratedSpace_of_isOpen](../../../../../mathematics/Topology/GeneralTopology/CompactlyGeneratedSpace/Variant93c9ca7c26fdcb2f0d09f60c7713c78710d2b388e3ece81141bb8dc1b46f3e44.lean/declarations/compactlygeneratedspace-of-isopen--312f1768c7cad8531c03ed99.md) | 284 | `result-track:312f1768c7cad8531c03ed99234ecc13e3ddbab8fdb949d53098eee908e5a6bc` |
| 24 | `theorem` | [CompactlyGeneratedSpace.isOpen'](../../../../../mathematics/Topology/GeneralTopology/CompactlyGeneratedSpace/Variant93c9ca7c26fdcb2f0d09f60c7713c78710d2b388e3ece81141bb8dc1b46f3e44.lean/declarations/compactlygeneratedspace-isopen--21f8f04984704ff617f65da3.md) | 292 | `result-track:21f8f04984704ff617f65da348398cc6dc0e03366255d971eb92c69aa7b8d0a9` |
| 25 | `theorem` | [CompactlyGeneratedSpace.isOpen](../../../../../mathematics/Topology/GeneralTopology/CompactlyGeneratedSpace/Variant93c9ca7c26fdcb2f0d09f60c7713c78710d2b388e3ece81141bb8dc1b46f3e44.lean/declarations/compactlygeneratedspace-isopen--77cac8fb70717e2775d4d9a3.md) | 299 | `result-track:77cac8fb70717e2775d4d9a37af213bd66d73d9631e9f74341c51b3e787ed33c` |
| 26 | `theorem` | [compactlyGeneratedSpace_of_coinduced](../../../../../mathematics/Topology/GeneralTopology/CompactlyGeneratedSpace/Variant93c9ca7c26fdcb2f0d09f60c7713c78710d2b388e3ece81141bb8dc1b46f3e44.lean/declarations/compactlygeneratedspace-of-coinduced--b80eb5c595e8f731d31afa02.md) | 307 | `result-track:b80eb5c595e8f731d31afa02d29648a1858bf54d0de2f0a2c425c9c708a4bb10` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/CompactlyGeneratedSpace/Variant93c9ca7c26fdcb2f0d09f60c7713c78710d2b388e3ece81141bb8dc1b46f3e44.lean/declarations/instance--6d627788a9aeed457d358568.md) | 313 | `declaration-track:6d627788a9aeed457d358568e631356bfc0a40e9085f12fa5365eeae6c019b78` |
| 28 | `theorem` | [CompactlyGeneratedSpace.isClosed_iff_of_t2](../../../../../mathematics/Topology/GeneralTopology/CompactlyGeneratedSpace/Variant93c9ca7c26fdcb2f0d09f60c7713c78710d2b388e3ece81141bb8dc1b46f3e44.lean/declarations/compactlygeneratedspace-isclosed-iff-of-t2--1c014d18ba3f8877c970fe2b.md) | 324 | `result-track:1c014d18ba3f8877c970fe2b93cca964e90e34aa5e97d78a13c114bf1ebcd9c9` |
| 29 | `theorem` | [compactlyGeneratedSpace_of_isClosed_of_t2](../../../../../mathematics/Topology/GeneralTopology/CompactlyGeneratedSpace/Variant93c9ca7c26fdcb2f0d09f60c7713c78710d2b388e3ece81141bb8dc1b46f3e44.lean/declarations/compactlygeneratedspace-of-isclosed-of-t2--3d8ee1d15c26dca5a7b33740.md) | 332 | `result-track:3d8ee1d15c26dca5a7b33740237751a5943b4d591a960ec291b04c12e11746f6` |
| 30 | `theorem` | [compactlyGeneratedSpace_of_isOpen_of_t2](../../../../../mathematics/Topology/GeneralTopology/CompactlyGeneratedSpace/Variant93c9ca7c26fdcb2f0d09f60c7713c78710d2b388e3ece81141bb8dc1b46f3e44.lean/declarations/compactlygeneratedspace-of-isopen-of-t2--edb2148bda22ac1e2dd47d5e.md) | 345 | `result-track:edb2148bda22ac1e2dd47d5eabe0e5e236cb19d8073bcdfa1818ec64f696f955` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/CompactlyGeneratedSpace/Variant93c9ca7c26fdcb2f0d09f60c7713c78710d2b388e3ece81141bb8dc1b46f3e44.lean/declarations/instance--f9ec6c88d5a96da8c7b67f03.md) | 353 | `declaration-track:f9ec6c88d5a96da8c7b67f03bb993d6903317b4a0c1be4a10b702175e5563cf3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
