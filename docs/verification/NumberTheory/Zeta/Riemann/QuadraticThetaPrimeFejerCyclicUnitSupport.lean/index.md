# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerCyclicUnitSupport

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bf9ba7f5775b0c64a2280b7b214bdd68563abe13",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicUnitSupport.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicUnitSupport.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicUnitSupport.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bf9ba7f5775b0c64a2280b7b214bdd68563abe13`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicUnitSupport.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicUnitSupport.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerCyclicTranslationSubadditivity`](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicTranslationSubadditivity.lean/index.md) — import line 3; pinned internal source present.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cyclicSharpPrefixMem](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicUnitSupport.lean/declarations/cyclicsharpprefixmem--cd15e823c7108370896f4b09.md) | 13 | `declaration-track:cd15e823c7108370896f4b09cb23b8c255e43a536d2222a381e1e05644ef5de6` |
| 2 | `theorem` | [cyclicSharpPrefixIndicator_eq_ite](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicUnitSupport.lean/declarations/cyclicsharpprefixindicator-eq-ite--6810622b73e9ec59aa6b0237.md) | 20 | `result-track:6810622b73e9ec59aa6b0237e80abb62fd5e9fddbea3f156ca807ddb3ed31d43` |
| 3 | `def` | [cyclicSharpUnitChangeSupport](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicUnitSupport.lean/declarations/cyclicsharpunitchangesupport--bfe91399df75955128ac4b48.md) | 28 | `declaration-track:bfe91399df75955128ac4b48e836979b74ebb56509bb0036e34b8a30a8e0897d` |
| 4 | `theorem` | [cyclicSharpUnitDifference_abs_eq_indicator](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicUnitSupport.lean/declarations/cyclicsharpunitdifference-abs-eq-indicator--573466faf68c2109b58eb0d5.md) | 38 | `result-track:573466faf68c2109b58eb0d56d7651c0cd1c56884d6e4283b64ae5dadaa66411` |
| 5 | `theorem` | [cyclicSharpUnitTranslationL1_eq_card_changeSupport](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicUnitSupport.lean/declarations/cyclicsharpunittranslationl1-eq-card-changesupport--960a8f3f84f2c2f1320c4d7a.md) | 66 | `result-track:960a8f3f84f2c2f1320c4d7a52129380eee96216f196e08783b42b6a38fc2d4b` |
| 6 | `def` | [CyclicSharpUnitBoundarySupportCardClaim](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicUnitSupport.lean/declarations/cyclicsharpunitboundarysupportcardclaim--5ddaa76fcbef94660dfb4ce0.md) | 80 | `declaration-track:5ddaa76fcbef94660dfb4ce0a725ba9e42bb90fa854405c99188493d41baf112` |
| 7 | `theorem` | [boundarySupportCard_to_unitTranslationBound](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicUnitSupport.lean/declarations/boundarysupportcard-to-unittranslationbound--d12b2059fcccbddb01b46766.md) | 88 | `result-track:d12b2059fcccbddb01b467669e12e1f2014859877153f3b66e30d7e102f89f10` |
| 8 | `theorem` | [boundarySupportCard_to_translationCardinality](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicUnitSupport.lean/declarations/boundarysupportcard-to-translationcardinality--d5ec9c47dcf73bd4d2dca619.md) | 97 | `result-track:d5ec9c47dcf73bd4d2dca61985d854167cda8940c2e82763331e3529b0063f25` |
| 9 | `def` | [CyclicSharpTwoBoundaryOnlyFrontier](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicUnitSupport.lean/declarations/cyclicsharptwoboundaryonlyfrontier--0030993093fc75f5ad044815.md) | 105 | `declaration-track:0030993093fc75f5ad0448159235da2d8ba6f5661cbab6f0101c5d2bf0d00ada` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
