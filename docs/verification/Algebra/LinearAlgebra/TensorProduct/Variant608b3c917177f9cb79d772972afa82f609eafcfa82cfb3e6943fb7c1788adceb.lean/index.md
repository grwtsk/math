# Verification target: GRWTSK.Algebra.LinearAlgebra.TensorProduct.Variant608b3c917177f9cb79d772972afa82f609eafcfa82cfb3e6943fb7c1788adceb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ed067faf3ed1219692989e2beb4bdf71b6337ec6",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variant608b3c917177f9cb79d772972afa82f609eafcfa82cfb3e6943fb7c1788adceb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant608b3c917177f9cb79d772972afa82f609eafcfa82cfb3e6943fb7c1788adceb.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant608b3c917177f9cb79d772972afa82f609eafcfa82cfb3e6943fb7c1788adceb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ed067faf3ed1219692989e2beb4bdf71b6337ec6`.

Source path: `GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variant608b3c917177f9cb79d772972afa82f609eafcfa82cfb3e6943fb7c1788adceb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/TensorProduct/Variant608b3c917177f9cb79d772972afa82f609eafcfa82cfb3e6943fb7c1788adceb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Multilinear.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.TensorProduct` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [domCoprod](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant608b3c917177f9cb79d772972afa82f609eafcfa82cfb3e6943fb7c1788adceb.lean/declarations/domcoprod--f96ecd49dff3f5957b5f8291.md) | 54 | `declaration-track:f96ecd49dff3f5957b5f829151f78ab6f9499020130978bd871358edb8eea775` |
| 2 | `def` | [domCoprod'](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant608b3c917177f9cb79d772972afa82f609eafcfa82cfb3e6943fb7c1788adceb.lean/declarations/domcoprod--1e418646d47507b56fa0f680.md) | 70 | `declaration-track:1e418646d47507b56fa0f6801311a0ae720514631ffe0ab328c2d5c1c9aed088` |
| 3 | `theorem` | [domCoprod'_apply](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant608b3c917177f9cb79d772972afa82f609eafcfa82cfb3e6943fb7c1788adceb.lean/declarations/domcoprod-apply--58289a0711085cf6a2993b0b.md) | 90 | `result-track:58289a0711085cf6a2993b0b2eaafd68cff1b92750ca1cacbad20d37d151be73` |
| 4 | `theorem` | [domCoprod_domDomCongr_sumCongr](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant608b3c917177f9cb79d772972afa82f609eafcfa82cfb3e6943fb7c1788adceb.lean/declarations/domcoprod-domdomcongr-sumcongr--1928f699ef11b645cfa867e6.md) | 97 | `result-track:1928f699ef11b645cfa867e6975496227fb1749a111cc83856836eca86794bc5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
