# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CubicZetaIdentity

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4543990a599ffb9fb6e6cb0f2b32c75a89bc7b5b",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CubicZetaIdentity.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CubicZetaIdentity.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CubicZetaIdentity.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4543990a599ffb9fb6e6cb0f2b32c75a89bc7b5b`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CubicZetaIdentity.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CubicZetaIdentity.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CubicRemainderHolomorphic`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CubicRemainderHolomorphic.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.RightHalfPlaneModulus`](../../../../../mathematics/NumberTheory/Zeta/Riemann/RightHalfPlaneModulus.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.NumberTheory.Harmonic.ZetaAsymp` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.Topology` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FunProp` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [logPower_neg_eq_reciprocal_cpow](../../../../../mathematics/NumberTheory/Zeta/Riemann/CubicZetaIdentity.lean/declarations/logpower-neg-eq-reciprocal-cpow--37452e8564a1085b983a33b9.md) | 35 | `result-track:37452e8564a1085b983a33b988edc824d49e4324c5b3029684e65f88ad9b0407` |
| 2 | `theorem` | [terminal_logPower_tendsto_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/CubicZetaIdentity.lean/declarations/terminal-logpower-tendsto-zero--4bfe6510c04477349c3f9c50.md) | 46 | `result-track:4bfe6510c04477349c3f9c50048e73363fff8581bc1ec89244f40719b9954132` |
| 3 | `theorem` | [dirichlet_prefix_tendsto](../../../../../mathematics/NumberTheory/Zeta/Riemann/CubicZetaIdentity.lean/declarations/dirichlet-prefix-tendsto--72cfa8e5746d7569b0797c35.md) | 64 | `result-track:72cfa8e5746d7569b0797c35c7f85dde71cbf4564ad92109daa43839541f4eb2` |
| 4 | `theorem` | [finite_zeta_telescope](../../../../../mathematics/NumberTheory/Zeta/Riemann/CubicZetaIdentity.lean/declarations/finite-zeta-telescope--e711b5935e372a6cc3dabd6f.md) | 77 | `result-track:e711b5935e372a6cc3dabd6f2979d64963b4ff4e97e804ca42511f7f9104620f` |
| 5 | `theorem` | [zeta_eq_cubic_of_one_lt_re](../../../../../mathematics/NumberTheory/Zeta/Riemann/CubicZetaIdentity.lean/declarations/zeta-eq-cubic-of-one-lt-re--d549bb4f41a1f4616ce63871.md) | 98 | `result-track:d549bb4f41a1f4616ce638718c2e9fb632353fcc0e8320ed7058ccf9aea3a27d` |
| 6 | `def` | [cubicRegularPart](../../../../../mathematics/NumberTheory/Zeta/Riemann/CubicZetaIdentity.lean/declarations/cubicregularpart--90a9b277bbfb0e88061f72c0.md) | 123 | `declaration-track:90a9b277bbfb0e88061f72c06573a7fc29e45f40108989481d21940cd8ef79f2` |
| 7 | `theorem` | [analyticOnNhd_cubicRegularPart](../../../../../mathematics/NumberTheory/Zeta/Riemann/CubicZetaIdentity.lean/declarations/analyticonnhd-cubicregularpart--647bb12b6f68f1fb2df59b8b.md) | 126 | `result-track:647bb12b6f68f1fb2df59b8b2e76f926db7cda918ffba541abfc6c750309b0d5` |
| 8 | `theorem` | [cubic_halfPlane_convex](../../../../../mathematics/NumberTheory/Zeta/Riemann/CubicZetaIdentity.lean/declarations/cubic-halfplane-convex--f0616eaf6ba7bf13ca27a36b.md) | 137 | `result-track:f0616eaf6ba7bf13ca27a36b61404727e2d58de13fef1e44752f34ad10f9d7a8` |
| 9 | `theorem` | [riemannZeta₀_eq_cubicRegularPart](../../../../../mathematics/NumberTheory/Zeta/Riemann/CubicZetaIdentity.lean/declarations/riemannzeta-eq-cubicregularpart--f3fb6d97ac4d00837842b6b1.md) | 152 | `result-track:f3fb6d97ac4d00837842b6b1251c84db9183c0a893c50a86779fb497eb6d1f9e` |
| 10 | `theorem` | [zeta_eq_cubic](../../../../../mathematics/NumberTheory/Zeta/Riemann/CubicZetaIdentity.lean/declarations/zeta-eq-cubic--cf4ba59731b59b49ab469ad2.md) | 171 | `result-track:cf4ba59731b59b49ab469ad2a6286670def0f922a13653c03426778e366a3d60` |
| 11 | `theorem` | [riemannZeta₁_eq_cubic](../../../../../mathematics/NumberTheory/Zeta/Riemann/CubicZetaIdentity.lean/declarations/riemannzeta-eq-cubic--a16b87ca91a3c5cd2656def9.md) | 179 | `result-track:a16b87ca91a3c5cd2656def9833ad7071fb6f6c22c924660432c9dd55ae3e1a7` |
| 12 | `theorem` | [cubicRemainder_at_one_identity](../../../../../mathematics/NumberTheory/Zeta/Riemann/CubicZetaIdentity.lean/declarations/cubicremainder-at-one-identity--6518fb600527181083e4b409.md) | 184 | `result-track:6518fb600527181083e4b409a54cd5ad19ba922b3ea3684a8381d636cbe02295` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
