# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.Cast.Variant1ff9ed4680f7166d884b8a657dad641f3f057a0df75221c32608e141a482ef0b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "aff878a52fe710a30e7dfaeb3e5a1cb18e068ca1",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Cast/Variant1ff9ed4680f7166d884b8a657dad641f3f057a0df75221c32608e141a482ef0b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Cast/Variant1ff9ed4680f7166d884b8a657dad641f3f057a0df75221c32608e141a482ef0b.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Cast/Variant1ff9ed4680f7166d884b8a657dad641f3f057a0df75221c32608e141a482ef0b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `aff878a52fe710a30e7dfaeb3e5a1cb18e068ca1`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Cast/Variant1ff9ed4680f7166d884b8a657dad641f3f057a0df75221c32608e141a482ef0b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Cast/Variant1ff9ed4680f7166d884b8a657dad641f3f057a0df75221c32608e141a482ef0b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Choose.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Factorial.Cast` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [cast_choose](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Cast/Variant1ff9ed4680f7166d884b8a657dad641f3f057a0df75221c32608e141a482ef0b.lean/declarations/cast-choose--b34aaeea387f0fb9cb62cc27.md) | 33 | `result-track:b34aaeea387f0fb9cb62cc27fe0f8f51f3e2b9413ce40d411b78c0207d5548da` |
| 2 | `theorem` | [cast_add_choose](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Cast/Variant1ff9ed4680f7166d884b8a657dad641f3f057a0df75221c32608e141a482ef0b.lean/declarations/cast-add-choose--a48f2e1cb2fc65d193f1d53c.md) | 39 | `result-track:a48f2e1cb2fc65d193f1d53ce50ce2edf84b53d0e3f13a6c3e5bd1511cb587dc` |
| 3 | `theorem` | [cast_choose_eq_pochhammer_div](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Cast/Variant1ff9ed4680f7166d884b8a657dad641f3f057a0df75221c32608e141a482ef0b.lean/declarations/cast-choose-eq-pochhammer-div--99a5e2724a51e5f7efd89586.md) | 43 | `result-track:99a5e2724a51e5f7efd89586f66d0619dcf799f023712417b92323bbf31cfaf4` |
| 4 | `theorem` | [cast_choose_two](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Cast/Variant1ff9ed4680f7166d884b8a657dad641f3f057a0df75221c32608e141a482ef0b.lean/declarations/cast-choose-two--d8956f41f5b851161db6ee3c.md) | 49 | `result-track:d8956f41f5b851161db6ee3cd6bb926c108eb992e8f61c9e4c67af8fa3c1b1dc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
