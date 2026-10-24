# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Set.Variant356b261ea8dc730a830177e3c44bb55547d33715890d3f7970e81def17930ad8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "de16c8aa9a11b3e36001188d1aa774ffd3799159",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variant356b261ea8dc730a830177e3c44bb55547d33715890d3f7970e81def17930ad8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variant356b261ea8dc730a830177e3c44bb55547d33715890d3f7970e81def17930ad8.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variant356b261ea8dc730a830177e3c44bb55547d33715890d3f7970e81def17930ad8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `de16c8aa9a11b3e36001188d1aa774ffd3799159`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variant356b261ea8dc730a830177e3c44bb55547d33715890d3f7970e81def17930ad8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variant356b261ea8dc730a830177e3c44bb55547d33715890d3f7970e81def17930ad8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Hom.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Set` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Image` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [range_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variant356b261ea8dc730a830177e3c44bb55547d33715890d3f7970e81def17930ad8.lean/declarations/range-eq--840c6e896b46f6f49318fc2f.md) | 27 | `result-track:840c6e896b46f6f49318fc2fa3431c7c7bc5b4548d2efe5718f5172b93300550` |
| 2 | `theorem` | [symm_image_image](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variant356b261ea8dc730a830177e3c44bb55547d33715890d3f7970e81def17930ad8.lean/declarations/symm-image-image--7fe7b31508f00e5730ccb395.md) | 32 | `result-track:7fe7b31508f00e5730ccb395bc03f3d990ea59acb732b351337910d3949e445f` |
| 3 | `theorem` | [image_symm_image](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variant356b261ea8dc730a830177e3c44bb55547d33715890d3f7970e81def17930ad8.lean/declarations/image-symm-image--85eae0ab5b8b1e358a254484.md) | 37 | `result-track:85eae0ab5b8b1e358a25448409a62c024134c709649c28203c41a632fe362391` |
| 4 | `theorem` | [image_eq_preimage](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variant356b261ea8dc730a830177e3c44bb55547d33715890d3f7970e81def17930ad8.lean/declarations/image-eq-preimage--4caa5e217d4774c30b8e7aab.md) | 41 | `result-track:4caa5e217d4774c30b8e7aab00680eef7eb8b426e7742503e63097091be43139` |
| 5 | `theorem` | [preimage_symm_preimage](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variant356b261ea8dc730a830177e3c44bb55547d33715890d3f7970e81def17930ad8.lean/declarations/preimage-symm-preimage--9ea919b0636ad5ad631c4754.md) | 46 | `result-track:9ea919b0636ad5ad631c475462b4b99f40a7522a81d317eb362aead4c71d03ce` |
| 6 | `theorem` | [symm_preimage_preimage](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variant356b261ea8dc730a830177e3c44bb55547d33715890d3f7970e81def17930ad8.lean/declarations/symm-preimage-preimage--704bc5cec30a5580db190ca1.md) | 51 | `result-track:704bc5cec30a5580db190ca186f46858291716c532aed6052a47414e0c8ab75a` |
| 7 | `theorem` | [image_preimage](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variant356b261ea8dc730a830177e3c44bb55547d33715890d3f7970e81def17930ad8.lean/declarations/image-preimage--bb750ea1ac16d126d5d70a13.md) | 56 | `result-track:bb750ea1ac16d126d5d70a1340018818b22cc89daaaa19723b59b7ee6465ce99` |
| 8 | `theorem` | [preimage_image](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variant356b261ea8dc730a830177e3c44bb55547d33715890d3f7970e81def17930ad8.lean/declarations/preimage-image--f2150fdf4782efdf3b3564f5.md) | 61 | `result-track:f2150fdf4782efdf3b3564f5180f5f89528bbe5269840c5b420ace96ee95cf4f` |
| 9 | `def` | [setCongr](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variant356b261ea8dc730a830177e3c44bb55547d33715890d3f7970e81def17930ad8.lean/declarations/setcongr--2e31b371ddbdac7355298fb7.md) | 72 | `declaration-track:2e31b371ddbdac7355298fb7771f125db80662e046ce1a8518bcd11abe71c8b8` |
| 10 | `def` | [Set.univ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variant356b261ea8dc730a830177e3c44bb55547d33715890d3f7970e81def17930ad8.lean/declarations/set-univ--daa09bff946087e0cd25081d.md) | 79 | `declaration-track:daa09bff946087e0cd25081dc423415a880bcc0bae246754ab62f5dd05e6c726` |
| 11 | `def` | [StrictMonoOn.orderIso](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variant356b261ea8dc730a830177e3c44bb55547d33715890d3f7970e81def17930ad8.lean/declarations/strictmonoon-orderiso--a96d2b54e96c30503d33a54c.md) | 89 | `declaration-track:a96d2b54e96c30503d33a54c5b75952156be9169f6c0ce7be2f48b43d3b10c54` |
| 12 | `def` | [orderIso](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variant356b261ea8dc730a830177e3c44bb55547d33715890d3f7970e81def17930ad8.lean/declarations/orderiso--31e33adf6f84eaa38667d489.md) | 105 | `declaration-track:31e33adf6f84eaa38667d489064de291a908b10cd6b3bb9635329d617415bf8f` |
| 13 | `def` | [orderIsoOfSurjective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variant356b261ea8dc730a830177e3c44bb55547d33715890d3f7970e81def17930ad8.lean/declarations/orderisoofsurjective--a2cf5ae040f6ee5bd9d6b744.md) | 113 | `declaration-track:a2cf5ae040f6ee5bd9d6b7440db8ab610d470f5255b5d1d00edd6913486e975a` |
| 14 | `theorem` | [coe_orderIsoOfSurjective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variant356b261ea8dc730a830177e3c44bb55547d33715890d3f7970e81def17930ad8.lean/declarations/coe-orderisoofsurjective--b5caf89307849cf4c00d65c8.md) | 119 | `result-track:b5caf89307849cf4c00d65c849dbf157ed2fa36d10c6cc84914096b3bf2d44c3` |
| 15 | `theorem` | [orderIsoOfSurjective_symm_apply_self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variant356b261ea8dc730a830177e3c44bb55547d33715890d3f7970e81def17930ad8.lean/declarations/orderisoofsurjective-symm-apply-self--42a5f9096275e19a8435d76c.md) | 124 | `result-track:42a5f9096275e19a8435d76ce89e5c59cc53bed09d6d63816f927230623c3527` |
| 16 | `theorem` | [orderIsoOfSurjective_self_symm_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variant356b261ea8dc730a830177e3c44bb55547d33715890d3f7970e81def17930ad8.lean/declarations/orderisoofsurjective-self-symm-apply--7a0732e09998f182933602e2.md) | 129 | `result-track:7a0732e09998f182933602e26cab292d9cc42cb9fc38e15a69a32e2d66807659` |
| 17 | `def` | [OrderIso.compl](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variant356b261ea8dc730a830177e3c44bb55547d33715890d3f7970e81def17930ad8.lean/declarations/orderiso-compl--6724dafd0680877923954707.md) | 142 | `declaration-track:6724dafd0680877923954707a3c4a2be6ed5d507ab7207beabc1922038e5b1eb` |
| 18 | `theorem` | [compl_strictAnti](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variant356b261ea8dc730a830177e3c44bb55547d33715890d3f7970e81def17930ad8.lean/declarations/compl-strictanti--003e82b90a5caeff97a69484.md) | 152 | `result-track:003e82b90a5caeff97a6948424517c00cae4398d76128249516d002f5f28879a` |
| 19 | `theorem` | [compl_antitone](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variant356b261ea8dc730a830177e3c44bb55547d33715890d3f7970e81def17930ad8.lean/declarations/compl-antitone--061c4db372ab0fb4a404329a.md) | 156 | `result-track:061c4db372ab0fb4a404329a7eea2be80427c66b5178b785fba4ee33c5aeb79f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
