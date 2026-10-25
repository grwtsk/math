# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.OfArity.Variantbcdc7af4f7042b02fb34605bca7ca5245e0f34d007c86d8d53c88a584293dd09

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "faca9083859eb2069e5ec0c8d627887e37c2f41c",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/OfArity/Variantbcdc7af4f7042b02fb34605bca7ca5245e0f34d007c86d8d53c88a584293dd09.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/OfArity/Variantbcdc7af4f7042b02fb34605bca7ca5245e0f34d007c86d8d53c88a584293dd09.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/OfArity/Variantbcdc7af4f7042b02fb34605bca7ca5245e0f34d007c86d8d53c88a584293dd09.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `faca9083859eb2069e5ec0c8d627887e37c2f41c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/OfArity/Variantbcdc7af4f7042b02fb34605bca7ca5245e0f34d007c86d8d53c88a584293dd09.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/OfArity/Variantbcdc7af4f7042b02fb34605bca7ca5245e0f34d007c86d8d53c88a584293dd09.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.Function.FromTypes` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [OfArity](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/OfArity/Variantbcdc7af4f7042b02fb34605bca7ca5245e0f34d007c86d8d53c88a584293dd09.lean/declarations/ofarity--a28dae48cf1e36011829306d.md) | 36 | `declaration-track:a28dae48cf1e36011829306d63feae2e4165681bef4833979091bbc598bb27dc` |
| 2 | `theorem` | [ofArity_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/OfArity/Variantbcdc7af4f7042b02fb34605bca7ca5245e0f34d007c86d8d53c88a584293dd09.lean/declarations/ofarity-zero--c4eb4b79605f25ae5e4248e9.md) | 39 | `result-track:c4eb4b79605f25ae5e4248e9c81d558518a35b2e85b737be3394199b65fae28b` |
| 3 | `theorem` | [ofArity_succ](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/OfArity/Variantbcdc7af4f7042b02fb34605bca7ca5245e0f34d007c86d8d53c88a584293dd09.lean/declarations/ofarity-succ--f3af3f25053dcaf56ac82551.md) | 42 | `result-track:f3af3f25053dcaf56ac8255188c11028ee020b601c554abe30c69b68677cad2a` |
| 4 | `def` | [const](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/OfArity/Variantbcdc7af4f7042b02fb34605bca7ca5245e0f34d007c86d8d53c88a584293dd09.lean/declarations/const--3b3c1b2460254ea2bad5f49c.md) | 48 | `declaration-track:3b3c1b2460254ea2bad5f49c195287973a559f88ee81e5d530d1609f0fdd92aa` |
| 5 | `theorem` | [const_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/OfArity/Variantbcdc7af4f7042b02fb34605bca7ca5245e0f34d007c86d8d53c88a584293dd09.lean/declarations/const-zero--9273acb102023feade30c0b2.md) | 52 | `result-track:9273acb102023feade30c0b2535423dc48487f2b1591383c17cfcae670c007c6` |
| 6 | `theorem` | [const_succ](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/OfArity/Variantbcdc7af4f7042b02fb34605bca7ca5245e0f34d007c86d8d53c88a584293dd09.lean/declarations/const-succ--935876fa6becdd06b492fd03.md) | 56 | `result-track:935876fa6becdd06b492fd03ad68370259061c053f42bfd0b859b650bd98caf6` |
| 7 | `theorem` | [const_succ_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/OfArity/Variantbcdc7af4f7042b02fb34605bca7ca5245e0f34d007c86d8d53c88a584293dd09.lean/declarations/const-succ-apply--7cd640467047bf98074766c7.md) | 60 | `result-track:7cd640467047bf98074766c7545c541a0ceabb8a67f54a45029c81ec90a44feb` |
| 8 | `instance` | [inhabited](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/OfArity/Variantbcdc7af4f7042b02fb34605bca7ca5245e0f34d007c86d8d53c88a584293dd09.lean/declarations/inhabited--9a25ac0b319b24593e585d45.md) | 63 | `declaration-track:9a25ac0b319b24593e585d4511f7e5536af2093c203a83206df6eaa788325870` |
| 9 | `lemma` | [fromTypes_fin_const](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/OfArity/Variantbcdc7af4f7042b02fb34605bca7ca5245e0f34d007c86d8d53c88a584293dd09.lean/declarations/fromtypes-fin-const--ef551a4eb3fcfadb05016d2a.md) | 70 | `result-track:ef551a4eb3fcfadb05016d2a8c158c3354b3b92b29a9bfea5741075fcd71a08f` |
| 10 | `def` | [fromTypes_fin_const_equiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/OfArity/Variantbcdc7af4f7042b02fb34605bca7ca5245e0f34d007c86d8d53c88a584293dd09.lean/declarations/fromtypes-fin-const-equiv--04e562422f18892057b0834e.md) | 75 | `declaration-track:04e562422f18892057b0834eb06db21b70ee068f933ae12f0b446c92d9eb195f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
