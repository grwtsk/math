# Verification target: GRWTSK.Analysis.MeasureTheory.Regularization.Variant4810f509993d37e19c7d6b2717d3ab5905a097c8491547690469fb63fcfbccc7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "df75c380a5e81fbfb83b90a46d1e0d875833c944",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Regularization/Variant4810f509993d37e19c7d6b2717d3ab5905a097c8491547690469fb63fcfbccc7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Regularization/Variant4810f509993d37e19c7d6b2717d3ab5905a097c8491547690469fb63fcfbccc7.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Regularization/Variant4810f509993d37e19c7d6b2717d3ab5905a097c8491547690469fb63fcfbccc7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `df75c380a5e81fbfb83b90a46d1e0d875833c944`.

Source path: `GRWTSK/Analysis/MeasureTheory/Regularization/Variant4810f509993d37e19c7d6b2717d3ab5905a097c8491547690469fb63fcfbccc7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Regularization/Variant4810f509993d37e19c7d6b2717d3ab5905a097c8491547690469fb63fcfbccc7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Gamma` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.HeatKernel.Asymptotics` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Mellin` — import line 11; external provider; requires a separately pinned dependency.
- `spectral_rh.Spectral.Schrodinger.Operator` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [expScalar](../../../../../mathematics/Analysis/MeasureTheory/Regularization/Variant4810f509993d37e19c7d6b2717d3ab5905a097c8491547690469fb63fcfbccc7.lean/declarations/expscalar--76e286a31c6219e2408d2466.md) | 29 | `declaration-track:76e286a31c6219e2408d2466137e5e11add6b59ea18656890f036de564c0cf1f` |
| 2 | `def` | [heat](../../../../../mathematics/Analysis/MeasureTheory/Regularization/Variant4810f509993d37e19c7d6b2717d3ab5905a097c8491547690469fb63fcfbccc7.lean/declarations/heat--af2bb6d290e8084212076d5d.md) | 39 | `declaration-track:af2bb6d290e8084212076d5d4edc22a123e92e23f20bd6521363d4fbc0ed16f8` |
| 3 | `lemma` | [heat_semigroup](../../../../../mathematics/Analysis/MeasureTheory/Regularization/Variant4810f509993d37e19c7d6b2717d3ab5905a097c8491547690469fb63fcfbccc7.lean/declarations/heat-semigroup--617e7b12e82670a7b078cb5b.md) | 43 | `result-track:617e7b12e82670a7b078cb5b326080d26870466ca0da501b6c98ceb6465f59a9` |
| 4 | `lemma` | [heat_traceClass](../../../../../mathematics/Analysis/MeasureTheory/Regularization/Variant4810f509993d37e19c7d6b2717d3ab5905a097c8491547690469fb63fcfbccc7.lean/declarations/heat-traceclass--ffa008a887f56fb238d41cca.md) | 54 | `result-track:ffa008a887f56fb238d41cca264892d22911f223a18fdd8686b6fc0ea3f17af7` |
| 5 | `def` | [heatTrace](../../../../../mathematics/Analysis/MeasureTheory/Regularization/Variant4810f509993d37e19c7d6b2717d3ab5905a097c8491547690469fb63fcfbccc7.lean/declarations/heattrace--955a58fe4b767f0640f49693.md) | 59 | `declaration-track:955a58fe4b767f0640f49693e58ecd073cb06c94950be6e9088f90f051669b40` |
| 6 | `def` | [zeta](../../../../../mathematics/Analysis/MeasureTheory/Regularization/Variant4810f509993d37e19c7d6b2717d3ab5905a097c8491547690469fb63fcfbccc7.lean/declarations/zeta--7251fcf849a95a047afdc980.md) | 65 | `declaration-track:7251fcf849a95a047afdc980c4e2cfc2cb74a2a07c4508fd29ccd4a40ec07ec9` |
| 7 | `lemma` | [zeta_meromorphic](../../../../../mathematics/Analysis/MeasureTheory/Regularization/Variant4810f509993d37e19c7d6b2717d3ab5905a097c8491547690469fb63fcfbccc7.lean/declarations/zeta-meromorphic--6152aaea9b01be89f2403cb1.md) | 74 | `result-track:6152aaea9b01be89f2403cb10ace9334738423bd45a47b18a75fa499c8dc890f` |
| 8 | `lemma` | [zeta_at0_reg](../../../../../mathematics/Analysis/MeasureTheory/Regularization/Variant4810f509993d37e19c7d6b2717d3ab5905a097c8491547690469fb63fcfbccc7.lean/declarations/zeta-at0-reg--7358678e97a1283f17991bfd.md) | 81 | `result-track:7358678e97a1283f17991bfd6ef1ed8b1e0806878294d0e1f6d7641a67d59a4a` |
| 9 | `def` | [detζ](../../../../../mathematics/Analysis/MeasureTheory/Regularization/Variant4810f509993d37e19c7d6b2717d3ab5905a097c8491547690469fb63fcfbccc7.lean/declarations/det--95ae4450ccaa13bd9d6d9132.md) | 90 | `declaration-track:95ae4450ccaa13bd9d6d913236ac6ac54885db2d3942d4820c42b88121db67e8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
