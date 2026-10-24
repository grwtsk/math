# Verification target: GRWTSK.NumberTheory.Moebius.RegularOrbitParityProjectors

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a9a15e1021f4c46f86154eeffa69fb74cc277925",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/RegularOrbitParityProjectors.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/RegularOrbitParityProjectors.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/RegularOrbitParityProjectors.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a9a15e1021f4c46f86154eeffa69fb74cc277925`.

Source path: `GRWTSK/NumberTheory/Moebius/RegularOrbitParityProjectors.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/RegularOrbitParityProjectors.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.ChiFourMertensPointwiseToDyadic`](../../../../mathematics/NumberTheory/Moebius/ChiFourMertensPointwiseToDyadic.lean/index.md) — import line 11; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [positiveEndpointEvenShiftSet](../../../../mathematics/NumberTheory/Moebius/RegularOrbitParityProjectors.lean/declarations/positiveendpointevenshiftset--3932e3e9f5e8444ea961e8ea.md) | 44 | `declaration-track:3932e3e9f5e8444ea961e8ea5f5b9caee713d32f980e42ac8348c4dcc6562a80` |
| 2 | `def` | [positiveEndpointOddShiftSet](../../../../mathematics/NumberTheory/Moebius/RegularOrbitParityProjectors.lean/declarations/positiveendpointoddshiftset--27b92f8151accf29acba8013.md) | 48 | `declaration-track:27b92f8151accf29acba80136941d79b59482b26a39d80d54a653e9d8b06a955` |
| 3 | `def` | [twoKernelEvenShiftProjectorAggregate](../../../../mathematics/NumberTheory/Moebius/RegularOrbitParityProjectors.lean/declarations/twokernelevenshiftprojectoraggregate--8bdbbd88ce0abc35f82151e6.md) | 54 | `declaration-track:8bdbbd88ce0abc35f82151e6ef007c769b5a0b79ced902ea3ee30dcd70a4b485` |
| 4 | `def` | [twoKernelOddShiftProjectorAggregate](../../../../mathematics/NumberTheory/Moebius/RegularOrbitParityProjectors.lean/declarations/twokerneloddshiftprojectoraggregate--5cd08c0861fc8c3c62b139f4.md) | 65 | `declaration-track:5cd08c0861fc8c3c62b139f4c38fcf56e2fa48fc6dce8a823f0f770ad62f797b` |
| 5 | `theorem` | [twoKernelPairPlusAggregate_eq_two_mul_evenShiftProjector](../../../../mathematics/NumberTheory/Moebius/RegularOrbitParityProjectors.lean/declarations/twokernelpairplusaggregate-eq-two-mul-evenshiftprojector--87108dc6fd4de9ad6c8c7cf9.md) | 75 | `result-track:87108dc6fd4de9ad6c8c7cf9dc2823f57e523bafc533c3e4da80cb1bcebfe036` |
| 6 | `theorem` | [twoKernelPairMinusAggregate_eq_two_mul_oddShiftProjector](../../../../mathematics/NumberTheory/Moebius/RegularOrbitParityProjectors.lean/declarations/twokernelpairminusaggregate-eq-two-mul-oddshiftprojector--aa7168e49667238bfe2d1ed8.md) | 108 | `result-track:aa7168e49667238bfe2d1ed8c34c76205c160e74b336d44e10b3c5ef5b65d537` |
| 7 | `def` | [twoNonunitCanonicalRegularOrbitMajorant](../../../../mathematics/NumberTheory/Moebius/RegularOrbitParityProjectors.lean/declarations/twononunitcanonicalregularorbitmajorant--51da9cafb860136fba6ce36c.md) | 143 | `declaration-track:51da9cafb860136fba6ce36cfb235e49e7ef5eec12c3dc9fba86e13220ecb545` |
| 8 | `theorem` | [twoNonunitRegularOrbitMajorant_eq_canonicalParityProjectors](../../../../mathematics/NumberTheory/Moebius/RegularOrbitParityProjectors.lean/declarations/twononunitregularorbitmajorant-eq-canonicalparityprojectors--94b2ee306fb5b9c892f450d5.md) | 153 | `result-track:94b2ee306fb5b9c892f450d5aec216d60822a5c162ec0467fca5b143f8a55d38` |
| 9 | `def` | [twoNonunitCanonicalRegularOrbitEndpointMajorant](../../../../mathematics/NumberTheory/Moebius/RegularOrbitParityProjectors.lean/declarations/twononunitcanonicalregularorbitendpointmajorant--bcc4388b69857b74bd954375.md) | 175 | `declaration-track:bcc4388b69857b74bd954375bdea227b81ba356e086feba5bb3912e724ea25ab` |
| 10 | `theorem` | [twoNonunitRegularOrbitEndpointMajorant_eq_canonicalParityProjectors](../../../../mathematics/NumberTheory/Moebius/RegularOrbitParityProjectors.lean/declarations/twononunitregularorbitendpointmajorant-eq-canonicalparityprojectors--59f64b42b46ffa642177c115.md) | 189 | `result-track:59f64b42b46ffa642177c115fbc8d0f7abb1e524ac46dc4e2083bc71a0b5033e` |
| 11 | `def` | [DyadicNaturalScaleCanonicalRegularOrbitProjectorBudget](../../../../mathematics/NumberTheory/Moebius/RegularOrbitParityProjectors.lean/declarations/dyadicnaturalscalecanonicalregularorbitprojectorbudget--8a9c09c0582a2ba370bdd1e6.md) | 216 | `declaration-track:8a9c09c0582a2ba370bdd1e6a6c92a837f41f36332f6416b2cdaa5637503f51a` |
| 12 | `theorem` | [canonicalRegularOrbitProjectorBudget_iff_regularOrbitBudget](../../../../mathematics/NumberTheory/Moebius/RegularOrbitParityProjectors.lean/declarations/canonicalregularorbitprojectorbudget-iff-regularorbitbudget--cfc08997a9995ec2727da144.md) | 227 | `result-track:cfc08997a9995ec2727da14454c2ff22b6ccfe4591395e36fce99acb5b749055` |
| 13 | `def` | [canonicalRegularOrbitProjectorToRegularBudgetAdapter](../../../../mathematics/NumberTheory/Moebius/RegularOrbitParityProjectors.lean/declarations/canonicalregularorbitprojectortoregularbudgetadapter--80f6c7ae42c8f897cf1e6a8f.md) | 246 | `declaration-track:80f6c7ae42c8f897cf1e6a8f5f9daf6f3e85aaa36f1d929665fef687337c067a` |
| 14 | `theorem` | [naturalScaleCongruenceL1_of_two_pointwiseMertens_twoUnit_canonicalRegular](../../../../mathematics/NumberTheory/Moebius/RegularOrbitParityProjectors.lean/declarations/naturalscalecongruencel1-of-two-pointwisemertens-twounit-canonicalregula--5c26821dcf9ccd2afca6a37e.md) | 254 | `result-track:5c26821dcf9ccd2afca6a37e38002386da0519be0c9bcea84786f4e01e4b62e7` |
| 15 | `structure` | [ToCanonicalRegularOrbitProjectorBudgetAdapter](../../../../mathematics/NumberTheory/Moebius/RegularOrbitParityProjectors.lean/declarations/tocanonicalregularorbitprojectorbudgetadapter--69dd5e99239714874cb30695.md) | 269 | `declaration-track:69dd5e99239714874cb30695e9e23174aed87f3a17b8bb7a855818d4b2e2c97f` |
| 16 | `structure` | [CanonicalRegularOrbitProjectorSourceData](../../../../mathematics/NumberTheory/Moebius/RegularOrbitParityProjectors.lean/declarations/canonicalregularorbitprojectorsourcedata--3e7fc1105dd3aee12d0bf22f.md) | 276 | `declaration-track:3e7fc1105dd3aee12d0bf22fb20bdfe670eafecabafa073edfbb49dea7a76b27` |
| 17 | `def` | [CanonicalRegularOrbitProjectorSource](../../../../mathematics/NumberTheory/Moebius/RegularOrbitParityProjectors.lean/declarations/canonicalregularorbitprojectorsource--dc72dea6bb2b307d457d032b.md) | 290 | `declaration-track:dc72dea6bb2b307d457d032ba487e3bfe57fb6419d9dccbaa738fff410cad17c` |
| 18 | `abbrev` | [CanonicalRegularOrbitProjectorAnalyticAdapter](../../../../mathematics/NumberTheory/Moebius/RegularOrbitParityProjectors.lean/declarations/canonicalregularorbitprojectoranalyticadapter--e4f6666675b6f858bbb16029.md) | 303 | `declaration-track:e4f6666675b6f858bbb160298910697fd9b33ba92e37a8a53dc91e033687e433` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
