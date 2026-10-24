# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Noninterference.Variantb3617aa0eb26aea707f2dd630e1f815d96d01d4191e335b81f19d96e495e66f3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "13220b866b6168258874ea7fe1f48a8f06840d62",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Noninterference/Variantb3617aa0eb26aea707f2dd630e1f815d96d01d4191e335b81f19d96e495e66f3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Noninterference/Variantb3617aa0eb26aea707f2dd630e1f815d96d01d4191e335b81f19d96e495e66f3.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Noninterference/Variantb3617aa0eb26aea707f2dd630e1f815d96d01d4191e335b81f19d96e495e66f3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `13220b866b6168258874ea7fe1f48a8f06840d62`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Noninterference/Variantb3617aa0eb26aea707f2dd630e1f815d96d01d4191e335b81f19d96e495e66f3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Noninterference/Variantb3617aa0eb26aea707f2dd630e1f815d96d01d4191e335b81f19d96e495e66f3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.StratifiedBoundary.Contract` — import line 1; external provider; requires a separately pinned dependency.
- `Mathematics.StratifiedBoundary.UnknownLedger` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [StratifiedObservation](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Noninterference/Variantb3617aa0eb26aea707f2dd630e1f815d96d01d4191e335b81f19d96e495e66f3.lean/declarations/stratifiedobservation--c1fe66144e73574d320aba39.md) | 13 | `declaration-track:c1fe66144e73574d320aba3981802c44f5628df629f85f1d858a4ef078be710d` |
| 2 | `def` | [StratifiedObservation.authoritativeEffect](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Noninterference/Variantb3617aa0eb26aea707f2dd630e1f815d96d01d4191e335b81f19d96e495e66f3.lean/declarations/stratifiedobservation-authoritativeeffect--b79d76447700ea12b2407a5c.md) | 19 | `declaration-track:b79d76447700ea12b2407a5cca2da3a50a88fe3b45c6aae0dac44f547d582bd7` |
| 3 | `theorem` | [stratified_observation_nonauthoritative](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Noninterference/Variantb3617aa0eb26aea707f2dd630e1f815d96d01d4191e335b81f19d96e495e66f3.lean/declarations/stratified-observation-nonauthoritative--a13d22f057f7f439c46c1e50.md) | 23 | `result-track:a13d22f057f7f439c46c1e5058c5aee06e41ad8f2f5401ec1bde4b4dee1086f6` |
| 4 | `structure` | [ExternalAdmissionCertificate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Noninterference/Variantb3617aa0eb26aea707f2dd630e1f815d96d01d4191e335b81f19d96e495e66f3.lean/declarations/externaladmissioncertificate--021354da5d5026d9a983f1d3.md) | 28 | `declaration-track:021354da5d5026d9a983f1d3a94c8062361a2a196df96aad37e5663e5c33efa3` |
| 5 | `inductive` | [AdmissionResult](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Noninterference/Variantb3617aa0eb26aea707f2dd630e1f815d96d01d4191e335b81f19d96e495e66f3.lean/declarations/admissionresult--efe5a3e163bcc9c6c6680bb5.md) | 36 | `declaration-track:efe5a3e163bcc9c6c6680bb52312fe2f79d34112ddedb9f55bf592531a9a7513` |
| 6 | `theorem` | [accepted_requires_external_certificate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Noninterference/Variantb3617aa0eb26aea707f2dd630e1f815d96d01d4191e335b81f19d96e495e66f3.lean/declarations/accepted-requires-external-certificate--2e3a55add9d0923e1f03a27a.md) | 43 | `result-track:2e3a55add9d0923e1f03a27a5f6e5cdc9f466c04b715a3510c2100f31dbba22e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
