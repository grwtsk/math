# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.WeilPolarization

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "19ee46bea416fc16a26b673b9db6339ece3f83bc",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/WeilPolarization.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/WeilPolarization.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/WeilPolarization.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `19ee46bea416fc16a26b673b9db6339ece3f83bc`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/WeilPolarization.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/WeilPolarization.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.WeilPositiveLimit`](../../../../../mathematics/NumberTheory/Zeta/Riemann/WeilPositiveLimit.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [combine](../../../../../mathematics/NumberTheory/Zeta/Riemann/WeilPolarization.lean/declarations/combine--958368ee4b79cca78a064b20.md) | 32 | `declaration-track:958368ee4b79cca78a064b20f745f0a038033cc6b7cacfc4e40030d949574229` |
| 2 | `theorem` | [of_real_diagonal](../../../../../mathematics/NumberTheory/Zeta/Riemann/WeilPolarization.lean/declarations/of-real-diagonal--1560286ccdaa28344d16846f.md) | 37 | `result-track:1560286ccdaa28344d16846fdf20ecec3a888ca2e709ca6302c2f6088b79e0fd` |
| 3 | `theorem` | [combine_sub](../../../../../mathematics/NumberTheory/Zeta/Riemann/WeilPolarization.lean/declarations/combine-sub--cbb588a4a2393e2d736239ff.md) | 60 | `result-track:cbb588a4a2393e2d736239ff71ab0246da1066e1cb369403559db2a66044e5b3` |
| 4 | `theorem` | [norm_combine_le](../../../../../mathematics/NumberTheory/Zeta/Riemann/WeilPolarization.lean/declarations/norm-combine-le--c15255f31801c5d317fb3b22.md) | 68 | `result-track:c15255f31801c5d317fb3b22db1b77b583c721bc538d4a43a682ca3716376752` |
| 5 | `theorem` | [ofReal_diagonal](../../../../../mathematics/NumberTheory/Zeta/Riemann/WeilPolarization.lean/declarations/ofreal-diagonal--853ef02c55d03fc65d4dfb8a.md) | 94 | `result-track:853ef02c55d03fc65d4dfb8ac89b9f9faca0720e72abf5bf82f6d481c1fa87e7` |
| 6 | `theorem` | [polarization](../../../../../mathematics/NumberTheory/Zeta/Riemann/WeilPolarization.lean/declarations/polarization--f6b0aff5fb10bc1160ac2caa.md) | 101 | `result-track:f6b0aff5fb10bc1160ac2caad84ceacd0ed23f929b1c093c8946b8c035ba8d04` |
| 7 | `theorem` | [gram_polarization](../../../../../mathematics/NumberTheory/Zeta/Riemann/WeilPolarization.lean/declarations/gram-polarization--4d7cd18b8c45786e0311e9a4.md) | 118 | `result-track:4d7cd18b8c45786e0311e9a4d0b1ea12068469172b5aebbb48c899c2e5fa08e2` |
| 8 | `theorem` | [tendsto_polarized](../../../../../mathematics/NumberTheory/Zeta/Riemann/WeilPolarization.lean/declarations/tendsto-polarized--35f101992bdf7c63b94fdb91.md) | 148 | `result-track:35f101992bdf7c63b94fdb9164254667d5bd0804180eb0b576f3b3254174fa1d` |
| 9 | `def` | [toPolarized](../../../../../mathematics/NumberTheory/Zeta/Riemann/WeilPolarization.lean/declarations/topolarized--d7571c77a0d88a706b6c4d36.md) | 168 | `declaration-track:d7571c77a0d88a706b6c4d365bcfde6475cba2b9881edc8af224519999df733d` |
| 10 | `theorem` | [toPolarized_family](../../../../../mathematics/NumberTheory/Zeta/Riemann/WeilPolarization.lean/declarations/topolarized-family--5da3f2fa8c96af23d781ad3b.md) | 176 | `result-track:5da3f2fa8c96af23d781ad3b1f11359809fafcc2cf7a4e07f13a1f605c2d7308` |
| 11 | `theorem` | [toPolarized_comparisonId](../../../../../mathematics/NumberTheory/Zeta/Riemann/WeilPolarization.lean/declarations/topolarized-comparisonid--b07f837d9f58e79c20c9931d.md) | 179 | `result-track:b07f837d9f58e79c20c9931d83c5122ea557f0652cfdecc7c325ce4f3ff09396` |
| 12 | `theorem` | [toPolarized_toDiagonal](../../../../../mathematics/NumberTheory/Zeta/Riemann/WeilPolarization.lean/declarations/topolarized-todiagonal--70ccedf1ced026d5d54cd542.md) | 183 | `result-track:70ccedf1ced026d5d54cd5425965805e4a9c3715fc9d15200857e8ee44d3ea06` |
| 13 | `theorem` | [toDiagonal_toPolarized](../../../../../mathematics/NumberTheory/Zeta/Riemann/WeilPolarization.lean/declarations/todiagonal-topolarized--fbdedac022e190874ad8ccce.md) | 196 | `result-track:fbdedac022e190874ad8ccce72eddf334211a1afdef5e466dc9ea695ea135b94` |
| 14 | `def` | [limitEquiv](../../../../../mathematics/NumberTheory/Zeta/Riemann/WeilPolarization.lean/declarations/limitequiv--f453b7e43f7bfa630569a4d9.md) | 206 | `declaration-track:f453b7e43f7bfa630569a4d982c8b5c9c74ce4b959ad8e4d6ae408d56a612e55` |
| 15 | `def` | [polarizedError](../../../../../mathematics/NumberTheory/Zeta/Riemann/WeilPolarization.lean/declarations/polarizederror--8bc3e85acca76564c0601d14.md) | 225 | `declaration-track:8bc3e85acca76564c0601d1485587147d3c10762996b9bbb2fa2dd7b24fdd8dd` |
| 16 | `theorem` | [polarizedError_nonnegative](../../../../../mathematics/NumberTheory/Zeta/Riemann/WeilPolarization.lean/declarations/polarizederror-nonnegative--f1a37756d8e2c7d6c67fbadf.md) | 230 | `result-track:f1a37756d8e2c7d6c67fbadf3d92acfd31c14874b1b360fc8852c29285b62997` |
| 17 | `theorem` | [polarized_comparison](../../../../../mathematics/NumberTheory/Zeta/Riemann/WeilPolarization.lean/declarations/polarized-comparison--71a09ddb6de6d876a2b1185c.md) | 238 | `result-track:71a09ddb6de6d876a2b1185cce9fea8c99c1f1960b337ae3a05ad17a08063995` |
| 18 | `theorem` | [polarizedError_tendsto_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/WeilPolarization.lean/declarations/polarizederror-tendsto-zero--f39d20c754804bf38a9bd905.md) | 250 | `result-track:f39d20c754804bf38a9bd9054b77d9fd156f7b0b48691d7be2c2bf0df348398a` |
| 19 | `def` | [toPolarized](../../../../../mathematics/NumberTheory/Zeta/Riemann/WeilPolarization.lean/declarations/topolarized--2a48942ee61566d3e49f445f.md) | 260 | `declaration-track:2a48942ee61566d3e49f445f84f9610b31f594406d62ced9767c924fc0caad8e` |
| 20 | `theorem` | [toPolarized_family](../../../../../mathematics/NumberTheory/Zeta/Riemann/WeilPolarization.lean/declarations/topolarized-family--983d26974c6e8d46c8728928.md) | 263 | `result-track:983d26974c6e8d46c8728928be45a5ff8279ba5d4fc61f9cfc1d62083533ecc2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
