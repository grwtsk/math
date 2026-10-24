# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.PrimitiveFamily.Variant9a461fa0917998fb31db7f98130f278801074a892d83783e32d26f5385759c0d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d0b5331a21bb6392e6082dbb6994040347fd2bcb",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimitiveFamily/Variant9a461fa0917998fb31db7f98130f278801074a892d83783e32d26f5385759c0d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimitiveFamily/Variant9a461fa0917998fb31db7f98130f278801074a892d83783e32d26f5385759c0d.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimitiveFamily/Variant9a461fa0917998fb31db7f98130f278801074a892d83783e32d26f5385759c0d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d0b5331a21bb6392e6082dbb6994040347fd2bcb`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimitiveFamily/Variant9a461fa0917998fb31db7f98130f278801074a892d83783e32d26f5385759c0d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimitiveFamily/Variant9a461fa0917998fb31db7f98130f278801074a892d83783e32d26f5385759c0d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [DirichletGRH](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimitiveFamily/Variant9a461fa0917998fb31db7f98130f278801074a892d83783e32d26f5385759c0d.lean/declarations/dirichletgrh--59ca6e89cc87a71c46de4f20.md) | 26 | `declaration-track:59ca6e89cc87a71c46de4f207d5c990dfba18384a58c5f6e96920d3af2141142` |
| 2 | `def` | [PrimitiveCharacterDataFamilyGRH](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimitiveFamily/Variant9a461fa0917998fb31db7f98130f278801074a892d83783e32d26f5385759c0d.lean/declarations/primitivecharacterdatafamilygrh--4b1a10bf4a35a7e27a4c5501.md) | 36 | `declaration-track:4b1a10bf4a35a7e27a4c5501861d283ce6459a3df5ba8689c903545f255a8f87` |
| 3 | `theorem` | [dirichletGRH_forCharacter](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimitiveFamily/Variant9a461fa0917998fb31db7f98130f278801074a892d83783e32d26f5385759c0d.lean/declarations/dirichletgrh-forcharacter--655b61c88c1165f0e6c68616.md) | 41 | `result-track:655b61c88c1165f0e6c6861619eed3c7aeed9d880305eb3cbc7cc66c57e2c7e3` |
| 4 | `theorem` | [dirichletGRH_iff_primitiveFamily](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimitiveFamily/Variant9a461fa0917998fb31db7f98130f278801074a892d83783e32d26f5385759c0d.lean/declarations/dirichletgrh-iff-primitivefamily--03811be66bf6daadae251642.md) | 53 | `result-track:03811be66bf6daadae2516420e9dd46c52e45414d62f1425d40c84e9a6581d08` |
| 5 | `theorem` | [dirichletGRH_iff_dataFamily](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimitiveFamily/Variant9a461fa0917998fb31db7f98130f278801074a892d83783e32d26f5385759c0d.lean/declarations/dirichletgrh-iff-datafamily--a1d6fca800f297168afd3b4a.md) | 65 | `result-track:a1d6fca800f297168afd3b4a222d14c27a79248906c69e39113e08e1bc412eec` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
