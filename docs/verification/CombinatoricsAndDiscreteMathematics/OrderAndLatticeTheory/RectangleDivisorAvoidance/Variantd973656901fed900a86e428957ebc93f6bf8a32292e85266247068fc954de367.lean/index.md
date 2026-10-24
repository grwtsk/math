# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.RectangleDivisorAvoidance.Variantd973656901fed900a86e428957ebc93f6bf8a32292e85266247068fc954de367

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b5bf6a17e7a463b64b51dfe743ee17250c8d9f4e",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/RectangleDivisorAvoidance/Variantd973656901fed900a86e428957ebc93f6bf8a32292e85266247068fc954de367.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/RectangleDivisorAvoidance/Variantd973656901fed900a86e428957ebc93f6bf8a32292e85266247068fc954de367.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/RectangleDivisorAvoidance/Variantd973656901fed900a86e428957ebc93f6bf8a32292e85266247068fc954de367.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b5bf6a17e7a463b64b51dfe743ee17250c8d9f4e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/RectangleDivisorAvoidance/Variantd973656901fed900a86e428957ebc93f6bf8a32292e85266247068fc954de367.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/RectangleDivisorAvoidance/Variantd973656901fed900a86e428957ebc93f6bf8a32292e85266247068fc954de367.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_height_avoiding_finite](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/RectangleDivisorAvoidance/Variantd973656901fed900a86e428957ebc93f6bf8a32292e85266247068fc954de367.lean/declarations/exists-height-avoiding-finite--64b5754fdec6f3ef70e2e87f.md) | 29 | `result-track:64b5754fdec6f3ef70e2e87fe2f9bb82faa89a9301d8ed0c94e822242d74f0f0` |
| 2 | `theorem` | [exists_real_avoiding_finite](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/RectangleDivisorAvoidance/Variantd973656901fed900a86e428957ebc93f6bf8a32292e85266247068fc954de367.lean/declarations/exists-real-avoiding-finite--db70ede05602be9b75c0e856.md) | 39 | `result-track:db70ede05602be9b75c0e856597ccd05b466895fb4b708ea126457c1b0b6bc75` |
| 3 | `theorem` | [exists_height_avoiding_rectangleDivisor](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/RectangleDivisorAvoidance/Variantd973656901fed900a86e428957ebc93f6bf8a32292e85266247068fc954de367.lean/declarations/exists-height-avoiding-rectangledivisor--6a1df4ed5e459fa88651b7ed.md) | 50 | `result-track:6a1df4ed5e459fa88651b7eda2494872edcc8e4d6266c492131944f3421798b5` |
| 4 | `theorem` | [exists_real_avoiding_rectangleDivisor](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/RectangleDivisorAvoidance/Variantd973656901fed900a86e428957ebc93f6bf8a32292e85266247068fc954de367.lean/declarations/exists-real-avoiding-rectangledivisor--122ce506f36e8427ba581b5d.md) | 64 | `result-track:122ce506f36e8427ba581b5d409a05fea6914e0e3d659c548764a5b77d679a6f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
