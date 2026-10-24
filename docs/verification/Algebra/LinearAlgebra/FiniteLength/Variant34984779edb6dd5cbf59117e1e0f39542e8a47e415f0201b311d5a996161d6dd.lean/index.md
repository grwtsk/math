# Verification target: GRWTSK.Algebra.LinearAlgebra.FiniteLength.Variant34984779edb6dd5cbf59117e1e0f39542e8a47e415f0201b311d5a996161d6dd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f93d6fa72106914b326f95f2466f2b8c3c60fafd",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/FiniteLength/Variant34984779edb6dd5cbf59117e1e0f39542e8a47e415f0201b311d5a996161d6dd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/FiniteLength/Variant34984779edb6dd5cbf59117e1e0f39542e8a47e415f0201b311d5a996161d6dd.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/FiniteLength/Variant34984779edb6dd5cbf59117e1e0f39542e8a47e415f0201b311d5a996161d6dd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f93d6fa72106914b326f95f2466f2b8c3c60fafd`.

Source path: `GRWTSK/Algebra/LinearAlgebra/FiniteLength/Variant34984779edb6dd5cbf59117e1e0f39542e8a47e415f0201b311d5a996161d6dd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/FiniteLength/Variant34984779edb6dd5cbf59117e1e0f39542e8a47e415f0201b311d5a996161d6dd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [IsFiniteLength](../../../../../mathematics/Algebra/LinearAlgebra/FiniteLength/Variant34984779edb6dd5cbf59117e1e0f39542e8a47e415f0201b311d5a996161d6dd.lean/declarations/isfinitelength--26f1c6bbc035d24240081737.md) | 30 | `declaration-track:26f1c6bbc035d24240081737cd3f449efb36ac7252d022c6f582bface46b3f97` |
| 2 | `theorem` | [LinearEquiv.isFiniteLength](../../../../../mathematics/Algebra/LinearAlgebra/FiniteLength/Variant34984779edb6dd5cbf59117e1e0f39542e8a47e415f0201b311d5a996161d6dd.lean/declarations/linearequiv-isfinitelength--a6cc2c10bcc22a8cd8587f35.md) | 39 | `result-track:a6cc2c10bcc22a8cd8587f3551f4b303c569fa016e8fa6413512cac00d180f85` |
| 3 | `theorem` | [exists_compositionSeries_of_isNoetherian_isArtinian](../../../../../mathematics/Algebra/LinearAlgebra/FiniteLength/Variant34984779edb6dd5cbf59117e1e0f39542e8a47e415f0201b311d5a996161d6dd.lean/declarations/exists-compositionseries-of-isnoetherian-isartinian--3b4adfd7923c580206b4305d.md) | 50 | `result-track:3b4adfd7923c580206b4305d4cade262bf57610fd15f34510bd3a884f9099c68` |
| 4 | `theorem` | [isFiniteLength_of_exists_compositionSeries](../../../../../mathematics/Algebra/LinearAlgebra/FiniteLength/Variant34984779edb6dd5cbf59117e1e0f39542e8a47e415f0201b311d5a996161d6dd.lean/declarations/isfinitelength-of-exists-compositionseries--2be86030f1c70695b370a56a.md) | 55 | `result-track:2be86030f1c70695b370a56af147ad93825d641c97807193c19bd36adfd8061b` |
| 5 | `theorem` | [isFiniteLength_iff_isNoetherian_isArtinian](../../../../../mathematics/Algebra/LinearAlgebra/FiniteLength/Variant34984779edb6dd5cbf59117e1e0f39542e8a47e415f0201b311d5a996161d6dd.lean/declarations/isfinitelength-iff-isnoetherian-isartinian--29d3305bdb6600d45d2a3c5e.md) | 73 | `result-track:29d3305bdb6600d45d2a3c5e9daeac6ff24374872da355a549a7cb4bef18f90e` |
| 6 | `theorem` | [isFiniteLength_iff_exists_compositionSeries](../../../../../mathematics/Algebra/LinearAlgebra/FiniteLength/Variant34984779edb6dd5cbf59117e1e0f39542e8a47e415f0201b311d5a996161d6dd.lean/declarations/isfinitelength-iff-exists-compositionseries--89ad6bee7c41a8cb087dc060.md) | 82 | `result-track:89ad6bee7c41a8cb087dc06078aceaccb7c02ce8710afb9f5738e49b0f0d9584` |
| 7 | `theorem` | [IsSemisimpleModule.finite_tfae](../../../../../mathematics/Algebra/LinearAlgebra/FiniteLength/Variant34984779edb6dd5cbf59117e1e0f39542e8a47e415f0201b311d5a996161d6dd.lean/declarations/issemisimplemodule-finite-tfae--37a456a4aaf6590c3bb2b30a.md) | 89 | `result-track:37a456a4aaf6590c3bb2b30aeb5b759ad5e8bdfa015f7ac53470711a6f592f7a` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/FiniteLength/Variant34984779edb6dd5cbf59117e1e0f39542e8a47e415f0201b311d5a996161d6dd.lean/declarations/instance--2932f7e91802e43d2fdda097.md) | 108 | `declaration-track:2932f7e91802e43d2fdda097f9556a7ea93fa516eaf19290671c4404622a93ea` |
| 9 | `lemma` | [IsFiniteLength.of_injective](../../../../../mathematics/Algebra/LinearAlgebra/FiniteLength/Variant34984779edb6dd5cbf59117e1e0f39542e8a47e415f0201b311d5a996161d6dd.lean/declarations/isfinitelength-of-injective--b775b56d293f9abfb22cae81.md) | 113 | `result-track:b775b56d293f9abfb22cae81d1ae3ed4e7646559c82cd6e5a0d80129f5468520` |
| 10 | `lemma` | [IsFiniteLength.of_surjective](../../../../../mathematics/Algebra/LinearAlgebra/FiniteLength/Variant34984779edb6dd5cbf59117e1e0f39542e8a47e415f0201b311d5a996161d6dd.lean/declarations/isfinitelength-of-surjective--6555182990a2233d1fcdd1b1.md) | 119 | `result-track:6555182990a2233d1fcdd1b1b502e35fbf68179c6312b7db6e69ca3bd16284fb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
