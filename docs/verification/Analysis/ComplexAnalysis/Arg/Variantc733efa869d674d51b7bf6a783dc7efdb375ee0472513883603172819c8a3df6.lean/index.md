# Verification target: GRWTSK.Analysis.ComplexAnalysis.Arg.Variantc733efa869d674d51b7bf6a783dc7efdb375ee0472513883603172819c8a3df6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1cb408d88317a6235feff22a8c92fe39d8526afa",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/Arg/Variantc733efa869d674d51b7bf6a783dc7efdb375ee0472513883603172819c8a3df6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/ComplexAnalysis/Arg/Variantc733efa869d674d51b7bf6a783dc7efdb375ee0472513883603172819c8a3df6.lean/index.md) · [Full source](../../../../../mathematics/Analysis/ComplexAnalysis/Arg/Variantc733efa869d674d51b7bf6a783dc7efdb375ee0472513883603172819c8a3df6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1cb408d88317a6235feff22a8c92fe39d8526afa`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/Arg/Variantc733efa869d674d51b7bf6a783dc7efdb375ee0472513883603172819c8a3df6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/Arg/Variantc733efa869d674d51b7bf6a783dc7efdb375ee0472513883603172819c8a3df6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Convex` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Complex.Arg` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [sameRay_iff](../../../../../mathematics/Analysis/ComplexAnalysis/Arg/Variantc733efa869d674d51b7bf6a783dc7efdb375ee0472513883603172819c8a3df6.lean/declarations/sameray-iff--02b935a3e7cfb5e58b5edde6.md) | 37 | `result-track:02b935a3e7cfb5e58b5edde6a0a18b758a364f0d654e267ded3c033f8e5b24ed` |
| 2 | `theorem` | [sameRay_iff_arg_div_eq_zero](../../../../../mathematics/Analysis/ComplexAnalysis/Arg/Variantc733efa869d674d51b7bf6a783dc7efdb375ee0472513883603172819c8a3df6.lean/declarations/sameray-iff-arg-div-eq-zero--8299e0fdbbd959498eec5011.md) | 46 | `result-track:8299e0fdbbd959498eec5011e28d7ec1031a1e164a53dd2a08232f3737f63bab` |
| 3 | `theorem` | [norm_add_eq_iff](../../../../../mathematics/Analysis/ComplexAnalysis/Arg/Variantc733efa869d674d51b7bf6a783dc7efdb375ee0472513883603172819c8a3df6.lean/declarations/norm-add-eq-iff--a3ccd9f28f6e08d85786d6fa.md) | 52 | `result-track:a3ccd9f28f6e08d85786d6fa3c28c4b474b76a843a4c44f8cdbd73ee47aa2268` |
| 4 | `theorem` | [norm_sub_eq_iff](../../../../../mathematics/Analysis/ComplexAnalysis/Arg/Variantc733efa869d674d51b7bf6a783dc7efdb375ee0472513883603172819c8a3df6.lean/declarations/norm-sub-eq-iff--cd8e4a3bd82e9acac7e6904c.md) | 55 | `result-track:cd8e4a3bd82e9acac7e6904c0ac251e567c512ff46a25cb26d47d35a4fa9e228` |
| 5 | `theorem` | [sameRay_of_arg_eq](../../../../../mathematics/Analysis/ComplexAnalysis/Arg/Variantc733efa869d674d51b7bf6a783dc7efdb375ee0472513883603172819c8a3df6.lean/declarations/sameray-of-arg-eq--9b16ec2ce55b6766e1d25ba8.md) | 58 | `result-track:9b16ec2ce55b6766e1d25ba8b66e56073aaff79e5a46e04123306988883010e0` |
| 6 | `theorem` | [norm_add_eq](../../../../../mathematics/Analysis/ComplexAnalysis/Arg/Variantc733efa869d674d51b7bf6a783dc7efdb375ee0472513883603172819c8a3df6.lean/declarations/norm-add-eq--73a7ca72065ceeef059f2a35.md) | 61 | `result-track:73a7ca72065ceeef059f2a35f46c6aeca785038f4f8499aab3a1a62bcf812fd4` |
| 7 | `theorem` | [norm_sub_eq](../../../../../mathematics/Analysis/ComplexAnalysis/Arg/Variantc733efa869d674d51b7bf6a783dc7efdb375ee0472513883603172819c8a3df6.lean/declarations/norm-sub-eq--1eb96f68c76541334dbdc54e.md) | 64 | `result-track:1eb96f68c76541334dbdc54ebaff268834ab6217614e13a2fb789cf691b8ab0a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
