# Verification target: GRWTSK.Algebra.LinearAlgebra.ZMod.Variant2d28e187c47d56d450c0eb93525f4b4fde6505a430a0f26a11c2bc17493e1b1f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "59a19ead31b8e9f47167f5160fc93297d7d04361",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/ZMod/Variant2d28e187c47d56d450c0eb93525f4b4fde6505a430a0f26a11c2bc17493e1b1f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/ZMod/Variant2d28e187c47d56d450c0eb93525f4b4fde6505a430a0f26a11c2bc17493e1b1f.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/ZMod/Variant2d28e187c47d56d450c0eb93525f4b4fde6505a430a0f26a11c2bc17493e1b1f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `59a19ead31b8e9f47167f5160fc93297d7d04361`.

Source path: `GRWTSK/Algebra/LinearAlgebra/ZMod/Variant2d28e187c47d56d450c0eb93525f4b4fde6505a430a0f26a11c2bc17493e1b1f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/ZMod/Variant2d28e187c47d56d450c0eb93525f4b4fde6505a430a0f26a11c2bc17493e1b1f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.LinearMap.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Submodule.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Sylow` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [AddCommMonoid.zmodModule](../../../../../mathematics/Algebra/LinearAlgebra/ZMod/Variant2d28e187c47d56d450c0eb93525f4b4fde6505a430a0f26a11c2bc17493e1b1f.lean/declarations/addcommmonoid-zmodmodule--aaf6d1d22656996fafffc219.md) | 21 | `declaration-track:aaf6d1d22656996fafffc2194d8e70e74a4ae0ad8e26d2add0051681e6dc57c9` |
| 2 | `abbrev` | [AddCommGroup.zmodModule](../../../../../mathematics/Algebra/LinearAlgebra/ZMod/Variant2d28e187c47d56d450c0eb93525f4b4fde6505a430a0f26a11c2bc17493e1b1f.lean/declarations/addcommgroup-zmodmodule--f6d89dbdc9d9f425a0bddfcf.md) | 40 | `declaration-track:f6d89dbdc9d9f425a0bddfcf3e3e912f221c64148fa397df713269add39c1304` |
| 3 | `abbrev` | [QuotientAddGroup.zmodModule](../../../../../mathematics/Algebra/LinearAlgebra/ZMod/Variant2d28e187c47d56d450c0eb93525f4b4fde6505a430a0f26a11c2bc17493e1b1f.lean/declarations/quotientaddgroup-zmodmodule--35c81ba7a38c112ebad5ad90.md) | 49 | `declaration-track:35c81ba7a38c112ebad5ad906e271bc1c903d977762ccd365d14d700612255cd` |
| 4 | `theorem` | [map_smul](../../../../../mathematics/Algebra/LinearAlgebra/ZMod/Variant2d28e187c47d56d450c0eb93525f4b4fde6505a430a0f26a11c2bc17493e1b1f.lean/declarations/map-smul--772a6ac31cac5ee089bcdcf2.md) | 59 | `result-track:772a6ac31cac5ee089bcdcf2624788b4b3109ff18a7bf6408984a020180546b7` |
| 5 | `theorem` | [smul_mem](../../../../../mathematics/Algebra/LinearAlgebra/ZMod/Variant2d28e187c47d56d450c0eb93525f4b4fde6505a430a0f26a11c2bc17493e1b1f.lean/declarations/smul-mem--485d9fb858dc50cd797f2c05.md) | 63 | `result-track:485d9fb858dc50cd797f2c05d70e941f5e1daf5aced0bae82c28792a325fe6ed` |
| 6 | `def` | [toZModLinearMap](../../../../../mathematics/Algebra/LinearAlgebra/ZMod/Variant2d28e187c47d56d450c0eb93525f4b4fde6505a430a0f26a11c2bc17493e1b1f.lean/declarations/tozmodlinearmap--2ad32bed4cee7b5aa2cf9d22.md) | 77 | `declaration-track:2ad32bed4cee7b5aa2cf9d225a0aaa8f1e9ba6270f26ce510e02e430aba26ee3` |
| 7 | `theorem` | [toZModLinearMap_injective](../../../../../mathematics/Algebra/LinearAlgebra/ZMod/Variant2d28e187c47d56d450c0eb93525f4b4fde6505a430a0f26a11c2bc17493e1b1f.lean/declarations/tozmodlinearmap-injective--f63dba08be356d08d8c8bd94.md) | 79 | `result-track:f63dba08be356d08d8c8bd9457b476891dac112b99892f9762e21f50a86ecff2` |
| 8 | `theorem` | [coe_toZModLinearMap](../../../../../mathematics/Algebra/LinearAlgebra/ZMod/Variant2d28e187c47d56d450c0eb93525f4b4fde6505a430a0f26a11c2bc17493e1b1f.lean/declarations/coe-tozmodlinearmap--b3299730456689c58d620a87.md) | 83 | `result-track:b3299730456689c58d620a871cdf69e0ace0b6f09caaff747d93d5bdc5a08dc6` |
| 9 | `def` | [toZModLinearMapEquiv](../../../../../mathematics/Algebra/LinearAlgebra/ZMod/Variant2d28e187c47d56d450c0eb93525f4b4fde6505a430a0f26a11c2bc17493e1b1f.lean/declarations/tozmodlinearmapequiv--2d1f9b5803d4b668ee9ab1d4.md) | 86 | `declaration-track:2d1f9b5803d4b668ee9ab1d4023e673751e3efb952e5d632ca702830c758e079` |
| 10 | `def` | [toZModSubmodule](../../../../../mathematics/Algebra/LinearAlgebra/ZMod/Variant2d28e187c47d56d450c0eb93525f4b4fde6505a430a0f26a11c2bc17493e1b1f.lean/declarations/tozmodsubmodule--8744258e235a1f652de8f1a3.md) | 100 | `declaration-track:8744258e235a1f652de8f1a317068b77a82d57da1e4cdca9ef9d9ae75baa4856` |
| 11 | `theorem` | [toZModSubmodule_symm](../../../../../mathematics/Algebra/LinearAlgebra/ZMod/Variant2d28e187c47d56d450c0eb93525f4b4fde6505a430a0f26a11c2bc17493e1b1f.lean/declarations/tozmodsubmodule-symm--7b96d262d3ab6f05c3cda53f.md) | 108 | `result-track:7b96d262d3ab6f05c3cda53ff4362f561f20f82c0452330bf7f1dd18694f9184` |
| 12 | `lemma` | [coe_toZModSubmodule](../../../../../mathematics/Algebra/LinearAlgebra/ZMod/Variant2d28e187c47d56d450c0eb93525f4b4fde6505a430a0f26a11c2bc17493e1b1f.lean/declarations/coe-tozmodsubmodule--cd2a8b1b97e06d4ff69a4cb1.md) | 112 | `result-track:cd2a8b1b97e06d4ff69a4cb146e6a5f574cdb191e2c522a0e28651f8e4e92e8d` |
| 13 | `lemma` | [mem_toZModSubmodule](../../../../../mathematics/Algebra/LinearAlgebra/ZMod/Variant2d28e187c47d56d450c0eb93525f4b4fde6505a430a0f26a11c2bc17493e1b1f.lean/declarations/mem-tozmodsubmodule--8b61f3fadc491819ab7d059d.md) | 113 | `result-track:8b61f3fadc491819ab7d059dacdf1f0cb4113d8949ec3b0358d552236ed1b030` |
| 14 | `theorem` | [toZModSubmodule_toAddSubgroup](../../../../../mathematics/Algebra/LinearAlgebra/ZMod/Variant2d28e187c47d56d450c0eb93525f4b4fde6505a430a0f26a11c2bc17493e1b1f.lean/declarations/tozmodsubmodule-toaddsubgroup--1c7e1bb8dd85436cc5a39dff.md) | 116 | `result-track:1c7e1bb8dd85436cc5a39dff82263759c3f77d93c4de9b34ccdad39aef6e2026` |
| 15 | `theorem` | [_root_.Submodule.toAddSubgroup_toZModSubmodule](../../../../../mathematics/Algebra/LinearAlgebra/ZMod/Variant2d28e187c47d56d450c0eb93525f4b4fde6505a430a0f26a11c2bc17493e1b1f.lean/declarations/root-submodule-toaddsubgroup-tozmodsubmodule--956c08293c58fd94f98ed46b.md) | 121 | `result-track:956c08293c58fd94f98ed46b512776fe2066be4fe7898fa0178a11b274630a17` |
| 16 | `lemma` | [exists_submodule_subset_card_le](../../../../../mathematics/Algebra/LinearAlgebra/ZMod/Variant2d28e187c47d56d450c0eb93525f4b4fde6505a430a0f26a11c2bc17493e1b1f.lean/declarations/exists-submodule-subset-card-le--4275d9960a6399771f562b4c.md) | 132 | `result-track:4275d9960a6399771f562b4c570f6ee8ba62222ba5968df5b071d339462f49a0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
