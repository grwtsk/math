# Verification target: GRWTSK.Analysis.SpecialFunctions.BKLNWA2TailBounds.Varianteeeab5febcb7a504fa0339a9e5cd0528b22b8584e17a3cccd152a134e96bca49

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "79c2133779b6e685cfb92d430f2bb37f5e45c5cf",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/SpecialFunctions/BKLNWA2TailBounds/Varianteeeab5febcb7a504fa0339a9e5cd0528b22b8584e17a3cccd152a134e96bca49.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2TailBounds/Varianteeeab5febcb7a504fa0339a9e5cd0528b22b8584e17a3cccd152a134e96bca49.lean/index.md) · [Full source](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2TailBounds/Varianteeeab5febcb7a504fa0339a9e5cd0528b22b8584e17a3cccd152a134e96bca49.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `79c2133779b6e685cfb92d430f2bb37f5e45c5cf`.

Source path: `GRWTSK/Analysis/SpecialFunctions/BKLNWA2TailBounds/Varianteeeab5febcb7a504fa0339a9e5cd0528b22b8584e17a3cccd152a134e96bca49.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/SpecialFunctions/BKLNWA2TailBounds/Varianteeeab5febcb7a504fa0339a9e5cd0528b22b8584e17a3cccd152a134e96bca49.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Tactic.IntervalAuto` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Real` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [head_100_lower](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2TailBounds/Varianteeeab5febcb7a504fa0339a9e5cd0528b22b8584e17a3cccd152a134e96bca49.lean/declarations/head-100-lower--7d485e584aab86387ae30f78.md) | 37 | `result-track:7d485e584aab86387ae30f78f271601e91cd6a1b04310083fdc9852a285d0ecb` |
| 2 | `theorem` | [head_100_upper](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2TailBounds/Varianteeeab5febcb7a504fa0339a9e5cd0528b22b8584e17a3cccd152a134e96bca49.lean/declarations/head-100-upper--7d73612f0cf8d75f848b25cb.md) | 41 | `result-track:7d73612f0cf8d75f848b25cba25bb3858126906d1572718cfb57018f6add69fe` |
| 3 | `theorem` | [tail_100](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2TailBounds/Varianteeeab5febcb7a504fa0339a9e5cd0528b22b8584e17a3cccd152a134e96bca49.lean/declarations/tail-100--ecedbcdd5acc88d21a9b1c17.md) | 45 | `result-track:ecedbcdd5acc88d21a9b1c17017dcc5c6bdfc31715eeb33c2e768be82baf6367` |
| 4 | `theorem` | [head_150_lower](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2TailBounds/Varianteeeab5febcb7a504fa0339a9e5cd0528b22b8584e17a3cccd152a134e96bca49.lean/declarations/head-150-lower--631842511425f9549bcaab1c.md) | 57 | `result-track:631842511425f9549bcaab1c8797496c49c41fa235c8639e83c881859def43df` |
| 5 | `theorem` | [head_150_upper](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2TailBounds/Varianteeeab5febcb7a504fa0339a9e5cd0528b22b8584e17a3cccd152a134e96bca49.lean/declarations/head-150-upper--dbf2c2e991fb42689674c840.md) | 61 | `result-track:dbf2c2e991fb42689674c840305b9311c8ec4ca63d4b71d3cb2d02772ef8bed7` |
| 6 | `theorem` | [tail_150](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2TailBounds/Varianteeeab5febcb7a504fa0339a9e5cd0528b22b8584e17a3cccd152a134e96bca49.lean/declarations/tail-150--a0515b63eb4f631a81a1f235.md) | 65 | `result-track:a0515b63eb4f631a81a1f235fb70c7d8a99aab555ea7c1cba3b7c8feec503492` |
| 7 | `theorem` | [head_200_lower](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2TailBounds/Varianteeeab5febcb7a504fa0339a9e5cd0528b22b8584e17a3cccd152a134e96bca49.lean/declarations/head-200-lower--c95a482e71be7938bb0bc7d8.md) | 77 | `result-track:c95a482e71be7938bb0bc7d890f7d9a247271160b9a63d972ac7959e80fc8756` |
| 8 | `theorem` | [head_200_upper](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2TailBounds/Varianteeeab5febcb7a504fa0339a9e5cd0528b22b8584e17a3cccd152a134e96bca49.lean/declarations/head-200-upper--59029a1615e9ce2dd256b57e.md) | 81 | `result-track:59029a1615e9ce2dd256b57ed1a8df2cb0b7c2bf75cc1e838b6e0651e389c558` |
| 9 | `theorem` | [tail_200](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2TailBounds/Varianteeeab5febcb7a504fa0339a9e5cd0528b22b8584e17a3cccd152a134e96bca49.lean/declarations/tail-200--ccd267e3b206f76727c16c9c.md) | 85 | `result-track:ccd267e3b206f76727c16c9c3cb0ccacbf6c533c9e181609cad03314f6e2aae0` |
| 10 | `theorem` | [head_250_lower](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2TailBounds/Varianteeeab5febcb7a504fa0339a9e5cd0528b22b8584e17a3cccd152a134e96bca49.lean/declarations/head-250-lower--2e1d7bcf5a522cf1eaf32fc7.md) | 97 | `result-track:2e1d7bcf5a522cf1eaf32fc79cdcdb74eb96e56c098d4269c752887adcb66cb1` |
| 11 | `theorem` | [head_250_upper](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2TailBounds/Varianteeeab5febcb7a504fa0339a9e5cd0528b22b8584e17a3cccd152a134e96bca49.lean/declarations/head-250-upper--221c4ffdd77ec28fa35a0106.md) | 101 | `result-track:221c4ffdd77ec28fa35a0106d534ab40024f2178db13f19f83e2a017626f95a0` |
| 12 | `theorem` | [tail_250](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2TailBounds/Varianteeeab5febcb7a504fa0339a9e5cd0528b22b8584e17a3cccd152a134e96bca49.lean/declarations/tail-250--5bd53cffcb7f94587b990295.md) | 105 | `result-track:5bd53cffcb7f94587b990295e93799616ee29a4dd8ce3f2c3ea8be415385693c` |
| 13 | `theorem` | [head_300_lower](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2TailBounds/Varianteeeab5febcb7a504fa0339a9e5cd0528b22b8584e17a3cccd152a134e96bca49.lean/declarations/head-300-lower--aa4f5141b484a8ab1c644165.md) | 117 | `result-track:aa4f5141b484a8ab1c644165ea3ea52c606bf1782e28cd8c47ee3b4c0bf37073` |
| 14 | `theorem` | [head_300_upper](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2TailBounds/Varianteeeab5febcb7a504fa0339a9e5cd0528b22b8584e17a3cccd152a134e96bca49.lean/declarations/head-300-upper--95f83a1c166e2941230d084f.md) | 121 | `result-track:95f83a1c166e2941230d084feb38d1ac27e230b89b5dbfc40603b5664550df75` |
| 15 | `theorem` | [tail_300](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2TailBounds/Varianteeeab5febcb7a504fa0339a9e5cd0528b22b8584e17a3cccd152a134e96bca49.lean/declarations/tail-300--97eb932a164b49fb4f25509f.md) | 125 | `result-track:97eb932a164b49fb4f25509fd4871e86816b77d7531e674cb56c884c69f991c3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
