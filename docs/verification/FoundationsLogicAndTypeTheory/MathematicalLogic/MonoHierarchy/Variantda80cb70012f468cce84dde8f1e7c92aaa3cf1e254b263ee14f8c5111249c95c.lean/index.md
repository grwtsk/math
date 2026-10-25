# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.MonoHierarchy.Variantda80cb70012f468cce84dde8f1e7c92aaa3cf1e254b263ee14f8c5111249c95c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "feee4aa2c72b0f2a31348e63e9993e604803236d",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/MonoHierarchy/Variantda80cb70012f468cce84dde8f1e7c92aaa3cf1e254b263ee14f8c5111249c95c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/MonoHierarchy/Variantda80cb70012f468cce84dde8f1e7c92aaa3cf1e254b263ee14f8c5111249c95c.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/MonoHierarchy/Variantda80cb70012f468cce84dde8f1e7c92aaa3cf1e254b263ee14f8c5111249c95c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `feee4aa2c72b0f2a31348e63e9993e604803236d`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/MonoHierarchy/Variantda80cb70012f468cce84dde8f1e7c92aaa3cf1e254b263ee14f8c5111249c95c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/MonoHierarchy/Variantda80cb70012f468cce84dde8f1e7c92aaa3cf1e254b263ee14f8c5111249c95c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Projection.StructuralIsomorphism` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [MonoHierarchy](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/MonoHierarchy/Variantda80cb70012f468cce84dde8f1e7c92aaa3cf1e254b263ee14f8c5111249c95c.lean/declarations/monohierarchy--3253191cc54208e6760d44d4.md) | 23 | `declaration-track:3253191cc54208e6760d44d45ed8c823937fdc97240bcb3635af08e92c266a1b` |
| 2 | `theorem` | [ext](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/MonoHierarchy/Variantda80cb70012f468cce84dde8f1e7c92aaa3cf1e254b263ee14f8c5111249c95c.lean/declarations/ext--76f43f019ff6cb34778faa55.md) | 35 | `result-track:76f43f019ff6cb34778faa55b9650a105927857732e28a098965b56a460d0bd1` |
| 3 | `def` | [transport](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/MonoHierarchy/Variantda80cb70012f468cce84dde8f1e7c92aaa3cf1e254b263ee14f8c5111249c95c.lean/declarations/transport--07ee73b7b51808a26938439d.md) | 50 | `declaration-track:07ee73b7b51808a26938439d8fd15855b2336bfee1363a111beab127271ee025` |
| 4 | `theorem` | [transport_refl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/MonoHierarchy/Variantda80cb70012f468cce84dde8f1e7c92aaa3cf1e254b263ee14f8c5111249c95c.lean/declarations/transport-refl--60ac78530ff02dd8a0c05170.md) | 68 | `result-track:60ac78530ff02dd8a0c05170fa3beaeecc207067c652e653574d4b315f380391` |
| 5 | `theorem` | [transport_symm_transport](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/MonoHierarchy/Variantda80cb70012f468cce84dde8f1e7c92aaa3cf1e254b263ee14f8c5111249c95c.lean/declarations/transport-symm-transport--06578d47cfeb15d5b189f8f7.md) | 73 | `result-track:06578d47cfeb15d5b189f8f73eb1fe06f7318b685b3242fed92f26fac9d8a6c0` |
| 6 | `theorem` | [transport_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/MonoHierarchy/Variantda80cb70012f468cce84dde8f1e7c92aaa3cf1e254b263ee14f8c5111249c95c.lean/declarations/transport-injective--4fbf7c7bd33e531e471852d0.md) | 80 | `result-track:4fbf7c7bd33e531e471852d0a2ec8059e4273be250def9de7eda9cf280fdd36d` |
| 7 | `theorem` | [transport_trans](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/MonoHierarchy/Variantda80cb70012f468cce84dde8f1e7c92aaa3cf1e254b263ee14f8c5111249c95c.lean/declarations/transport-trans--42c4f6b97074a4106e3b6e6f.md) | 88 | `result-track:42c4f6b97074a4106e3b6e6fe920637bfaf4b4e76cc19bc1d243392d2b07e82f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
