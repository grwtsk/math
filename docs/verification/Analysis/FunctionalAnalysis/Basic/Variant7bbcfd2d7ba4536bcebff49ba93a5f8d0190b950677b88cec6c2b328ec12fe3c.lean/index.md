# Verification target: GRWTSK.Analysis.FunctionalAnalysis.Basic.Variant7bbcfd2d7ba4536bcebff49ba93a5f8d0190b950677b88cec6c2b328ec12fe3c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a5323e5947c8553f342672706b6ed03d8e78d61e",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Basic/Variant7bbcfd2d7ba4536bcebff49ba93a5f8d0190b950677b88cec6c2b328ec12fe3c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variant7bbcfd2d7ba4536bcebff49ba93a5f8d0190b950677b88cec6c2b328ec12fe3c.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variant7bbcfd2d7ba4536bcebff49ba93a5f8d0190b950677b88cec6c2b328ec12fe3c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a5323e5947c8553f342672706b6ed03d8e78d61e`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Basic/Variant7bbcfd2d7ba4536bcebff49ba93a5f8d0190b950677b88cec6c2b328ec12fe3c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Basic/Variant7bbcfd2d7ba4536bcebff49ba93a5f8d0190b950677b88cec6c2b328ec12fe3c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Slope` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Real` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.LinearCombination` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [strictConvexOn_exp](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variant7bbcfd2d7ba4536bcebff49ba93a5f8d0190b950677b88cec6c2b328ec12fe3c.lean/declarations/strictconvexon-exp--6101024744c5aab60bc96a3d.md) | 45 | `result-track:6101024744c5aab60bc96a3d557c95f935e7fc887a30e657858fd24955964a6e` |
| 2 | `theorem` | [convexOn_exp](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variant7bbcfd2d7ba4536bcebff49ba93a5f8d0190b950677b88cec6c2b328ec12fe3c.lean/declarations/convexon-exp--1f1db738b3161fa92c5f1b0d.md) | 67 | `result-track:1f1db738b3161fa92c5f1b0dd84878d94ecf460dcf9150fc2cf2226b6d5d86e9` |
| 3 | `theorem` | [strictConcaveOn_log_Ioi](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variant7bbcfd2d7ba4536bcebff49ba93a5f8d0190b950677b88cec6c2b328ec12fe3c.lean/declarations/strictconcaveon-log-ioi--476e9f2cf99994c335daa77f.md) | 71 | `result-track:476e9f2cf99994c335daa77f9094b07b18690cb0846ede93cc0631f4ecdff813` |
| 4 | `theorem` | [one_add_mul_self_lt_rpow_one_add](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variant7bbcfd2d7ba4536bcebff49ba93a5f8d0190b950677b88cec6c2b328ec12fe3c.lean/declarations/one-add-mul-self-lt-rpow-one-add--dbee1c470a87c4e50349b17e.md) | 102 | `result-track:dbee1c470a87c4e50349b17e09b07edeb321875c2e3b80ca981a37b56e6680c5` |
| 5 | `theorem` | [one_add_mul_self_le_rpow_one_add](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variant7bbcfd2d7ba4536bcebff49ba93a5f8d0190b950677b88cec6c2b328ec12fe3c.lean/declarations/one-add-mul-self-le-rpow-one-add--333ed46e9f200ee3a953027f.md) | 129 | `result-track:333ed46e9f200ee3a953027f06943103ab38d48394b7c4574e4e8052145458b2` |
| 6 | `theorem` | [rpow_one_add_lt_one_add_mul_self](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variant7bbcfd2d7ba4536bcebff49ba93a5f8d0190b950677b88cec6c2b328ec12fe3c.lean/declarations/rpow-one-add-lt-one-add-mul-self--d4f3e3121b347d8fd2af0f22.md) | 139 | `result-track:d4f3e3121b347d8fd2af0f2251ec74de2782955b9bf13b900bedd0c1dd9f4e17` |
| 7 | `theorem` | [rpow_one_add_le_one_add_mul_self](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variant7bbcfd2d7ba4536bcebff49ba93a5f8d0190b950677b88cec6c2b328ec12fe3c.lean/declarations/rpow-one-add-le-one-add-mul-self--a0470fe197323cf247e69be5.md) | 168 | `result-track:a0470fe197323cf247e69be5f04dda3585bd56ed2b8fb7a03e8e5a7369b23416` |
| 8 | `theorem` | [strictConvexOn_rpow](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variant7bbcfd2d7ba4536bcebff49ba93a5f8d0190b950677b88cec6c2b328ec12fe3c.lean/declarations/strictconvexon-rpow--5fe3bea352f1bbbfd7862804.md) | 179 | `result-track:5fe3bea352f1bbbfd78628042450b4f7c4fc30c6b526b24e3d323fba4cd6eb3c` |
| 9 | `theorem` | [convexOn_rpow](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variant7bbcfd2d7ba4536bcebff49ba93a5f8d0190b950677b88cec6c2b328ec12fe3c.lean/declarations/convexon-rpow--e446412ea96e9ab72d50fa8d.md) | 207 | `result-track:e446412ea96e9ab72d50fa8dbf89f342c58a465a7cd2a743b5fa6e84974654eb` |
| 10 | `theorem` | [strictConcaveOn_log_Iio](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variant7bbcfd2d7ba4536bcebff49ba93a5f8d0190b950677b88cec6c2b328ec12fe3c.lean/declarations/strictconcaveon-log-iio--d97f6e98405e54a69ddda954.md) | 212 | `result-track:d97f6e98405e54a69ddda9543cc70b10e7e68186868ce2a1d06b78bbd533c487` |
| 11 | `lemma` | [exp_mul_le_cosh_add_mul_sinh](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variant7bbcfd2d7ba4536bcebff49ba93a5f8d0190b950677b88cec6c2b328ec12fe3c.lean/declarations/exp-mul-le-cosh-add-mul-sinh--7c0a9cf4def99c92e902cc90.md) | 226 | `result-track:7c0a9cf4def99c92e902cc90ff56804173c6ad438b495e41b90f63dc39d5fbe8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
