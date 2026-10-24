# Verification target: GRWTSK.NumberTheory.SourceNativeDirichletMoments.Variante6f2f10d830ebda893e69df86fd60b390b10932b952efe461f63abff44272f2c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ba82f358274e014742bc78ca337b98643d6ab842",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/SourceNativeDirichletMoments/Variante6f2f10d830ebda893e69df86fd60b390b10932b952efe461f63abff44272f2c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/SourceNativeDirichletMoments/Variante6f2f10d830ebda893e69df86fd60b390b10932b952efe461f63abff44272f2c.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/SourceNativeDirichletMoments/Variante6f2f10d830ebda893e69df86fd60b390b10932b952efe461f63abff44272f2c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ba82f358274e014742bc78ca337b98643d6ab842`.

Source path: `GRWTSK/NumberTheory/SourceNativeDirichletMoments/Variante6f2f10d830ebda893e69df86fd60b390b10932b952efe461f63abff44272f2c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/SourceNativeDirichletMoments/Variante6f2f10d830ebda893e69df86fd60b390b10932b952efe461f63abff44272f2c.lean.json)

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
| 1 | `def` | [dirichletMoment](../../../../mathematics/NumberTheory/SourceNativeDirichletMoments/Variante6f2f10d830ebda893e69df86fd60b390b10932b952efe461f63abff44272f2c.lean/declarations/dirichletmoment--a9b6cc1c5c232421e6f10bcb.md) | 15 | `declaration-track:a9b6cc1c5c232421e6f10bcb119fce8141e07aa81395ac0a8fbe41940e4a093d` |
| 2 | `theorem` | [dirichletMoment_nonneg](../../../../mathematics/NumberTheory/SourceNativeDirichletMoments/Variante6f2f10d830ebda893e69df86fd60b390b10932b952efe461f63abff44272f2c.lean/declarations/dirichletmoment-nonneg--7eee9bf22796274e605727fc.md) | 19 | `result-track:7eee9bf22796274e605727fce59e58c28cd3ea13aed2e2826018b34f7c12da39` |
| 3 | `theorem` | [mangoldt_abscissa_le_one](../../../../mathematics/NumberTheory/SourceNativeDirichletMoments/Variante6f2f10d830ebda893e69df86fd60b390b10932b952efe461f63abff44272f2c.lean/declarations/mangoldt-abscissa-le-one--e97ff9e080648e00a997a22f.md) | 26 | `result-track:e97ff9e080648e00a997a22f4d6665e0b359eed521ff0c4e7ca940ceeb67643d` |
| 4 | `theorem` | [iterate_logMul_eq](../../../../mathematics/NumberTheory/SourceNativeDirichletMoments/Variante6f2f10d830ebda893e69df86fd60b390b10932b952efe461f63abff44272f2c.lean/declarations/iterate-logmul-eq--93e3fd53a9de45416c3dfe97.md) | 32 | `result-track:93e3fd53a9de45416c3dfe972a3650998f877c465c33226dae79ef0487b08067` |
| 5 | `theorem` | [dirichletMoment_summable](../../../../mathematics/NumberTheory/SourceNativeDirichletMoments/Variante6f2f10d830ebda893e69df86fd60b390b10932b952efe461f63abff44272f2c.lean/declarations/dirichletmoment-summable--d782128a8bfd46d94720c3e2.md) | 41 | `result-track:d782128a8bfd46d94720c3e2b9cf5ef71d7fe8d3655c6d2d60f6e382b1c238e2` |
| 6 | `theorem` | [log_moment_series_eq](../../../../mathematics/NumberTheory/SourceNativeDirichletMoments/Variante6f2f10d830ebda893e69df86fd60b390b10932b952efe461f63abff44272f2c.lean/declarations/log-moment-series-eq--93a53c3487cf5ac54f728cf4.md) | 63 | `result-track:93a53c3487cf5ac54f728cf4c2217b08f02b6adc5cf06e1a96ec3dbf6d8d5874` |
| 7 | `theorem` | [native_series_hasDerivAt_two](../../../../mathematics/NumberTheory/SourceNativeDirichletMoments/Variante6f2f10d830ebda893e69df86fd60b390b10932b952efe461f63abff44272f2c.lean/declarations/native-series-hasderivat-two--f3af8c9def0797834fd072e0.md) | 90 | `result-track:f3af8c9def0797834fd072e0ae52cd1bb4438358b34e2a4c1473be0ef1cece98` |
| 8 | `theorem` | [native_series_second_derivative_two](../../../../mathematics/NumberTheory/SourceNativeDirichletMoments/Variante6f2f10d830ebda893e69df86fd60b390b10932b952efe461f63abff44272f2c.lean/declarations/native-series-second-derivative-two--ad45108a699135b6c25f7725.md) | 101 | `result-track:ad45108a699135b6c25f7725a6ab5a343c967a9377d7d5b7381f36b170521de2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
