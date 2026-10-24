# Verification target: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyCechHeat

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b0b0e6d2a303a28d5bcd69788c7b1141db5ce9b8",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechHeat.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechHeat.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechHeat.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b0b0e6d2a303a28d5bcd69788c7b1141db5ce9b8`.

Source path: `GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechHeat.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechHeat.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Algebra.Homology.ThreeCellCech`](../../../../../mathematics/Algebra/Homology/ThreeCellCech.lean/index.md) — import line 11; pinned internal source present.
- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyCoefficientHeat`](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCoefficientHeat.lean/index.md) — import line 12; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Data](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechHeat.lean/declarations/data--f8e138d72d3cc56d63ccbfe0.md) | 26 | `declaration-track:f8e138d72d3cc56d63ccbfe0412d4f3e45170c5531da0c363cd36becc508b046` |
| 2 | `def` | [evolve](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechHeat.lean/declarations/evolve--cd0bf80d662a8f4058f087e2.md) | 31 | `declaration-track:cd0bf80d662a8f4058f087e2f6e2ef3affe2898241af910ea160d5c341835cf5` |
| 3 | `theorem` | [evolve_tree](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechHeat.lean/declarations/evolve-tree--48ffbf47cf56945a5e76b3ef.md) | 35 | `result-track:48ffbf47cf56945a5e76b3efb9dc75e2eb3b123276268199b307611d13c49055` |
| 4 | `theorem` | [evolve_common](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechHeat.lean/declarations/evolve-common--98592a5d7dc66708edac7e3d.md) | 38 | `result-track:98592a5d7dc66708edac7e3decb1a16f6833ef37831504744a9ea2e213cce3e3` |
| 5 | `theorem` | [evolve_closure](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechHeat.lean/declarations/evolve-closure--9f1836045373abcfdb390b6e.md) | 46 | `result-track:9f1836045373abcfdb390b6ea2eec4c12afc3cb5f3420db9190503eba03a103b` |
| 6 | `theorem` | [evolve_zero](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechHeat.lean/declarations/evolve-zero--b363f42e48a711809c088b78.md) | 50 | `result-track:b363f42e48a711809c088b787b9cd077d72b2453c246cdfbe174fbc1e6e03f3f` |
| 7 | `theorem` | [evolve_add](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechHeat.lean/declarations/evolve-add--a8fd5f87cd09178e4482a2fb.md) | 58 | `result-track:a8fd5f87cd09178e4482a2fba78fbc9701e2207d52daff76b4fcd77adab691a5` |
| 8 | `theorem` | [heat_delta0](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechHeat.lean/declarations/heat-delta0--cf8da91bbbb578522441d0b0.md) | 71 | `result-track:cf8da91bbbb578522441d0b01b2c30cd179e0289e5caad28566f087291e9398d` |
| 9 | `theorem` | [mismatch_evolve](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechHeat.lean/declarations/mismatch-evolve--f9b8c41e1bcff8e7e30c975d.md) | 78 | `result-track:f9b8c41e1bcff8e7e30c975d0572d383570c4c1544ce220ab86b9b8c38f2ef4d` |
| 10 | `theorem` | [matching_evolve_iff](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechHeat.lean/declarations/matching-evolve-iff--d62fe9434170cffaf4429570.md) | 86 | `result-track:d62fe9434170cffaf442957040738fa997d20912cc439b057643590c82b4e1d0` |
| 11 | `def` | [defect](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechHeat.lean/declarations/defect--87acd5d5ea616830de966ab9.md) | 95 | `declaration-track:87acd5d5ea616830de966ab97408c38fa026441a473b72397980c09bcf589691` |
| 12 | `theorem` | [defect_evolve](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechHeat.lean/declarations/defect-evolve--8b610c97516c932da794e4b1.md) | 98 | `result-track:8b610c97516c932da794e4b1ad031e057585067792b027e1e4fcc2efb3cb1c57` |
| 13 | `theorem` | [mean_of_constant](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechHeat.lean/declarations/mean-of-constant--7f15cd43f6ff60ab9a60eef9.md) | 103 | `result-track:7f15cd43f6ff60ab9a60eef93d77e53e17d78203114182cbc76daea43cf0452a` |
| 14 | `theorem` | [defect_zero_iff_matching](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechHeat.lean/declarations/defect-zero-iff-matching--610fe341be5730b384893be4.md) | 111 | `result-track:610fe341be5730b384893be487c26c2b79ecafe9232949496544fc8b8a30b9b7` |
| 15 | `theorem` | [glue_inhabited_after_iff](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechHeat.lean/declarations/glue-inhabited-after-iff--da09be2465bf2387a3b46f20.md) | 123 | `result-track:da09be2465bf2387a3b46f20abcb11ba94f1b7568f4770697e93e3fc469c212e` |
| 16 | `def` | [port](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechHeat.lean/declarations/port--845a83e93f173ff7129d3792.md) | 129 | `declaration-track:845a83e93f173ff7129d3792acf6ae90af495e746adde76af454895cfc422e90` |
| 17 | `theorem` | [port_evolve](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechHeat.lean/declarations/port-evolve--e8ee376e16e32419929d89ac.md) | 133 | `result-track:e8ee376e16e32419929d89acb21bb9687b73d16d576c4cdc56331cb0233505ed` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
