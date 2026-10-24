# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Trails.Varianta85053b5329e17e26ea1d8bbfda10680ffd9bdd22c204eb48afc929f27630e2b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3a493ccd012919244077162c7c4fef3c0ae94662",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Trails/Varianta85053b5329e17e26ea1d8bbfda10680ffd9bdd22c204eb48afc929f27630e2b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Trails/Varianta85053b5329e17e26ea1d8bbfda10680ffd9bdd22c204eb48afc929f27630e2b.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Trails/Varianta85053b5329e17e26ea1d8bbfda10680ffd9bdd22c204eb48afc929f27630e2b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3a493ccd012919244077162c7c4fef3c0ae94662`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Trails/Varianta85053b5329e17e26ea1d8bbfda10680ffd9bdd22c204eb48afc929f27630e2b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Trails/Varianta85053b5329e17e26ea1d8bbfda10680ffd9bdd22c204eb48afc929f27630e2b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [IsTrail.edgesFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Trails/Varianta85053b5329e17e26ea1d8bbfda10680ffd9bdd22c204eb48afc929f27630e2b.lean/declarations/istrail-edgesfinset--e0de5de003dba884253d1c2d.md) | 49 | `declaration-track:e0de5de003dba884253d1c2d8b8177eab93ba599ab3ab977078b49295362e631` |
| 2 | `theorem` | [IsTrail.even_countP_edges_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Trails/Varianta85053b5329e17e26ea1d8bbfda10680ffd9bdd22c204eb48afc929f27630e2b.lean/declarations/istrail-even-countp-edges-iff--af3efe74f4ad429fafd1d6d7.md) | 54 | `result-track:af3efe74f4ad429fafd1d6d7260bbfb90c1584311322e8e244552545519dee7e` |
| 3 | `def` | [IsEulerian](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Trails/Varianta85053b5329e17e26ea1d8bbfda10680ffd9bdd22c204eb48afc929f27630e2b.lean/declarations/iseulerian--5772d1c02539d04b9b6252dc.md) | 79 | `declaration-track:5772d1c02539d04b9b6252dc12594e9d7a4094231f130d9a4761ffc6917718ac` |
| 4 | `theorem` | [IsEulerian.isTrail](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Trails/Varianta85053b5329e17e26ea1d8bbfda10680ffd9bdd22c204eb48afc929f27630e2b.lean/declarations/iseulerian-istrail--b919ff10d57da7c9443de7a7.md) | 82 | `result-track:b919ff10d57da7c9443de7a7d5b9d693f982f1f55fd079fb5f8e9f6c650e5654` |
| 5 | `theorem` | [IsEulerian.mem_edges_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Trails/Varianta85053b5329e17e26ea1d8bbfda10680ffd9bdd22c204eb48afc929f27630e2b.lean/declarations/iseulerian-mem-edges-iff--5c0b8bf90f180424fff82a9e.md) | 89 | `result-track:5c0b8bf90f180424fff82a9efa88de20a125ccbbc0e005751a9c7ac30f1aadcc` |
| 6 | `def` | [IsEulerian.fintypeEdgeSet](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Trails/Varianta85053b5329e17e26ea1d8bbfda10680ffd9bdd22c204eb48afc929f27630e2b.lean/declarations/iseulerian-fintypeedgeset--05e6cd8859595da89c7e0670.md) | 97 | `declaration-track:05e6cd8859595da89c7e067056869d2f6f7e3c1e0e31b2c308690b33933c21b3` |
| 7 | `theorem` | [IsTrail.isEulerian_of_forall_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Trails/Varianta85053b5329e17e26ea1d8bbfda10680ffd9bdd22c204eb48afc929f27630e2b.lean/declarations/istrail-iseulerian-of-forall-mem--a8f21247f1e24cfcbdb063a5.md) | 102 | `result-track:a8f21247f1e24cfcbdb063a5d3bbd129f91a4ec9e3de2c107bc7df19fc1a225f` |
| 8 | `theorem` | [isEulerian_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Trails/Varianta85053b5329e17e26ea1d8bbfda10680ffd9bdd22c204eb48afc929f27630e2b.lean/declarations/iseulerian-iff--d4082e55661ff6baab8ff146.md) | 106 | `result-track:d4082e55661ff6baab8ff146040e601f6ec6eaa03867ba8feea3b9e8af84fbcd` |
| 9 | `theorem` | [IsTrail.isEulerian_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Trails/Varianta85053b5329e17e26ea1d8bbfda10680ffd9bdd22c204eb48afc929f27630e2b.lean/declarations/istrail-iseulerian-iff--fba71bc547c1945dbb2d41b2.md) | 114 | `result-track:fba71bc547c1945dbb2d41b25004331086af227d3a62775457334b44fa3393af` |
| 10 | `theorem` | [IsEulerian.edgeSet_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Trails/Varianta85053b5329e17e26ea1d8bbfda10680ffd9bdd22c204eb48afc929f27630e2b.lean/declarations/iseulerian-edgeset-eq--293d87c5c7e7811dd7b8c761.md) | 119 | `result-track:293d87c5c7e7811dd7b8c7614b624920eb33a14bf16531bf30135162400f615b` |
| 11 | `theorem` | [IsEulerian.edgesFinset_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Trails/Varianta85053b5329e17e26ea1d8bbfda10680ffd9bdd22c204eb48afc929f27630e2b.lean/declarations/iseulerian-edgesfinset-eq--d4360e2646b1f4664e33f077.md) | 124 | `result-track:d4360e2646b1f4664e33f077718aae89f8c22f22a8164742264d7cb6575f3cdd` |
| 12 | `theorem` | [IsEulerian.mem_support_of_not_isIsolated](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Trails/Varianta85053b5329e17e26ea1d8bbfda10680ffd9bdd22c204eb48afc929f27630e2b.lean/declarations/iseulerian-mem-support-of-not-isisolated--4eebc351362db95f59868336.md) | 129 | `result-track:4eebc351362db95f59868336619205ab5a409ec9f2a2a71a4c0fdaf9ca433b32` |
| 13 | `theorem` | [IsEulerian.nil_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Trails/Varianta85053b5329e17e26ea1d8bbfda10680ffd9bdd22c204eb48afc929f27630e2b.lean/declarations/iseulerian-nil-iff--d3b804becbeabb27b8218c1b.md) | 134 | `result-track:d3b804becbeabb27b8218c1b2e00820decfeef15478c48dc29ee2fe17aaab5d1` |
| 14 | `theorem` | [isEulerian_of_bot](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Trails/Varianta85053b5329e17e26ea1d8bbfda10680ffd9bdd22c204eb48afc929f27630e2b.lean/declarations/iseulerian-of-bot--60748333b10e66a3799b03cd.md) | 137 | `result-track:60748333b10e66a3799b03cd34d31e52f7ca6743ccc7f92e777d27e0e0a5888b` |
| 15 | `theorem` | [IsEulerian.mem_support_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Trails/Varianta85053b5329e17e26ea1d8bbfda10680ffd9bdd22c204eb48afc929f27630e2b.lean/declarations/iseulerian-mem-support-iff--a680681d90775b30494e09aa.md) | 142 | `result-track:a680681d90775b30494e09aaab075c85a3b05494531053457437157bd7a6f524` |
| 16 | `theorem` | [IsEulerian.connected_of_forall_not_isIsolated](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Trails/Varianta85053b5329e17e26ea1d8bbfda10680ffd9bdd22c204eb48afc929f27630e2b.lean/declarations/iseulerian-connected-of-forall-not-isisolated--b48af3df2b70bf37697aab7e.md) | 146 | `result-track:b48af3df2b70bf37697aab7ec612bfc84a399ae4eb149a3f0330805e0bcfa5bc` |
| 17 | `theorem` | [IsEulerian.even_degree_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Trails/Varianta85053b5329e17e26ea1d8bbfda10680ffd9bdd22c204eb48afc929f27630e2b.lean/declarations/iseulerian-even-degree-iff--6fbf74d6f75be5dc228c4078.md) | 154 | `result-track:6fbf74d6f75be5dc228c40783b11fa51eebf7a074be6a4204a9ab1435f89b3e0` |
| 18 | `theorem` | [IsEulerian.card_filter_odd_degree](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Trails/Varianta85053b5329e17e26ea1d8bbfda10680ffd9bdd22c204eb48afc929f27630e2b.lean/declarations/iseulerian-card-filter-odd-degree--97f0867a5f5d84d3c145f7b7.md) | 163 | `result-track:97f0867a5f5d84d3c145f7b7ee06cf56eb9b38a3822d584b174f0f0e0321def5` |
| 19 | `theorem` | [IsEulerian.card_odd_degree](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Trails/Varianta85053b5329e17e26ea1d8bbfda10680ffd9bdd22c204eb48afc929f27630e2b.lean/declarations/iseulerian-card-odd-degree--677071e74237fd023db373d0.md) | 178 | `result-track:677071e74237fd023db373d08f91a0e4aeadc2593133058f7cc72ac5dc41e7d5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
