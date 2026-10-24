# Verification target: GRWTSK.Algebra.RingTheory.Trivial.Variant65d10cd9e356c719964324bfad1605296be5d1cd7bc94f60576dbcc8dee33971

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "386c89455540517ca562817885e91b30d095ebab",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/RingTheory/Trivial/Variant65d10cd9e356c719964324bfad1605296be5d1cd7bc94f60576dbcc8dee33971.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/RingTheory/Trivial/Variant65d10cd9e356c719964324bfad1605296be5d1cd7bc94f60576dbcc8dee33971.lean/index.md) · [Full source](../../../../../mathematics/Algebra/RingTheory/Trivial/Variant65d10cd9e356c719964324bfad1605296be5d1cd7bc94f60576dbcc8dee33971.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `386c89455540517ca562817885e91b30d095ebab`.

Source path: `GRWTSK/Algebra/RingTheory/Trivial/Variant65d10cd9e356c719964324bfad1605296be5d1cd7bc94f60576dbcc8dee33971.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/RingTheory/Trivial/Variant65d10cd9e356c719964324bfad1605296be5d1cd7bc94f60576dbcc8dee33971.lean.json)

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
| 1 | `def` | [trivialRel](../../../../../mathematics/Algebra/RingTheory/Trivial/Variant65d10cd9e356c719964324bfad1605296be5d1cd7bc94f60576dbcc8dee33971.lean/declarations/trivialrel--38e58492113b24b634937a48.md) | 43 | `declaration-track:38e58492113b24b634937a484c48d2ea5e160a0e872af6f731db75086d303909` |
| 2 | `lemma` | [eq_trivialRel_of_compatible_one](../../../../../mathematics/Algebra/RingTheory/Trivial/Variant65d10cd9e356c719964324bfad1605296be5d1cd7bc94f60576dbcc8dee33971.lean/declarations/eq-trivialrel-of-compatible-one--10af96c46de7501ef45d0e58.md) | 53 | `result-track:10af96c46de7501ef45d0e588845782e9472651c40fb5d49f134eccc65db3c27` |
| 3 | `lemma` | [trivialRel_eq_ofValuation_one](../../../../../mathematics/Algebra/RingTheory/Trivial/Variant65d10cd9e356c719964324bfad1605296be5d1cd7bc94f60576dbcc8dee33971.lean/declarations/trivialrel-eq-ofvaluation-one--09effa597eed705d8b0f6243.md) | 61 | `result-track:09effa597eed705d8b0f6243824ee55f01e43e681a4745d4a465d16228363654` |
| 4 | `lemma` | [subsingleton_units_valueGroupWithZero_of_trivialRel](../../../../../mathematics/Algebra/RingTheory/Trivial/Variant65d10cd9e356c719964324bfad1605296be5d1cd7bc94f60576dbcc8dee33971.lean/declarations/subsingleton-units-valuegroupwithzero-of-trivialrel--c2a4e56d7a563beaa66a6cb0.md) | 67 | `result-track:c2a4e56d7a563beaa66a6cb0c509578c0de5342cfac1402344b7c253a3869b5e` |
| 5 | `lemma` | [not_isNontrivial_of_trivialRel](../../../../../mathematics/Algebra/RingTheory/Trivial/Variant65d10cd9e356c719964324bfad1605296be5d1cd7bc94f60576dbcc8dee33971.lean/declarations/not-isnontrivial-of-trivialrel--750f87967e90ef4e1b5b971c.md) | 78 | `result-track:750f87967e90ef4e1b5b971cd3cf0b7b808ff91b5b06f192639ab6eb9df5f734` |
| 6 | `lemma` | [isDiscrete_trivialRel](../../../../../mathematics/Algebra/RingTheory/Trivial/Variant65d10cd9e356c719964324bfad1605296be5d1cd7bc94f60576dbcc8dee33971.lean/declarations/isdiscrete-trivialrel--97581524297dfd725cae04c3.md) | 86 | `result-track:97581524297dfd725cae04c3d65c76e34f2e01feb35481e36e8e1c5c87996da2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
