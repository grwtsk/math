# Verification target: GRWTSK.Algebra.RingTheory.Integral.Variant4c1c7251515923064ab4b7d78a6b061583f11258d85fc566bb779cb0e432d1a2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b26fea87bdddadc8794854ea4303cf92512d7df8",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/RingTheory/Integral/Variant4c1c7251515923064ab4b7d78a6b061583f11258d85fc566bb779cb0e432d1a2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/RingTheory/Integral/Variant4c1c7251515923064ab4b7d78a6b061583f11258d85fc566bb779cb0e432d1a2.lean/index.md) · [Full source](../../../../../mathematics/Algebra/RingTheory/Integral/Variant4c1c7251515923064ab4b7d78a6b061583f11258d85fc566bb779cb0e432d1a2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b26fea87bdddadc8794854ea4303cf92512d7df8`.

Source path: `GRWTSK/Algebra/RingTheory/Integral/Variant4c1c7251515923064ab4b7d78a6b061583f11258d85fc566bb779cb0e432d1a2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/RingTheory/Integral/Variant4c1c7251515923064ab4b7d78a6b061583f11258d85fc566bb779cb0e432d1a2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.RingHomProperties` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.IntegralClosure` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isIntegral_stableUnderComposition](../../../../../mathematics/Algebra/RingTheory/Integral/Variant4c1c7251515923064ab4b7d78a6b061583f11258d85fc566bb779cb0e432d1a2.lean/declarations/isintegral-stableundercomposition--9fec4a82ab84bdbaa141d621.md) | 24 | `result-track:9fec4a82ab84bdbaa141d621524cc44316fe0df0f5f1d957d6257c5377d1bb52` |
| 2 | `theorem` | [isIntegral_respectsIso](../../../../../mathematics/Algebra/RingTheory/Integral/Variant4c1c7251515923064ab4b7d78a6b061583f11258d85fc566bb779cb0e432d1a2.lean/declarations/isintegral-respectsiso--6f0213f62df70977f56aaaf3.md) | 28 | `result-track:6f0213f62df70977f56aaaf32ae9951c5084590a0cefe20a6c57c753d6e1a811` |
| 3 | `theorem` | [isIntegral_stableUnderBaseChange](../../../../../mathematics/Algebra/RingTheory/Integral/Variant4c1c7251515923064ab4b7d78a6b061583f11258d85fc566bb779cb0e432d1a2.lean/declarations/isintegral-stableunderbasechange--aaf506ad3abff8b7cb584fb9.md) | 35 | `result-track:aaf506ad3abff8b7cb584fb9abfb6c14a2c3ccf2ea02c6ef3a034bff424dd63e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
