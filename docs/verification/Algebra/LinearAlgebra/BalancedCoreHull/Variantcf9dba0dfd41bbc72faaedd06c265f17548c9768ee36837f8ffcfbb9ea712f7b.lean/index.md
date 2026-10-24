# Verification target: GRWTSK.Algebra.LinearAlgebra.BalancedCoreHull.Variantcf9dba0dfd41bbc72faaedd06c265f17548c9768ee36837f8ffcfbb9ea712f7b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "aa64d94f19a2b26b6f4b0abade9639d9500e50ef",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/BalancedCoreHull/Variantcf9dba0dfd41bbc72faaedd06c265f17548c9768ee36837f8ffcfbb9ea712f7b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variantcf9dba0dfd41bbc72faaedd06c265f17548c9768ee36837f8ffcfbb9ea712f7b.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variantcf9dba0dfd41bbc72faaedd06c265f17548c9768ee36837f8ffcfbb9ea712f7b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `aa64d94f19a2b26b6f4b0abade9639d9500e50ef`.

Source path: `GRWTSK/Algebra/LinearAlgebra/BalancedCoreHull/Variantcf9dba0dfd41bbc72faaedd06c265f17548c9768ee36837f8ffcfbb9ea712f7b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/BalancedCoreHull/Variantcf9dba0dfd41bbc72faaedd06c265f17548c9768ee36837f8ffcfbb9ea712f7b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.LocallyConvex.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [balancedCore](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variantcf9dba0dfd41bbc72faaedd06c265f17548c9768ee36837f8ffcfbb9ea712f7b.lean/declarations/balancedcore--588bc7ab948b9570ad395ef3.md) | 63 | `declaration-track:588bc7ab948b9570ad395ef301920117fda1f9a0c16f2ad8d75adf61ffb243e2` |
| 2 | `def` | [balancedCoreAux](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variantcf9dba0dfd41bbc72faaedd06c265f17548c9768ee36837f8ffcfbb9ea712f7b.lean/declarations/balancedcoreaux--513970c0a530e2b1f7ebc370.md) | 67 | `declaration-track:513970c0a530e2b1f7ebc370c7fda22ce3516e95cd9a6ca8c5d8b9a54e1f32a6` |
| 3 | `def` | [balancedHull](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variantcf9dba0dfd41bbc72faaedd06c265f17548c9768ee36837f8ffcfbb9ea712f7b.lean/declarations/balancedhull--cb06c86043d73468726799ac.md) | 71 | `declaration-track:cb06c86043d73468726799ac350cdcdb7a8623332f5376e59c236a3c874ac188` |
| 4 | `theorem` | [balancedCore_subset](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variantcf9dba0dfd41bbc72faaedd06c265f17548c9768ee36837f8ffcfbb9ea712f7b.lean/declarations/balancedcore-subset--0206e384a5014f0fcacba4d2.md) | 76 | `result-track:0206e384a5014f0fcacba4d2c4a22ebf06ce161d3ff1fb4bd4361f823d5a1666` |
| 5 | `theorem` | [balancedCore_empty](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variantcf9dba0dfd41bbc72faaedd06c265f17548c9768ee36837f8ffcfbb9ea712f7b.lean/declarations/balancedcore-empty--7754428b86f29d62dde9f244.md) | 79 | `result-track:7754428b86f29d62dde9f24412d8c7b9d3ae87bbd17cefe509ee25fcc68eaa44` |
| 6 | `theorem` | [mem_balancedCore_iff](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variantcf9dba0dfd41bbc72faaedd06c265f17548c9768ee36837f8ffcfbb9ea712f7b.lean/declarations/mem-balancedcore-iff--74a6e98068458bc9da4571c7.md) | 82 | `result-track:74a6e98068458bc9da4571c720178cf21d18dffc7d31b1b2114cacd8252a84c6` |
| 7 | `theorem` | [smul_balancedCore_subset](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variantcf9dba0dfd41bbc72faaedd06c265f17548c9768ee36837f8ffcfbb9ea712f7b.lean/declarations/smul-balancedcore-subset--23f905d9a24b7aaa551f75e4.md) | 85 | `result-track:23f905d9a24b7aaa551f75e49e04865e9332bc9c3707d8171059366527435749` |
| 8 | `theorem` | [balancedCore_balanced](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variantcf9dba0dfd41bbc72faaedd06c265f17548c9768ee36837f8ffcfbb9ea712f7b.lean/declarations/balancedcore-balanced--24f6b9c95e6889e947f144c0.md) | 92 | `result-track:24f6b9c95e6889e947f144c08ecdee23178bb246ee928a12dbe1166e5c943b20` |
| 9 | `theorem` | [Balanced.subset_balancedCore_of_subset](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variantcf9dba0dfd41bbc72faaedd06c265f17548c9768ee36837f8ffcfbb9ea712f7b.lean/declarations/balanced-subset-balancedcore-of-subset--b062786959d2a5cca1126946.md) | 97 | `result-track:b062786959d2a5cca1126946e854707001c61b9565e3465c3f06ed9683652150` |
| 10 | `lemma` | [Balanced.balancedCore_eq](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variantcf9dba0dfd41bbc72faaedd06c265f17548c9768ee36837f8ffcfbb9ea712f7b.lean/declarations/balanced-balancedcore-eq--4547b15fb1b4706fb19055b8.md) | 101 | `result-track:4547b15fb1b4706fb19055b8907b32923d083c60abee23f82feff7464a85f746` |
| 11 | `theorem` | [mem_balancedCoreAux_iff](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variantcf9dba0dfd41bbc72faaedd06c265f17548c9768ee36837f8ffcfbb9ea712f7b.lean/declarations/mem-balancedcoreaux-iff--cc9c526639af42d4a8c445b4.md) | 104 | `result-track:cc9c526639af42d4a8c445b4761838c769d73213e3b045e4cd93aa6b2834d710` |
| 12 | `theorem` | [mem_balancedHull_iff](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variantcf9dba0dfd41bbc72faaedd06c265f17548c9768ee36837f8ffcfbb9ea712f7b.lean/declarations/mem-balancedhull-iff--2dc471c8e29b918a583e8a51.md) | 107 | `result-track:2dc471c8e29b918a583e8a51c1c7286a4e26e8b31c5712853a80522ec0fa30e4` |
| 13 | `theorem` | [Balanced.balancedHull_subset_of_subset](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variantcf9dba0dfd41bbc72faaedd06c265f17548c9768ee36837f8ffcfbb9ea712f7b.lean/declarations/balanced-balancedhull-subset-of-subset--f0708e37c8ceba88d7d84fcf.md) | 112 | `result-track:f0708e37c8ceba88d7d84fcf180aec0e74a24658d026d9fd7af07e3940fd60d1` |
| 14 | `theorem` | [balancedHull_mono](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variantcf9dba0dfd41bbc72faaedd06c265f17548c9768ee36837f8ffcfbb9ea712f7b.lean/declarations/balancedhull-mono--edb1499a2a1a2eea129b8996.md) | 119 | `result-track:edb1499a2a1a2eea129b899638ed4aec33eecc276a59e93ac50e8fb499dfc762` |
| 15 | `theorem` | [balancedCore_zero_mem](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variantcf9dba0dfd41bbc72faaedd06c265f17548c9768ee36837f8ffcfbb9ea712f7b.lean/declarations/balancedcore-zero-mem--47f20a18f39908470016b047.md) | 132 | `result-track:47f20a18f39908470016b047716f3a2c8fec3a2f02653819b78d6bcf00c991fa` |
| 16 | `theorem` | [balancedCore_nonempty_iff](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variantcf9dba0dfd41bbc72faaedd06c265f17548c9768ee36837f8ffcfbb9ea712f7b.lean/declarations/balancedcore-nonempty-iff--19c0410390a4aa5e4ab77e68.md) | 135 | `result-track:19c0410390a4aa5e4ab77e68bcc7c82451802ff138b5ae27f963d15ef301811f` |
| 17 | `lemma` | [Balanced.zero_mem](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variantcf9dba0dfd41bbc72faaedd06c265f17548c9768ee36837f8ffcfbb9ea712f7b.lean/declarations/balanced-zero-mem--81db20f7c0304fd5e6f85f73.md) | 141 | `result-track:81db20f7c0304fd5e6f85f736db5bd58f2064b300527857bf4868430097d7260` |
| 18 | `theorem` | [subset_balancedHull](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variantcf9dba0dfd41bbc72faaedd06c265f17548c9768ee36837f8ffcfbb9ea712f7b.lean/declarations/subset-balancedhull--1ed0fd1851079504bb108678.md) | 146 | `result-track:1ed0fd1851079504bb1086783c38070700509b16b1059d2b1bc87e1ac337522c` |
| 19 | `theorem` | [balancedHull.balanced](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variantcf9dba0dfd41bbc72faaedd06c265f17548c9768ee36837f8ffcfbb9ea712f7b.lean/declarations/balancedhull-balanced--9a03ee1242fc03d7cf2bc215.md) | 149 | `result-track:9a03ee1242fc03d7cf2bc21509d5ceb32c135e7532c792e62093a8b55504c660` |
| 20 | `theorem` | [balancedHull_add_subset](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variantcf9dba0dfd41bbc72faaedd06c265f17548c9768ee36837f8ffcfbb9ea712f7b.lean/declarations/balancedhull-add-subset--52d77d84a6f93e11737ce89c.md) | 157 | `result-track:52d77d84a6f93e11737ce89c7a886d9cb60c1baafe2629630fec68a1bc8a8586` |
| 21 | `theorem` | [balancedCoreAux_empty](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variantcf9dba0dfd41bbc72faaedd06c265f17548c9768ee36837f8ffcfbb9ea712f7b.lean/declarations/balancedcoreaux-empty--4f5dd5df16ea5ca3434ecc0d.md) | 171 | `result-track:4f5dd5df16ea5ca3434ecc0d50185c643fd894c5069f2640ccee84d247c453e6` |
| 22 | `theorem` | [balancedCoreAux_subset](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variantcf9dba0dfd41bbc72faaedd06c265f17548c9768ee36837f8ffcfbb9ea712f7b.lean/declarations/balancedcoreaux-subset--54cf3b7f072eddfaf0268c80.md) | 175 | `result-track:54cf3b7f072eddfaf0268c809ffd97bc2c30b65a21581de5d44d25691a09518d` |
| 23 | `theorem` | [balancedCoreAux_balanced](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variantcf9dba0dfd41bbc72faaedd06c265f17548c9768ee36837f8ffcfbb9ea712f7b.lean/declarations/balancedcoreaux-balanced--de20d7aaa5cb5950e2c8cd11.md) | 178 | `result-track:de20d7aaa5cb5950e2c8cd11981d3b977433b12dbd4781050b253423d47975e1` |
| 24 | `theorem` | [balancedCoreAux_maximal](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variantcf9dba0dfd41bbc72faaedd06c265f17548c9768ee36837f8ffcfbb9ea712f7b.lean/declarations/balancedcoreaux-maximal--fefca7e801ece484eec4143a.md) | 191 | `result-track:fefca7e801ece484eec4143a5b4ddf3cbf0be12dfe617a5ae1c130d16206d0fb` |
| 25 | `theorem` | [balancedCore_subset_balancedCoreAux](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variantcf9dba0dfd41bbc72faaedd06c265f17548c9768ee36837f8ffcfbb9ea712f7b.lean/declarations/balancedcore-subset-balancedcoreaux--3bef057b7720f10b2b1ea6c1.md) | 198 | `result-track:3bef057b7720f10b2b1ea6c16de64f12d5e20d10867f60ceabc7b8623850f8f1` |
| 26 | `theorem` | [balancedCore_eq_iInter](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variantcf9dba0dfd41bbc72faaedd06c265f17548c9768ee36837f8ffcfbb9ea712f7b.lean/declarations/balancedcore-eq-iinter--3a9139e5af0be918b6d9d230.md) | 201 | `result-track:3a9139e5af0be918b6d9d230fe9a48b6a52beb2f4cbad31ac3314fbffa8d7c13` |
| 27 | `theorem` | [subset_balancedCore](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variantcf9dba0dfd41bbc72faaedd06c265f17548c9768ee36837f8ffcfbb9ea712f7b.lean/declarations/subset-balancedcore--f198e80767a0c9324fc1385e.md) | 207 | `result-track:f198e80767a0c9324fc1385e83737f38e056dbb6449b12a79bb233d95d82a003` |
| 28 | `theorem` | [IsClosed.balancedCore](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variantcf9dba0dfd41bbc72faaedd06c265f17548c9768ee36837f8ffcfbb9ea712f7b.lean/declarations/isclosed-balancedcore--ad6b96bada0b13efbb42d1e8.md) | 228 | `result-track:ad6b96bada0b13efbb42d1e84b311ae2a7a2b294955fe961b3fbaf80fe617230` |
| 29 | `theorem` | [balancedCore_mem_nhds_zero](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variantcf9dba0dfd41bbc72faaedd06c265f17548c9768ee36837f8ffcfbb9ea712f7b.lean/declarations/balancedcore-mem-nhds-zero--05561971af6a0784338d249f.md) | 245 | `result-track:05561971af6a0784338d249ff2c66bde5c7a8f4e195ef8803f9fdf4caffd30fb` |
| 30 | `theorem` | [nhds_basis_balanced](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variantcf9dba0dfd41bbc72faaedd06c265f17548c9768ee36837f8ffcfbb9ea712f7b.lean/declarations/nhds-basis-balanced--c6df3cb4f2de90dc0a2d7d8a.md) | 267 | `result-track:c6df3cb4f2de90dc0a2d7d8adbad33e90aad89218d295d17c57c83de5a62f2d6` |
| 31 | `theorem` | [nhds_basis_closed_balanced](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variantcf9dba0dfd41bbc72faaedd06c265f17548c9768ee36837f8ffcfbb9ea712f7b.lean/declarations/nhds-basis-closed-balanced--1a168cfd2da750391f392b8b.md) | 273 | `result-track:1a168cfd2da750391f392b8bbb6f8fa7e38ef5a3da12cb5d24303c973b10413b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
