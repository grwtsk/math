# Verification target: GRWTSK.Algebra.LocalRing.Variantd60c0faacbd0298aebe658471b8167d4950e89180ab4488c155cea57bd26eb1e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "da938ef4559060a87dec95720ca44e26747d55c9",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LocalRing/Variantd60c0faacbd0298aebe658471b8167d4950e89180ab4488c155cea57bd26eb1e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/LocalRing/Variantd60c0faacbd0298aebe658471b8167d4950e89180ab4488c155cea57bd26eb1e.lean/index.md) · [Full source](../../../../mathematics/Algebra/LocalRing/Variantd60c0faacbd0298aebe658471b8167d4950e89180ab4488c155cea57bd26eb1e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `da938ef4559060a87dec95720ca44e26747d55c9`.

Source path: `GRWTSK/Algebra/LocalRing/Variantd60c0faacbd0298aebe658471b8167d4950e89180ab4488c155cea57bd26eb1e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LocalRing/Variantd60c0faacbd0298aebe658471b8167d4950e89180ab4488c155cea57bd26eb1e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.AdicCompletion.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.LocalRing.Defs` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [isUnit_iff_notMem_of_isAdicComplete_maximal](../../../../mathematics/Algebra/LocalRing/Variantd60c0faacbd0298aebe658471b8167d4950e89180ab4488c155cea57bd26eb1e.lean/declarations/isunit-iff-notmem-of-isadiccomplete-maximal--ee72060e57d19ee9f9594e41.md) | 30 | `result-track:ee72060e57d19ee9f9594e41c66b75ba43c8a723d108ed385a97fd941e5e5ca8` |
| 2 | `theorem` | [isLocalRing_of_isAdicComplete_maximal](../../../../mathematics/Algebra/LocalRing/Variantd60c0faacbd0298aebe658471b8167d4950e89180ab4488c155cea57bd26eb1e.lean/declarations/islocalring-of-isadiccomplete-maximal--3edc99da974d2ce65f1c5150.md) | 83 | `result-track:3edc99da974d2ce65f1c515056df398d490b56fc6b8299f01deee8d5fbaced0b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
