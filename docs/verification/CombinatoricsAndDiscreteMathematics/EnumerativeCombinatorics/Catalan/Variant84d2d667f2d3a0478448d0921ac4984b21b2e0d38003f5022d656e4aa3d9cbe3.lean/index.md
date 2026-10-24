# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.Catalan.Variant84d2d667f2d3a0478448d0921ac4984b21b2e0d38003f5022d656e4aa3d9cbe3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3201359d4043736c7f0bcd0c99d6f6a0a1b1f825",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Catalan/Variant84d2d667f2d3a0478448d0921ac4984b21b2e0d38003f5022d656e4aa3d9cbe3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Catalan/Variant84d2d667f2d3a0478448d0921ac4984b21b2e0d38003f5022d656e4aa3d9cbe3.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Catalan/Variant84d2d667f2d3a0478448d0921ac4984b21b2e0d38003f5022d656e4aa3d9cbe3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3201359d4043736c7f0bcd0c99d6f6a0a1b1f825`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Catalan/Variant84d2d667f2d3a0478448d0921ac4984b21b2e0d38003f5022d656e4aa3d9cbe3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Catalan/Variant84d2d667f2d3a0478448d0921ac4984b21b2e0d38003f5022d656e4aa3d9cbe3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [catalanSeries](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Catalan/Variant84d2d667f2d3a0478448d0921ac4984b21b2e0d38003f5022d656e4aa3d9cbe3.lean/declarations/catalanseries--e90558d38db798b29a750039.md) | 44 | `declaration-track:e90558d38db798b29a75003926a792dc08d7d42e9fa73b867c6d696804469e80` |
| 2 | `lemma` | [catalanSeries_coeff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Catalan/Variant84d2d667f2d3a0478448d0921ac4984b21b2e0d38003f5022d656e4aa3d9cbe3.lean/declarations/catalanseries-coeff--ad431bf31db698407ee80e66.md) | 47 | `result-track:ad431bf31db698407ee80e66f07dbad86325f649378076187399a186d4bec054` |
| 3 | `lemma` | [catalanSeries_constantCoeff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Catalan/Variant84d2d667f2d3a0478448d0921ac4984b21b2e0d38003f5022d656e4aa3d9cbe3.lean/declarations/catalanseries-constantcoeff--d838ea3ecbce1a02b8be1d92.md) | 51 | `result-track:d838ea3ecbce1a02b8be1d9224065464c1f4e3f06ad48950499a81a252514920` |
| 4 | `theorem` | [catalanSeries_sq_mul_X_add_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Catalan/Variant84d2d667f2d3a0478448d0921ac4984b21b2e0d38003f5022d656e4aa3d9cbe3.lean/declarations/catalanseries-sq-mul-x-add-one--a8bf1889c26b4b4b58dc85b1.md) | 55 | `result-track:a8bf1889c26b4b4b58dc85b14236ca440eb926fa1890bd5d689d04ad60458c4e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
