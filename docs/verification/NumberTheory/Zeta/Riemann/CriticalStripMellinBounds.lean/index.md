# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripMellinBounds

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e18621be209394c600609294fbf7407e811d4c4c",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripMellinBounds.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMellinBounds.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMellinBounds.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e18621be209394c600609294fbf7407e811d4c4c`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripMellinBounds.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CriticalStripMellinBounds.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripRealAxisMellin`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRealAxisMellin.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Analysis.Calculus.MeanValue` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner.Set` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Real` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [fractionalIntegrand](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMellinBounds.lean/declarations/fractionalintegrand--fdc39c06ebe968ee5be4429e.md) | 29 | `declaration-track:fdc39c06ebe968ee5be4429e1adbacfb49d5588e103c70957471d78c8a3d3ebc` |
| 2 | `lemma` | [fractionalIntegrand_integrable](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMellinBounds.lean/declarations/fractionalintegrand-integrable--4947803f4adc7326a5c4d57d.md) | 32 | `result-track:4947803f4adc7326a5c4d57deebf8ee4140366de7fe66858af89332ddcfaa396` |
| 3 | `lemma` | [fractionalIntegrand_norm_le](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMellinBounds.lean/declarations/fractionalintegrand-norm-le--3c4c1e9f5604712f96d69f20.md) | 37 | `result-track:3c4c1e9f5604712f96d69f202a6482409d11b76c2da0201f57976e0faac45e5c` |
| 4 | `def` | [fractionalMellinTruncation](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMellinBounds.lean/declarations/fractionalmellintruncation--364fea3be9a5f5147feceac6.md) | 48 | `declaration-track:364fea3be9a5f5147feceac6d86c10a8d7779c9d8714141439901bc165c665ce` |
| 5 | `def` | [fractionalMellinTail](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMellinBounds.lean/declarations/fractionalmellintail--d74ad7f407e5f9d06b2af8c2.md) | 52 | `declaration-track:d74ad7f407e5f9d06b2af8c2936b1eebc2c65bbbf2fd0ca339da6eda55dcca6d` |
| 6 | `lemma` | [fractionalMellinTail_integrable](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMellinBounds.lean/declarations/fractionalmellintail-integrable--5036ac8dccde1b078067fde2.md) | 55 | `result-track:5036ac8dccde1b078067fde2800132f131b07297eb1269356507ea6f53ae389a` |
| 7 | `theorem` | [fractionalMellin_split](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMellinBounds.lean/declarations/fractionalmellin-split--5b9bd61e67d6f519cdbc32eb.md) | 61 | `result-track:5b9bd61e67d6f519cdbc32eb3bddd5f661b69d747bba787fc1d0f4355742b29e` |
| 8 | `theorem` | [fractionalMellinTail_norm_le](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMellinBounds.lean/declarations/fractionalmellintail-norm-le--f86812c1176eca030dc690b2.md) | 85 | `result-track:f86812c1176eca030dc690b22441535e2ebd58e1e2c0f3249a5d22a084bdd592` |
| 9 | `theorem` | [fractionalMellin_norm_le](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMellinBounds.lean/declarations/fractionalmellin-norm-le--676c317fa6a6267e19b03d38.md) | 105 | `result-track:676c317fa6a6267e19b03d385191934b4cd4a9a129dc347a6ee736a3748ede16` |
| 10 | `def` | [truncatedPoleModel](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMellinBounds.lean/declarations/truncatedpolemodel--a3c65b7bd16a574bb88da215.md) | 112 | `declaration-track:a3c65b7bd16a574bb88da2150fbe12679ff7d12982bed028a8f43e8a10f33692` |
| 11 | `theorem` | [poleNormalized_truncation_residual](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMellinBounds.lean/declarations/polenormalized-truncation-residual--eea6a02cea6037f3da7454e7.md) | 116 | `result-track:eea6a02cea6037f3da7454e7c01dc0d17757045c8b489f04c3b0077f165bdf16` |
| 12 | `theorem` | [poleNormalized_truncation_error](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMellinBounds.lean/declarations/polenormalized-truncation-error--f9c9db77e672f18204026933.md) | 126 | `result-track:f9c9db77e672f18204026933749e069d5c104eea6841d5256c444f89f2ed3017` |
| 13 | `theorem` | [poleNormalized_truncation_error_uniform](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMellinBounds.lean/declarations/polenormalized-truncation-error-uniform--b52eefad8f3f5a9be7386823.md) | 136 | `result-track:b52eefad8f3f5a9be73868232eff3dc5d5f08e8ccdafee336ba1a71b43c83723` |
| 14 | `theorem` | [truncation_majorant_tendsto_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMellinBounds.lean/declarations/truncation-majorant-tendsto-zero--84d6ad526fbb61b0eb80588f.md) | 152 | `result-track:84d6ad526fbb61b0eb80588fbf7fc0524c856cb38e91e6f5a50683511d65c123` |
| 15 | `theorem` | [poleNormalized_quadrature_error](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMellinBounds.lean/declarations/polenormalized-quadrature-error--63d53ef7461f815e4cd04d99.md) | 160 | `result-track:63d53ef7461f815e4cd04d997bb061c9a6c2f5a06de79ec2cd031825c7d31781` |
| 16 | `def` | [fractionalLogMellin](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMellinBounds.lean/declarations/fractionallogmellin--b98947d8d91cae2c28874923.md) | 181 | `declaration-track:b98947d8d91cae2c2887492368938e3ed2c8c5f4c5bb22066204d7a53c70c2f9` |
| 17 | `theorem` | [fractionalMellin_hasDerivAt](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMellinBounds.lean/declarations/fractionalmellin-hasderivat--c95ad9ddff502b24d387f621.md) | 184 | `result-track:c95ad9ddff502b24d387f621bcbccfa19c319c4a36ee375e124411404ba62658` |
| 18 | `lemma` | [fractionalLogMellin_eq_integral](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMellinBounds.lean/declarations/fractionallogmellin-eq-integral--61fd4b57137ef5f272199ff8.md) | 196 | `result-track:61fd4b57137ef5f272199ff8fbe589468fdb62db27d8324e7db3d641d521c56c` |
| 19 | `lemma` | [fractionalLogMellin_integrable](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMellinBounds.lean/declarations/fractionallogmellin-integrable--03340af4ca503e58eafe8b67.md) | 213 | `result-track:03340af4ca503e58eafe8b6703a38fd245346ae3abd2e787114b50642ca51b02` |
| 20 | `theorem` | [fractionalMellin_deriv_norm_le](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMellinBounds.lean/declarations/fractionalmellin-deriv-norm-le--7723e1790618bf9a212932ca.md) | 227 | `result-track:7723e1790618bf9a212932ca245da8bcd1a4c0efbe220b923ca3d22ba3133cb6` |
| 21 | `theorem` | [poleNormalized_hasDerivAt_mellin](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMellinBounds.lean/declarations/polenormalized-hasderivat-mellin--c25710724a31925512daab34.md) | 265 | `result-track:c25710724a31925512daab34f6575671be84778b597b7862501bad3510ff375f` |
| 22 | `theorem` | [poleNormalized_deriv_norm_le](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMellinBounds.lean/declarations/polenormalized-deriv-norm-le--05e3b40c997839993f2defc0.md) | 284 | `result-track:05e3b40c997839993f2defc0ca36c450dac29a876efe2aca3b9d14e87aab3eb2` |
| 23 | `theorem` | [no_strict_sample_margin_at_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMellinBounds.lean/declarations/no-strict-sample-margin-at-zero--14aff6d943d2e70577edb458.md) | 320 | `result-track:14aff6d943d2e70577edb4589446971d1d811906b0f8f244c9ffa4796bf66fe8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
