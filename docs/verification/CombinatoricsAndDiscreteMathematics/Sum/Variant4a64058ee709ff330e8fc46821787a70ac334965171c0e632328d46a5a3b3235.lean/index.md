# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Sum.Variant4a64058ee709ff330e8fc46821787a70ac334965171c0e632328d46a5a3b3235

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2a4dc7e7581fcc864e5966389465e7e608719672",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Sum/Variant4a64058ee709ff330e8fc46821787a70ac334965171c0e632328d46a5a3b3235.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variant4a64058ee709ff330e8fc46821787a70ac334965171c0e632328d46a5a3b3235.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variant4a64058ee709ff330e8fc46821787a70ac334965171c0e632328d46a5a3b3235.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2a4dc7e7581fcc864e5966389465e7e608719672`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Sum/Variant4a64058ee709ff330e8fc46821787a70ac334965171c0e632328d46a5a3b3235.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Sum/Variant4a64058ee709ff330e8fc46821787a70ac334965171c0e632328d46a5a3b3235.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Group.Multiset` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [disjSum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variant4a64058ee709ff330e8fc46821787a70ac334965171c0e632328d46a5a3b3235.lean/declarations/disjsum--9536f560b0078a2abdfbfd5a.md) | 35 | `declaration-track:9536f560b0078a2abdfbfd5afcb6a879bf96a6c84d80aaea769af30268e6a9f4` |
| 2 | `theorem` | [zero_disjSum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variant4a64058ee709ff330e8fc46821787a70ac334965171c0e632328d46a5a3b3235.lean/declarations/zero-disjsum--e67c5afeb7134ddb6b439aab.md) | 39 | `result-track:e67c5afeb7134ddb6b439aabdcf8904ce9e30ee3dffa96d10d1a6bc5fa0912cf` |
| 3 | `theorem` | [disjSum_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variant4a64058ee709ff330e8fc46821787a70ac334965171c0e632328d46a5a3b3235.lean/declarations/disjsum-zero--542b94f3abed27d92dec27a1.md) | 43 | `result-track:542b94f3abed27d92dec27a1ed9a61d4ee7e46df0e496b9aa7f9676ae861361b` |
| 4 | `theorem` | [card_disjSum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variant4a64058ee709ff330e8fc46821787a70ac334965171c0e632328d46a5a3b3235.lean/declarations/card-disjsum--227815de02bd27e04e99d693.md) | 47 | `result-track:227815de02bd27e04e99d6939b8b59fd6c616a90a0aead1dcb9b10feb0ad5f22` |
| 5 | `theorem` | [mem_disjSum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variant4a64058ee709ff330e8fc46821787a70ac334965171c0e632328d46a5a3b3235.lean/declarations/mem-disjsum--70f9a1f1242a47da135e0f4b.md) | 52 | `result-track:70f9a1f1242a47da135e0f4b5e3312683bd696c09fe969503510b60aef3abcfb` |
| 6 | `theorem` | [inl_mem_disjSum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variant4a64058ee709ff330e8fc46821787a70ac334965171c0e632328d46a5a3b3235.lean/declarations/inl-mem-disjsum--1887a1ffcd3169368375e5cf.md) | 56 | `result-track:1887a1ffcd3169368375e5cf32228b8d646395013f77abe034d03cd17ea0ac8a` |
| 7 | `theorem` | [inr_mem_disjSum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variant4a64058ee709ff330e8fc46821787a70ac334965171c0e632328d46a5a3b3235.lean/declarations/inr-mem-disjsum--fbb56b2a6f703fb456aebc0f.md) | 63 | `result-track:fbb56b2a6f703fb456aebc0f85087cadbd73849b2c7744ccd5a44420e9aa870e` |
| 8 | `theorem` | [disjSum_mono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variant4a64058ee709ff330e8fc46821787a70ac334965171c0e632328d46a5a3b3235.lean/declarations/disjsum-mono--5cc28be5639be0b5d8002e3e.md) | 69 | `result-track:5cc28be5639be0b5d8002e3e07395ebcbd51bad88aeb3fb0c60e0f836ebe3d87` |
| 9 | `theorem` | [disjSum_mono_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variant4a64058ee709ff330e8fc46821787a70ac334965171c0e632328d46a5a3b3235.lean/declarations/disjsum-mono-left--8bb586843561e395f6bdf3e5.md) | 72 | `result-track:8bb586843561e395f6bdf3e59ab64b00a45bf3ad9cd03774f726e9176db7cc73` |
| 10 | `theorem` | [disjSum_mono_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variant4a64058ee709ff330e8fc46821787a70ac334965171c0e632328d46a5a3b3235.lean/declarations/disjsum-mono-right--a4ccc38f5e2093bc65cb2cc0.md) | 75 | `result-track:a4ccc38f5e2093bc65cb2cc0092846b29244d216ae9d507fb5590c0bd396d731` |
| 11 | `theorem` | [disjSum_lt_disjSum_of_lt_of_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variant4a64058ee709ff330e8fc46821787a70ac334965171c0e632328d46a5a3b3235.lean/declarations/disjsum-lt-disjsum-of-lt-of-le--bd4c7de8a6283de7512aff4e.md) | 79 | `result-track:bd4c7de8a6283de7512aff4ef75ba792f0f9f17a0efd8eb3293fede77c4aa151` |
| 12 | `theorem` | [disjSum_lt_disjSum_of_le_of_lt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variant4a64058ee709ff330e8fc46821787a70ac334965171c0e632328d46a5a3b3235.lean/declarations/disjsum-lt-disjsum-of-le-of-lt--7730b6178cec1a4179d82138.md) | 83 | `result-track:7730b6178cec1a4179d821384e900b40680747c2169b144574e372f3eef21fc3` |
| 13 | `theorem` | [disjSum_strictMono_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variant4a64058ee709ff330e8fc46821787a70ac334965171c0e632328d46a5a3b3235.lean/declarations/disjsum-strictmono-left--b9f77e9b6f568e8997a9d838.md) | 87 | `result-track:b9f77e9b6f568e8997a9d838548c983809c67a5d721dad21a27eea4e1e7b188b` |
| 14 | `theorem` | [disjSum_strictMono_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variant4a64058ee709ff330e8fc46821787a70ac334965171c0e632328d46a5a3b3235.lean/declarations/disjsum-strictmono-right--6d0cb831e2231d2058b08865.md) | 90 | `result-track:6d0cb831e2231d2058b08865272a38831212159d26906430ed3a6335bc10eec5` |
| 15 | `theorem` | [Nodup.disjSum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variant4a64058ee709ff330e8fc46821787a70ac334965171c0e632328d46a5a3b3235.lean/declarations/nodup-disjsum--1ad0746a088fded963cb1ac7.md) | 94 | `result-track:1ad0746a088fded963cb1ac73003aa2cd3b03ad6a0790691191ce7073c94510d` |
| 16 | `theorem` | [map_disjSum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variant4a64058ee709ff330e8fc46821787a70ac334965171c0e632328d46a5a3b3235.lean/declarations/map-disjsum--e9fd9c032722360d6bece626.md) | 99 | `result-track:e9fd9c032722360d6bece626d94a2ea832a45a9a2fd833dfee241606a6f15a1e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
