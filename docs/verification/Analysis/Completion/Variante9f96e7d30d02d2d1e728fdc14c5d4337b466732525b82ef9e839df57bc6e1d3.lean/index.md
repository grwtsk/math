# Verification target: GRWTSK.Analysis.Completion.Variante9f96e7d30d02d2d1e728fdc14c5d4337b466732525b82ef9e839df57bc6e1d3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5d03d4a902f7caac15c2373643c90af4bf5b7bbd",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Completion/Variante9f96e7d30d02d2d1e728fdc14c5d4337b466732525b82ef9e839df57bc6e1d3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/Completion/Variante9f96e7d30d02d2d1e728fdc14c5d4337b466732525b82ef9e839df57bc6e1d3.lean/index.md) · [Full source](../../../../mathematics/Analysis/Completion/Variante9f96e7d30d02d2d1e728fdc14c5d4337b466732525b82ef9e839df57bc6e1d3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5d03d4a902f7caac15c2373643c90af4bf5b7bbd`.

Source path: `GRWTSK/Analysis/Completion/Variante9f96e7d30d02d2d1e728fdc14c5d4337b466732525b82ef9e839df57bc6e1d3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Completion/Variante9f96e7d30d02d2d1e728fdc14c5d4337b466732525b82ef9e839df57bc6e1d3.lean.json)

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
| 1 | `def` | [completion](../../../../mathematics/Analysis/Completion/Variante9f96e7d30d02d2d1e728fdc14c5d4337b466732525b82ef9e839df57bc6e1d3.lean/declarations/completion--2cb55efe5323ffd61d66a939.md) | 56 | `declaration-track:2cb55efe5323ffd61d66a9396d433f8a9833eb5df6346858fc4ac90c8c3eb602` |
| 2 | `instance` | [completion_completeSpace](../../../../mathematics/Analysis/Completion/Variante9f96e7d30d02d2d1e728fdc14c5d4337b466732525b82ef9e839df57bc6e1d3.lean/declarations/completion-completespace--61c904249a7e8a0763f45c22.md) | 62 | `declaration-track:61c904249a7e8a0763f45c22f9438bbb889d8cc8561af8bc739b93cfd3ec1ded` |
| 3 | `def` | [completion.incl](../../../../mathematics/Analysis/Completion/Variante9f96e7d30d02d2d1e728fdc14c5d4337b466732525b82ef9e839df57bc6e1d3.lean/declarations/completion-incl--b480970f0228ea341aae0dfa.md) | 66 | `declaration-track:b480970f0228ea341aae0dfa89ae490df9e93c756dedbd2a349a35bfbb4e74ad` |
| 4 | `theorem` | [completion.norm_incl_eq](../../../../mathematics/Analysis/Completion/Variante9f96e7d30d02d2d1e728fdc14c5d4337b466732525b82ef9e839df57bc6e1d3.lean/declarations/completion-norm-incl-eq--840c1422c4663c48491a452d.md) | 72 | `result-track:840c1422c4663c48491a452def57035edeb5f1fc63e8e75371c9ff68e1032706` |
| 5 | `theorem` | [completion.map_normNoninc](../../../../mathematics/Analysis/Completion/Variante9f96e7d30d02d2d1e728fdc14c5d4337b466732525b82ef9e839df57bc6e1d3.lean/declarations/completion-map-normnoninc--af90bec76257ec5e1303aa66.md) | 75 | `result-track:af90bec76257ec5e1303aa6633b138724b83bb39822df4390f5860a2d0c1cd13` |
| 6 | `def` | [completion.mapHom](../../../../mathematics/Analysis/Completion/Variante9f96e7d30d02d2d1e728fdc14c5d4337b466732525b82ef9e839df57bc6e1d3.lean/declarations/completion-maphom--bf9e9aacb6d0c81a2c314f6b.md) | 87 | `declaration-track:bf9e9aacb6d0c81a2c314f6b35d7be9ae38ea6074583677aac4296edf11e1e60` |
| 7 | `theorem` | [completion.map_zero](../../../../mathematics/Analysis/Completion/Variante9f96e7d30d02d2d1e728fdc14c5d4337b466732525b82ef9e839df57bc6e1d3.lean/declarations/completion-map-zero--dc8f4bd4cde8213478b63c12.md) | 92 | `result-track:dc8f4bd4cde8213478b63c12e3fbb60c05acbd6faa0bde0f413c752110f6906a` |
| 8 | `instance` | [(anonymous)](../../../../mathematics/Analysis/Completion/Variante9f96e7d30d02d2d1e728fdc14c5d4337b466732525b82ef9e839df57bc6e1d3.lean/declarations/instance--dc1614b7bb814b072f90a91a.md) | 95 | `declaration-track:dc1614b7bb814b072f90a91a080251921656cbbd3d7cbd95bdebc8640bae4cdf` |
| 9 | `instance` | [(anonymous)](../../../../mathematics/Analysis/Completion/Variante9f96e7d30d02d2d1e728fdc14c5d4337b466732525b82ef9e839df57bc6e1d3.lean/declarations/instance--3be15464dad470765aa8d84c.md) | 97 | `declaration-track:3be15464dad470765aa8d84cba0a6311dda258614e5ee4501249239a538e5e7f` |
| 10 | `def` | [completion.lift](../../../../mathematics/Analysis/Completion/Variante9f96e7d30d02d2d1e728fdc14c5d4337b466732525b82ef9e839df57bc6e1d3.lean/declarations/completion-lift--6cf03075b4bf2f5d41063156.md) | 103 | `declaration-track:6cf03075b4bf2f5d410631566dfa19b1172dd108c68c60a0a24c22ed9dddd875` |
| 11 | `theorem` | [completion.lift_comp_incl](../../../../mathematics/Analysis/Completion/Variante9f96e7d30d02d2d1e728fdc14c5d4337b466732525b82ef9e839df57bc6e1d3.lean/declarations/completion-lift-comp-incl--b4442f2542ff70573df65396.md) | 110 | `result-track:b4442f2542ff70573df653960b051a53d3c8a2cd3450dc4dca528e38afb64c42` |
| 12 | `theorem` | [completion.lift_unique](../../../../mathematics/Analysis/Completion/Variante9f96e7d30d02d2d1e728fdc14c5d4337b466732525b82ef9e839df57bc6e1d3.lean/declarations/completion-lift-unique--88f8ff95c3c523076cad8f15.md) | 114 | `result-track:88f8ff95c3c523076cad8f154acc1f820a4f2ce60e387012f486201c8c49b3af` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
