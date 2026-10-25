# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Pi.Variant9fc81df8e5b65b90c705008e1a4f404c2f0bf778e117757747f728d8f2bb7cb3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f191438b8a27a8191ec0c6eb68e0467c701f3e63",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Pi/Variant9fc81df8e5b65b90c705008e1a4f404c2f0bf778e117757747f728d8f2bb7cb3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Pi/Variant9fc81df8e5b65b90c705008e1a4f404c2f0bf778e117757747f728d8f2bb7cb3.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Pi/Variant9fc81df8e5b65b90c705008e1a4f404c2f0bf778e117757747f728d8f2bb7cb3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f191438b8a27a8191ec0c6eb68e0467c701f3e63`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Pi/Variant9fc81df8e5b65b90c705008e1a4f404c2f0bf778e117757747f728d8f2bb7cb3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Pi/Variant9fc81df8e5b65b90c705008e1a4f404c2f0bf778e117757747f728d8f2bb7cb3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Vector.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Finset` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [List.Vector.encodable](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Pi/Variant9fc81df8e5b65b90c705008e1a4f404c2f0bf778e117757747f728d8f2bb7cb3.lean/declarations/list-vector-encodable--44e3ba2e29bbea15c10895d5.md) | 28 | `declaration-track:44e3ba2e29bbea15c10895d55689db64a9d6665ab171c560130ccb1f3532fb43` |
| 2 | `instance` | [List.Vector.countable](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Pi/Variant9fc81df8e5b65b90c705008e1a4f404c2f0bf778e117757747f728d8f2bb7cb3.lean/declarations/list-vector-countable--6774677cc02134a42a11a378.md) | 32 | `declaration-track:6774677cc02134a42a11a3786577680c361b5221f14575c15718656816757e7a` |
| 3 | `instance` | [finArrow](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Pi/Variant9fc81df8e5b65b90c705008e1a4f404c2f0bf778e117757747f728d8f2bb7cb3.lean/declarations/finarrow--fc51ed6265e3e8036f70d952.md) | 36 | `declaration-track:fc51ed6265e3e8036f70d952023d39b468f75eebae5175c5f0ffd270f36e0e3b` |
| 4 | `instance` | [finPi](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Pi/Variant9fc81df8e5b65b90c705008e1a4f404c2f0bf778e117757747f728d8f2bb7cb3.lean/declarations/finpi--d6f4b22c6ce47d2224d655eb.md) | 39 | `declaration-track:d6f4b22c6ce47d2224d655eb513b1733703f0d9e9edfd16735a24cdb708e8a65` |
| 5 | `def` | [fintypeArrow](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Pi/Variant9fc81df8e5b65b90c705008e1a4f404c2f0bf778e117757747f728d8f2bb7cb3.lean/declarations/fintypearrow--98d97f472b23b6b8d7100539.md) | 45 | `declaration-track:98d97f472b23b6b8d71005392989b9c52c2019f95de3f24321d47eae9ffcceba` |
| 6 | `def` | [fintypePi](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Pi/Variant9fc81df8e5b65b90c705008e1a4f404c2f0bf778e117757747f728d8f2bb7cb3.lean/declarations/fintypepi--ec13bd12f545906d941c5d51.md) | 52 | `declaration-track:ec13bd12f545906d941c5d515bc73cee15de5639f6d7aeeeac1559d86a4817ad` |
| 7 | `instance` | [fintypeArrowOfEncodable](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Pi/Variant9fc81df8e5b65b90c705008e1a4f404c2f0bf778e117757747f728d8f2bb7cb3.lean/declarations/fintypearrowofencodable--9bb5e452e24cb4230e249ed1.md) | 61 | `declaration-track:9bb5e452e24cb4230e249ed1de639c13aab3a4853f6acec31e08ce68c1f60947` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
