# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripBoundaryCollar

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0cde97b4d3760c0ab2de7c0e653442de3c15fc55",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripBoundaryCollar.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripBoundaryCollar.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripBoundaryCollar.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0cde97b4d3760c0ab2de7c0e653442de3c15fc55`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripBoundaryCollar.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CriticalStripBoundaryCollar.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripPolePatch`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripPolePatch.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripCompactPatch`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCompactPatch.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [poleNormalizedZeta_ne_zero_of_one_le_re](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripBoundaryCollar.lean/declarations/polenormalizedzeta-ne-zero-of-one-le-re--7e40676d277274d90b4fd9c3.md) | 31 | `result-track:7e40676d277274d90b4fd9c36866113ba57e8b44388d46c8fc44d0705ba2b407` |
| 2 | `def` | [rightBoundarySegment](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripBoundaryCollar.lean/declarations/rightboundarysegment--989e8b49af4cca08219465c2.md) | 39 | `declaration-track:989e8b49af4cca08219465c23923e6bb203355d6e076c8a290e684f4200193e7` |
| 3 | `theorem` | [mem_rightBoundarySegment_iff](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripBoundaryCollar.lean/declarations/mem-rightboundarysegment-iff--61b3f3f900776191cb45833a.md) | 42 | `result-track:61b3f3f900776191cb45833aae4881f728ccb3ff186601b1f780a71fe2323362` |
| 4 | `theorem` | [rightBoundarySegment_isCompact](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripBoundaryCollar.lean/declarations/rightboundarysegment-iscompact--8d5d95467dcbf8e0324b9654.md) | 51 | `result-track:8d5d95467dcbf8e0324b9654ec9fb16b866d5bee9bdb603646c5dd56ebc54b02` |
| 5 | `theorem` | [rightBoundarySegment_nonempty](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripBoundaryCollar.lean/declarations/rightboundarysegment-nonempty--b831dc0e4c359c3eb44fdbcd.md) | 55 | `result-track:b831dc0e4c359c3eb44fdbcd3bda092d1aace774cf69548000170069831c3e03` |
| 6 | `def` | [rightClosedBand](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripBoundaryCollar.lean/declarations/rightclosedband--c643a307ccedff90539c9748.md) | 61 | `declaration-track:c643a307ccedff90539c9748c5202ada85dfa7b1bb26df7f3856f6de45dcb237` |
| 7 | `theorem` | [rightClosedBand_isCompact](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripBoundaryCollar.lean/declarations/rightclosedband-iscompact--21796a5f129824ce7fc8327a.md) | 64 | `result-track:21796a5f129824ce7fc8327aae492d9039a4a9662981470a74a6cce2a9ccc76f` |
| 8 | `theorem` | [exists_rightBoundary_norm_collar](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripBoundaryCollar.lean/declarations/exists-rightboundary-norm-collar--fae6648cc69e74876da9c147.md) | 82 | `result-track:fae6648cc69e74876da9c1476a4be97cf12928ca4879508690bf12bc20ac0b3d` |
| 9 | `structure` | [RightBoundaryCollar](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripBoundaryCollar.lean/declarations/rightboundarycollar--c3ff67e8da03c251037fca91.md) | 111 | `declaration-track:c3ff67e8da03c251037fca91e64e9d2903f58b86ce49634b4fc86b00308af5b3` |
| 10 | `theorem` | [exists_rightBoundaryCollar](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripBoundaryCollar.lean/declarations/exists-rightboundarycollar--aca49852def6993d35fa5b49.md) | 122 | `result-track:aca49852def6993d35fa5b499b240789ad68d3d27c8f0dad24144b460c4a4a88` |
| 11 | `theorem` | [noTargetZero_right](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripBoundaryCollar.lean/declarations/notargetzero-right--d1f550755b910517df0bc705.md) | 137 | `result-track:d1f550755b910517df0bc705fe7cc6c87ab7a3749a287aead39a39b24f9feed7` |
| 12 | `theorem` | [target_real_bounds](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripBoundaryCollar.lean/declarations/target-real-bounds--094f0a3ff8c047f1111ec909.md) | 143 | `result-track:094f0a3ff8c047f1111ec9090f2d788e5fe89bfea59b4dec0033054fafa0bb71` |
| 13 | `def` | [rightInteriorShell](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripBoundaryCollar.lean/declarations/rightinteriorshell--035369c8899be09bf00594f2.md) | 174 | `declaration-track:035369c8899be09bf00594f2e5ee87d3ad323b2e3226dd0d668a991fcfd8f1e3` |
| 14 | `theorem` | [shellRH_iff_interior_exclusion](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripBoundaryCollar.lean/declarations/shellrh-iff-interior-exclusion--c58ab430037c3e8b4ba06191.md) | 180 | `result-track:c58ab430037c3e8b4ba06191d9f8b61ff823a53f2475e3665a66f90ee30c679d` |
| 15 | `theorem` | [window_succ_of_interior_covers](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripBoundaryCollar.lean/declarations/window-succ-of-interior-covers--705d71a5110fb17e60ed72be.md) | 200 | `result-track:705d71a5110fb17e60ed72becef7c96d3eefb11ee8ac7d72fcec2ec3d7de6828` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
