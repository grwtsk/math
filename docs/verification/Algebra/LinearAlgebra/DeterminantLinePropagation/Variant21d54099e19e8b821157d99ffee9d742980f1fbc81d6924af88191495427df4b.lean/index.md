# Verification target: GRWTSK.Algebra.LinearAlgebra.DeterminantLinePropagation.Variant21d54099e19e8b821157d99ffee9d742980f1fbc81d6924af88191495427df4b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f91e7a41df93c8139808ccc67da83cc538899bf0",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/DeterminantLinePropagation/Variant21d54099e19e8b821157d99ffee9d742980f1fbc81d6924af88191495427df4b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/DeterminantLinePropagation/Variant21d54099e19e8b821157d99ffee9d742980f1fbc81d6924af88191495427df4b.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/DeterminantLinePropagation/Variant21d54099e19e8b821157d99ffee9d742980f1fbc81d6924af88191495427df4b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f91e7a41df93c8139808ccc67da83cc538899bf0`.

Source path: `GRWTSK/Algebra/LinearAlgebra/DeterminantLinePropagation/Variant21d54099e19e8b821157d99ffee9d742980f1fbc81d6924af88191495427df4b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/DeterminantLinePropagation/Variant21d54099e19e8b821157d99ffee9d742980f1fbc81d6924af88191495427df4b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.CanonicalPath.PerfectFamilyTheoremTarget` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [DeterminantLineFamily](../../../../../mathematics/Algebra/LinearAlgebra/DeterminantLinePropagation/Variant21d54099e19e8b821157d99ffee9d742980f1fbc81d6924af88191495427df4b.lean/declarations/determinantlinefamily--4e9c73a09828b074fc800133.md) | 18 | `declaration-track:4e9c73a09828b074fc80013330b9360e8d0e4d96b4e1c44822a0e7178b8e773b` |
| 2 | `theorem` | [determinant_line_propagates_if_supplied](../../../../../mathematics/Algebra/LinearAlgebra/DeterminantLinePropagation/Variant21d54099e19e8b821157d99ffee9d742980f1fbc81d6924af88191495427df4b.lean/declarations/determinant-line-propagates-if-supplied--ccd0f40f0b8a7dcd9dd4eb9c.md) | 29 | `result-track:ccd0f40f0b8a7dcd9dd4eb9cfda0139277704a35dcfd187076194eb47ca30e8a` |
| 3 | `theorem` | [determinant_line_has_nonzero_anchor](../../../../../mathematics/Algebra/LinearAlgebra/DeterminantLinePropagation/Variant21d54099e19e8b821157d99ffee9d742980f1fbc81d6924af88191495427df4b.lean/declarations/determinant-line-has-nonzero-anchor--330e3a094bacf34b973977b0.md) | 35 | `result-track:330e3a094bacf34b973977b0e1f9612b5795815e05a9bfa32cbdc07239357105` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
