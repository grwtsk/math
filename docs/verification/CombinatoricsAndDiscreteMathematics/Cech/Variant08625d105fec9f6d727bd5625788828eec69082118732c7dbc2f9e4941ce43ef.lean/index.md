# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Cech.Variant08625d105fec9f6d727bd5625788828eec69082118732c7dbc2f9e4941ce43ef

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ffeb0ebd1d6b4359102f4877d14dc4b79c31b04a",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Cech/Variant08625d105fec9f6d727bd5625788828eec69082118732c7dbc2f9e4941ce43ef.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Cech/Variant08625d105fec9f6d727bd5625788828eec69082118732c7dbc2f9e4941ce43ef.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Cech/Variant08625d105fec9f6d727bd5625788828eec69082118732c7dbc2f9e4941ce43ef.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ffeb0ebd1d6b4359102f4877d14dc4b79c31b04a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Cech/Variant08625d105fec9f6d727bd5625788828eec69082118732c7dbc2f9e4941ce43ef.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Cech/Variant08625d105fec9f6d727bd5625788828eec69082118732c7dbc2f9e4941ce43ef.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.ContinuousAssurance.Communication.Restriction` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FiniteCechComplex](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Cech/Variant08625d105fec9f6d727bd5625788828eec69082118732c7dbc2f9e4941ce43ef.lean/declarations/finitecechcomplex--f89831da389cba8ac1db81ee.md) | 17 | `declaration-track:f89831da389cba8ac1db81eea288b6d386c2617ce7fd37faeec702b52461fafc` |
| 2 | `def` | [Cocycle1](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Cech/Variant08625d105fec9f6d727bd5625788828eec69082118732c7dbc2f9e4941ce43ef.lean/declarations/cocycle1--c3d057ca3febbaac532c69ab.md) | 46 | `declaration-track:c3d057ca3febbaac532c69ab6cc0ebe0b55f0c0c664a896e9da85ebbd9b392e7` |
| 3 | `def` | [Coboundary1](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Cech/Variant08625d105fec9f6d727bd5625788828eec69082118732c7dbc2f9e4941ce43ef.lean/declarations/coboundary1--f212fd234d863f3f13de662c.md) | 49 | `declaration-track:f212fd234d863f3f13de662c3fc27a4934ebd5dfdbc5b34eb34ff0c97fff41d9` |
| 4 | `def` | [cocycles1](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Cech/Variant08625d105fec9f6d727bd5625788828eec69082118732c7dbc2f9e4941ce43ef.lean/declarations/cocycles1--03186ad729ebdb15622bce91.md) | 53 | `declaration-track:03186ad729ebdb15622bce91ee8a4861c5702517773ac2cb2c2703b09873ddf7` |
| 5 | `def` | [coboundaries1](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Cech/Variant08625d105fec9f6d727bd5625788828eec69082118732c7dbc2f9e4941ce43ef.lean/declarations/coboundaries1--1065cb3b9dfd5e404d188499.md) | 61 | `declaration-track:1065cb3b9dfd5e404d188499b743d81a118962e84fef30d2cfb0644a0e3c89e5` |
| 6 | `theorem` | [mem_cocycles1_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Cech/Variant08625d105fec9f6d727bd5625788828eec69082118732c7dbc2f9e4941ce43ef.lean/declarations/mem-cocycles1-iff--cdbd45b9c71cfd8d55b60dea.md) | 71 | `result-track:cdbd45b9c71cfd8d55b60dea707d81c1776c1791380d47f300e4997803f724f4` |
| 7 | `theorem` | [mem_coboundaries1_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Cech/Variant08625d105fec9f6d727bd5625788828eec69082118732c7dbc2f9e4941ce43ef.lean/declarations/mem-coboundaries1-iff--06ffdbdbe41bb1889c4d4117.md) | 80 | `result-track:06ffdbdbe41bb1889c4d411716802f30959c0ed95722ae468917f36c124d8bb3` |
| 8 | `theorem` | [differential_sq_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Cech/Variant08625d105fec9f6d727bd5625788828eec69082118732c7dbc2f9e4941ce43ef.lean/declarations/differential-sq-zero--d7d3c616f91e207061d42e3c.md) | 90 | `result-track:d7d3c616f91e207061d42e3c786e1bdc3ca1bd8cd577ef233fd0f5d0f79a569e` |
| 9 | `theorem` | [coboundary_is_cocycle](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Cech/Variant08625d105fec9f6d727bd5625788828eec69082118732c7dbc2f9e4941ce43ef.lean/declarations/coboundary-is-cocycle--6c22a7ab4f804a4bce2ae06f.md) | 97 | `result-track:6c22a7ab4f804a4bce2ae06ff67f844432c14d4b07a192b6fec9177dd2975872` |
| 10 | `structure` | [FiniteCechPresentation](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Cech/Variant08625d105fec9f6d727bd5625788828eec69082118732c7dbc2f9e4941ce43ef.lean/declarations/finitecechpresentation--a45b7ad0bca76404eb58da60.md) | 112 | `declaration-track:a45b7ad0bca76404eb58da602c585e288e181fa7bf705b3a455a96a04568e221` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
