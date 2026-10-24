# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.WienerIkeharaFiniteAbelMajorization

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "976f8e599a1c4cb673ec3d78d36f07ead8244352",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/WienerIkeharaFiniteAbelMajorization.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaFiniteAbelMajorization.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaFiniteAbelMajorization.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `976f8e599a1c4cb673ec3d78d36f07ead8244352`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/WienerIkeharaFiniteAbelMajorization.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/WienerIkeharaFiniteAbelMajorization.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Group.Finset.Basic` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [wienerAbelPrefix](../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaFiniteAbelMajorization.lean/declarations/wienerabelprefix--1daf2922c1d46043cdee54f7.md) | 54 | `declaration-track:1daf2922c1d46043cdee54f76792b6c1a0b720f6262868e7de8f21472fb61395` |
| 2 | `theorem` | [wienerAbelPrefix_succ](../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaFiniteAbelMajorization.lean/declarations/wienerabelprefix-succ--2944b881e0e3d6707537d26f.md) | 57 | `result-track:2944b881e0e3d6707537d26f739475a91d13a5a5453b165db159f98a8f1c5b63` |
| 3 | `theorem` | [wienerAbel_finite_identity](../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaFiniteAbelMajorization.lean/declarations/wienerabel-finite-identity--98bef33b0364b8ea578fa0e2.md) | 66 | `result-track:98bef33b0364b8ea578fa0e20ac8d246ea61ee18d84c8aaa255296f53955102b` |
| 4 | `theorem` | [wienerAbel_linear_telescoping](../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaFiniteAbelMajorization.lean/declarations/wienerabel-linear-telescoping--d002a092d5f5d8a502248c63.md) | 85 | `result-track:d002a092d5f5d8a502248c6309396b358af7f3d41692e4ea9a9e1a7454f4433f` |
| 5 | `theorem` | [wienerAbel_weighted_le_linear_envelope](../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaFiniteAbelMajorization.lean/declarations/wienerabel-weighted-le-linear-envelope--3ae9841c3958a669581892c1.md) | 107 | `result-track:3ae9841c3958a669581892c1ee3b206e5e89fe8d495835571d7437440aca9314` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
