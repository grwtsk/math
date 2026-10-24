# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.Partition.Varianta2e9f401740b0be6e18948a301da201a0c6312a3b9232c8bb98ba8edc8edf953

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "767ebb04cd482bc26ecf7acc300f27bce3fb7ddd",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Partition/Varianta2e9f401740b0be6e18948a301da201a0c6312a3b9232c8bb98ba8edc8edf953.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Partition/Varianta2e9f401740b0be6e18948a301da201a0c6312a3b9232c8bb98ba8edc8edf953.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Partition/Varianta2e9f401740b0be6e18948a301da201a0c6312a3b9232c8bb98ba8edc8edf953.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `767ebb04cd482bc26ecf7acc300f27bce3fb7ddd`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Partition/Varianta2e9f401740b0be6e18948a301da201a0c6312a3b9232c8bb98ba8edc8edf953.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Partition/Varianta2e9f401740b0be6e18948a301da201a0c6312a3b9232c8bb98ba8edc8edf953.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.Composition` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Parity` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.ApplyFun` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Partition](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Partition/Varianta2e9f401740b0be6e18948a301da201a0c6312a3b9232c8bb98ba8edc8edf953.lean/declarations/partition--7f55a21c5b0012e6cb40b229.md) | 56 | `declaration-track:7f55a21c5b0012e6cb40b229f533420d21fd69c8b8a2acba1f83ddaadb4ba6ea` |
| 2 | `instance` | [decidableEqParition](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Partition/Varianta2e9f401740b0be6e18948a301da201a0c6312a3b9232c8bb98ba8edc8edf953.lean/declarations/decidableeqparition--718e079a253f8efc5939ce3f.md) | 69 | `declaration-track:718e079a253f8efc5939ce3f633c60445e76e74d7c3fe14b5380e1a2883a7716` |
| 3 | `def` | [ofComposition](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Partition/Varianta2e9f401740b0be6e18948a301da201a0c6312a3b9232c8bb98ba8edc8edf953.lean/declarations/ofcomposition--00ecd096a0869208c4bb6346.md) | 73 | `declaration-track:00ecd096a0869208c4bb6346b7031d88e7fc8c7dd735e2693b6a735fb05cefa2` |
| 4 | `theorem` | [ofComposition_surj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Partition/Varianta2e9f401740b0be6e18948a301da201a0c6312a3b9232c8bb98ba8edc8edf953.lean/declarations/ofcomposition-surj--08e883a8be3370d22db80ca7.md) | 80 | `result-track:08e883a8be3370d22db80ca7b18219375c5ae89985a66d93b8300d4d39dc85d1` |
| 5 | `def` | [ofSums](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Partition/Varianta2e9f401740b0be6e18948a301da201a0c6312a3b9232c8bb98ba8edc8edf953.lean/declarations/ofsums--424cce58b0b5aeff8263d30f.md) | 92 | `declaration-track:424cce58b0b5aeff8263d30fce2bb941fa447a05f510d5225d656c1c8d79444e` |
| 6 | `def` | [ofMultiset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Partition/Varianta2e9f401740b0be6e18948a301da201a0c6312a3b9232c8bb98ba8edc8edf953.lean/declarations/ofmultiset--c232e78b4450b84bc3102dd0.md) | 106 | `declaration-track:c232e78b4450b84bc3102dd0837ce9fca99cf604960998139709f88bee1bf45a` |
| 7 | `def` | [indiscretePartition](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Partition/Varianta2e9f401740b0be6e18948a301da201a0c6312a3b9232c8bb98ba8edc8edf953.lean/declarations/indiscretepartition--9fdbd955ef23d1732d89765a.md) | 111 | `declaration-track:9fdbd955ef23d1732d89765a50798af01946edec594f267ee764025af0a8d5af` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Partition/Varianta2e9f401740b0be6e18948a301da201a0c6312a3b9232c8bb98ba8edc8edf953.lean/declarations/instance--db30138a6efa19bfa6802771.md) | 115 | `declaration-track:db30138a6efa19bfa68027710635570f0628a9e68b0c75cb8b559f9de060e07b` |
| 9 | `theorem` | [count_ofSums_of_ne_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Partition/Varianta2e9f401740b0be6e18948a301da201a0c6312a3b9232c8bb98ba8edc8edf953.lean/declarations/count-ofsums-of-ne-zero--aa6a85f3500717bdaef878bd.md) | 123 | `result-track:aa6a85f3500717bdaef878bd9e63b933b2b7d20c4afddbae73d77726bddc28a5` |
| 10 | `theorem` | [count_ofSums_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Partition/Varianta2e9f401740b0be6e18948a301da201a0c6312a3b9232c8bb98ba8edc8edf953.lean/declarations/count-ofsums-zero--e1d3c7d881f8beb9c2c118fc.md) | 128 | `result-track:e1d3c7d881f8beb9c2c118fce0530a3dc0996df1aabda3c59e4d799658ffd18a` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Partition/Varianta2e9f401740b0be6e18948a301da201a0c6312a3b9232c8bb98ba8edc8edf953.lean/declarations/instance--a17898f9783adde1e906a29a.md) | 136 | `declaration-track:a17898f9783adde1e906a29a5f288339b147ddc1afdcee16ffb8cb6fd11551d7` |
| 12 | `def` | [odds](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Partition/Varianta2e9f401740b0be6e18948a301da201a0c6312a3b9232c8bb98ba8edc8edf953.lean/declarations/odds--191822720225424bc4afd6b9.md) | 140 | `declaration-track:191822720225424bc4afd6b9f8890f69ae310bce3ae103e7e74f9d81528f4ef5` |
| 13 | `def` | [distincts](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Partition/Varianta2e9f401740b0be6e18948a301da201a0c6312a3b9232c8bb98ba8edc8edf953.lean/declarations/distincts--800582c9409b599bf09f5d4a.md) | 145 | `declaration-track:800582c9409b599bf09f5d4a89ad8f21fa94c0a016c4bc390107c9ba3d1c56d0` |
| 14 | `def` | [oddDistincts](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Partition/Varianta2e9f401740b0be6e18948a301da201a0c6312a3b9232c8bb98ba8edc8edf953.lean/declarations/odddistincts--53180ca6d59224b34f10340e.md) | 150 | `declaration-track:53180ca6d59224b34f10340eaf87e57c2ba177ab8beeeaafad1c7228747293ad` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
