# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.Konigsberg.Variantbdfa4c477f628f38ff396070956065e466ab6879a94f1f4faec094fd76765adc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "816ba1994e37baf9059b851ba0cb993d122cfb1b",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Konigsberg/Variantbdfa4c477f628f38ff396070956065e466ab6879a94f1f4faec094fd76765adc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Konigsberg/Variantbdfa4c477f628f38ff396070956065e466ab6879a94f1f4faec094fd76765adc.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Konigsberg/Variantbdfa4c477f628f38ff396070956065e466ab6879a94f1f4faec094fd76765adc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `816ba1994e37baf9059b851ba0cb993d122cfb1b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Konigsberg/Variantbdfa4c477f628f38ff396070956065e466ab6879a94f1f4faec094fd76765adc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/Konigsberg/Variantbdfa4c477f628f38ff396070956065e466ab6879a94f1f4faec094fd76765adc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.SimpleGraph.Trails` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.DeriveFintype` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Verts](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Konigsberg/Variantbdfa4c477f628f38ff396070956065e466ab6879a94f1f4faec094fd76765adc.lean/declarations/verts--33c32f006b1b613811871ab8.md) | 23 | `declaration-track:33c32f006b1b613811871ab8e64608898644d7ff4bd9472edfd266d4237b57ba` |
| 2 | `def` | [edges](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Konigsberg/Variantbdfa4c477f628f38ff396070956065e466ab6879a94f1f4faec094fd76765adc.lean/declarations/edges--bbc05c54b14f6d36560de078.md) | 35 | `declaration-track:bbc05c54b14f6d36560de078d21316b6a732d9ecc9509bd483f5910942311bca` |
| 3 | `def` | [adj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Konigsberg/Variantbdfa4c477f628f38ff396070956065e466ab6879a94f1f4faec094fd76765adc.lean/declarations/adj--dc99bbdd9d038f0d4147d5d2.md) | 43 | `declaration-track:dc99bbdd9d038f0d4147d5d206748131d9e776a97a60b611f787cf47f721568d` |
| 4 | `def` | [graph](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Konigsberg/Variantbdfa4c477f628f38ff396070956065e466ab6879a94f1f4faec094fd76765adc.lean/declarations/graph--00a49912f9efd967f3494305.md) | 54 | `declaration-track:00a49912f9efd967f349430521cc7303cfb88d40743a219380b1d855d50950f0` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Konigsberg/Variantbdfa4c477f628f38ff396070956065e466ab6879a94f1f4faec094fd76765adc.lean/declarations/instance--4ec53ffe3a4c401d17649186.md) | 64 | `declaration-track:4ec53ffe3a4c401d1764918691ffacc3df85e89076e4a11378092f3c99822baf` |
| 6 | `def` | [degree](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Konigsberg/Variantbdfa4c477f628f38ff396070956065e466ab6879a94f1f4faec094fd76765adc.lean/declarations/degree--9c53ab00655b806b177718e1.md) | 68 | `declaration-track:9c53ab00655b806b177718e1df96fb0bac6db13bc41f83ffff3814fb5a07232d` |
| 7 | `lemma` | [degree_eq_degree](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Konigsberg/Variantbdfa4c477f628f38ff396070956065e466ab6879a94f1f4faec094fd76765adc.lean/declarations/degree-eq-degree--dfe70dd08804987dd3d74856.md) | 74 | `result-track:dfe70dd08804987dd3d7485621c83f86ef9f9ed05f0d68fd06599c7d28d2ebe0` |
| 8 | `lemma` | [not_even_degree_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Konigsberg/Variantbdfa4c477f628f38ff396070956065e466ab6879a94f1f4faec094fd76765adc.lean/declarations/not-even-degree-iff--b704dc9bc0f24abdad2cce37.md) | 77 | `result-track:b704dc9bc0f24abdad2cce370ec6840d6b63b331db9c66984108b9b7e9c61910` |
| 9 | `lemma` | [setOf_odd_degree_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Konigsberg/Variantbdfa4c477f628f38ff396070956065e466ab6879a94f1f4faec094fd76765adc.lean/declarations/setof-odd-degree-eq--fa60fafa937dbd7f2649e3ad.md) | 80 | `result-track:fa60fafa937dbd7f2649e3ad0bec9240e98c2925834b9c3977c84cd6e9005d44` |
| 10 | `theorem` | [not_isEulerian](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Konigsberg/Variantbdfa4c477f628f38ff396070956065e466ab6879a94f1f4faec094fd76765adc.lean/declarations/not-iseulerian--2047e0b3eb2dd83d8b4c5401.md) | 86 | `result-track:2047e0b3eb2dd83d8b4c54018dcde2c8a45a5588906086ab2e4301b12cc75021` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
