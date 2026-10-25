# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Semisimple.Variant222a16eb92489945cc7972151864f7efc84c130f1cb2aa8c80008cbedd607748

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f905631d10eb26141fe08360e2ba8e700494e2e6",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Semisimple/Variant222a16eb92489945cc7972151864f7efc84c130f1cb2aa8c80008cbedd607748.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Semisimple/Variant222a16eb92489945cc7972151864f7efc84c130f1cb2aa8c80008cbedd607748.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Semisimple/Variant222a16eb92489945cc7972151864f7efc84c130f1cb2aa8c80008cbedd607748.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f905631d10eb26141fe08360e2ba8e700494e2e6`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Semisimple/Variant222a16eb92489945cc7972151864f7efc84c130f1cb2aa8c80008cbedd607748.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Semisimple/Variant222a16eb92489945cc7972151864f7efc84c130f1cb2aa8c80008cbedd607748.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Lie.Solvable` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [LieModule.IsIrreducible](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Semisimple/Variant222a16eb92489945cc7972151864f7efc84c130f1cb2aa8c80008cbedd607748.lean/declarations/liemodule-isirreducible--ad6b89d2994969c4a467ad39.md) | 43 | `declaration-track:ad6b89d2994969c4a467ad39e6507c072649103158d9ffc1517e99168b4354ce` |
| 2 | `class` | [IsSimple](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Semisimple/Variant222a16eb92489945cc7972151864f7efc84c130f1cb2aa8c80008cbedd607748.lean/declarations/issimple--e13ca0a030d5f0033b9cfdc6.md) | 57 | `declaration-track:e13ca0a030d5f0033b9cfdc603cf5d1770ce82da11c418327f17b1abff746a88` |
| 3 | `class` | [IsSemisimple](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Semisimple/Variant222a16eb92489945cc7972151864f7efc84c130f1cb2aa8c80008cbedd607748.lean/declarations/issemisimple--46ddadb15e10395500405bd4.md) | 68 | `declaration-track:46ddadb15e10395500405bd4454c84e528c53bb2759b902d76a202a331ab79dc` |
| 4 | `theorem` | [isSemisimple_iff_no_solvable_ideals](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Semisimple/Variant222a16eb92489945cc7972151864f7efc84c130f1cb2aa8c80008cbedd607748.lean/declarations/issemisimple-iff-no-solvable-ideals--f7abece5bd92c4b5666b2f36.md) | 72 | `result-track:f7abece5bd92c4b5666b2f369633976b0d8941093e1d27fafd2e67b51e6a97f7` |
| 5 | `theorem` | [isSemisimple_iff_no_abelian_ideals](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Semisimple/Variant222a16eb92489945cc7972151864f7efc84c130f1cb2aa8c80008cbedd607748.lean/declarations/issemisimple-iff-no-abelian-ideals--38f6597c2ef809ddad30d787.md) | 77 | `result-track:38f6597c2ef809ddad30d787c99e0b4a7336e279c00d3da3e84167cc5b5e21cf` |
| 6 | `theorem` | [center_eq_bot_of_semisimple](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Semisimple/Variant222a16eb92489945cc7972151864f7efc84c130f1cb2aa8c80008cbedd607748.lean/declarations/center-eq-bot-of-semisimple--0c15aad765230bf0ec5cbb63.md) | 87 | `result-track:0c15aad765230bf0ec5cbb63ec9a6b3155209afe81012af0d1e392b04c6ea186` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Semisimple/Variant222a16eb92489945cc7972151864f7efc84c130f1cb2aa8c80008cbedd607748.lean/declarations/instance--13e68ab36d12d7f3e3e43c62.md) | 92 | `declaration-track:13e68ab36d12d7f3e3e43c62d464bf18e48506dc6f9fa3c39ef5182ca9496ebc` |
| 8 | `theorem` | [subsingleton_of_semisimple_lie_abelian](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Semisimple/Variant222a16eb92489945cc7972151864f7efc84c130f1cb2aa8c80008cbedd607748.lean/declarations/subsingleton-of-semisimple-lie-abelian--0ca143d14c32b12b0ff5d510.md) | 102 | `result-track:0ca143d14c32b12b0ff5d51062e62a90b7cc3929c320d72db02e955476c311ae` |
| 9 | `theorem` | [abelian_radical_of_semisimple](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Semisimple/Variant222a16eb92489945cc7972151864f7efc84c130f1cb2aa8c80008cbedd607748.lean/declarations/abelian-radical-of-semisimple--c8d1d2d78fae219768cf8e02.md) | 108 | `result-track:c8d1d2d78fae219768cf8e021b0db10fbd72f0247490e6da0650d83e870bd121` |
| 10 | `theorem` | [abelian_radical_iff_solvable_is_abelian](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Semisimple/Variant222a16eb92489945cc7972151864f7efc84c130f1cb2aa8c80008cbedd607748.lean/declarations/abelian-radical-iff-solvable-is-abelian--90fa9a1ca792f8cc09469144.md) | 117 | `result-track:90fa9a1ca792f8cc094691444e4ae0c818bdaf94335017551e0d51e63a5836e2` |
| 11 | `theorem` | [ad_ker_eq_bot_of_semisimple](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Semisimple/Variant222a16eb92489945cc7972151864f7efc84c130f1cb2aa8c80008cbedd607748.lean/declarations/ad-ker-eq-bot-of-semisimple--3fd0baf7b9452460511e3710.md) | 126 | `result-track:3fd0baf7b9452460511e371068b9e781977a04eb63a5bff669c91ff51325949b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
