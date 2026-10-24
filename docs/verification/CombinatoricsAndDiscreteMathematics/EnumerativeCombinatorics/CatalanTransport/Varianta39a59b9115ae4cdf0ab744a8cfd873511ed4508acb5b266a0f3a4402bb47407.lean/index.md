# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.CatalanTransport.Varianta39a59b9115ae4cdf0ab744a8cfd873511ed4508acb5b266a0f3a4402bb47407

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "274b9f769f4e2edc60b7284f4333cd2636b96e63",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CatalanTransport/Varianta39a59b9115ae4cdf0ab744a8cfd873511ed4508acb5b266a0f3a4402bb47407.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CatalanTransport/Varianta39a59b9115ae4cdf0ab744a8cfd873511ed4508acb5b266a0f3a4402bb47407.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CatalanTransport/Varianta39a59b9115ae4cdf0ab744a8cfd873511ed4508acb5b266a0f3a4402bb47407.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `274b9f769f4e2edc60b7284f4333cd2636b96e63`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CatalanTransport/Varianta39a59b9115ae4cdf0ab744a8cfd873511ed4508acb5b266a0f3a4402bb47407.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CatalanTransport/Varianta39a59b9115ae4cdf0ab744a8cfd873511ed4508acb5b266a0f3a4402bb47407.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Catalan.ExpansionIndex` — import line 6; external provider; requires a separately pinned dependency.
- `Folder.Fiber.Coherence` — import line 7; external provider; requires a separately pinned dependency.
- `Folder.Monodromy.EllipticTorsionAction` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ExpandStep](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CatalanTransport/Varianta39a59b9115ae4cdf0ab744a8cfd873511ed4508acb5b266a0f3a4402bb47407.lean/declarations/expandstep--2807a99dc087c8726886b3bd.md) | 29 | `declaration-track:2807a99dc087c8726886b3bd5cfd814c19611465bfdb6f47219c22e054e8c2b7` |
| 2 | `structure` | [CatalanExpansionSystem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CatalanTransport/Varianta39a59b9115ae4cdf0ab744a8cfd873511ed4508acb5b266a0f3a4402bb47407.lean/declarations/catalanexpansionsystem--48ba6810b8d12e5820b7264a.md) | 32 | `declaration-track:48ba6810b8d12e5820b7264a1c0f733a6bfe6596f062b126767579be181939b8` |
| 3 | `def` | [contractPath](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CatalanTransport/Varianta39a59b9115ae4cdf0ab744a8cfd873511ed4508acb5b266a0f3a4402bb47407.lean/declarations/contractpath--1b2e297a9ce43b482ff6700c.md) | 38 | `declaration-track:1b2e297a9ce43b482ff6700c903eea5c7ebc45910adfc6bed060d5b4e34f1802` |
| 4 | `theorem` | [expand_contract_roundtrip](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CatalanTransport/Varianta39a59b9115ae4cdf0ab744a8cfd873511ed4508acb5b266a0f3a4402bb47407.lean/declarations/expand-contract-roundtrip--5933429567f60b7707978495.md) | 46 | `result-track:5933429567f60b7707978495b97b6ebfad8e15ee4d3ccc75aa0ea8a81f70f18b` |
| 5 | `theorem` | [contract_expand_roundtrip](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CatalanTransport/Varianta39a59b9115ae4cdf0ab744a8cfd873511ed4508acb5b266a0f3a4402bb47407.lean/declarations/contract-expand-roundtrip--6bc056e21f78be643be04116.md) | 56 | `result-track:6bc056e21f78be643be0411629af0d486f1744f9120910e85a9c77a97cff0c00` |
| 6 | `structure` | [CatalanMonodromySystem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CatalanTransport/Varianta39a59b9115ae4cdf0ab744a8cfd873511ed4508acb5b266a0f3a4402bb47407.lean/declarations/catalanmonodromysystem--004996e52736035ac67cd806.md) | 66 | `declaration-track:004996e52736035ac67cd806f5f9603482c7f843ece8785c5b7bd09a6126e461` |
| 7 | `theorem` | [torsion_transportPath_commutes](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CatalanTransport/Varianta39a59b9115ae4cdf0ab744a8cfd873511ed4508acb5b266a0f3a4402bb47407.lean/declarations/torsion-transportpath-commutes--b3441f6c5d9a3ca3d403a9d4.md) | 85 | `result-track:b3441f6c5d9a3ca3d403a9d4abae077b7087a168f9a960416b72f1a1c6b6b43b` |
| 8 | `theorem` | [catalan_elliptic_monodromy_roundtrip](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CatalanTransport/Varianta39a59b9115ae4cdf0ab744a8cfd873511ed4508acb5b266a0f3a4402bb47407.lean/declarations/catalan-elliptic-monodromy-roundtrip--2327d0a2bf409c6b487c1d5c.md) | 106 | `result-track:2327d0a2bf409c6b487c1d5cef705ba57d3023ab8a0241b15ac2900f3b307ec4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
