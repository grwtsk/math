# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.Defs.Variant9cd9b75d7912fb9763912a28b559e5906367b59b8e16146bb4600eb338db8fca

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0d1ad11b44218b3efbab2c8954f949435a7ebbdc",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Defs/Variant9cd9b75d7912fb9763912a28b559e5906367b59b8e16146bb4600eb338db8fca.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Defs/Variant9cd9b75d7912fb9763912a28b559e5906367b59b8e16146bb4600eb338db8fca.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Defs/Variant9cd9b75d7912fb9763912a28b559e5906367b59b8e16146bb4600eb338db8fca.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0d1ad11b44218b3efbab2c8954f949435a7ebbdc`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Defs/Variant9cd9b75d7912fb9763912a28b559e5906367b59b8e16146bb4600eb338db8fca.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/Defs/Variant9cd9b75d7912fb9763912a28b559e5906367b59b8e16146bb4600eb338db8fca.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.CofilteredSystem` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.SimpleGraph.Path` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finite.Set` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [ComponentCompl](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Defs/Variant9cd9b75d7912fb9763912a28b559e5906367b59b8e16146bb4600eb338db8fca.lean/declarations/componentcompl--0d9f52cfc2c9049457d4b776.md) | 25 | `declaration-track:0d9f52cfc2c9049457d4b776abdff73d1ff2fbabd214bc025e1b7df1ef350846` |
| 2 | `abbrev` | [componentComplMk](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Defs/Variant9cd9b75d7912fb9763912a28b559e5906367b59b8e16146bb4600eb338db8fca.lean/declarations/componentcomplmk--9ace0c93dcbf6967591f5d85.md) | 31 | `declaration-track:9ace0c93dcbf6967591f5d856c87725618c8114744ca7394f9e845a6cb6ae4b3` |
| 3 | `def` | [ComponentCompl.supp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Defs/Variant9cd9b75d7912fb9763912a28b559e5906367b59b8e16146bb4600eb338db8fca.lean/declarations/componentcompl-supp--0b94a0cb73c14438c55d0344.md) | 35 | `declaration-track:0b94a0cb73c14438c55d0344cccf061731f7c38adcd7843b727b031bba158019` |
| 4 | `theorem` | [ComponentCompl.supp_injective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Defs/Variant9cd9b75d7912fb9763912a28b559e5906367b59b8e16146bb4600eb338db8fca.lean/declarations/componentcompl-supp-injective--b28feeaed7417303a576b757.md) | 39 | `result-track:b28feeaed7417303a576b75703bb5a6040535382be3fd51536aa2f1ec0e626ee` |
| 5 | `theorem` | [ComponentCompl.supp_inj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Defs/Variant9cd9b75d7912fb9763912a28b559e5906367b59b8e16146bb4600eb338db8fca.lean/declarations/componentcompl-supp-inj--0580a16fb18ad4684a9d4e5b.md) | 46 | `result-track:0580a16fb18ad4684a9d4e5bf4e08236c56c530c6c261a3823b6d29e49400a6b` |
| 6 | `instance` | [ComponentCompl.setLike](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Defs/Variant9cd9b75d7912fb9763912a28b559e5906367b59b8e16146bb4600eb338db8fca.lean/declarations/componentcompl-setlike--851d71fd939e26ea47ca8b0a.md) | 49 | `declaration-track:851d71fd939e26ea47ca8b0aff032d67f9db6f927ae66e66e3713df59ec10dc2` |
| 7 | `theorem` | [ComponentCompl.mem_supp_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Defs/Variant9cd9b75d7912fb9763912a28b559e5906367b59b8e16146bb4600eb338db8fca.lean/declarations/componentcompl-mem-supp-iff--0baa757e5a13af04d2e89623.md) | 54 | `result-track:0baa757e5a13af04d2e896234e521dae1cd84a68564195dd8cdee8600f4276b9` |
| 8 | `theorem` | [componentComplMk_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Defs/Variant9cd9b75d7912fb9763912a28b559e5906367b59b8e16146bb4600eb338db8fca.lean/declarations/componentcomplmk-mem--fdff64e59db0e228e79fd3b4.md) | 58 | `result-track:fdff64e59db0e228e79fd3b49d87c892fe25841ac82121be77974dfe3b5854ee` |
| 9 | `theorem` | [componentComplMk_eq_of_adj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Defs/Variant9cd9b75d7912fb9763912a28b559e5906367b59b8e16146bb4600eb338db8fca.lean/declarations/componentcomplmk-eq-of-adj--8783bd4057dc3193dd1db2b9.md) | 61 | `result-track:8783bd4057dc3193dd1db2b9f1f5f493b5b7663829c663b9abc06a204e8852df` |
| 10 | `instance` | [componentCompl_nonempty_of_infinite](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Defs/Variant9cd9b75d7912fb9763912a28b559e5906367b59b8e16146bb4600eb338db8fca.lean/declarations/componentcompl-nonempty-of-infinite--9d976c46bbbfbfea6411d0f6.md) | 68 | `declaration-track:9d976c46bbbfbfea6411d0f6e24c342f3565293e08a79ebb79fdec2dcd6522a8` |
| 11 | `def` | [lift](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Defs/Variant9cd9b75d7912fb9763912a28b559e5906367b59b8e16146bb4600eb338db8fca.lean/declarations/lift--296c51a1d783d074c259c832.md) | 78 | `declaration-track:296c51a1d783d074c259c83259bda8f1883b0bcd5e29dea842e5e1bbd107d95d` |
| 12 | `theorem` | [ind](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Defs/Variant9cd9b75d7912fb9763912a28b559e5906367b59b8e16146bb4600eb338db8fca.lean/declarations/ind--3534078c939ed25b56dfdcb2.md) | 86 | `result-track:3534078c939ed25b56dfdcb293dc46d0c5990d9b09562398f8221938ab31f8cb` |
| 13 | `abbrev` | [coeGraph](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Defs/Variant9cd9b75d7912fb9763912a28b559e5906367b59b8e16146bb4600eb338db8fca.lean/declarations/coegraph--8e1f5e3eccfd7e586bdd1f40.md) | 92 | `declaration-track:8e1f5e3eccfd7e586bdd1f40329603619afb2219a0e864b165dcf2752a757dec` |
| 14 | `theorem` | [coe_inj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Defs/Variant9cd9b75d7912fb9763912a28b559e5906367b59b8e16146bb4600eb338db8fca.lean/declarations/coe-inj--eb3f521376dabd5f303d9234.md) | 95 | `result-track:eb3f521376dabd5f303d9234bd1258ce3808a5f39a22fd56fd3bae0f3f7046a9` |
| 15 | `theorem` | [nonempty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Defs/Variant9cd9b75d7912fb9763912a28b559e5906367b59b8e16146bb4600eb338db8fca.lean/declarations/nonempty--d58b0430abc8e41cc2a467ef.md) | 99 | `result-track:d58b0430abc8e41cc2a467ef0d9246db1e1990225b0b59435a632903478b4d30` |
| 16 | `theorem` | [exists_eq_mk](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Defs/Variant9cd9b75d7912fb9763912a28b559e5906367b59b8e16146bb4600eb338db8fca.lean/declarations/exists-eq-mk--f3235a97fd83dfa0b472a06f.md) | 102 | `result-track:f3235a97fd83dfa0b472a06f050c857a217a5b54edb97ac8f637a322932a52fa` |
| 17 | `theorem` | [disjoint_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Defs/Variant9cd9b75d7912fb9763912a28b559e5906367b59b8e16146bb4600eb338db8fca.lean/declarations/disjoint-right--3a9a2f0e0b5c796c1366624d.md) | 106 | `result-track:3a9a2f0e0b5c796c1366624d22c5c15c3aa5fdc186bcc9e009f52bdbcc838f79` |
| 18 | `theorem` | [notMem_of_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Defs/Variant9cd9b75d7912fb9763912a28b559e5906367b59b8e16146bb4600eb338db8fca.lean/declarations/notmem-of-mem--f513e607e0394bb8c58fff91.md) | 110 | `result-track:f513e607e0394bb8c58fff910f04fb6851a22b64667117173ba28976c6100c25` |
| 19 | `theorem` | [pairwise_disjoint](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Defs/Variant9cd9b75d7912fb9763912a28b559e5906367b59b8e16146bb4600eb338db8fca.lean/declarations/pairwise-disjoint--e48a9cedb5cbeb4a97f28336.md) | 115 | `result-track:e48a9cedb5cbeb4a97f28336b86aadbb73b283406e515ad5073084244317c8e5` |
| 20 | `theorem` | [mem_of_adj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Defs/Variant9cd9b75d7912fb9763912a28b559e5906367b59b8e16146bb4600eb338db8fca.lean/declarations/mem-of-adj--4b2bb7e01c88b1b4ca845170.md) | 123 | `result-track:4b2bb7e01c88b1b4ca845170346d2908e141763c26401807c441e97ef7204407` |
| 21 | `theorem` | [exists_adj_boundary_pair](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Defs/Variant9cd9b75d7912fb9763912a28b559e5906367b59b8e16146bb4600eb338db8fca.lean/declarations/exists-adj-boundary-pair--d3e70c0cd127f936b74d0403.md) | 133 | `result-track:d3e70c0cd127f936b74d040317992d3b2d7444e4b1ec7523830d0c4d06bfc845` |
| 22 | `abbrev` | [hom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Defs/Variant9cd9b75d7912fb9763912a28b559e5906367b59b8e16146bb4600eb338db8fca.lean/declarations/hom--9ee3d793d9f359fc98d89f23.md) | 152 | `declaration-track:9ee3d793d9f359fc98d89f23b1aea4c1e79da46c7f95d66a9df4c47ba6af916f` |
| 23 | `theorem` | [subset_hom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Defs/Variant9cd9b75d7912fb9763912a28b559e5906367b59b8e16146bb4600eb338db8fca.lean/declarations/subset-hom--5e3ee10009902e0d3a52de59.md) | 155 | `result-track:5e3ee10009902e0d3a52de5903929112d94a2148152d864a7b67a138763a7086` |
| 24 | `theorem` | [_root_.SimpleGraph.componentComplMk_mem_hom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Defs/Variant9cd9b75d7912fb9763912a28b559e5906367b59b8e16146bb4600eb338db8fca.lean/declarations/root-simplegraph-componentcomplmk-mem-hom--484a3d593fb5ba11ed254881.md) | 159 | `result-track:484a3d593fb5ba11ed25488162ea487a46648a3dbd7d6b5f8a86f442b7279c1b` |
| 25 | `theorem` | [hom_eq_iff_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Defs/Variant9cd9b75d7912fb9763912a28b559e5906367b59b8e16146bb4600eb338db8fca.lean/declarations/hom-eq-iff-le--71a13fd5d5ce0fe999054da4.md) | 164 | `result-track:71a13fd5d5ce0fe999054da4e0b5418362fa84185e79333df9c37cc04957b052` |
| 26 | `theorem` | [hom_eq_iff_not_disjoint](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Defs/Variant9cd9b75d7912fb9763912a28b559e5906367b59b8e16146bb4600eb338db8fca.lean/declarations/hom-eq-iff-not-disjoint--963d7aab1cb85081cbeb15fd.md) | 168 | `result-track:963d7aab1cb85081cbeb15fdb6d1e56079d9ceae666606203b2fe7b65e1b6d71` |
| 27 | `theorem` | [hom_refl](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Defs/Variant9cd9b75d7912fb9763912a28b559e5906367b59b8e16146bb4600eb338db8fca.lean/declarations/hom-refl--a2de83268b99cb02ca0748c3.md) | 180 | `result-track:a2de83268b99cb02ca0748c3baf3b6948ef9b7dc991dbffc8f0efcf3001f8db2` |
| 28 | `theorem` | [hom_trans](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Defs/Variant9cd9b75d7912fb9763912a28b559e5906367b59b8e16146bb4600eb338db8fca.lean/declarations/hom-trans--e36a439b21dde9215c4c3737.md) | 184 | `result-track:e36a439b21dde9215c4c3737c5b75e32d997df287ca2814053dd71e422f35eaa` |
| 29 | `theorem` | [hom_mk](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Defs/Variant9cd9b75d7912fb9763912a28b559e5906367b59b8e16146bb4600eb338db8fca.lean/declarations/hom-mk--bf090b5dd6d84e8470fa5d33.md) | 190 | `result-track:bf090b5dd6d84e8470fa5d3326659a39663eab79be188d7230364946bb9444c9` |
| 30 | `theorem` | [hom_infinite](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Defs/Variant9cd9b75d7912fb9763912a28b559e5906367b59b8e16146bb4600eb338db8fca.lean/declarations/hom-infinite--3e567454d1a2b7d613a9cfde.md) | 194 | `result-track:3e567454d1a2b7d613a9cfde2916447d1e7242fcdd23ada2740301bd013db1df` |
| 31 | `theorem` | [infinite_iff_in_all_ranges](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Defs/Variant9cd9b75d7912fb9763912a28b559e5906367b59b8e16146bb4600eb338db8fca.lean/declarations/infinite-iff-in-all-ranges--7aca8581f2d04fa66a15e5d2.md) | 198 | `result-track:7aca8581f2d04fa66a15e5d218a725d19834690cea03dd6a2a95428ee5be18e5` |
| 32 | `instance` | [componentCompl_finite](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Defs/Variant9cd9b75d7912fb9763912a28b559e5906367b59b8e16146bb4600eb338db8fca.lean/declarations/componentcompl-finite--510abbfbcfdb323a9ffc60d5.md) | 217 | `declaration-track:510abbfbcfdb323a9ffc60d56798922f8c463388a5d5eb104a069308f56f6298` |
| 33 | `def` | [componentComplFunctor](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Defs/Variant9cd9b75d7912fb9763912a28b559e5906367b59b8e16146bb4600eb338db8fca.lean/declarations/componentcomplfunctor--bcec03ebc3e698dc4efaf1be.md) | 254 | `declaration-track:bcec03ebc3e698dc4efaf1beaccbe87ca6b21719ab209a482cf9a1942a9e1d10` |
| 34 | `def` | [«end»](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Defs/Variant9cd9b75d7912fb9763912a28b559e5906367b59b8e16146bb4600eb338db8fca.lean/declarations/end--086b09c6e946c204f2e3941e.md) | 263 | `declaration-track:086b09c6e946c204f2e3941e6bbc85b46278e93c2c62b164fe2ed384beb955b5` |
| 35 | `theorem` | [end_hom_mk_of_mk](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Defs/Variant9cd9b75d7912fb9763912a28b559e5906367b59b8e16146bb4600eb338db8fca.lean/declarations/end-hom-mk-of-mk--506686134f91e54d24a69f48.md) | 266 | `result-track:506686134f91e54d24a69f489326e43c7cf6d16f05d91570223f8616d576b603` |
| 36 | `theorem` | [infinite_iff_in_eventualRange](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Defs/Variant9cd9b75d7912fb9763912a28b559e5906367b59b8e16146bb4600eb338db8fca.lean/declarations/infinite-iff-in-eventualrange--944f06e44fdb8a5056de4735.md) | 272 | `result-track:944f06e44fdb8a5056de473507011fa36323fdf7106012aac80ef096a867a98f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
