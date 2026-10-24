# Verification target: GRWTSK.Algebra.IntegrallyClosed.Variant38b9afd89bb568be876566d768978c7de0326acb0a6b9f337e9dea2f02c4df9f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ebafec634cb1551ca4640b8f1c9425bedb3aae4e",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/IntegrallyClosed/Variant38b9afd89bb568be876566d768978c7de0326acb0a6b9f337e9dea2f02c4df9f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/IntegrallyClosed/Variant38b9afd89bb568be876566d768978c7de0326acb0a6b9f337e9dea2f02c4df9f.lean/index.md) · [Full source](../../../../mathematics/Algebra/IntegrallyClosed/Variant38b9afd89bb568be876566d768978c7de0326acb0a6b9f337e9dea2f02c4df9f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ebafec634cb1551ca4640b8f1c9425bedb3aae4e`.

Source path: `GRWTSK/Algebra/IntegrallyClosed/Variant38b9afd89bb568be876566d768978c7de0326acb0a6b9f337e9dea2f02c4df9f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/IntegrallyClosed/Variant38b9afd89bb568be876566d768978c7de0326acb0a6b9f337e9dea2f02c4df9f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.IntegralClosure.IntegrallyClosed` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.LocalProperties.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Spectrum.Maximal.Localization` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IsIntegrallyClosed.iInf](../../../../mathematics/Algebra/IntegrallyClosed/Variant38b9afd89bb568be876566d768978c7de0326acb0a6b9f337e9dea2f02c4df9f.lean/declarations/isintegrallyclosed-iinf--5d0de7916dbcab5328bf0ae5.md) | 35 | `result-track:5d0de7916dbcab5328bf0ae57a4536ab48c6f009bbd2449b8a26cf2d3d337280` |
| 2 | `theorem` | [IsIntegrallyClosed.of_iInf_eq_bot](../../../../mathematics/Algebra/IntegrallyClosed/Variant38b9afd89bb568be876566d768978c7de0326acb0a6b9f337e9dea2f02c4df9f.lean/declarations/isintegrallyclosed-of-iinf-eq-bot--c35f70958ff0d31142430c81.md) | 46 | `result-track:c35f70958ff0d31142430c81f099014ac9562d529a832db12102c776bb86a34b` |
| 3 | `theorem` | [IsIntegrallyClosed.of_localization_submonoid](../../../../mathematics/Algebra/IntegrallyClosed/Variant38b9afd89bb568be876566d768978c7de0326acb0a6b9f337e9dea2f02c4df9f.lean/declarations/isintegrallyclosed-of-localization-submonoid--f7b2ba55ed5ec17e723b9af8.md) | 52 | `result-track:f7b2ba55ed5ec17e723b9af82cf16773c3ea05dfda1bd63641008191a50f9d4e` |
| 4 | `theorem` | [IsIntegrallyClosed.of_localization](../../../../mathematics/Algebra/IntegrallyClosed/Variant38b9afd89bb568be876566d768978c7de0326acb0a6b9f337e9dea2f02c4df9f.lean/declarations/isintegrallyclosed-of-localization--80682ce124a257b13a958910.md) | 62 | `result-track:80682ce124a257b13a9589107a40d51dcdf143593985f3cb1586ac6029bb793b` |
| 5 | `theorem` | [IsIntegrallyClosed.of_localization_maximal](../../../../mathematics/Algebra/IntegrallyClosed/Variant38b9afd89bb568be876566d768978c7de0326acb0a6b9f337e9dea2f02c4df9f.lean/declarations/isintegrallyclosed-of-localization-maximal--da680a29cfddf782f35f4d1b.md) | 73 | `result-track:da680a29cfddf782f35f4d1b63d97d46602650ab2b7bf255306f22c46bf70a70` |
| 6 | `theorem` | [isIntegrallyClosed_ofLocalizationMaximal](../../../../mathematics/Algebra/IntegrallyClosed/Variant38b9afd89bb568be876566d768978c7de0326acb0a6b9f337e9dea2f02c4df9f.lean/declarations/isintegrallyclosed-oflocalizationmaximal--fb2076d315d4705c6ba68c0c.md) | 85 | `result-track:fb2076d315d4705c6ba68c0cf059473509c735074b02d27bd1351f600440d1e6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
