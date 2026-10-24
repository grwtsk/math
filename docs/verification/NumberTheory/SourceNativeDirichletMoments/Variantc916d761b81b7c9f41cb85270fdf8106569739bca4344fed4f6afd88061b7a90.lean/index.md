# Verification target: GRWTSK.NumberTheory.SourceNativeDirichletMoments.Variantc916d761b81b7c9f41cb85270fdf8106569739bca4344fed4f6afd88061b7a90

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4be523cff9c65c4f05698ec6003641d3cbed8b65",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/SourceNativeDirichletMoments/Variantc916d761b81b7c9f41cb85270fdf8106569739bca4344fed4f6afd88061b7a90.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/SourceNativeDirichletMoments/Variantc916d761b81b7c9f41cb85270fdf8106569739bca4344fed4f6afd88061b7a90.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/SourceNativeDirichletMoments/Variantc916d761b81b7c9f41cb85270fdf8106569739bca4344fed4f6afd88061b7a90.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4be523cff9c65c4f05698ec6003641d3cbed8b65`.

Source path: `GRWTSK/NumberTheory/SourceNativeDirichletMoments/Variantc916d761b81b7c9f41cb85270fdf8106569739bca4344fed4f6afd88061b7a90.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/SourceNativeDirichletMoments/Variantc916d761b81b7c9f41cb85270fdf8106569739bca4344fed4f6afd88061b7a90.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceNativeDirichlet` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.Deriv` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [dirichletMoment](../../../../mathematics/NumberTheory/SourceNativeDirichletMoments/Variantc916d761b81b7c9f41cb85270fdf8106569739bca4344fed4f6afd88061b7a90.lean/declarations/dirichletmoment--3878d65bc626a90e47ce86e6.md) | 15 | `declaration-track:3878d65bc626a90e47ce86e60c6328f32d7d8e87629ed4c922079da17c8e18b9` |
| 2 | `theorem` | [dirichletMoment_nonneg](../../../../mathematics/NumberTheory/SourceNativeDirichletMoments/Variantc916d761b81b7c9f41cb85270fdf8106569739bca4344fed4f6afd88061b7a90.lean/declarations/dirichletmoment-nonneg--e671924cc1af2c7fd8a3ded9.md) | 19 | `result-track:e671924cc1af2c7fd8a3ded9935feefacb60e80e93d8d44d977470dd55cd3c53` |
| 3 | `theorem` | [mangoldt_abscissa_le_one](../../../../mathematics/NumberTheory/SourceNativeDirichletMoments/Variantc916d761b81b7c9f41cb85270fdf8106569739bca4344fed4f6afd88061b7a90.lean/declarations/mangoldt-abscissa-le-one--adc8a640404c9e0afafdb186.md) | 26 | `result-track:adc8a640404c9e0afafdb186f2a505ab9a82e725b1bb5d5771ffae93dd60c34a` |
| 4 | `theorem` | [iterate_logMul_eq](../../../../mathematics/NumberTheory/SourceNativeDirichletMoments/Variantc916d761b81b7c9f41cb85270fdf8106569739bca4344fed4f6afd88061b7a90.lean/declarations/iterate-logmul-eq--4ac35fdc4a58056806a2d6b8.md) | 32 | `result-track:4ac35fdc4a58056806a2d6b867b46344b251975a6a4f9f173ba1c099c1fd8b8e` |
| 5 | `theorem` | [dirichletMoment_summable](../../../../mathematics/NumberTheory/SourceNativeDirichletMoments/Variantc916d761b81b7c9f41cb85270fdf8106569739bca4344fed4f6afd88061b7a90.lean/declarations/dirichletmoment-summable--0461d64389301c34c34ebddd.md) | 41 | `result-track:0461d64389301c34c34ebddd55082b7dbcf053d230441af415203d2f99c39a04` |
| 6 | `theorem` | [log_moment_series_eq](../../../../mathematics/NumberTheory/SourceNativeDirichletMoments/Variantc916d761b81b7c9f41cb85270fdf8106569739bca4344fed4f6afd88061b7a90.lean/declarations/log-moment-series-eq--597df42937b13a47f8402182.md) | 63 | `result-track:597df42937b13a47f8402182d779d5e6c58673524abaea6ed472f04cb70adffd` |
| 7 | `theorem` | [native_series_hasDerivAt_two](../../../../mathematics/NumberTheory/SourceNativeDirichletMoments/Variantc916d761b81b7c9f41cb85270fdf8106569739bca4344fed4f6afd88061b7a90.lean/declarations/native-series-hasderivat-two--88c3108b36a8dc8061fb119a.md) | 91 | `result-track:88c3108b36a8dc8061fb119af9ed32ef092e8b59b10f7e2184aa0d97458f0793` |
| 8 | `theorem` | [native_series_second_derivative_two](../../../../mathematics/NumberTheory/SourceNativeDirichletMoments/Variantc916d761b81b7c9f41cb85270fdf8106569739bca4344fed4f6afd88061b7a90.lean/declarations/native-series-second-derivative-two--254f728471a88d95983349e9.md) | 102 | `result-track:254f728471a88d95983349e94b506302e05855f7629664e200d7056296eb4f58` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
