# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.NatAntidiagonal.Variant0ecd4495d14b75e0f2e65635fa60b6ea6e9d802253ab9bdd4200cd0f6b07b283

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1e5d3bf896193331c9365a5b104eee55adc1992c",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NatAntidiagonal/Variant0ecd4495d14b75e0f2e65635fa60b6ea6e9d802253ab9bdd4200cd0f6b07b283.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NatAntidiagonal/Variant0ecd4495d14b75e0f2e65635fa60b6ea6e9d802253ab9bdd4200cd0f6b07b283.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NatAntidiagonal/Variant0ecd4495d14b75e0f2e65635fa60b6ea6e9d802253ab9bdd4200cd0f6b07b283.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1e5d3bf896193331c9365a5b104eee55adc1992c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NatAntidiagonal/Variant0ecd4495d14b75e0f2e65635fa60b6ea6e9d802253ab9bdd4200cd0f6b07b283.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NatAntidiagonal/Variant0ecd4495d14b75e0f2e65635fa60b6ea6e9d802253ab9bdd4200cd0f6b07b283.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.Nodup` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Range` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [antidiagonal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NatAntidiagonal/Variant0ecd4495d14b75e0f2e65635fa60b6ea6e9d802253ab9bdd4200cd0f6b07b283.lean/declarations/antidiagonal--31c8106aab584f4a4e8f3a4a.md) | 32 | `declaration-track:31c8106aab584f4a4e8f3a4af9444d631d16163c28820841d52d044c202629f7` |
| 2 | `theorem` | [mem_antidiagonal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NatAntidiagonal/Variant0ecd4495d14b75e0f2e65635fa60b6ea6e9d802253ab9bdd4200cd0f6b07b283.lean/declarations/mem-antidiagonal--25363c6a61450d34155162f7.md) | 38 | `result-track:25363c6a61450d34155162f7af70a04ebad2045cb543ecf83db410447061fdc0` |
| 3 | `theorem` | [length_antidiagonal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NatAntidiagonal/Variant0ecd4495d14b75e0f2e65635fa60b6ea6e9d802253ab9bdd4200cd0f6b07b283.lean/declarations/length-antidiagonal--71e56fc11460dcd52783124c.md) | 52 | `result-track:71e56fc11460dcd52783124cad8a1fa88b28cd8ffa403f3ad7c96e3af9883acf` |
| 4 | `theorem` | [antidiagonal_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NatAntidiagonal/Variant0ecd4495d14b75e0f2e65635fa60b6ea6e9d802253ab9bdd4200cd0f6b07b283.lean/declarations/antidiagonal-zero--bb843d78ac25a8cf2c705fab.md) | 58 | `result-track:bb843d78ac25a8cf2c705fab89a5a0097fa9690bdad020dc3528d930ffc8cc18` |
| 5 | `theorem` | [nodup_antidiagonal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NatAntidiagonal/Variant0ecd4495d14b75e0f2e65635fa60b6ea6e9d802253ab9bdd4200cd0f6b07b283.lean/declarations/nodup-antidiagonal--cef7bc6c921d5346abf0eb50.md) | 63 | `result-track:cef7bc6c921d5346abf0eb5092ea78ccfeb3af6255a206fb9ec0cf0f6506d7ba` |
| 6 | `theorem` | [antidiagonal_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NatAntidiagonal/Variant0ecd4495d14b75e0f2e65635fa60b6ea6e9d802253ab9bdd4200cd0f6b07b283.lean/declarations/antidiagonal-succ--9126cd3a8933654713f885d4.md) | 68 | `result-track:9126cd3a8933654713f885d428d150f7bae2cf9a2c6e4566371c047ec84be797` |
| 7 | `theorem` | [antidiagonal_succ'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NatAntidiagonal/Variant0ecd4495d14b75e0f2e65635fa60b6ea6e9d802253ab9bdd4200cd0f6b07b283.lean/declarations/antidiagonal-succ--4b8b046b369a12498b2b6fef.md) | 76 | `result-track:4b8b046b369a12498b2b6fef1a6a12bc30322018c82213e5c3223bcbf15f58af` |
| 8 | `theorem` | [antidiagonal_succ_succ'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NatAntidiagonal/Variant0ecd4495d14b75e0f2e65635fa60b6ea6e9d802253ab9bdd4200cd0f6b07b283.lean/declarations/antidiagonal-succ-succ--428de8672f33910fcb3b5ab7.md) | 85 | `result-track:428de8672f33910fcb3b5ab75567cdd504f2ce977a0a374eb7423fa4a8b67365` |
| 9 | `theorem` | [map_swap_antidiagonal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NatAntidiagonal/Variant0ecd4495d14b75e0f2e65635fa60b6ea6e9d802253ab9bdd4200cd0f6b07b283.lean/declarations/map-swap-antidiagonal--510a06275875ee1700335390.md) | 94 | `result-track:510a06275875ee1700335390ac2f91d226ffafc85588b0b10fbe91e71e680a36` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
