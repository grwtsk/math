# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.PiInduction.Variant3dbdb15d86835fc7b80036b3ad7f21a955b5d1c465fdb86d469d42fc3caf4f4f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "711a770fac7cc750c8d66ef8e4e098418c958d9e",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PiInduction/Variant3dbdb15d86835fc7b80036b3ad7f21a955b5d1c465fdb86d469d42fc3caf4f4f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PiInduction/Variant3dbdb15d86835fc7b80036b3ad7f21a955b5d1c465fdb86d469d42fc3caf4f4f.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PiInduction/Variant3dbdb15d86835fc7b80036b3ad7f21a955b5d1c465fdb86d469d42fc3caf4f4f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `711a770fac7cc750c8d66ef8e4e098418c958d9e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/PiInduction/Variant3dbdb15d86835fc7b80036b3ad7f21a955b5d1c465fdb86d469d42fc3caf4f4f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/PiInduction/Variant3dbdb15d86835fc7b80036b3ad7f21a955b5d1c465fdb86d469d42fc3caf4f4f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Max` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Sigma` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [induction_on_pi_of_choice](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PiInduction/Variant3dbdb15d86835fc7b80036b3ad7f21a955b5d1c465fdb86d469d42fc3caf4f4f.lean/declarations/induction-on-pi-of-choice--a5c95c657ac3ce05ce001e51.md) | 44 | `result-track:a5c95c657ac3ce05ce001e51825d5469ffffb273fec829ea64221c6b0ed178c8` |
| 2 | `theorem` | [induction_on_pi](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PiInduction/Variant3dbdb15d86835fc7b80036b3ad7f21a955b5d1c465fdb86d469d42fc3caf4f4f.lean/declarations/induction-on-pi--d1f8ac97472324501811e239.md) | 78 | `result-track:d1f8ac97472324501811e239ac448e169afbbb3844b64918c8b43409f0ac22e2` |
| 3 | `theorem` | [induction_on_pi_max](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PiInduction/Variant3dbdb15d86835fc7b80036b3ad7f21a955b5d1c465fdb86d469d42fc3caf4f4f.lean/declarations/induction-on-pi-max--29b0207c0725cec010ca3fb0.md) | 91 | `result-track:29b0207c0725cec010ca3fb0adbd55c287d71a33ab645db7f3b3296b7d1e965a` |
| 4 | `theorem` | [induction_on_pi_min](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PiInduction/Variant3dbdb15d86835fc7b80036b3ad7f21a955b5d1c465fdb86d469d42fc3caf4f4f.lean/declarations/induction-on-pi-min--cdd67a98a05b631c4a49a1ac.md) | 107 | `result-track:cdd67a98a05b631c4a49a1ac6bf55bfc9cc19549e932ed2f70a498115d4b5cdf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
