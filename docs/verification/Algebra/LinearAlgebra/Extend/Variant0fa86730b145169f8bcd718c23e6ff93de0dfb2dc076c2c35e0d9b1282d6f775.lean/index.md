# Verification target: GRWTSK.Algebra.LinearAlgebra.Extend.Variant0fa86730b145169f8bcd718c23e6ff93de0dfb2dc076c2c35e0d9b1282d6f775

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cb3a4bd6588f9eafd88b33fc0691cc1e8bbc505c",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Extend/Variant0fa86730b145169f8bcd718c23e6ff93de0dfb2dc076c2c35e0d9b1282d6f775.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Extend/Variant0fa86730b145169f8bcd718c23e6ff93de0dfb2dc076c2c35e0d9b1282d6f775.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Extend/Variant0fa86730b145169f8bcd718c23e6ff93de0dfb2dc076c2c35e0d9b1282d6f775.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cb3a4bd6588f9eafd88b33fc0691cc1e8bbc505c`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Extend/Variant0fa86730b145169f8bcd718c23e6ff93de0dfb2dc076c2c35e0d9b1282d6f775.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Extend/Variant0fa86730b145169f8bcd718c23e6ff93de0dfb2dc076c2c35e0d9b1282d6f775.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.RestrictScalars` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.OperatorNorm.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.RCLike.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [extendTo𝕜'](../../../../../mathematics/Algebra/LinearAlgebra/Extend/Variant0fa86730b145169f8bcd718c23e6ff93de0dfb2dc076c2c35e0d9b1282d6f775.lean/declarations/extendto--39b056984ee09a689337fc08.md) | 45 | `declaration-track:39b056984ee09a689337fc089d5459c927c0986729f6e8f66d5e2478afa195ab` |
| 2 | `theorem` | [extendTo𝕜'_apply](../../../../../mathematics/Algebra/LinearAlgebra/Extend/Variant0fa86730b145169f8bcd718c23e6ff93de0dfb2dc076c2c35e0d9b1282d6f775.lean/declarations/extendto-apply--9b785d3f16bd68f74695106c.md) | 79 | `result-track:9b785d3f16bd68f74695106c57e0acbf2b24991b59c9ebc057da831efae6e54f` |
| 3 | `theorem` | [extendTo𝕜'_apply_re](../../../../../mathematics/Algebra/LinearAlgebra/Extend/Variant0fa86730b145169f8bcd718c23e6ff93de0dfb2dc076c2c35e0d9b1282d6f775.lean/declarations/extendto-apply-re--4f86ba4185e8fbc92ef6894b.md) | 83 | `result-track:4f86ba4185e8fbc92ef6894b06e47f540cdf20b2b5befa47c88269f9623b63cf` |
| 4 | `theorem` | [norm_extendTo𝕜'_apply_sq](../../../../../mathematics/Algebra/LinearAlgebra/Extend/Variant0fa86730b145169f8bcd718c23e6ff93de0dfb2dc076c2c35e0d9b1282d6f775.lean/declarations/norm-extendto-apply-sq--01fae408633b1e4ff1132947.md) | 87 | `result-track:01fae408633b1e4ff1132947eb7e7e63d7852339811abfbf694ca346636d5a25` |
| 5 | `theorem` | [norm_extendTo𝕜'_bound](../../../../../mathematics/Algebra/LinearAlgebra/Extend/Variant0fa86730b145169f8bcd718c23e6ff93de0dfb2dc076c2c35e0d9b1282d6f775.lean/declarations/norm-extendto-bound--9c9cda274875ffa3f166204c.md) | 103 | `result-track:9c9cda274875ffa3f166204cde4adbe959ea48b606a07f95d9ce63e19873929c` |
| 6 | `def` | [extendTo𝕜'](../../../../../mathematics/Algebra/LinearAlgebra/Extend/Variant0fa86730b145169f8bcd718c23e6ff93de0dfb2dc076c2c35e0d9b1282d6f775.lean/declarations/extendto--faf25986e64ced0a634ec8b1.md) | 117 | `declaration-track:faf25986e64ced0a634ec8b1fe1d5574c89548aeea1dbff67e5c0a78232d0e49` |
| 7 | `theorem` | [extendTo𝕜'_apply](../../../../../mathematics/Algebra/LinearAlgebra/Extend/Variant0fa86730b145169f8bcd718c23e6ff93de0dfb2dc076c2c35e0d9b1282d6f775.lean/declarations/extendto-apply--9ff50a2ea2c78a57d5cc278d.md) | 120 | `result-track:9ff50a2ea2c78a57d5cc278d2017725f6263ba779cef78332f622a52a29d032f` |
| 8 | `theorem` | [norm_extendTo𝕜'](../../../../../mathematics/Algebra/LinearAlgebra/Extend/Variant0fa86730b145169f8bcd718c23e6ff93de0dfb2dc076c2c35e0d9b1282d6f775.lean/declarations/norm-extendto--23fe836f720d8b645021ad9c.md) | 124 | `result-track:23fe836f720d8b645021ad9cad9aab253496e765afb0a2c73ee7ff97fa9f7611` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Extend/Variant0fa86730b145169f8bcd718c23e6ff93de0dfb2dc076c2c35e0d9b1282d6f775.lean/declarations/instance--ff7c8b68a5d5229e09b20428.md) | 135 | `declaration-track:ff7c8b68a5d5229e09b20428cb3c6afd18a43eda13393a17a2acd0e83ebdd3ff` |
| 10 | `def` | [LinearMap.extendTo𝕜](../../../../../mathematics/Algebra/LinearAlgebra/Extend/Variant0fa86730b145169f8bcd718c23e6ff93de0dfb2dc076c2c35e0d9b1282d6f775.lean/declarations/linearmap-extendto--5e219d6eecb1416d343b1afa.md) | 140 | `declaration-track:5e219d6eecb1416d343b1afad136f95f2ec16f8fd8ec8a4fd90321b4c4703a1f` |
| 11 | `theorem` | [LinearMap.extendTo𝕜_apply](../../../../../mathematics/Algebra/LinearAlgebra/Extend/Variant0fa86730b145169f8bcd718c23e6ff93de0dfb2dc076c2c35e0d9b1282d6f775.lean/declarations/linearmap-extendto-apply--87b66dd0586e9b6c74b917ce.md) | 143 | `result-track:87b66dd0586e9b6c74b917ce4583c0b4324cb377c215c11dc1e86aac4761f449` |
| 12 | `def` | [ContinuousLinearMap.extendTo𝕜](../../../../../mathematics/Algebra/LinearAlgebra/Extend/Variant0fa86730b145169f8bcd718c23e6ff93de0dfb2dc076c2c35e0d9b1282d6f775.lean/declarations/continuouslinearmap-extendto--4200847c5e84b12978c5300a.md) | 147 | `declaration-track:4200847c5e84b12978c5300a3c07416f03e8af4a9ff798c0ba69b787e05f5a22` |
| 13 | `theorem` | [ContinuousLinearMap.extendTo𝕜_apply](../../../../../mathematics/Algebra/LinearAlgebra/Extend/Variant0fa86730b145169f8bcd718c23e6ff93de0dfb2dc076c2c35e0d9b1282d6f775.lean/declarations/continuouslinearmap-extendto-apply--7b30c514c4f9a00af34ca57a.md) | 150 | `result-track:7b30c514c4f9a00af34ca57a54dcc55b3fdd9f039f9c69f60c78b4f0e95c7f46` |
| 14 | `theorem` | [ContinuousLinearMap.norm_extendTo𝕜](../../../../../mathematics/Algebra/LinearAlgebra/Extend/Variant0fa86730b145169f8bcd718c23e6ff93de0dfb2dc076c2c35e0d9b1282d6f775.lean/declarations/continuouslinearmap-norm-extendto--baa486eb886f20397df97963.md) | 154 | `result-track:baa486eb886f20397df979630bc100c58ba0700e7d9a0cf843b18db69ff7fed8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
