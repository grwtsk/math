# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.PinnedPrimeWeightPsiCapacityNoGo

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "357478698ed48a67786102f47fc43b358a63910f",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/PinnedPrimeWeightPsiCapacityNoGo.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightPsiCapacityNoGo.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightPsiCapacityNoGo.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `357478698ed48a67786102f47fc43b358a63910f`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/PinnedPrimeWeightPsiCapacityNoGo.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/PinnedPrimeWeightPsiCapacityNoGo.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.PinnedPrimeWeightIntegerizedPsiSourceRule`](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightIntegerizedPsiSourceRule.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.PinnedPrimeWeightRatioSandwich`](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightRatioSandwich.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [SublinearDyadicEnvelope](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightPsiCapacityNoGo.lean/declarations/sublineardyadicenvelope--fe638fb803b259ba2b8a5fb5.md) | 53 | `declaration-track:fe638fb803b259ba2b8a5fb51788f164d1bd149d9468b59da05c3fc638b1ed97` |
| 2 | `def` | [SquareRootForcedQuadraticRecurrence](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightPsiCapacityNoGo.lean/declarations/squarerootforcedquadraticrecurrence--228d054717c705003aab8a06.md) | 60 | `declaration-track:228d054717c705003aab8a06f247fcebd1590488dfb1aba82cb57a497f03336c` |
| 3 | `theorem` | [sublinear_quadraticRecurrence_eventually_sqrt](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightPsiCapacityNoGo.lean/declarations/sublinear-quadraticrecurrence-eventually-sqrt--2429317bfd85e9f3424e4427.md) | 70 | `result-track:2429317bfd85e9f3424e442776ec7e8696487edc376cf707b8c8266441eb4cdf` |
| 4 | `def` | [UnboundedAdjacentPsiJump](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightPsiCapacityNoGo.lean/declarations/unboundedadjacentpsijump--77f402946ed4ec09e0b856cb.md) | 173 | `declaration-track:77f402946ed4ec09e0b856cbe34a0670dcd4ad35c33595717dce3d097d441c21` |
| 5 | `def` | [EnvelopeQuadraticIntegerPsiResponse](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightPsiCapacityNoGo.lean/declarations/envelopequadraticintegerpsiresponse--6021f2e7219c42f8163daf87.md) | 184 | `declaration-track:6021f2e7219c42f8163daf87cf04ff268cc57c3baa9408e84db7a928ef8ed56f` |
| 6 | `theorem` | [no_uniform_integerPsiResponse_of_sublinear_recurrence_and_jumps](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightPsiCapacityNoGo.lean/declarations/no-uniform-integerpsiresponse-of-sublinear-recurrence-and-jumps--b2a662fc40c43ec1b2fcb16a.md) | 194 | `result-track:b2a662fc40c43ec1b2fcb16a560ba1caf30c26a775071e7a7f8935d22484545c` |
| 7 | `theorem` | [integerPsiCapacity_to_envelopeQuadraticResponse](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightPsiCapacityNoGo.lean/declarations/integerpsicapacity-to-envelopequadraticresponse--e7959515e4266e88af8b94b1.md) | 254 | `result-track:e7959515e4266e88af8b94b1fc4e5f699ea0bba320881b7b827abfdfbd337442` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
