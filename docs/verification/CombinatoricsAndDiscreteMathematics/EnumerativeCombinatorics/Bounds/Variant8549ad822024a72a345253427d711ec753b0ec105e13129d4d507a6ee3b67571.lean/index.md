# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.Bounds.Variant8549ad822024a72a345253427d711ec753b0ec105e13129d4d507a6ee3b67571

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d4876690471ef1a65f7d8aefb4f06e755dc2de1b",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Bounds/Variant8549ad822024a72a345253427d711ec753b0ec105e13129d4d507a6ee3b67571.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Bounds/Variant8549ad822024a72a345253427d711ec753b0ec105e13129d4d507a6ee3b67571.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Bounds/Variant8549ad822024a72a345253427d711ec753b0ec105e13129d4d507a6ee3b67571.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d4876690471ef1a65f7d8aefb4f06e755dc2de1b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Bounds/Variant8549ad822024a72a345253427d711ec753b0ec105e13129d4d507a6ee3b67571.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Bounds/Variant8549ad822024a72a345253427d711ec753b0ec105e13129d4d507a6ee3b67571.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupPower.Lemmas` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Field.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Choose.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [choose_le_pow](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Bounds/Variant8549ad822024a72a345253427d711ec753b0ec105e13129d4d507a6ee3b67571.lean/declarations/choose-le-pow--ac2d995c71c3276c189b7117.md) | 31 | `result-track:ac2d995c71c3276c189b7117790377b14b99075127bda90d4c3c916455e4ec63` |
| 2 | `theorem` | [pow_le_choose](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Bounds/Variant8549ad822024a72a345253427d711ec753b0ec105e13129d4d507a6ee3b67571.lean/declarations/pow-le-choose--18953cb313e889aaba9f8348.md) | 40 | `result-track:18953cb313e889aaba9f834889abb21c51981790a049cb9225b8a9f37f9ef9dd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
