# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.Bounds.Variantc1fb0ba8cdf1b17f604c7d5b41bfa499f3eae189101d6502d7982acb402f4101

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "10c6503cc04263a2ccc686b0e8174bd1dcda16d1",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Bounds/Variantc1fb0ba8cdf1b17f604c7d5b41bfa499f3eae189101d6502d7982acb402f4101.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Bounds/Variantc1fb0ba8cdf1b17f604c7d5b41bfa499f3eae189101d6502d7982acb402f4101.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Bounds/Variantc1fb0ba8cdf1b17f604c7d5b41bfa499f3eae189101d6502d7982acb402f4101.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `10c6503cc04263a2ccc686b0e8174bd1dcda16d1`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Bounds/Variantc1fb0ba8cdf1b17f604c7d5b41bfa499f3eae189101d6502d7982acb402f4101.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Bounds/Variantc1fb0ba8cdf1b17f604c7d5b41bfa499f3eae189101d6502d7982acb402f4101.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Field.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Cast.Order.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Choose.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [choose_le_pow_div](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Bounds/Variantc1fb0ba8cdf1b17f604c7d5b41bfa499f3eae189101d6502d7982acb402f4101.lean/declarations/choose-le-pow-div--21ebff746de05743f71d98bb.md) | 38 | `result-track:21ebff746de05743f71d98bb81d3bd66557ae223ec5ddcb4894756b726f026b7` |
| 2 | `lemma` | [choose_le_descFactorial](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Bounds/Variantc1fb0ba8cdf1b17f604c7d5b41bfa499f3eae189101d6502d7982acb402f4101.lean/declarations/choose-le-descfactorial--c20baed6890b441bd051c581.md) | 45 | `result-track:c20baed6890b441bd051c581e24096d1548433d88292ef7f9e61c52528430f98` |
| 3 | `lemma` | [choose_le_pow](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Bounds/Variantc1fb0ba8cdf1b17f604c7d5b41bfa499f3eae189101d6502d7982acb402f4101.lean/declarations/choose-le-pow--f172a8ee093f50ede4d6808a.md) | 51 | `result-track:f172a8ee093f50ede4d6808a63d36f97556c2bf47b75538ed2cbd437ef8133e4` |
| 4 | `theorem` | [pow_le_choose](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Bounds/Variantc1fb0ba8cdf1b17f604c7d5b41bfa499f3eae189101d6502d7982acb402f4101.lean/declarations/pow-le-choose--3ec54808f297dce693b4fd9b.md) | 55 | `result-track:3ec54808f297dce693b4fd9b09995849f5953d9a79935f7030f57206ff171b5e` |
| 5 | `theorem` | [choose_succ_le_two_pow](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Bounds/Variantc1fb0ba8cdf1b17f604c7d5b41bfa499f3eae189101d6502d7982acb402f4101.lean/declarations/choose-succ-le-two-pow--1c8c50fd4102e92b0216cca7.md) | 62 | `result-track:1c8c50fd4102e92b0216cca7d17adf8f03cabba4ed848006060e47545cbd1424` |
| 6 | `theorem` | [choose_le_two_pow](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Bounds/Variantc1fb0ba8cdf1b17f604c7d5b41bfa499f3eae189101d6502d7982acb402f4101.lean/declarations/choose-le-two-pow--9f530d224c79d26fec94d850.md) | 74 | `result-track:9f530d224c79d26fec94d8509fce34f6ecb76a0022f6a2d4176fa7dd662133e3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
