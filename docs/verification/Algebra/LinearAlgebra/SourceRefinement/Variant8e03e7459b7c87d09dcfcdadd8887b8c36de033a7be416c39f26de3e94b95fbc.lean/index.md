# Verification target: GRWTSK.Algebra.LinearAlgebra.SourceRefinement.Variant8e03e7459b7c87d09dcfcdadd8887b8c36de033a7be416c39f26de3e94b95fbc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "14b478b6ad911d3c976b152c8e7a7c35e423b1f3",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/SourceRefinement/Variant8e03e7459b7c87d09dcfcdadd8887b8c36de033a7be416c39f26de3e94b95fbc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/SourceRefinement/Variant8e03e7459b7c87d09dcfcdadd8887b8c36de033a7be416c39f26de3e94b95fbc.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/SourceRefinement/Variant8e03e7459b7c87d09dcfcdadd8887b8c36de033a7be416c39f26de3e94b95fbc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `14b478b6ad911d3c976b152c8e7a7c35e423b1f3`.

Source path: `GRWTSK/Algebra/LinearAlgebra/SourceRefinement/Variant8e03e7459b7c87d09dcfcdadd8887b8c36de033a7be416c39f26de3e94b95fbc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/SourceRefinement/Variant8e03e7459b7c87d09dcfcdadd8887b8c36de033a7be416c39f26de3e94b95fbc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ArithmeticDefect` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [retentionMatrix](../../../../../mathematics/Algebra/LinearAlgebra/SourceRefinement/Variant8e03e7459b7c87d09dcfcdadd8887b8c36de033a7be416c39f26de3e94b95fbc.lean/declarations/retentionmatrix--b140b90c09d03415f85311ae.md) | 21 | `declaration-track:b140b90c09d03415f85311aea10c4d09607ce7c4cd8639f349d4ce835dcfd8a0` |
| 2 | `theorem` | [retentionMatrix_apply](../../../../../mathematics/Algebra/LinearAlgebra/SourceRefinement/Variant8e03e7459b7c87d09dcfcdadd8887b8c36de033a7be416c39f26de3e94b95fbc.lean/declarations/retentionmatrix-apply--01e4da9d6997803c017a4182.md) | 25 | `result-track:01e4da9d6997803c017a4182794d89c8ae63ca37ce7029364cea988b9dc09b8f` |
| 3 | `theorem` | [retentionMatrix_self](../../../../../mathematics/Algebra/LinearAlgebra/SourceRefinement/Variant8e03e7459b7c87d09dcfcdadd8887b8c36de033a7be416c39f26de3e94b95fbc.lean/declarations/retentionmatrix-self--00ced5cc8d1dcb5b39b9174f.md) | 34 | `result-track:00ced5cc8d1dcb5b39b9174f534639df6cea667a017d18ed8a1fb47d0de8b1f1` |
| 4 | `def` | [transportAt](../../../../../mathematics/Algebra/LinearAlgebra/SourceRefinement/Variant8e03e7459b7c87d09dcfcdadd8887b8c36de033a7be416c39f26de3e94b95fbc.lean/declarations/transportat--e5547e038eb3592a2d421cc9.md) | 40 | `declaration-track:e5547e038eb3592a2d421cc9e8ef6b9434df64fd765110e985263737e7117ea3` |
| 5 | `def` | [firstIncrement](../../../../../mathematics/Algebra/LinearAlgebra/SourceRefinement/Variant8e03e7459b7c87d09dcfcdadd8887b8c36de033a7be416c39f26de3e94b95fbc.lean/declarations/firstincrement--86d207aa4d86db0b3831a3c2.md) | 45 | `declaration-track:86d207aa4d86db0b3831a3c23d4118c6adc040e25abb6089a99a7483f5e76efb` |
| 6 | `def` | [secondIncrement](../../../../../mathematics/Algebra/LinearAlgebra/SourceRefinement/Variant8e03e7459b7c87d09dcfcdadd8887b8c36de033a7be416c39f26de3e94b95fbc.lean/declarations/secondincrement--1f844effb9634f18e2518cd8.md) | 48 | `declaration-track:1f844effb9634f18e2518cd88df271977b4eee9ca3a4d0c22bd46c587dcc57e8` |
| 7 | `theorem` | [first_refinement](../../../../../mathematics/Algebra/LinearAlgebra/SourceRefinement/Variant8e03e7459b7c87d09dcfcdadd8887b8c36de033a7be416c39f26de3e94b95fbc.lean/declarations/first-refinement--2bf55edb6b37b67de20c37b9.md) | 50 | `result-track:2bf55edb6b37b67de20c37b924fad25e20773c911a9feaac9ad99028901a4cd1` |
| 8 | `theorem` | [second_refinement](../../../../../mathematics/Algebra/LinearAlgebra/SourceRefinement/Variant8e03e7459b7c87d09dcfcdadd8887b8c36de033a7be416c39f26de3e94b95fbc.lean/declarations/second-refinement--0fcf3e38a012e1d6b6160132.md) | 54 | `result-track:0fcf3e38a012e1d6b6160132edfdcca713134f7160ed30d7d48b6f4bf47c4c41` |
| 9 | `theorem` | [firstIncrement_apply](../../../../../mathematics/Algebra/LinearAlgebra/SourceRefinement/Variant8e03e7459b7c87d09dcfcdadd8887b8c36de033a7be416c39f26de3e94b95fbc.lean/declarations/firstincrement-apply--4e510dd7f87157e307015b39.md) | 60 | `result-track:4e510dd7f87157e307015b39b0a591dc0480e971a4a8736448bd23163250fe76` |
| 10 | `theorem` | [secondIncrement_apply](../../../../../mathematics/Algebra/LinearAlgebra/SourceRefinement/Variant8e03e7459b7c87d09dcfcdadd8887b8c36de033a7be416c39f26de3e94b95fbc.lean/declarations/secondincrement-apply--d4d752027bd45e52d455c9c6.md) | 71 | `result-track:d4d752027bd45e52d455c9c6d75d366af650a474c34ce087c1fa180dbd668510` |
| 11 | `theorem` | [literal_refinement_increment](../../../../../mathematics/Algebra/LinearAlgebra/SourceRefinement/Variant8e03e7459b7c87d09dcfcdadd8887b8c36de033a7be416c39f26de3e94b95fbc.lean/declarations/literal-refinement-increment--82ea38a315b70b1add6b9b6d.md) | 88 | `result-track:82ea38a315b70b1add6b9b6dd20297b8158cef9793a05deb9b616f132d790635` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
