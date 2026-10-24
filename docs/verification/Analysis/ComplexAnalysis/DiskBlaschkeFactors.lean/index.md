# Verification target: GRWTSK.Analysis.Complex.DiskBlaschkeFactors

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8720ed03876e35ab5cb829948fbb0881db8a642a",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Complex/DiskBlaschkeFactors.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ComplexAnalysis/DiskBlaschkeFactors.lean/index.md) · [Full source](../../../../mathematics/Analysis/ComplexAnalysis/DiskBlaschkeFactors.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8720ed03876e35ab5cb829948fbb0881db8a642a`.

Source path: `GRWTSK/Analysis/Complex/DiskBlaschkeFactors.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Complex/DiskBlaschkeFactors.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.LogDeriv` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.Basic` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FunProp` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [factor](../../../../mathematics/Analysis/ComplexAnalysis/DiskBlaschkeFactors.lean/declarations/factor--1ba61a1cbe88ff5e8c3537fd.md) | 31 | `declaration-track:1ba61a1cbe88ff5e8c3537fd263dd65fab817f0d7efe0503f0ee9fdad9872b51` |
| 2 | `theorem` | [denominator_norm_identity](../../../../mathematics/Analysis/ComplexAnalysis/DiskBlaschkeFactors.lean/declarations/denominator-norm-identity--a4ebb2bb24644991793d7180.md) | 35 | `result-track:a4ebb2bb24644991793d7180c9f242b62ec8303f9cd307596f8676f867a001f4` |
| 3 | `theorem` | [denominator_ne_zero](../../../../mathematics/Analysis/ComplexAnalysis/DiskBlaschkeFactors.lean/declarations/denominator-ne-zero--7ea02636878961a0386eed15.md) | 45 | `result-track:7ea02636878961a0386eed15c67724a9b03f6c1c64c3c63007421ffaf65e11d6` |
| 4 | `theorem` | [differentiableAt_factor](../../../../mathematics/Analysis/ComplexAnalysis/DiskBlaschkeFactors.lean/declarations/differentiableat-factor--23567b182ddbe20f8f48cffe.md) | 57 | `result-track:23567b182ddbe20f8f48cffe8c09bfea658e3bd0dc46d48c9fcc094b189b199c` |
| 5 | `theorem` | [factor_ne_zero](../../../../mathematics/Analysis/ComplexAnalysis/DiskBlaschkeFactors.lean/declarations/factor-ne-zero--c913561d07263aeb0ca92fdc.md) | 63 | `result-track:c913561d07263aeb0ca92fdc8358f8a40ed265213ba49a662b688410b8ac4742` |
| 6 | `theorem` | [norm_factor_on_boundary](../../../../mathematics/Analysis/ComplexAnalysis/DiskBlaschkeFactors.lean/declarations/norm-factor-on-boundary--20bbc8fa59245c7c9bc06334.md) | 68 | `result-track:20bbc8fa59245c7c9bc063348c8d7f57ebd80562dfbfdcce0a972db1ba1e3573` |
| 7 | `theorem` | [factor_at_zero](../../../../mathematics/Analysis/ComplexAnalysis/DiskBlaschkeFactors.lean/declarations/factor-at-zero--202534066856a51057e66aaa.md) | 81 | `result-track:202534066856a51057e66aaa8d520c522b4afb7f42e4dcd0af3ba0a4242c271b` |
| 8 | `theorem` | [logDeriv_factor](../../../../mathematics/Analysis/ComplexAnalysis/DiskBlaschkeFactors.lean/declarations/logderiv-factor--c3fffdc0322d1cb0e4d1aae8.md) | 88 | `result-track:c3fffdc0322d1cb0e4d1aae80e9bdf7192f9c8b446567652b59b5956c5c855da` |
| 9 | `theorem` | [denominator_three_lower](../../../../mathematics/Analysis/ComplexAnalysis/DiskBlaschkeFactors.lean/declarations/denominator-three-lower--1779f0ce56c61d0d6fb3924c.md) | 103 | `result-track:1779f0ce56c61d0d6fb3924c1dcd4dc66c6d67d5e48ffe9921d5743dd943ce0d` |
| 10 | `theorem` | [norm_regular_term_le_one](../../../../mathematics/Analysis/ComplexAnalysis/DiskBlaschkeFactors.lean/declarations/norm-regular-term-le-one--10015c766db83b4047569287.md) | 113 | `result-track:10015c766db83b4047569287993bd36277477a0c9a86392420267f10c518bd5f` |
| 11 | `theorem` | [norm_logDeriv_factor_le](../../../../mathematics/Analysis/ComplexAnalysis/DiskBlaschkeFactors.lean/declarations/norm-logderiv-factor-le--3a27380b2eb21974341475d1.md) | 121 | `result-track:3a27380b2eb21974341475d181999729b40a50b27abd80b1a74c28c5d035a032` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
