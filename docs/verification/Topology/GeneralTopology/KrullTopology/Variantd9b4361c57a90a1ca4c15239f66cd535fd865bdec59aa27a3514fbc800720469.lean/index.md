# Verification target: GRWTSK.Topology.GeneralTopology.KrullTopology.Variantd9b4361c57a90a1ca4c15239f66cd535fd865bdec59aa27a3514fbc800720469

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3084adef4cbd971d3a3aed40abd228db8109bb54",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/KrullTopology/Variantd9b4361c57a90a1ca4c15239f66cd535fd865bdec59aa27a3514fbc800720469.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/KrullTopology/Variantd9b4361c57a90a1ca4c15239f66cd535fd865bdec59aa27a3514fbc800720469.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/KrullTopology/Variantd9b4361c57a90a1ca4c15239f66cd535fd865bdec59aa27a3514fbc800720469.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3084adef4cbd971d3a3aed40abd228db8109bb54`.

Source path: `GRWTSK/Topology/GeneralTopology/KrullTopology/Variantd9b4361c57a90a1ca4c15239f66cd535fd865bdec59aa27a3514fbc800720469.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/KrullTopology/Variantd9b4361c57a90a1ca4c15239f66cd535fd865bdec59aa27a3514fbc800720469.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.FieldTheory.Galois.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.FilterBasis` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.OpenSubgroup` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [finiteExts](../../../../../mathematics/Topology/GeneralTopology/KrullTopology/Variantd9b4361c57a90a1ca4c15239f66cd535fd865bdec59aa27a3514fbc800720469.lean/declarations/finiteexts--682b88e3864f15cc71c68399.md) | 70 | `declaration-track:682b88e3864f15cc71c683998a13c2d10cb616aa8e82474cc24d507b3112205f` |
| 2 | `def` | [fixedByFinite](../../../../../mathematics/Topology/GeneralTopology/KrullTopology/Variantd9b4361c57a90a1ca4c15239f66cd535fd865bdec59aa27a3514fbc800720469.lean/declarations/fixedbyfinite--e6eef5deac3cb714673fded1.md) | 76 | `declaration-track:e6eef5deac3cb714673fded1c1ff3eabf3f81dbbbf85cf6141e6219bc4232108` |
| 3 | `theorem` | [top_fixedByFinite](../../../../../mathematics/Topology/GeneralTopology/KrullTopology/Variantd9b4361c57a90a1ca4c15239f66cd535fd865bdec59aa27a3514fbc800720469.lean/declarations/top-fixedbyfinite--e364622e20862c0ce673cf23.md) | 86 | `result-track:e364622e20862c0ce673cf23cec6cd9ce6e1ce1a0b650a24ea00c640a57e205f` |
| 4 | `def` | [galBasis](../../../../../mathematics/Topology/GeneralTopology/KrullTopology/Variantd9b4361c57a90a1ca4c15239f66cd535fd865bdec59aa27a3514fbc800720469.lean/declarations/galbasis--6e00823c1f772f77acec4c50.md) | 95 | `declaration-track:6e00823c1f772f77acec4c50487d9e5554b6312cfd1bc3ac5c656373a1df2241` |
| 5 | `theorem` | [mem_galBasis_iff](../../../../../mathematics/Topology/GeneralTopology/KrullTopology/Variantd9b4361c57a90a1ca4c15239f66cd535fd865bdec59aa27a3514fbc800720469.lean/declarations/mem-galbasis-iff--ec7dff7a49d2a19ff6e708ca.md) | 107 | `result-track:ec7dff7a49d2a19ff6e708caa05c75b86f8055e54fd7ee4a3334b5f0bae32e50` |
| 6 | `def` | [galGroupBasis](../../../../../mathematics/Topology/GeneralTopology/KrullTopology/Variantd9b4361c57a90a1ca4c15239f66cd535fd865bdec59aa27a3514fbc800720469.lean/declarations/galgroupbasis--b97058be99f512eb06890d23.md) | 113 | `declaration-track:b97058be99f512eb06890d234fbfa730b94ec61e490fb00e00f4c79464bdffd6` |
| 7 | `instance` | [krullTopology](../../../../../mathematics/Topology/GeneralTopology/KrullTopology/Variantd9b4361c57a90a1ca4c15239f66cd535fd865bdec59aa27a3514fbc800720469.lean/declarations/krulltopology--d5abba73a4c45ab35cf7f583.md) | 146 | `declaration-track:d5abba73a4c45ab35cf7f58394ab86102bf3f5c7b14e370e9db8bfbc5b5f95ae` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/KrullTopology/Variantd9b4361c57a90a1ca4c15239f66cd535fd865bdec59aa27a3514fbc800720469.lean/declarations/instance--3681da7277d387dfb901c5ad.md) | 152 | `declaration-track:3681da7277d387dfb901c5adec441fb8bbb6cc122588047b04d28db54eec81b5` |
| 9 | `lemma` | [krullTopology_mem_nhds_one_iff](../../../../../mathematics/Topology/GeneralTopology/KrullTopology/Variantd9b4361c57a90a1ca4c15239f66cd535fd865bdec59aa27a3514fbc800720469.lean/declarations/krulltopology-mem-nhds-one-iff--2e6d180c69cbd1799ece0c8b.md) | 156 | `result-track:2e6d180c69cbd1799ece0c8b33b7886a618fd1766462d1c64211071066efe3be` |
| 10 | `lemma` | [krullTopology_mem_nhds_one_iff_of_normal](../../../../../mathematics/Topology/GeneralTopology/KrullTopology/Variantd9b4361c57a90a1ca4c15239f66cd535fd865bdec59aa27a3514fbc800720469.lean/declarations/krulltopology-mem-nhds-one-iff-of-normal--f20bce641082467f4aa15a9c.md) | 167 | `result-track:f20bce641082467f4aa15a9cc13cee0dd9e6b7fcb66de1e1f57875c708327014` |
| 11 | `theorem` | [IntermediateField.fixingSubgroup_isOpen](../../../../../mathematics/Topology/GeneralTopology/KrullTopology/Variantd9b4361c57a90a1ca4c15239f66cd535fd865bdec59aa27a3514fbc800720469.lean/declarations/intermediatefield-fixingsubgroup-isopen--f06a12eb5cd4b36aa16527bb.md) | 182 | `result-track:f06a12eb5cd4b36aa16527bb31bb725277b90ccd7872c9f1c6e9d375a8005f91` |
| 12 | `theorem` | [IntermediateField.fixingSubgroup_isClosed](../../../../../mathematics/Topology/GeneralTopology/KrullTopology/Variantd9b4361c57a90a1ca4c15239f66cd535fd865bdec59aa27a3514fbc800720469.lean/declarations/intermediatefield-fixingsubgroup-isclosed--d4e6c3b35278ee095d5c113a.md) | 192 | `result-track:d4e6c3b35278ee095d5c113a996b808c4fa42f890cfdfb63d1e6d8b104c5e2e0` |
| 13 | `theorem` | [krullTopology_t2](../../../../../mathematics/Topology/GeneralTopology/KrullTopology/Variantd9b4361c57a90a1ca4c15239f66cd535fd865bdec59aa27a3514fbc800720469.lean/declarations/krulltopology-t2--6af6014bdbd33386f950591c.md) | 198 | `result-track:6af6014bdbd33386f950591cde6c26658763dc3b2d64986e86709e42bf14e84d` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/KrullTopology/Variantd9b4361c57a90a1ca4c15239f66cd535fd865bdec59aa27a3514fbc800720469.lean/declarations/instance--89a9ac3d9a02df8ac22d224f.md) | 236 | `declaration-track:89a9ac3d9a02df8ac22d224ffa4085a13eebdfa4b51124c1babf0d9d61b55ec8` |
| 15 | `theorem` | [krullTopology_isTotallySeparated](../../../../../mathematics/Topology/GeneralTopology/KrullTopology/Variantd9b4361c57a90a1ca4c15239f66cd535fd865bdec59aa27a3514fbc800720469.lean/declarations/krulltopology-istotallyseparated--60bd6f57231b940a38f23d12.md) | 254 | `result-track:60bd6f57231b940a38f23d1210347bd0227826e7987963a51f41d91742996c30` |
| 16 | `instance` | [krullTopology_discreteTopology_of_finiteDimensional](../../../../../mathematics/Topology/GeneralTopology/KrullTopology/Variantd9b4361c57a90a1ca4c15239f66cd535fd865bdec59aa27a3514fbc800720469.lean/declarations/krulltopology-discretetopology-of-finitedimensional--f9e87a0f7fa6c1a6135407f6.md) | 263 | `declaration-track:f9e87a0f7fa6c1a6135407f64d71da60cf080915915406a56323ccec89ba7927` |
| 17 | `theorem` | [map_fixingSubgroup](../../../../../mathematics/Topology/GeneralTopology/KrullTopology/Variantd9b4361c57a90a1ca4c15239f66cd535fd865bdec59aa27a3514fbc800720469.lean/declarations/map-fixingsubgroup--bf5e930bfdd969492f268146.md) | 280 | `result-track:bf5e930bfdd969492f268146379c1757a03014ed24a0c292af7aaac7b9d491ca` |
| 18 | `theorem` | [map_fixingSubgroup_index](../../../../../mathematics/Topology/GeneralTopology/KrullTopology/Variantd9b4361c57a90a1ca4c15239f66cd535fd865bdec59aa27a3514fbc800720469.lean/declarations/map-fixingsubgroup-index--4ef0b95d83e1d1e866f7db5b.md) | 299 | `result-track:4ef0b95d83e1d1e866f7db5b026b85f8cd1ea897c560e036a5329df73a0dfc26` |
| 19 | `theorem` | [finrank_eq_fixingSubgroup_index](../../../../../mathematics/Topology/GeneralTopology/KrullTopology/Variantd9b4361c57a90a1ca4c15239f66cd535fd865bdec59aa27a3514fbc800720469.lean/declarations/finrank-eq-fixingsubgroup-index--6fbd35f949a3b450c94a5b68.md) | 307 | `result-track:6fbd35f949a3b450c94a5b683522cab4282d6a20b8b48c41169d260e38be4376` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
