# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.PrimeFrequency.Variant942909b2c2c53964d0ca7c1c21833b9e4c3f3cd7e838ac840c6c5b3fb71e2cd4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0bf17950e30121fc8e6a21d113c60ca72a1e75ff",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PrimeFrequency/Variant942909b2c2c53964d0ca7c1c21833b9e4c3f3cd7e838ac840c6c5b3fb71e2cd4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeFrequency/Variant942909b2c2c53964d0ca7c1c21833b9e4c3f3cd7e838ac840c6c5b3fb71e2cd4.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeFrequency/Variant942909b2c2c53964d0ca7c1c21833b9e4c3f3cd7e838ac840c6c5b3fb71e2cd4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0bf17950e30121fc8e6a21d113c60ca72a1e75ff`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/PrimeFrequency/Variant942909b2c2c53964d0ca7c1c21833b9e4c3f3cd7e838ac840c6c5b3fb71e2cd4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/PrimeFrequency/Variant942909b2c2c53964d0ca7c1c21833b9e4c3f3cd7e838ac840c6c5b3fb71e2cd4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Prime.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Card` — import line 7; external provider; requires a separately pinned dependency.
- `Noeoueue.Memory.TypeGraph` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [FrequencyStatus](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeFrequency/Variant942909b2c2c53964d0ca7c1c21833b9e4c3f3cd7e838ac840c6c5b3fb71e2cd4.lean/declarations/frequencystatus--2ed8ca3f878a86744519c3bd.md) | 15 | `declaration-track:2ed8ca3f878a86744519c3bd0d64b3d37ab95a335e78dd9bf7f02ea81d9a00fc` |
| 2 | `def` | [incidenceCount](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeFrequency/Variant942909b2c2c53964d0ca7c1c21833b9e4c3f3cd7e838ac840c6c5b3fb71e2cd4.lean/declarations/incidencecount--4d897b1da8aba281ead69227.md) | 19 | `declaration-track:4d897b1da8aba281ead692277bf3c83f8df740c573e973ae080d3a602512e131` |
| 3 | `def` | [exactAt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeFrequency/Variant942909b2c2c53964d0ca7c1c21833b9e4c3f3cd7e838ac840c6c5b3fb71e2cd4.lean/declarations/exactat--a642c0d7c70b5f14d9f86ae2.md) | 22 | `declaration-track:a642c0d7c70b5f14d9f86ae2d039865c8b0a8adcf535c2ee7ea495e109e90097` |
| 4 | `theorem` | [failed_target_is_residual](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeFrequency/Variant942909b2c2c53964d0ca7c1c21833b9e4c3f3cd7e838ac840c6c5b3fb71e2cd4.lean/declarations/failed-target-is-residual--3013f131af5824684be264b8.md) | 25 | `result-track:3013f131af5824684be264b8e036bb48cd91c450671df5f2431ceaac98f60158` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
