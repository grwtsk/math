# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.CatalanTransport.Varianta9d09dc969208bc4d43d26b24161a7d5f0988aad92fb323f090661396f21b6f8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a95a76dd58de1c6ebc9af7d5defa7a0183f10e88",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CatalanTransport/Varianta9d09dc969208bc4d43d26b24161a7d5f0988aad92fb323f090661396f21b6f8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CatalanTransport/Varianta9d09dc969208bc4d43d26b24161a7d5f0988aad92fb323f090661396f21b6f8.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CatalanTransport/Varianta9d09dc969208bc4d43d26b24161a7d5f0988aad92fb323f090661396f21b6f8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a95a76dd58de1c6ebc9af7d5defa7a0183f10e88`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CatalanTransport/Varianta9d09dc969208bc4d43d26b24161a7d5f0988aad92fb323f090661396f21b6f8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CatalanTransport/Varianta9d09dc969208bc4d43d26b24161a7d5f0988aad92fb323f090661396f21b6f8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Catalan.ExpansionIndex` — import line 1; external provider; requires a separately pinned dependency.
- `Folder.Fiber.Coherence` — import line 2; external provider; requires a separately pinned dependency.
- `Folder.Monodromy.EllipticTorsionAction` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ExpandStep](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CatalanTransport/Varianta9d09dc969208bc4d43d26b24161a7d5f0988aad92fb323f090661396f21b6f8.lean/declarations/expandstep--3771598f4ffa35a563f50093.md) | 21 | `declaration-track:3771598f4ffa35a563f50093d11daada723e1f3977412aff23f887d01f9b3d7c` |
| 2 | `structure` | [CatalanExpansionSystem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CatalanTransport/Varianta9d09dc969208bc4d43d26b24161a7d5f0988aad92fb323f090661396f21b6f8.lean/declarations/catalanexpansionsystem--74ca56521b7cdee26d688ec3.md) | 24 | `declaration-track:74ca56521b7cdee26d688ec385a2e4ff4ac8a12cabd2280c9aee54db906dc856` |
| 3 | `def` | [contractPath](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CatalanTransport/Varianta9d09dc969208bc4d43d26b24161a7d5f0988aad92fb323f090661396f21b6f8.lean/declarations/contractpath--9fbcb2784252d5d4224e6a8a.md) | 30 | `declaration-track:9fbcb2784252d5d4224e6a8a92737d7fe5c8764914e16f0c9ba1b30dabf16e0f` |
| 4 | `theorem` | [expand_contract_roundtrip](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CatalanTransport/Varianta9d09dc969208bc4d43d26b24161a7d5f0988aad92fb323f090661396f21b6f8.lean/declarations/expand-contract-roundtrip--a94ed2a2563308cd8b336bac.md) | 38 | `result-track:a94ed2a2563308cd8b336bac00071a0c8e5f00bc1f5bc7579f4d870a49fac72e` |
| 5 | `theorem` | [contract_expand_roundtrip](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CatalanTransport/Varianta9d09dc969208bc4d43d26b24161a7d5f0988aad92fb323f090661396f21b6f8.lean/declarations/contract-expand-roundtrip--de157cf7983cedb61720bdea.md) | 48 | `result-track:de157cf7983cedb61720bdea64f3f07864158dea1b1e51f191e5f24d3f44f07c` |
| 6 | `structure` | [CatalanMonodromySystem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CatalanTransport/Varianta9d09dc969208bc4d43d26b24161a7d5f0988aad92fb323f090661396f21b6f8.lean/declarations/catalanmonodromysystem--f953028cbf6e36bdb105abc1.md) | 58 | `declaration-track:f953028cbf6e36bdb105abc13dc1693334c2e6f1c3115e7f5b1553e43d6d858d` |
| 7 | `theorem` | [torsion_transportPath_commutes](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CatalanTransport/Varianta9d09dc969208bc4d43d26b24161a7d5f0988aad92fb323f090661396f21b6f8.lean/declarations/torsion-transportpath-commutes--a7f042f5ae9dc63c8ad5ae7c.md) | 77 | `result-track:a7f042f5ae9dc63c8ad5ae7cffcdb04a8141690a0b349b49cd9764fceb6ccdce` |
| 8 | `theorem` | [catalan_elliptic_monodromy_roundtrip](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CatalanTransport/Varianta9d09dc969208bc4d43d26b24161a7d5f0988aad92fb323f090661396f21b6f8.lean/declarations/catalan-elliptic-monodromy-roundtrip--3d0e4fd3ad2855ce967c3c2f.md) | 98 | `result-track:3d0e4fd3ad2855ce967c3c2fd4253cceddd18ff6d3f8be4d9d933146ca934516` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
