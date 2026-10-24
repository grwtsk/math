# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogBoundaryPrefixSupplier

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a4bf5fd3a24de252868ec1655b842eac443fa7d9",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogBoundaryPrefixSupplier.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogBoundaryPrefixSupplier.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogBoundaryPrefixSupplier.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a4bf5fd3a24de252868ec1655b842eac443fa7d9`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogBoundaryPrefixSupplier.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CenteredMobiusLogBoundaryPrefixSupplier.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogBoundaryAbel`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogBoundaryAbel.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [DyadicPrefixMangoldtBoundAt](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogBoundaryPrefixSupplier.lean/declarations/dyadicprefixmangoldtboundat--ee76dc9da29543a01d9eacbc.md) | 16 | `declaration-track:ee76dc9da29543a01d9eacbcf9dc2a0e10dd697c05f779cf5480e51fd5c29420` |
| 2 | `theorem` | [greenBoundaryAbelCoefficientMass_le](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogBoundaryPrefixSupplier.lean/declarations/greenboundaryabelcoefficientmass-le--2ea7238b6d6d3343205de6ca.md) | 22 | `result-track:2ea7238b6d6d3343205de6ca59dbb2a789b880c8793938587744827b9530c66f` |
| 3 | `theorem` | [abs_mass0_le_of_prefix_bound](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogBoundaryPrefixSupplier.lean/declarations/abs-mass0-le-of-prefix-bound--b02e44d41ec9ea2dbf186766.md) | 40 | `result-track:b02e44d41ec9ea2dbf1867660cac05f5ea211708c55e8b4bb077e8e453eb1f6f` |
| 4 | `theorem` | [allDyadicMass0Bound_of_prefixMangoldt](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogBoundaryPrefixSupplier.lean/declarations/alldyadicmass0bound-of-prefixmangoldt--7f0c068fc39a2eb9d3ef1415.md) | 88 | `result-track:7f0c068fc39a2eb9d3ef14154a6a96feb138ceda6cf4e2f1bd984699a77f38d7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
