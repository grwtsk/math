# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.ZeroSymmetry

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "09333a73feb176009cfe19f0ae48d436a5af8ecd",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/ZeroSymmetry.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/ZeroSymmetry.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/ZeroSymmetry.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `09333a73feb176009cfe19f0ae48d436a5af8ecd`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/ZeroSymmetry.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/ZeroSymmetry.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.ZeroDefinitions`](../../../../../mathematics/NumberTheory/Zeta/Riemann/ZeroDefinitions.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.NumberTheory.Harmonic.ZetaAsymp` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.Nonvanishing` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [zero_conjugate_involutive](../../../../../mathematics/NumberTheory/Zeta/Riemann/ZeroSymmetry.lean/declarations/zero-conjugate-involutive--ba81f5f1c84d6e8537b73fcf.md) | 23 | `result-track:ba81f5f1c84d6e8537b73fcfb8d8bd29cbca1ca11ef5d20335a22d1c294c1db9` |
| 2 | `theorem` | [zero_reflect_involutive](../../../../../mathematics/NumberTheory/Zeta/Riemann/ZeroSymmetry.lean/declarations/zero-reflect-involutive--50d4976c800622961b4d3c9b.md) | 27 | `result-track:50d4976c800622961b4d3c9bcda38b490bd1df5bdb65fa4ef5af56fd7661008a` |
| 3 | `theorem` | [zero_conjugate_reflect_commute](../../../../../mathematics/NumberTheory/Zeta/Riemann/ZeroSymmetry.lean/declarations/zero-conjugate-reflect-commute--8b1235c83c544dd1a1e165c0.md) | 30 | `result-track:8b1235c83c544dd1a1e165c009cace2d709467e2edbe28ce35d85c8a01d8efea` |
| 4 | `theorem` | [critical_reflection_eq_composite](../../../../../mathematics/NumberTheory/Zeta/Riemann/ZeroSymmetry.lean/declarations/critical-reflection-eq-composite--3b14841c2d34bb568f237993.md) | 34 | `result-track:3b14841c2d34bb568f23799344c2903a2439fe50411fb6a091b6317a7db6d02d` |
| 5 | `theorem` | [NontrivialZetaZero.ne_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/ZeroSymmetry.lean/declarations/nontrivialzetazero-ne-zero--91e64d768ab8acff2d16a930.md) | 38 | `result-track:91e64d768ab8acff2d16a9307f8b43124d0fe3efe7b937587c5c76100823a22e` |
| 6 | `theorem` | [NontrivialZetaZero.gamma_real_ne_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/ZeroSymmetry.lean/declarations/nontrivialzetazero-gamma-real-ne-zero--ed185b4e99deae34518f8dca.md) | 45 | `result-track:ed185b4e99deae34518f8dca757ba6c0764b214e284553a3338d2c00e0a34710` |
| 7 | `theorem` | [NontrivialZetaZero.conjugate](../../../../../mathematics/NumberTheory/Zeta/Riemann/ZeroSymmetry.lean/declarations/nontrivialzetazero-conjugate--55106bf8e729e12a0b43c4db.md) | 58 | `result-track:55106bf8e729e12a0b43c4dbdb18fb2a77378fd4d266bc308363f45a1a076eda` |
| 8 | `theorem` | [NontrivialZetaZero.reflect](../../../../../mathematics/NumberTheory/Zeta/Riemann/ZeroSymmetry.lean/declarations/nontrivialzetazero-reflect--b3b4cb36e65be5e3d1d86f16.md) | 74 | `result-track:b3b4cb36e65be5e3d1d86f16c9b1e6b0d7693c237d36817c4b1f8ea711f3d6b3` |
| 9 | `theorem` | [NontrivialZetaZero.critical_reflection](../../../../../mathematics/NumberTheory/Zeta/Riemann/ZeroSymmetry.lean/declarations/nontrivialzetazero-critical-reflection--54dfc225b24a6908ff3dc2b5.md) | 98 | `result-track:54dfc225b24a6908ff3dc2b532c593db9ff2ed0c26ae3349934a4297edc397e0` |
| 10 | `theorem` | [NontrivialZetaZero.mem_critical_strip](../../../../../mathematics/NumberTheory/Zeta/Riemann/ZeroSymmetry.lean/declarations/nontrivialzetazero-mem-critical-strip--d92e1fbbbada5ae7cfe18d5a.md) | 103 | `result-track:d92e1fbbbada5ae7cfe18d5ae0797d500f87c622d0dd3086172385f1ff023583` |
| 11 | `theorem` | [nontrivial_zero_conjugate_iff](../../../../../mathematics/NumberTheory/Zeta/Riemann/ZeroSymmetry.lean/declarations/nontrivial-zero-conjugate-iff--ab89de56ca4c083a07cac963.md) | 113 | `result-track:ab89de56ca4c083a07cac96325815f3674bfd4d300c900ee55c05d0b73b0477f` |
| 12 | `theorem` | [nontrivial_zero_reflect_iff](../../../../../mathematics/NumberTheory/Zeta/Riemann/ZeroSymmetry.lean/declarations/nontrivial-zero-reflect-iff--4a891ff994864434fe7a4424.md) | 121 | `result-track:4a891ff994864434fe7a4424db6c5803487f5b9044424b1e37a36b5c5158b8dd` |
| 13 | `theorem` | [nontrivial_zero_critical_reflection_iff](../../../../../mathematics/NumberTheory/Zeta/Riemann/ZeroSymmetry.lean/declarations/nontrivial-zero-critical-reflection-iff--2dd2e17601116e2f08973faa.md) | 129 | `result-track:2dd2e17601116e2f08973faa0afc96c8cbd4ba6e408ff717f8e3a96a9cb6ec14` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
