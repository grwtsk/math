# Verification target: GRWTSK.Algebra.NormTrace.Variantcba905cb76497d4b912ae1c01c5509286382f0ff127d980a64d2c47f1ef401a6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7bc407027e4984117ebcde20b06acf79648f804e",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/NormTrace/Variantcba905cb76497d4b912ae1c01c5509286382f0ff127d980a64d2c47f1ef401a6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/NormTrace/Variantcba905cb76497d4b912ae1c01c5509286382f0ff127d980a64d2c47f1ef401a6.lean/index.md) · [Full source](../../../../mathematics/Algebra/NormTrace/Variantcba905cb76497d4b912ae1c01c5509286382f0ff127d980a64d2c47f1ef401a6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7bc407027e4984117ebcde20b06acf79648f804e`.

Source path: `GRWTSK/Algebra/NormTrace/Variantcba905cb76497d4b912ae1c01c5509286382f0ff127d980a64d2c47f1ef401a6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/NormTrace/Variantcba905cb76497d4b912ae1c01c5509286382f0ff127d980a64d2c47f1ef401a6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Localization.Module` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Norm` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Discriminant` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Algebra.map_leftMulMatrix_localization](../../../../mathematics/Algebra/NormTrace/Variantcba905cb76497d4b912ae1c01c5509286382f0ff127d980a64d2c47f1ef401a6.lean/declarations/algebra-map-leftmulmatrix-localization--7a7427703279bd2499858a10.md) | 62 | `result-track:7a7427703279bd2499858a109f6a3ddb204d2a907aadeed0a080de7e7926d0b5` |
| 2 | `theorem` | [Algebra.norm_localization](../../../../mathematics/Algebra/NormTrace/Variantcba905cb76497d4b912ae1c01c5509286382f0ff127d980a64d2c47f1ef401a6.lean/declarations/algebra-norm-localization--cf11033fa512a97570862f92.md) | 73 | `result-track:cf11033fa512a97570862f92ab87a5d4e833375607fb0d76af06663d27adf8ee` |
| 3 | `theorem` | [Algebra.trace_localization](../../../../mathematics/Algebra/NormTrace/Variantcba905cb76497d4b912ae1c01c5509286382f0ff127d980a64d2c47f1ef401a6.lean/declarations/algebra-trace-localization--7c7e4c98ba83175d9ec6ff3b.md) | 87 | `result-track:7c7e4c98ba83175d9ec6ff3b52d26061f7c35adbbd6354cf9ae0731463908a77` |
| 4 | `theorem` | [Algebra.traceMatrix_localizationLocalization](../../../../mathematics/Algebra/NormTrace/Variantcba905cb76497d4b912ae1c01c5509286382f0ff127d980a64d2c47f1ef401a6.lean/declarations/algebra-tracematrix-localizationlocalization--7144f774b3b8bb7e2314ecfe.md) | 108 | `result-track:7144f774b3b8bb7e2314ecfed243e211896338be7d8fcc60c1de23f955eb296b` |
| 5 | `theorem` | [Algebra.discr_localizationLocalization](../../../../mathematics/Algebra/NormTrace/Variantcba905cb76497d4b912ae1c01c5509286382f0ff127d980a64d2c47f1ef401a6.lean/declarations/algebra-discr-localizationlocalization--09728876fc45cafe30f2d93c.md) | 122 | `result-track:09728876fc45cafe30f2d93cd888c4ef9116515ea55d1cd21cfcb79fe07a7cde` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
