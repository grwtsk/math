# Verification target: GRWTSK.Algebra.Polynomial.Variant13669c5cae328b0278446b817c8d2900ec09fa59e6d0daa55afbb0db9de0696c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "683af8f6adf09d36ea9b7680a2d6aa662c88291a",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Polynomial/Variant13669c5cae328b0278446b817c8d2900ec09fa59e6d0daa55afbb0db9de0696c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Polynomial/Variant13669c5cae328b0278446b817c8d2900ec09fa59e6d0daa55afbb0db9de0696c.lean/index.md) · [Full source](../../../../mathematics/Algebra/Polynomial/Variant13669c5cae328b0278446b817c8d2900ec09fa59e6d0daa55afbb0db9de0696c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `683af8f6adf09d36ea9b7680a2d6aa662c88291a`.

Source path: `GRWTSK/Algebra/Polynomial/Variant13669c5cae328b0278446b817c8d2900ec09fa59e6d0daa55afbb0db9de0696c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Polynomial/Variant13669c5cae328b0278446b817c8d2900ec09fa59e6d0daa55afbb0db9de0696c.lean.json)

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
| 1 | `lemma` | [not_weaklyQuasiFiniteAt](../../../../mathematics/Algebra/Polynomial/Variant13669c5cae328b0278446b817c8d2900ec09fa59e6d0daa55afbb0db9de0696c.lean/declarations/not-weaklyquasifiniteat--1ab30c7c955324587d4cc402.md) | 20 | `result-track:1ab30c7c955324587d4cc40268f928a5b46105c4041fdbb00ca37a4f3401c7a8` |
| 2 | `lemma` | [not_quasiFiniteAt](../../../../mathematics/Algebra/Polynomial/Variant13669c5cae328b0278446b817c8d2900ec09fa59e6d0daa55afbb0db9de0696c.lean/declarations/not-quasifiniteat--36b3ade05a0ca9c5b9f7e690.md) | 37 | `result-track:36b3ade05a0ca9c5b9f7e690114f055bb1adc568d1eb46dbf97f8e174797057f` |
| 3 | `lemma` | [map_under_lt_comap_of_weaklyQuasiFiniteAt](../../../../mathematics/Algebra/Polynomial/Variant13669c5cae328b0278446b817c8d2900ec09fa59e6d0daa55afbb0db9de0696c.lean/declarations/map-under-lt-comap-of-weaklyquasifiniteat--5cfe9fd6ff7aa2c639173846.md) | 40 | `result-track:5cfe9fd6ff7aa2c639173846c9be720b25ebd5d13bdad33c976c38bc0e02507c` |
| 4 | `lemma` | [map_under_lt_comap_of_quasiFiniteAt](../../../../mathematics/Algebra/Polynomial/Variant13669c5cae328b0278446b817c8d2900ec09fa59e6d0daa55afbb0db9de0696c.lean/declarations/map-under-lt-comap-of-quasifiniteat--1b4b5dee1527dbe22ef41064.md) | 60 | `result-track:1b4b5dee1527dbe22ef41064240dc78ba78da3ceff33a396b5161d780baaf24e` |
| 5 | `lemma` | [not_ker_le_map_C_of_surjective_of_weaklyQuasiFiniteAt](../../../../mathematics/Algebra/Polynomial/Variant13669c5cae328b0278446b817c8d2900ec09fa59e6d0daa55afbb0db9de0696c.lean/declarations/not-ker-le-map-c-of-surjective-of-weaklyquasifiniteat--87cff1285ade66bd3ba74377.md) | 65 | `result-track:87cff1285ade66bd3ba743771b0f72ba41cb3ad51a37aef0eaa0e013deedc35a` |
| 6 | `lemma` | [not_ker_le_map_C_of_surjective_of_quasiFiniteAt](../../../../mathematics/Algebra/Polynomial/Variant13669c5cae328b0278446b817c8d2900ec09fa59e6d0daa55afbb0db9de0696c.lean/declarations/not-ker-le-map-c-of-surjective-of-quasifiniteat--72750ea70355575477426990.md) | 90 | `result-track:72750ea703555754774269909abda3c5f8db3f5dbe4b1c45422cfa8fd1847abd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
