# Verification target: GRWTSK.Analysis.InnerProductSpace.VariationalResidual

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9a34811ceb23cc376914d0a6a397f02622c90ba9",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/InnerProductSpace/VariationalResidual.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/InnerProductSpace/VariationalResidual.lean/index.md) · [Full source](../../../../mathematics/Analysis/InnerProductSpace/VariationalResidual.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9a34811ceb23cc376914d0a6a397f02622c90ba9`.

Source path: `GRWTSK/Analysis/InnerProductSpace/VariationalResidual.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/InnerProductSpace/VariationalResidual.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 9; external provider; requires a separately pinned dependency.
- [`GRWTSK.Analysis.Inequalities.ResidualEnclosure`](../../../../mathematics/Analysis/Inequalities/ResidualEnclosure.lean/index.md) — import line 10; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [SymmetricOnDomain](../../../../mathematics/Analysis/InnerProductSpace/VariationalResidual.lean/declarations/symmetricondomain--996b8ef0d36de902a4fb8492.md) | 32 | `declaration-track:996b8ef0d36de902a4fb8492107a19c897c0d23dd96cf02f445f2a9a6d8e077c` |
| 2 | `def` | [CoerciveAt](../../../../mathematics/Analysis/InnerProductSpace/VariationalResidual.lean/declarations/coerciveat--f70df15c484eb4905ccd71f5.md) | 35 | `declaration-track:f70df15c484eb4905ccd71f5a9d1c057f44656f05bcc6c2c02f01e6cc1a5a53d` |
| 3 | `def` | [residual](../../../../mathematics/Analysis/InnerProductSpace/VariationalResidual.lean/declarations/residual--4c38272ce0a261161a2f84e5.md) | 38 | `declaration-track:4c38272ce0a261161a2f84e542564747a16bd48076c6192dcb3f62fe2598f3dc` |
| 4 | `def` | [lowerReading](../../../../mathematics/Analysis/InnerProductSpace/VariationalResidual.lean/declarations/lowerreading--ae3ce82e5c10291608d1a855.md) | 40 | `declaration-track:ae3ce82e5c10291608d1a855b9608ad29a02981eb3f75f5957528ec51ba8a947` |
| 5 | `theorem` | [error_equation](../../../../mathematics/Analysis/InnerProductSpace/VariationalResidual.lean/declarations/error-equation--2860cd98a63700a155d6ab93.md) | 43 | `result-track:2860cd98a63700a155d6ab939732d53ada9f46daba0e67442a7d3b232b56eb26` |
| 6 | `theorem` | [variational_identity](../../../../mathematics/Analysis/InnerProductSpace/VariationalResidual.lean/declarations/variational-identity--eaa1985d07b7b15bd2f91c59.md) | 49 | `result-track:eaa1985d07b7b15bd2f91c5936c372506fa4f953dcef950116e654e51e5518f6` |
| 7 | `theorem` | [positive_height_enclosure](../../../../mathematics/Analysis/InnerProductSpace/VariationalResidual.lean/declarations/positive-height-enclosure--965a8e300fa82df77886e963.md) | 61 | `result-track:965a8e300fa82df77886e963544e7b2461a18143cff16bd18249f1d50440b3d9` |
| 8 | `def` | [shift](../../../../mathematics/Analysis/InnerProductSpace/VariationalResidual.lean/declarations/shift--b121926904a3a650ecffcbdc.md) | 78 | `declaration-track:b121926904a3a650ecffcbdce00ae2d87f160bbcaaa91984aefdfa8545c96a08` |
| 9 | `theorem` | [shift_apply](../../../../mathematics/Analysis/InnerProductSpace/VariationalResidual.lean/declarations/shift-apply--7c5c896924bda5227e25e88f.md) | 80 | `result-track:7c5c896924bda5227e25e88f937c4055579e80fd76f082432dd60f105b0454f0` |
| 10 | `theorem` | [shift_coercive](../../../../mathematics/Analysis/InnerProductSpace/VariationalResidual.lean/declarations/shift-coercive--90d9b579f98276e0e30f8355.md) | 83 | `result-track:90d9b579f98276e0e30f8355ff34ebe4ea9006ea003d01b0ecf81fe43b9b518e` |
| 11 | `theorem` | [shift_symmetric](../../../../mathematics/Analysis/InnerProductSpace/VariationalResidual.lean/declarations/shift-symmetric--bb40caf1698563499df57c08.md) | 91 | `result-track:bb40caf1698563499df57c08c6f17609343fac1c3cb80670957c5de8c903d0dc` |
| 12 | `theorem` | [harmonic_source_reading](../../../../mathematics/Analysis/InnerProductSpace/VariationalResidual.lean/declarations/harmonic-source-reading--ba553e5080e0dc3c6d8bd02a.md) | 99 | `result-track:ba553e5080e0dc3c6d8bd02ad527e20dfe6ff31b2bf3f1c874ddcc465793c9b4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
