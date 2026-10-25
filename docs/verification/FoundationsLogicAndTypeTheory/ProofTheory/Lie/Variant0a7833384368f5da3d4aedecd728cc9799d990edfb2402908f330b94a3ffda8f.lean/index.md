# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.ProofTheory.Lie.Variant0a7833384368f5da3d4aedecd728cc9799d990edfb2402908f330b94a3ffda8f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "abd5ce4ced3bd5a858c56abf731731d7f5275c4f",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/Lie/Variant0a7833384368f5da3d4aedecd728cc9799d990edfb2402908f330b94a3ffda8f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Lie/Variant0a7833384368f5da3d4aedecd728cc9799d990edfb2402908f330b94a3ffda8f.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Lie/Variant0a7833384368f5da3d4aedecd728cc9799d990edfb2402908f330b94a3ffda8f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `abd5ce4ced3bd5a858c56abf731731d7f5275c4f`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/Lie/Variant0a7833384368f5da3d4aedecd728cc9799d990edfb2402908f330b94a3ffda8f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/ProofTheory/Lie/Variant0a7833384368f5da3d4aedecd728cc9799d990edfb2402908f330b94a3ffda8f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Lie.OfAssociative` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Derivation.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Lie/Variant0a7833384368f5da3d4aedecd728cc9799d990edfb2402908f330b94a3ffda8f.lean/declarations/instance--e2e4f4621ebc26f70d71d9f3.md) | 33 | `declaration-track:e2e4f4621ebc26f70d71d9f3308651cbf3e8d6633d9b062f50d4336a7822eedc` |
| 2 | `theorem` | [commutator_coe_linear_map](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Lie/Variant0a7833384368f5da3d4aedecd728cc9799d990edfb2402908f330b94a3ffda8f.lean/declarations/commutator-coe-linear-map--ef9140043e1af35b77b6766d.md) | 41 | `result-track:ef9140043e1af35b77b6766d717d95c2ded89412e6d756a5f1a1e41d78a78cce` |
| 3 | `theorem` | [commutator_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Lie/Variant0a7833384368f5da3d4aedecd728cc9799d990edfb2402908f330b94a3ffda8f.lean/declarations/commutator-apply--ebb339c9b535b29c917a3e29.md) | 45 | `result-track:ebb339c9b535b29c917a3e2991b6f4baecc80ad0999cc2c06d00e24f2e38a714` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Lie/Variant0a7833384368f5da3d4aedecd728cc9799d990edfb2402908f330b94a3ffda8f.lean/declarations/instance--88cea8f98a9c829edb37c960.md) | 49 | `declaration-track:88cea8f98a9c829edb37c9603d37fe31aaba51ead4ee8b89225be5c5e44de537` |
| 5 | `instance` | [instLieAlgebra](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Lie/Variant0a7833384368f5da3d4aedecd728cc9799d990edfb2402908f330b94a3ffda8f.lean/declarations/instliealgebra--8f27d7827e8f6976c05649b5.md) | 55 | `declaration-track:8f27d7827e8f6976c05649b5b9392069cfed7bdbdebac54c23af7829686bd3b4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
