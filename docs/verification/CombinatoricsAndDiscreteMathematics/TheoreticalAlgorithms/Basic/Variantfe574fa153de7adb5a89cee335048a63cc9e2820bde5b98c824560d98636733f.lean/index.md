# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Basic.Variantfe574fa153de7adb5a89cee335048a63cc9e2820bde5b98c824560d98636733f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4f875d2fad87f3270006f965b18bdd6503def1eb",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantfe574fa153de7adb5a89cee335048a63cc9e2820bde5b98c824560d98636733f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantfe574fa153de7adb5a89cee335048a63cc9e2820bde5b98c824560d98636733f.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantfe574fa153de7adb5a89cee335048a63cc9e2820bde5b98c824560d98636733f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4f875d2fad87f3270006f965b18bdd6503def1eb`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantfe574fa153de7adb5a89cee335048a63cc9e2820bde5b98c824560d98636733f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantfe574fa153de7adb5a89cee335048a63cc9e2820bde5b98c824560d98636733f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Batteries.Data.List.Perm` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Relation` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.RelClasses` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Forall2` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.InsertIdx` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [perm_rfl](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantfe574fa153de7adb5a89cee335048a63cc9e2820bde5b98c824560d98636733f.lean/declarations/perm-rfl--d76e8d81b70f9ecffc5fa41f.md) | 40 | `result-track:d76e8d81b70f9ecffc5fa41f1025127b508cf76fc540753efdb38146ec93fa05` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantfe574fa153de7adb5a89cee335048a63cc9e2820bde5b98c824560d98636733f.lean/declarations/instance--ea2f7fd97935c7f4065e84ac.md) | 45 | `declaration-track:ea2f7fd97935c7f4065e84aca7f2ffd7c1389f2844f208aab095022c22dd373a` |
| 3 | `theorem` | [Perm.subset_congr_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantfe574fa153de7adb5a89cee335048a63cc9e2820bde5b98c824560d98636733f.lean/declarations/perm-subset-congr-left--09951684e2e00e55b26365fe.md) | 47 | `result-track:09951684e2e00e55b26365fe2ebe4f8c2e25c3a6d4a6543dae3e5b84a6333b87` |
| 4 | `theorem` | [Perm.subset_congr_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantfe574fa153de7adb5a89cee335048a63cc9e2820bde5b98c824560d98636733f.lean/declarations/perm-subset-congr-right--ebb9da1633442da7946e21b4.md) | 50 | `result-track:ebb9da1633442da7946e21b46e81549a404d51353f783080ffd6a4db6e0ed76b` |
| 5 | `theorem` | [set_perm_cons_eraseIdx](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantfe574fa153de7adb5a89cee335048a63cc9e2820bde5b98c824560d98636733f.lean/declarations/set-perm-cons-eraseidx--f789ea6112aae2abf15447b9.md) | 53 | `result-track:f789ea6112aae2abf15447b916d106c43aa55ec365c461062b7b7dfea191e68e` |
| 6 | `theorem` | [getElem_cons_eraseIdx_perm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantfe574fa153de7adb5a89cee335048a63cc9e2820bde5b98c824560d98636733f.lean/declarations/getelem-cons-eraseidx-perm--613aad47850e12ca2c7ccd59.md) | 60 | `result-track:613aad47850e12ca2c7ccd59b160f03be7586dc4a6469d570b62a22fb0e7b4f0` |
| 7 | `theorem` | [perm_insertIdx_iff_of_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantfe574fa153de7adb5a89cee335048a63cc9e2820bde5b98c824560d98636733f.lean/declarations/perm-insertidx-iff-of-le--6fc2c8b3375bd28f7d8cf5d4.md) | 64 | `result-track:6fc2c8b3375bd28f7d8cf5d48904e562f75214542605c2ba125e99832a01c190` |
| 8 | `theorem` | [perm_insertIdx_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantfe574fa153de7adb5a89cee335048a63cc9e2820bde5b98c824560d98636733f.lean/declarations/perm-insertidx-iff--b3484c2848c54440909a8c08.md) | 71 | `result-track:b3484c2848c54440909a8c0810979902161c4a483f56c49efac0a3618be6a49b` |
| 9 | `theorem` | [Perm.insertIdx](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantfe574fa153de7adb5a89cee335048a63cc9e2820bde5b98c824560d98636733f.lean/declarations/perm-insertidx--32fd048b588ee3a5391fd690.md) | 90 | `result-track:32fd048b588ee3a5391fd69012a0bf8b03693dd18a247a8a543b0e384d126b74` |
| 10 | `theorem` | [perm_eraseIdx_of_getElem?_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantfe574fa153de7adb5a89cee335048a63cc9e2820bde5b98c824560d98636733f.lean/declarations/perm-eraseidx-of-getelem-eq--f26ff9fbf610e7aa32c0a62e.md) | 94 | `result-track:f26ff9fbf610e7aa32c0a62e19e65d7e8a384a23a4d661ada03d4514762a36cc` |
| 11 | `theorem` | [perm_comp_perm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantfe574fa153de7adb5a89cee335048a63cc9e2820bde5b98c824560d98636733f.lean/declarations/perm-comp-perm--3203696ec2c8655091d3b7a7.md) | 117 | `result-track:3203696ec2c8655091d3b7a72ef49ec9cf24e5b3c485a6ad4075eff391e7e9c2` |
| 12 | `theorem` | [perm_comp_forall₂](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantfe574fa153de7adb5a89cee335048a63cc9e2820bde5b98c824560d98636733f.lean/declarations/perm-comp-forall--384f60a5aff0d29629161973.md) | 123 | `result-track:384f60a5aff0d296291619734d1b6a3c6c6538a026a779c885782419c3ad031c` |
| 13 | `theorem` | [forall₂_comp_perm_eq_perm_comp_forall₂](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantfe574fa153de7adb5a89cee335048a63cc9e2820bde5b98c824560d98636733f.lean/declarations/forall-comp-perm-eq-perm-comp-forall--5f6fdcf499f96c7e993a44fe.md) | 140 | `result-track:5f6fdcf499f96c7e993a44fef4d42b60c51b332a08c4ab12a6d8354ededd04f0` |
| 14 | `theorem` | [eq_map_comp_perm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantfe574fa153de7adb5a89cee335048a63cc9e2820bde5b98c824560d98636733f.lean/declarations/eq-map-comp-perm--c9b5ee3f4dbee9d1141cb9f0.md) | 150 | `result-track:c9b5ee3f4dbee9d1141cb9f0c3872c11cc759d91582080aeac51947b535558c9` |
| 15 | `theorem` | [rel_perm_imp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantfe574fa153de7adb5a89cee335048a63cc9e2820bde5b98c824560d98636733f.lean/declarations/rel-perm-imp--e69445daab8ea9d40bf97958.md) | 154 | `result-track:e69445daab8ea9d40bf9795849f065dc912a1a4843e5857b16044c5c09531aeb` |
| 16 | `theorem` | [rel_perm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantfe574fa153de7adb5a89cee335048a63cc9e2820bde5b98c824560d98636733f.lean/declarations/rel-perm--e161c6449a446fcdc0000618.md) | 163 | `result-track:e161c6449a446fcdc000061833cd147f7ba1eec40d1b2936d9d7b58f48316b5f` |
| 17 | `lemma` | [count_eq_count_filter_add](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantfe574fa153de7adb5a89cee335048a63cc9e2820bde5b98c824560d98636733f.lean/declarations/count-eq-count-filter-add--82d1756b5178496ed9b1a23a.md) | 169 | `result-track:82d1756b5178496ed9b1a23a6f6008e6faececff0fbc7e785f0d9cad12548063` |
| 18 | `theorem` | [Perm.foldl_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantfe574fa153de7adb5a89cee335048a63cc9e2820bde5b98c824560d98636733f.lean/declarations/perm-foldl-eq--8ea1cfbcc63a8c31cf0cb84c.md) | 175 | `result-track:8ea1cfbcc63a8c31cf0cb84c9a97359d41423961cb9ceb5f0529d275534442c0` |
| 19 | `theorem` | [Perm.foldr_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantfe574fa153de7adb5a89cee335048a63cc9e2820bde5b98c824560d98636733f.lean/declarations/perm-foldr-eq--9eac59bce1e3ea8514298427.md) | 179 | `result-track:9eac59bce1e3ea851429842769a0bf7f9595c0c60535050961b1dc2d745ae34a` |
| 20 | `theorem` | [Perm.foldl_op_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantfe574fa153de7adb5a89cee335048a63cc9e2820bde5b98c824560d98636733f.lean/declarations/perm-foldl-op-eq--b21d0fb174d8ae1444d6e0dc.md) | 196 | `result-track:b21d0fb174d8ae1444d6e0dc67e6c6d14b20705a83c5f795b37458c525a7752b` |
| 21 | `theorem` | [Perm.foldr_op_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantfe574fa153de7adb5a89cee335048a63cc9e2820bde5b98c824560d98636733f.lean/declarations/perm-foldr-op-eq--e544d2360d7a3d0a02fe4504.md) | 199 | `result-track:e544d2360d7a3d0a02fe450428f1b15170850bc5e564e59b67c64fc101e82123` |
| 22 | `theorem` | [perm_option_toList](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantfe574fa153de7adb5a89cee335048a63cc9e2820bde5b98c824560d98636733f.lean/declarations/perm-option-tolist--1eaf5a809b9c30baa10db709.md) | 204 | `result-track:1eaf5a809b9c30baa10db7090cde6c3243b1b8aa7c4cbb77027379bbdecdf663` |
| 23 | `theorem` | [perm_replicate_append_replicate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantfe574fa153de7adb5a89cee335048a63cc9e2820bde5b98c824560d98636733f.lean/declarations/perm-replicate-append-replicate--59705f79984281df5ec1a43d.md) | 211 | `result-track:59705f79984281df5ec1a43d249c7d61897575cc9ecb9b6389aab808f41aee57` |
| 24 | `theorem` | [map_perm_map_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantfe574fa153de7adb5a89cee335048a63cc9e2820bde5b98c824560d98636733f.lean/declarations/map-perm-map-iff--7bc1fffaa3e9197d94ecbe2d.md) | 221 | `result-track:7bc1fffaa3e9197d94ecbe2d556e5d860810763dd12c236c7421fd974fb9a547` |
| 25 | `theorem` | [Perm.flatMap_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantfe574fa153de7adb5a89cee335048a63cc9e2820bde5b98c824560d98636733f.lean/declarations/perm-flatmap-left--a4d9e04508ffc295a73654fc.md) | 227 | `result-track:a4d9e04508ffc295a73654fc677e151b94a391e129dbb279a912ed2b4c4bab90` |
| 26 | `theorem` | [Perm.flatMap](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantfe574fa153de7adb5a89cee335048a63cc9e2820bde5b98c824560d98636733f.lean/declarations/perm-flatmap--1bf6bf0f2896c0e6251d390e.md) | 235 | `result-track:1bf6bf0f2896c0e6251d390e7a64b47d372ad0db2598e5814b5ce9ff7bdeab11` |
| 27 | `theorem` | [flatMap_append_perm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantfe574fa153de7adb5a89cee335048a63cc9e2820bde5b98c824560d98636733f.lean/declarations/flatmap-append-perm--526101d692611d39567333ec.md) | 239 | `result-track:526101d692611d39567333ec5e5cdf78b9b47d6d828af0cfa452444f9f3188ec` |
| 28 | `theorem` | [map_append_flatMap_perm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantfe574fa153de7adb5a89cee335048a63cc9e2820bde5b98c824560d98636733f.lean/declarations/map-append-flatmap-perm--b10a8c6a55fc1d8fa3b2d483.md) | 247 | `result-track:b10a8c6a55fc1d8fa3b2d483c21df17c8a60618f8fd0848436a8f2636287ce6f` |
| 29 | `theorem` | [Perm.product_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantfe574fa153de7adb5a89cee335048a63cc9e2820bde5b98c824560d98636733f.lean/declarations/perm-product-right--7cda816572531784f8e63100.md) | 252 | `result-track:7cda816572531784f8e63100486819a24b78c7c2091fff5e522c363a96756342` |
| 30 | `theorem` | [Perm.product_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantfe574fa153de7adb5a89cee335048a63cc9e2820bde5b98c824560d98636733f.lean/declarations/perm-product-left--229524554670acf81cd33a3d.md) | 257 | `result-track:229524554670acf81cd33a3dd97bb61cac34e9e224fc9ef30b188e177a6086f2` |
| 31 | `theorem` | [Perm.product](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantfe574fa153de7adb5a89cee335048a63cc9e2820bde5b98c824560d98636733f.lean/declarations/perm-product--89fce680d41ae4757583535c.md) | 262 | `result-track:89fce680d41ae4757583535cbfda0a65bcc9ee39f0600112c303002900179ea5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
