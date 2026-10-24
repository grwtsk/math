# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogChebyshevEquivalence

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "939a53e9b72f6e84ba164b696c6174c8a5128fa1",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogChebyshevEquivalence.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogChebyshevEquivalence.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogChebyshevEquivalence.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `939a53e9b72f6e84ba164b696c6174c8a5128fa1`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogChebyshevEquivalence.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CenteredMobiusLogChebyshevEquivalence.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogChebyshevConverse`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogChebyshevConverse.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_dyadic_block](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogChebyshevEquivalence.lean/declarations/exists-dyadic-block--fd9e0124d779e8309853e22a.md) | 13 | `result-track:fd9e0124d779e8309853e22a3b996b309377355bd2334b73baebed8ec8d26efe` |
| 2 | `theorem` | [pow_two_eq_dyadicScale_pred](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogChebyshevEquivalence.lean/declarations/pow-two-eq-dyadicscale-pred--3463badfd9a60a8ce5d86e94.md) | 22 | `result-track:3463badfd9a60a8ce5d86e9416a1b62f02e50834674a0b76b28c5a2f55ac3038` |
| 3 | `theorem` | [globalChebyshev_of_prefixMangoldt](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogChebyshevEquivalence.lean/declarations/globalchebyshev-of-prefixmangoldt--bbdd78ebbb8fba6454ab2e71.md) | 31 | `result-track:bbdd78ebbb8fba6454ab2e719cae059800cfbba5e568fd0607636136d099df0b` |
| 4 | `theorem` | [globalChebyshev_iff_prefixMangoldt](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogChebyshevEquivalence.lean/declarations/globalchebyshev-iff-prefixmangoldt--7ae76461f9fa0c99bfd19a1a.md) | 132 | `result-track:7ae76461f9fa0c99bfd19a1aeacf2a397e62aab9cca9e94e08dd4bb589061ef4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
