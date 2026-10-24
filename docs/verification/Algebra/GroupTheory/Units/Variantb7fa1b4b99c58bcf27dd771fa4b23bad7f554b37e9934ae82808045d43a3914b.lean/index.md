# Verification target: GRWTSK.Algebra.GroupTheory.Units.Variantb7fa1b4b99c58bcf27dd771fa4b23bad7f554b37e9934ae82808045d43a3914b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "925c8d06bf94d154a130ff6857ed53a3b2e8f19e",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Units/Variantb7fa1b4b99c58bcf27dd771fa4b23bad7f554b37e9934ae82808045d43a3914b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Units/Variantb7fa1b4b99c58bcf27dd771fa4b23bad7f554b37e9934ae82808045d43a3914b.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Units/Variantb7fa1b4b99c58bcf27dd771fa4b23bad7f554b37e9934ae82808045d43a3914b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `925c8d06bf94d154a130ff6857ed53a3b2e8f19e`.

Source path: `GRWTSK/Algebra/GroupTheory/Units/Variantb7fa1b4b99c58bcf27dd771fa4b23bad7f554b37e9934ae82808045d43a3914b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Units/Variantb7fa1b4b99c58bcf27dd771fa4b23bad7f554b37e9934ae82808045d43a3914b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Nat.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Units.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Unique` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [units_eq_one](../../../../../mathematics/Algebra/GroupTheory/Units/Variantb7fa1b4b99c58bcf27dd771fa4b23bad7f554b37e9934ae82808045d43a3914b.lean/declarations/units-eq-one--a84c575cc90de62bce00e348.md) | 20 | `result-track:a84c575cc90de62bce00e348250ba21ff3948679b95a47c6b46e1601014bb547` |
| 2 | `lemma` | [addUnits_eq_zero](../../../../../mathematics/Algebra/GroupTheory/Units/Variantb7fa1b4b99c58bcf27dd771fa4b23bad7f554b37e9934ae82808045d43a3914b.lean/declarations/addunits-eq-zero--29b628226a4f9ad8fcc84108.md) | 22 | `result-track:29b628226a4f9ad8fcc841088750bb6b1b6396cb91402eef701ed6a3487eb0ca` |
| 3 | `instance` | [unique_units](../../../../../mathematics/Algebra/GroupTheory/Units/Variantb7fa1b4b99c58bcf27dd771fa4b23bad7f554b37e9934ae82808045d43a3914b.lean/declarations/unique-units--b3257aedd6d95e9d6373f901.md) | 25 | `declaration-track:b3257aedd6d95e9d6373f901c7b3929c0e177f6a5bca1206fba79d6db7a802a3` |
| 4 | `instance` | [unique_addUnits](../../../../../mathematics/Algebra/GroupTheory/Units/Variantb7fa1b4b99c58bcf27dd771fa4b23bad7f554b37e9934ae82808045d43a3914b.lean/declarations/unique-addunits--754543fc172ba0caccd55274.md) | 29 | `declaration-track:754543fc172ba0caccd5527482fca5dd28b3059ed3185f7f5585c1ed6d2fad3c` |
| 5 | `lemma` | [isUnit_iff](../../../../../mathematics/Algebra/GroupTheory/Units/Variantb7fa1b4b99c58bcf27dd771fa4b23bad7f554b37e9934ae82808045d43a3914b.lean/declarations/isunit-iff--ecf08a00a643a6f2fc01daf0.md) | 34 | `result-track:ecf08a00a643a6f2fc01daf073995b7a405814f549ccebe4ad9f8656baa121fe` |
| 6 | `lemma` | [isAddUnit_iff](../../../../../mathematics/Algebra/GroupTheory/Units/Variantb7fa1b4b99c58bcf27dd771fa4b23bad7f554b37e9934ae82808045d43a3914b.lean/declarations/isaddunit-iff--7889ab0c6f08980d5fc1f52b.md) | 37 | `result-track:7889ab0c6f08980d5fc1f52b2f5cd14f069aee0226a621e31c8dd2639d79bc39` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
