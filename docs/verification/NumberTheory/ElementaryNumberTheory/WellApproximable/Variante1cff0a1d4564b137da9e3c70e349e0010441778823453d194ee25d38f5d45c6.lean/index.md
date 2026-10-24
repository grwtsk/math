# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.WellApproximable.Variante1cff0a1d4564b137da9e3c70e349e0010441778823453d194ee25d38f5d45c6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7f747a80f7f8ad68f70e282589f3fd3fd57b1817",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/WellApproximable/Variante1cff0a1d4564b137da9e3c70e349e0010441778823453d194ee25d38f5d45c6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/WellApproximable/Variante1cff0a1d4564b137da9e3c70e349e0010441778823453d194ee25d38f5d45c6.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/WellApproximable/Variante1cff0a1d4564b137da9e3c70e349e0010441778823453d194ee25d38f5d45c6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7f747a80f7f8ad68f70e282589f3fd3fd57b1817`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/WellApproximable/Variante1cff0a1d4564b137da9e3c70e349e0010441778823453d194ee25d38f5d45c6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/WellApproximable/Variante1cff0a1d4564b137da9e3c70e349e0010441778823453d194ee25d38f5d45c6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Dynamics.Ergodic.AddCircle` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Covering.LiminfLimsup` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [approxOrderOf](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/WellApproximable/Variante1cff0a1d4564b137da9e3c70e349e0010441778823453d194ee25d38f5d45c6.lean/declarations/approxorderof--88d220f0ef816a4f1eab14f7.md) | 71 | `declaration-track:88d220f0ef816a4f1eab14f705bb489a8b95cfaab00c0f9a95ef60833335b065` |
| 2 | `theorem` | [mem_approxOrderOf_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/WellApproximable/Variante1cff0a1d4564b137da9e3c70e349e0010441778823453d194ee25d38f5d45c6.lean/declarations/mem-approxorderof-iff--3d07b47fde00531f811a2dac.md) | 77 | `result-track:3d07b47fde00531f811a2dac31ee4723564e3170866367ca90dd11a4f55e6c69` |
| 3 | `def` | [wellApproximable](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/WellApproximable/Variante1cff0a1d4564b137da9e3c70e349e0010441778823453d194ee25d38f5d45c6.lean/declarations/wellapproximable--2eaed12e9e91ef8270a30d25.md) | 90 | `declaration-track:2eaed12e9e91ef8270a30d253177337a0edcc4636a410d8869665453e8953b5d` |
| 4 | `theorem` | [mem_wellApproximable_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/WellApproximable/Variante1cff0a1d4564b137da9e3c70e349e0010441778823453d194ee25d38f5d45c6.lean/declarations/mem-wellapproximable-iff--d50b32376e4e13e1af4af53c.md) | 96 | `result-track:d50b32376e4e13e1af4af53ca76512400ead59c05101ec39a0c90330a98f33cb` |
| 5 | `theorem` | [image_pow_subset_of_coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/WellApproximable/Variante1cff0a1d4564b137da9e3c70e349e0010441778823453d194ee25d38f5d45c6.lean/declarations/image-pow-subset-of-coprime--57acff9c7facf24acd3c1539.md) | 108 | `result-track:57acff9c7facf24acd3c1539687b94e62234244123b616817ecf3338c403fb52` |
| 6 | `theorem` | [image_pow_subset](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/WellApproximable/Variante1cff0a1d4564b137da9e3c70e349e0010441778823453d194ee25d38f5d45c6.lean/declarations/image-pow-subset--46cc28088a2e06a3458fc9ad.md) | 121 | `result-track:46cc28088a2e06a3458fc9ad27fb7f89825922a6c862e50fabfd3ebd4d77f0f6` |
| 7 | `theorem` | [smul_subset_of_coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/WellApproximable/Variante1cff0a1d4564b137da9e3c70e349e0010441778823453d194ee25d38f5d45c6.lean/declarations/smul-subset-of-coprime--3d00d6f24c975cf0a4e561d5.md) | 134 | `result-track:3d00d6f24c975cf0a4e561d5899287fc3895f64d2a143e9cafd152ab6bcf0e29` |
| 8 | `theorem` | [smul_eq_of_mul_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/WellApproximable/Variante1cff0a1d4564b137da9e3c70e349e0010441778823453d194ee25d38f5d45c6.lean/declarations/smul-eq-of-mul-dvd--138ca357d4541fa6c1942524.md) | 147 | `result-track:138ca357d4541fa6c194252482268c2dddb7c6c7a67e915c0b939fecf51dd712` |
| 9 | `theorem` | [mem_approxAddOrderOf_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/WellApproximable/Variante1cff0a1d4564b137da9e3c70e349e0010441778823453d194ee25d38f5d45c6.lean/declarations/mem-approxaddorderof-iff--1fa0320d1fcd2d71defd2e97.md) | 174 | `result-track:1fa0320d1fcd2d71defd2e97efbd7ec7ad54f0bc516c82f594140e1cad37872a` |
| 10 | `theorem` | [mem_addWellApproximable_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/WellApproximable/Variante1cff0a1d4564b137da9e3c70e349e0010441778823453d194ee25d38f5d45c6.lean/declarations/mem-addwellapproximable-iff--dfb363e0353744f8b0eb45a8.md) | 184 | `result-track:dfb363e0353744f8b0eb45a84550b8b2231063999f1ae7675dc18c29fe85c363` |
| 11 | `theorem` | [addWellApproximable_ae_empty_or_univ](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/WellApproximable/Variante1cff0a1d4564b137da9e3c70e349e0010441778823453d194ee25d38f5d45c6.lean/declarations/addwellapproximable-ae-empty-or-univ--9758295ffc0cbf5a723c381a.md) | 208 | `result-track:9758295ffc0cbf5a723c381ad0ad12f0d511b624288df205a31c1fa5e327c28c` |
| 12 | `lemma` | [_root_.NormedAddCommGroup.exists_norm_nsmul_le](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/WellApproximable/Variante1cff0a1d4564b137da9e3c70e349e0010441778823453d194ee25d38f5d45c6.lean/declarations/root-normedaddcommgroup-exists-norm-nsmul-le--31c7008363294d13cabf7124.md) | 342 | `result-track:31c7008363294d13cabf7124d2466f1e71fb56cdeefb123c4baa82029682af9d` |
| 13 | `lemma` | [exists_norm_nsmul_le](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/WellApproximable/Variante1cff0a1d4564b137da9e3c70e349e0010441778823453d194ee25d38f5d45c6.lean/declarations/exists-norm-nsmul-le--50b800b3fcade57195933567.md) | 379 | `result-track:50b800b3fcade5719593356740d5ec77cae640793f27dd7f6246131d559058d6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
