# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.HalfLineDuality.Variant8a22522d6599ad57f0d17908f94b460ab8555bd056a48a69ddcbc0b57d16eecf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "860ecb106b88afe5ebe484bba06abb604e342f78",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/HalfLineDuality/Variant8a22522d6599ad57f0d17908f94b460ab8555bd056a48a69ddcbc0b57d16eecf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDuality/Variant8a22522d6599ad57f0d17908f94b460ab8555bd056a48a69ddcbc0b57d16eecf.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDuality/Variant8a22522d6599ad57f0d17908f94b460ab8555bd056a48a69ddcbc0b57d16eecf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `860ecb106b88afe5ebe484bba06abb604e342f78`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/HalfLineDuality/Variant8a22522d6599ad57f0d17908f94b460ab8555bd056a48a69ddcbc0b57d16eecf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/HalfLineDuality/Variant8a22522d6599ad57f0d17908f94b460ab8555bd056a48a69ddcbc0b57d16eecf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExtension` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Adjoint` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [restricted_inner_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDuality/Variant8a22522d6599ad57f0d17908f94b460ab8555bd056a48a69ddcbc0b57d16eecf.lean/declarations/restricted-inner-integrable--a30b77f77476c9cfb1aad423.md) | 16 | `result-track:a30b77f77476c9cfb1aad423505e487b679208e6865a568e4fd69feaf99ce099` |
| 2 | `theorem` | [extended_inner_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDuality/Variant8a22522d6599ad57f0d17908f94b460ab8555bd056a48a69ddcbc0b57d16eecf.lean/declarations/extended-inner-integrable--aa16dade6ce391d46720a405.md) | 22 | `result-track:aa16dade6ce391d46720a4050056439d62f2a64c8a530c91622b78ec9444661e` |
| 3 | `theorem` | [inner_restriction_zeroExtension](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDuality/Variant8a22522d6599ad57f0d17908f94b460ab8555bd056a48a69ddcbc0b57d16eecf.lean/declarations/inner-restriction-zeroextension--fefd0ddd0a2ec2eb1c70adf5.md) | 26 | `result-track:fefd0ddd0a2ec2eb1c70adf5d51d06a7cc3fb4a75932534581f5788b2b41994c` |
| 4 | `theorem` | [zeroExtension_adjoint](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDuality/Variant8a22522d6599ad57f0d17908f94b460ab8555bd056a48a69ddcbc0b57d16eecf.lean/declarations/zeroextension-adjoint--cc55e389096feab01891b3f2.md) | 44 | `result-track:cc55e389096feab01891b3f2df632770db1c4e4c389912b2fe1c11357932705d` |
| 5 | `theorem` | [restriction_adjoint](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDuality/Variant8a22522d6599ad57f0d17908f94b460ab8555bd056a48a69ddcbc0b57d16eecf.lean/declarations/restriction-adjoint--6f2c2d778be22fc21ded7b04.md) | 49 | `result-track:6f2c2d778be22fc21ded7b04c1b85016efe38db9aa0be7a7b06189578e8db0cc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
