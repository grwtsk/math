# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.PrimeFrequency.Variant3b225e7dfcb7273a8d759587128675a865188a30e961a53e613c00158a68b9a3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "659cd2eb2dc2a953e6afb9a0153a773be555475c",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PrimeFrequency/Variant3b225e7dfcb7273a8d759587128675a865188a30e961a53e613c00158a68b9a3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeFrequency/Variant3b225e7dfcb7273a8d759587128675a865188a30e961a53e613c00158a68b9a3.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeFrequency/Variant3b225e7dfcb7273a8d759587128675a865188a30e961a53e613c00158a68b9a3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `659cd2eb2dc2a953e6afb9a0153a773be555475c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/PrimeFrequency/Variant3b225e7dfcb7273a8d759587128675a865188a30e961a53e613c00158a68b9a3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/PrimeFrequency/Variant3b225e7dfcb7273a8d759587128675a865188a30e961a53e613c00158a68b9a3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Prime.Basic` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Card` — import line 2; external provider; requires a separately pinned dependency.
- `Noeoueue.Memory.TypeGraph` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [FrequencyStatus](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeFrequency/Variant3b225e7dfcb7273a8d759587128675a865188a30e961a53e613c00158a68b9a3.lean/declarations/frequencystatus--2309ea19bdfb7d86c4d54450.md) | 7 | `declaration-track:2309ea19bdfb7d86c4d5445062b98c9ae07660859200315e2c62a43bd8b4ad9a` |
| 2 | `def` | [incidenceCount](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeFrequency/Variant3b225e7dfcb7273a8d759587128675a865188a30e961a53e613c00158a68b9a3.lean/declarations/incidencecount--c66ccb02e955cae17d6eefcf.md) | 11 | `declaration-track:c66ccb02e955cae17d6eefcfe8c2bd3231b46f6a9cb277b32d6db8a91393f368` |
| 3 | `def` | [exactAt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeFrequency/Variant3b225e7dfcb7273a8d759587128675a865188a30e961a53e613c00158a68b9a3.lean/declarations/exactat--c64b5b281acf07349768491d.md) | 14 | `declaration-track:c64b5b281acf07349768491de02298061da684c35cb5d1ccdf8e6814fb175595` |
| 4 | `theorem` | [failed_target_is_residual](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeFrequency/Variant3b225e7dfcb7273a8d759587128675a865188a30e961a53e613c00158a68b9a3.lean/declarations/failed-target-is-residual--7aa35d4c11f3ee266993c9d5.md) | 17 | `result-track:7aa35d4c11f3ee266993c9d5414e9286bc338479d33c73d52abc12a2ae150308` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
