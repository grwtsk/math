# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.MutuallyRecursiveTypeTest.Variant8ec30240797476c0ff65d9a9942ba571aaba8143c35efa1e723fc8b57c0f4e29

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "09907aaaf6af314140a6980caa39cfc6adcb2cc0",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MutuallyRecursiveTypeTest/Variant8ec30240797476c0ff65d9a9942ba571aaba8143c35efa1e723fc8b57c0f4e29.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MutuallyRecursiveTypeTest/Variant8ec30240797476c0ff65d9a9942ba571aaba8143c35efa1e723fc8b57c0f4e29.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MutuallyRecursiveTypeTest/Variant8ec30240797476c0ff65d9a9942ba571aaba8143c35efa1e723fc8b57c0f4e29.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `09907aaaf6af314140a6980caa39cfc6adcb2cc0`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MutuallyRecursiveTypeTest/Variant8ec30240797476c0ff65d9a9942ba571aaba8143c35efa1e723fc8b57c0f4e29.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MutuallyRecursiveTypeTest/Variant8ec30240797476c0ff65d9a9942ba571aaba8143c35efa1e723fc8b57c0f4e29.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Plausible.Arbitrary` — import line 6; external provider; requires a separately pinned dependency.
- `Plausible.DeriveArbitrary` — import line 7; external provider; requires a separately pinned dependency.
- `Plausible.Attr` — import line 8; external provider; requires a separately pinned dependency.
- `Plausible.Testable` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [NatTree](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MutuallyRecursiveTypeTest/Variant8ec30240797476c0ff65d9a9942ba571aaba8143c35efa1e723fc8b57c0f4e29.lean/declarations/nattree--8d899039a094f4ae54b810fc.md) | 50 | `declaration-track:8d899039a094f4ae54b810fc0df0749b82978b049e7fa5d1ad02bee6be0bb9cf` |
| 2 | `structure` | [Node](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MutuallyRecursiveTypeTest/Variant8ec30240797476c0ff65d9a9942ba571aaba8143c35efa1e723fc8b57c0f4e29.lean/declarations/node--e6541f9df32f7568129f1fcd.md) | 56 | `declaration-track:e6541f9df32f7568129f1fcdd712dbb42e929b8dff7f4158c11c764dda6f5dc5` |
| 3 | `def` | [search](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MutuallyRecursiveTypeTest/Variant8ec30240797476c0ff65d9a9942ba571aaba8143c35efa1e723fc8b57c0f4e29.lean/declarations/search--54f8b7c00cc7f34c36124c55.md) | 142 | `declaration-track:54f8b7c00cc7f34c36124c555afa40ab0e767efc7a49415e8fad84d30e198e68` |
| 4 | `def` | [shrinkNatTree](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MutuallyRecursiveTypeTest/Variant8ec30240797476c0ff65d9a9942ba571aaba8143c35efa1e723fc8b57c0f4e29.lean/declarations/shrinknattree--a60e0e489b18d607b1e61388.md) | 150 | `declaration-track:a60e0e489b18d607b1e61388511886a5dd7200d2b140960efb1bac8b9233a74f` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MutuallyRecursiveTypeTest/Variant8ec30240797476c0ff65d9a9942ba571aaba8143c35efa1e723fc8b57c0f4e29.lean/declarations/instance--3cd85bc9f5576c166692d937.md) | 160 | `declaration-track:3cd85bc9f5576c166692d9379e392fffc1ef0cbd0acdfd5795ad429a2b444ca4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
