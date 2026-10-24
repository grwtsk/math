# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.JensenCentralLogDerivative

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "471739a3dc9e44874c66cd16e2f0b2ed6b9a7c40",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/JensenCentralLogDerivative.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/JensenCentralLogDerivative.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/JensenCentralLogDerivative.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `471739a3dc9e44874c66cd16e2f0b2ed6b9a7c40`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/JensenCentralLogDerivative.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/JensenCentralLogDerivative.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.JensenDiskQuotient`](../../../../../mathematics/NumberTheory/Zeta/Riemann/JensenDiskQuotient.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_actual_zeta_disk_log](../../../../../mathematics/NumberTheory/Zeta/Riemann/JensenCentralLogDerivative.lean/declarations/exists-actual-zeta-disk-log--2bdf8273a0981333f9010cf1.md) | 29 | `result-track:2bdf8273a0981333f9010cf1bf2edf69773c59d7ce6fe6903b4709c8c0c06fdc` |
| 2 | `theorem` | [norm_logDeriv_central](../../../../../mathematics/NumberTheory/Zeta/Riemann/JensenCentralLogDerivative.lean/declarations/norm-logderiv-central--b4b0a62857aa0f08498b5f2b.md) | 43 | `result-track:b4b0a62857aa0f08498b5f2b8cdefd71590cdd53eca9f59da761a321dd698536` |
| 3 | `theorem` | [norm_logDeriv_upper](../../../../../mathematics/NumberTheory/Zeta/Riemann/JensenCentralLogDerivative.lean/declarations/norm-logderiv-upper--0de6c1c837b988432ff12638.md) | 60 | `result-track:0de6c1c837b988432ff126383b35e500754f05a600b9d81d8741fd95a3111217` |
| 4 | `theorem` | [norm_logDeriv_lower](../../../../../mathematics/NumberTheory/Zeta/Riemann/JensenCentralLogDerivative.lean/declarations/norm-logderiv-lower--c411cf2e20cc00099725a07e.md) | 65 | `result-track:c411cf2e20cc00099725a07ed245c34c9364f108901dab754ed5c698f4d08603` |
| 5 | `theorem` | [budget_eq_quadratic](../../../../../mathematics/NumberTheory/Zeta/Riemann/JensenCentralLogDerivative.lean/declarations/budget-eq-quadratic--804db6838038fe152f98a535.md) | 73 | `result-track:804db6838038fe152f98a53506d6cd9b700775db0de8179fb4b6e91e23b24131` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
