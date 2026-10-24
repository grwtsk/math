# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.ProductShell.Variant50f5e7b4e3233a19e42df82266eb35a9d8a5793856c247e6eb287556a500cdc9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b143653a236136069aabf47fbb7a663dbaf42816",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ProductShell/Variant50f5e7b4e3233a19e42df82266eb35a9d8a5793856c247e6eb287556a500cdc9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ProductShell/Variant50f5e7b4e3233a19e42df82266eb35a9d8a5793856c247e6eb287556a500cdc9.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ProductShell/Variant50f5e7b4e3233a19e42df82266eb35a9d8a5793856c247e6eb287556a500cdc9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b143653a236136069aabf47fbb7a663dbaf42816`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/ProductShell/Variant50f5e7b4e3233a19e42df82266eb35a9d8a5793856c247e6eb287556a500cdc9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/ProductShell/Variant50f5e7b4e3233a19e42df82266eb35a9d8a5793856c247e6eb287556a500cdc9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [typeIIProductShellUpper](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ProductShell/Variant50f5e7b4e3233a19e42df82266eb35a9d8a5793856c247e6eb287556a500cdc9.lean/declarations/typeiiproductshellupper--506de515a22ebc4586693c22.md) | 32 | `declaration-track:506de515a22ebc4586693c22ef9c62a31259bb0e25a1d41b0c525c2ea2d3a99e` |
| 2 | `def` | [typeIIProductShell](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ProductShell/Variant50f5e7b4e3233a19e42df82266eb35a9d8a5793856c247e6eb287556a500cdc9.lean/declarations/typeiiproductshell--f9ca8de7b0f1f25ee80739b1.md) | 37 | `declaration-track:f9ca8de7b0f1f25ee80739b1fc3d1825d947e2f80b4af57a7c9e725bee3994ba` |
| 3 | `theorem` | [mem_typeIIProductShell_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ProductShell/Variant50f5e7b4e3233a19e42df82266eb35a9d8a5793856c247e6eb287556a500cdc9.lean/declarations/mem-typeiiproductshell-iff--3876246b7584361b9a3320f9.md) | 41 | `result-track:3876246b7584361b9a3320f9168eddb8a965ab17174e9d0142b33b75342165e7` |
| 4 | `theorem` | [productShell_mem_implies_scale](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ProductShell/Variant50f5e7b4e3233a19e42df82266eb35a9d8a5793856c247e6eb287556a500cdc9.lean/declarations/productshell-mem-implies-scale--4a67bd5725bac4b0515829bc.md) | 47 | `result-track:4a67bd5725bac4b0515829bc730f8aa5eabaa0e214a4fe81a66b052d4cfb6be7` |
| 5 | `def` | [typeIIProductShellPrefixCarrier](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ProductShell/Variant50f5e7b4e3233a19e42df82266eb35a9d8a5793856c247e6eb287556a500cdc9.lean/declarations/typeiiproductshellprefixcarrier--2970d7f1985afe2644843bfd.md) | 54 | `declaration-track:2970d7f1985afe2644843bfdeb780c505ac356bd0ac8543a19dbe7fade4653be` |
| 6 | `theorem` | [mem_typeIIProductShellPrefixCarrier_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ProductShell/Variant50f5e7b4e3233a19e42df82266eb35a9d8a5793856c247e6eb287556a500cdc9.lean/declarations/mem-typeiiproductshellprefixcarrier-iff--e703fd038a1b85158edc46bd.md) | 58 | `result-track:e703fd038a1b85158edc46bdb6bc0bd0a36071c68545a0aa5b0054e0c8ccae77` |
| 7 | `theorem` | [productShellPrefixCarrier_subset_shell](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ProductShell/Variant50f5e7b4e3233a19e42df82266eb35a9d8a5793856c247e6eb287556a500cdc9.lean/declarations/productshellprefixcarrier-subset-shell--2b7a03712e7b8c47b9d16c3d.md) | 64 | `result-track:2b7a03712e7b8c47b9d16c3d62294176ef5d761d86dad26e4b40040ff5c3ad38` |
| 8 | `def` | [typeIIProductShellPrefixMatrix](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ProductShell/Variant50f5e7b4e3233a19e42df82266eb35a9d8a5793856c247e6eb287556a500cdc9.lean/declarations/typeiiproductshellprefixmatrix--180f6b32546b41824f388247.md) | 76 | `declaration-track:180f6b32546b41824f3882479380f9925ee6a05ce4351abb665e0dc6a5f55ec8` |
| 9 | `theorem` | [typeIIProductShellPrefixMatrix_eq_sum_fibers](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ProductShell/Variant50f5e7b4e3233a19e42df82266eb35a9d8a5793856c247e6eb287556a500cdc9.lean/declarations/typeiiproductshellprefixmatrix-eq-sum-fibers--99493c455ac25a197dda4c2a.md) | 84 | `result-track:99493c455ac25a197dda4c2a05d18ace503c5260d480889dcb94d6c4ad6c2d4c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
