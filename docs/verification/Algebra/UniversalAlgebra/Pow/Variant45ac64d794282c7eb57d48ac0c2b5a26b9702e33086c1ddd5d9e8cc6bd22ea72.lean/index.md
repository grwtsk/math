# Verification target: GRWTSK.Algebra.UniversalAlgebra.Pow.Variant45ac64d794282c7eb57d48ac0c2b5a26b9702e33086c1ddd5d9e8cc6bd22ea72

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3bc99c1a077584615a300d3659260a21744bd5b5",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Pow/Variant45ac64d794282c7eb57d48ac0c2b5a26b9702e33086c1ddd5d9e8cc6bd22ea72.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Pow/Variant45ac64d794282c7eb57d48ac0c2b5a26b9702e33086c1ddd5d9e8cc6bd22ea72.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Pow/Variant45ac64d794282c7eb57d48ac0c2b5a26b9702e33086c1ddd5d9e8cc6bd22ea72.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3bc99c1a077584615a300d3659260a21744bd5b5`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Pow/Variant45ac64d794282c7eb57d48ac0c2b5a26b9702e33086c1ddd5d9e8cc6bd22ea72.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Pow/Variant45ac64d794282c7eb57d48ac0c2b5a26b9702e33086c1ddd5d9e8cc6bd22ea72.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Group.Finset.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Regular.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [IsLeftRegular.prod](../../../../../mathematics/Algebra/UniversalAlgebra/Pow/Variant45ac64d794282c7eb57d48ac0c2b5a26b9702e33086c1ddd5d9e8cc6bd22ea72.lean/declarations/isleftregular-prod--fb81d22c9a77802434748051.md) | 32 | `result-track:fb81d22c9a77802434748051d55865607875209e48861e59f30eec6e93ad055b` |
| 2 | `lemma` | [IsRightRegular.prod](../../../../../mathematics/Algebra/UniversalAlgebra/Pow/Variant45ac64d794282c7eb57d48ac0c2b5a26b9702e33086c1ddd5d9e8cc6bd22ea72.lean/declarations/isrightregular-prod--03662f6fdc69b5c3f5a0135b.md) | 36 | `result-track:03662f6fdc69b5c3f5a0135b2244c688fd219e3af92995916390f1cd8cc521cb` |
| 3 | `lemma` | [IsRegular.prod](../../../../../mathematics/Algebra/UniversalAlgebra/Pow/Variant45ac64d794282c7eb57d48ac0c2b5a26b9702e33086c1ddd5d9e8cc6bd22ea72.lean/declarations/isregular-prod--22a4c6e40d14f5912ce829f9.md) | 40 | `result-track:22a4c6e40d14f5912ce829f9e8e17adb984b534afeee67ecd186efb196a402b9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
