# Verification target: GRWTSK.Analysis.MeasureTheory.Inner.Variant5c9835a8da1d19b2f6ff539a18d10736793a96bddc49595694ba9de25ba6c5f0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f99d2ef69bf5a179b1d9363fc35f64bd25817f44",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Inner/Variant5c9835a8da1d19b2f6ff539a18d10736793a96bddc49595694ba9de25ba6c5f0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Inner/Variant5c9835a8da1d19b2f6ff539a18d10736793a96bddc49595694ba9de25ba6c5f0.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Inner/Variant5c9835a8da1d19b2f6ff539a18d10736793a96bddc49595694ba9de25ba6c5f0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f99d2ef69bf5a179b1d9363fc35f64bd25817f44`.

Source path: `GRWTSK/Analysis/MeasureTheory/Inner/Variant5c9835a8da1d19b2f6ff539a18d10736793a96bddc49595694ba9de25ba6c5f0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Inner/Variant5c9835a8da1d19b2f6ff539a18d10736793a96bddc49595694ba9de25ba6c5f0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Continuous` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.StronglyMeasurable.AEStronglyMeasurable` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [inner](../../../../../mathematics/Analysis/MeasureTheory/Inner/Variant5c9835a8da1d19b2f6ff539a18d10736793a96bddc49595694ba9de25ba6c5f0.lean/declarations/inner--f15e725408094aed7958df8d.md) | 34 | `result-track:f15e725408094aed7958df8d894a0c9b08602719b6d1ec3c7447bfcd4e544922` |
| 2 | `theorem` | [re](../../../../../mathematics/Analysis/MeasureTheory/Inner/Variant5c9835a8da1d19b2f6ff539a18d10736793a96bddc49595694ba9de25ba6c5f0.lean/declarations/re--bd98c8af4ad63f8110f0c4a1.md) | 44 | `result-track:bd98c8af4ad63f8110f0c4a1aa39717bf79d0de77262acaeca3994977e9b4584` |
| 3 | `theorem` | [im](../../../../../mathematics/Analysis/MeasureTheory/Inner/Variant5c9835a8da1d19b2f6ff539a18d10736793a96bddc49595694ba9de25ba6c5f0.lean/declarations/im--14444921a14ebaa732595ae1.md) | 49 | `result-track:14444921a14ebaa732595ae11d34f0c51c6129b18ba6c877ca92d6b94bb97448` |
| 4 | `theorem` | [inner](../../../../../mathematics/Analysis/MeasureTheory/Inner/Variant5c9835a8da1d19b2f6ff539a18d10736793a96bddc49595694ba9de25ba6c5f0.lean/declarations/inner--e8d70aad0afb5489f31a89a4.md) | 54 | `result-track:e8d70aad0afb5489f31a89a44ee61059ee86f0edaebd55af1f038f8e648badac` |
| 5 | `lemma` | [inner_const](../../../../../mathematics/Analysis/MeasureTheory/Inner/Variant5c9835a8da1d19b2f6ff539a18d10736793a96bddc49595694ba9de25ba6c5f0.lean/declarations/inner-const--bde88df1734400d35feebc68.md) | 60 | `result-track:bde88df1734400d35feebc6898e53992d3239d4433daf101f2eafea508bca06a` |
| 6 | `lemma` | [const_inner](../../../../../mathematics/Analysis/MeasureTheory/Inner/Variant5c9835a8da1d19b2f6ff539a18d10736793a96bddc49595694ba9de25ba6c5f0.lean/declarations/const-inner--988c8c64d23c9287c357703b.md) | 64 | `result-track:988c8c64d23c9287c357703b2366c6dbf9bd97b17912b0bbd5c2a4eec23fe084` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
