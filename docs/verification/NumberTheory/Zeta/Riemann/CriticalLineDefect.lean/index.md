# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CriticalLineDefect

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5c6ed62a730c873b26a17630190aad442663876f",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalLineDefect.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalLineDefect.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalLineDefect.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5c6ed62a730c873b26a17630190aad442663876f`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CriticalLineDefect.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CriticalLineDefect.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.ZeroDefinitions`](../../../../../mathematics/NumberTheory/Zeta/Riemann/ZeroDefinitions.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Tactic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [rh_defect_eq_norm_sq](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalLineDefect.lean/declarations/rh-defect-eq-norm-sq--144ce1645ae25f9502a41e94.md) | 17 | `result-track:144ce1645ae25f9502a41e942a5594d5a5669cd8383b857f348474870facbc77` |
| 2 | `theorem` | [rh_defect_nonneg](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalLineDefect.lean/declarations/rh-defect-nonneg--ad6c09296a5cdf3aedc6d316.md) | 22 | `result-track:ad6c09296a5cdf3aedc6d316661f54b54e106e76a56811bc844b59f5b664f493` |
| 3 | `theorem` | [rh_defect_eq_square](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalLineDefect.lean/declarations/rh-defect-eq-square--c96e9f61a8a2216be4714fe3.md) | 26 | `result-track:c96e9f61a8a2216be4714fe33dc14c1c00a0b48d53c63d5c536774b6c8c67a39` |
| 4 | `theorem` | [rh_defect_eq_zero_iff](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalLineDefect.lean/declarations/rh-defect-eq-zero-iff--2972ee9f466dec3530f1c43e.md) | 31 | `result-track:2972ee9f466dec3530f1c43e3139426a99272f11d64b4d378660c83f4788a443` |
| 5 | `theorem` | [riemann_hypothesis_iff_defect_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalLineDefect.lean/declarations/riemann-hypothesis-iff-defect-zero--282c30e8f759a23741e8a979.md) | 41 | `result-track:282c30e8f759a23741e8a979330910423345f371037dee5c6b85b3fa69f9f6b3` |
| 6 | `theorem` | [defect_nonnegative_does_not_force_universal_vanishing](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalLineDefect.lean/declarations/defect-nonnegative-does-not-force-universal-vanishing--5d6ebae322ee2502bf1dd586.md) | 51 | `result-track:5d6ebae322ee2502bf1dd58673ebaa23453ddef85cdbdeaa3addb7ce2b14af30` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
