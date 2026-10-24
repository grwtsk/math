# Verification target: GRWTSK.Algebra.TranscendentalSeparable.Variantacb5f076729e034dd16d9748e1cb9e1a056a8aeeddbc46147335b03121563e1a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fd38b3e360bcb3b5a42bf80c88a5a22ce9ff1f9c",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/TranscendentalSeparable/Variantacb5f076729e034dd16d9748e1cb9e1a056a8aeeddbc46147335b03121563e1a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/TranscendentalSeparable/Variantacb5f076729e034dd16d9748e1cb9e1a056a8aeeddbc46147335b03121563e1a.lean/index.md) · [Full source](../../../../mathematics/Algebra/TranscendentalSeparable/Variantacb5f076729e034dd16d9748e1cb9e1a056a8aeeddbc46147335b03121563e1a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fd38b3e360bcb3b5a42bf80c88a5a22ce9ff1f9c`.

Source path: `GRWTSK/Algebra/TranscendentalSeparable/Variantacb5f076729e034dd16d9748e1cb9e1a056a8aeeddbc46147335b03121563e1a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/TranscendentalSeparable/Variantacb5f076729e034dd16d9748e1cb9e1a056a8aeeddbc46147335b03121563e1a.lean.json)

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
| 1 | `class` | [Algebra.IsSeparablyGenerated](../../../../mathematics/Algebra/TranscendentalSeparable/Variantacb5f076729e034dd16d9748e1cb9e1a056a8aeeddbc46147335b03121563e1a.lean/declarations/algebra-isseparablygenerated--dc0efd728718d324a1794368.md) | 35 | `declaration-track:dc0efd728718d324a17943689fe9c69c6ff8043754d08e5b3936061504fc83a7` |
| 2 | `lemma` | [AlgEquiv.isSeparablyGenerated](../../../../mathematics/Algebra/TranscendentalSeparable/Variantacb5f076729e034dd16d9748e1cb9e1a056a8aeeddbc46147335b03121563e1a.lean/declarations/algequiv-isseparablygenerated--38869335231945599287da45.md) | 40 | `result-track:38869335231945599287da454792feac4f4c7c5120472a91dab25661b97e4ad4` |
| 3 | `lemma` | [Algebra.isSeparable_iff_isSeparablyGenerated_and_isAlgebraic](../../../../mathematics/Algebra/TranscendentalSeparable/Variantacb5f076729e034dd16d9748e1cb9e1a056a8aeeddbc46147335b03121563e1a.lean/declarations/algebra-isseparable-iff-isseparablygenerated-and-isalgebraic--e27fc23bb9c2a909db7badce.md) | 48 | `result-track:e27fc23bb9c2a909db7badce2760f42a2d66637f1c1e7db72c36c4728a32c8fc` |
| 4 | `instance` | [(anonymous)](../../../../mathematics/Algebra/TranscendentalSeparable/Variantacb5f076729e034dd16d9748e1cb9e1a056a8aeeddbc46147335b03121563e1a.lean/declarations/instance--483dbb09d9937f07a22cd232.md) | 62 | `declaration-track:483dbb09d9937f07a22cd232d3e3aa2ffcbfcc3d0e0de2a649aa182fa4080635` |
| 5 | `instance` | [(anonymous)](../../../../mathematics/Algebra/TranscendentalSeparable/Variantacb5f076729e034dd16d9748e1cb9e1a056a8aeeddbc46147335b03121563e1a.lean/declarations/instance--4f9ae2b318f6851894484418.md) | 65 | `declaration-track:4f9ae2b318f685189448441843880331c2b09b3740c05072eb96e05042c6366b` |
| 6 | `class` | [Algebra.IsTranscendentalSeparable](../../../../mathematics/Algebra/TranscendentalSeparable/Variantacb5f076729e034dd16d9748e1cb9e1a056a8aeeddbc46147335b03121563e1a.lean/declarations/algebra-istranscendentalseparable--49a3c3817364a46875cafe64.md) | 72 | `declaration-track:49a3c3817364a46875cafe6424f7d6f42be22a52fa4276bda14f5681d217195b` |
| 7 | `lemma` | [Algebra.isSeparable_iff_isTranscendentalSeparable_and_isAlgebraic](../../../../mathematics/Algebra/TranscendentalSeparable/Variantacb5f076729e034dd16d9748e1cb9e1a056a8aeeddbc46147335b03121563e1a.lean/declarations/algebra-isseparable-iff-istranscendentalseparable-and-isalgebraic--b4b360ea73072ef0b86bd206.md) | 76 | `result-track:b4b360ea73072ef0b86bd2065daa003fcd60654ed3bfa753012cea0c941b910f` |
| 8 | `instance` | [(anonymous)](../../../../mathematics/Algebra/TranscendentalSeparable/Variantacb5f076729e034dd16d9748e1cb9e1a056a8aeeddbc46147335b03121563e1a.lean/declarations/instance--2a14fa4df11e510ff5b2d175.md) | 88 | `declaration-track:2a14fa4df11e510ff5b2d175ee0af25a4c79a09e36b18487c9d4b7505650b615` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
