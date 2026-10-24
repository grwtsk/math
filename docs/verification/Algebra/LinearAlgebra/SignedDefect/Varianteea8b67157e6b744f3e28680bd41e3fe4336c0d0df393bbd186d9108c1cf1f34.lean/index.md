# Verification target: GRWTSK.Algebra.LinearAlgebra.SignedDefect.Varianteea8b67157e6b744f3e28680bd41e3fe4336c0d0df393bbd186d9108c1cf1f34

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6c1a644729112f3c1f0e703cc817c34a37965a24",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/SignedDefect/Varianteea8b67157e6b744f3e28680bd41e3fe4336c0d0df393bbd186d9108c1cf1f34.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/SignedDefect/Varianteea8b67157e6b744f3e28680bd41e3fe4336c0d0df393bbd186d9108c1cf1f34.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/SignedDefect/Varianteea8b67157e6b744f3e28680bd41e3fe4336c0d0df393bbd186d9108c1cf1f34.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6c1a644729112f3c1f0e703cc817c34a37965a24`.

Source path: `GRWTSK/Algebra/LinearAlgebra/SignedDefect/Varianteea8b67157e6b744f3e28680bd41e3fe4336c0d0df393bbd186d9108c1cf1f34.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/SignedDefect/Varianteea8b67157e6b744f3e28680bd41e3fe4336c0d0df393bbd186d9108c1cf1f34.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceArithmeticOrbit` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NoncommRing` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [defect](../../../../../mathematics/Algebra/LinearAlgebra/SignedDefect/Varianteea8b67157e6b744f3e28680bd41e3fe4336c0d0df393bbd186d9108c1cf1f34.lean/declarations/defect--451d35aced2d3c75d24f610f.md) | 25 | `declaration-track:451d35aced2d3c75d24f610f349467d41689a1dd17d3fb0585f1e34ae9b52136` |
| 2 | `theorem` | [defect_comp](../../../../../mathematics/Algebra/LinearAlgebra/SignedDefect/Varianteea8b67157e6b744f3e28680bd41e3fe4336c0d0df393bbd186d9108c1cf1f34.lean/declarations/defect-comp--9cbec455f071479191991ed4.md) | 27 | `result-track:9cbec455f071479191991ed4ec840fbf816e6f1c694a332a3cca3db8234203cf` |
| 3 | `theorem` | [defect_involution](../../../../../mathematics/Algebra/LinearAlgebra/SignedDefect/Varianteea8b67157e6b744f3e28680bd41e3fe4336c0d0df393bbd186d9108c1cf1f34.lean/declarations/defect-involution--7e4bd3009770001c9a8d3ce3.md) | 32 | `result-track:7e4bd3009770001c9a8d3ce3ae0ee0117aab5c69d02473a0e52e0a96270074f8` |
| 4 | `def` | [pairing](../../../../../mathematics/Algebra/LinearAlgebra/SignedDefect/Varianteea8b67157e6b744f3e28680bd41e3fe4336c0d0df393bbd186d9108c1cf1f34.lean/declarations/pairing--5d205ce58e6c6586d10b8d26.md) | 38 | `declaration-track:5d205ce58e6c6586d10b8d261e9d419dc073cc9f217bcd567950060144651e57` |
| 5 | `theorem` | [pairing_pullback](../../../../../mathematics/Algebra/LinearAlgebra/SignedDefect/Varianteea8b67157e6b744f3e28680bd41e3fe4336c0d0df393bbd186d9108c1cf1f34.lean/declarations/pairing-pullback--cf2b4e9240e6e6f69c2ba09c.md) | 40 | `result-track:cf2b4e9240e6e6f69c2ba09c18c2b47bb0e01dfcc0769136a13aea4f6075f3b3` |
| 6 | `theorem` | [pairing_sub](../../../../../mathematics/Algebra/LinearAlgebra/SignedDefect/Varianteea8b67157e6b744f3e28680bd41e3fe4336c0d0df393bbd186d9108c1cf1f34.lean/declarations/pairing-sub--dc433a50347774d7d0bdf36b.md) | 45 | `result-track:dc433a50347774d7d0bdf36b5c0e54f3201399667b02dee86df9808b2af9d502` |
| 7 | `theorem` | [pairing_defect](../../../../../mathematics/Algebra/LinearAlgebra/SignedDefect/Varianteea8b67157e6b744f3e28680bd41e3fe4336c0d0df393bbd186d9108c1cf1f34.lean/declarations/pairing-defect--c42245a8b5c99b787fb587ea.md) | 49 | `result-track:c42245a8b5c99b787fb587ea6c6ac287bb86638e69376fb182fdeadc72b5b8c8` |
| 8 | `theorem` | [refinement_increment](../../../../../mathematics/Algebra/LinearAlgebra/SignedDefect/Varianteea8b67157e6b744f3e28680bd41e3fe4336c0d0df393bbd186d9108c1cf1f34.lean/declarations/refinement-increment--5b1cbb06510ce7f212d609db.md) | 54 | `result-track:5b1cbb06510ce7f212d609dbbbc382991c1130a486467d87de01e65a3b1ddd98` |
| 9 | `theorem` | [actual_pairing](../../../../../mathematics/Algebra/LinearAlgebra/SignedDefect/Varianteea8b67157e6b744f3e28680bd41e3fe4336c0d0df393bbd186d9108c1cf1f34.lean/declarations/actual-pairing--0576530bf7caf1744ddbc99b.md) | 68 | `result-track:0576530bf7caf1744ddbc99bda795d8e5cb4233181654d5a4dc00ca0ce00ef72` |
| 10 | `theorem` | [actual_move_defect](../../../../../mathematics/Algebra/LinearAlgebra/SignedDefect/Varianteea8b67157e6b744f3e28680bd41e3fe4336c0d0df393bbd186d9108c1cf1f34.lean/declarations/actual-move-defect--84edf8ace8db0e50ac15cfc4.md) | 81 | `result-track:84edf8ace8db0e50ac15cfc4814e7693a34d6ebb0f4fff49ddf2f618314d1905` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
