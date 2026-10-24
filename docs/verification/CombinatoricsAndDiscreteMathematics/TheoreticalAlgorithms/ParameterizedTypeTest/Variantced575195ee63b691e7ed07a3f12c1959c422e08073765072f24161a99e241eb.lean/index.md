# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ParameterizedTypeTest.Variantced575195ee63b691e7ed07a3f12c1959c422e08073765072f24161a99e241eb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8d60f1c01c6b5bcf45a4049b42b1a4f6970033f7",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ParameterizedTypeTest/Variantced575195ee63b691e7ed07a3f12c1959c422e08073765072f24161a99e241eb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ParameterizedTypeTest/Variantced575195ee63b691e7ed07a3f12c1959c422e08073765072f24161a99e241eb.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ParameterizedTypeTest/Variantced575195ee63b691e7ed07a3f12c1959c422e08073765072f24161a99e241eb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8d60f1c01c6b5bcf45a4049b42b1a4f6970033f7`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ParameterizedTypeTest/Variantced575195ee63b691e7ed07a3f12c1959c422e08073765072f24161a99e241eb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ParameterizedTypeTest/Variantced575195ee63b691e7ed07a3f12c1959c422e08073765072f24161a99e241eb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Plausible.Arbitrary` — import line 1; external provider; requires a separately pinned dependency.
- `Plausible.DeriveArbitrary` — import line 2; external provider; requires a separately pinned dependency.
- `Plausible.Attr` — import line 3; external provider; requires a separately pinned dependency.
- `Plausible.Testable` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [MyList](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ParameterizedTypeTest/Variantced575195ee63b691e7ed07a3f12c1959c422e08073765072f24161a99e241eb.lean/declarations/mylist--a25d124ac1eb84bfc8c2e3c2.md) | 10 | `declaration-track:a25d124ac1eb84bfc8c2e3c204e7cb5d02b96146b213ef50a6591c1f699998a2` |
| 2 | `inductive` | [Vec](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ParameterizedTypeTest/Variantced575195ee63b691e7ed07a3f12c1959c422e08073765072f24161a99e241eb.lean/declarations/vec--90cc9316360ae6e07b4229f5.md) | 41 | `declaration-track:90cc9316360ae6e07b4229f5e9e26eb5370ff36a1725b8156ee8840170d8d714` |
| 3 | `def` | [listOfMyList](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ParameterizedTypeTest/Variantced575195ee63b691e7ed07a3f12c1959c422e08073765072f24161a99e241eb.lean/declarations/listofmylist--cc960fa3154754edddbcb6d3.md) | 63 | `declaration-track:cc960fa3154754edddbcb6d39563edb4ced30158f05d3aad5848e581505b6183` |
| 4 | `def` | [myListOfList](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ParameterizedTypeTest/Variantced575195ee63b691e7ed07a3f12c1959c422e08073765072f24161a99e241eb.lean/declarations/mylistoflist--e2330276c52195e7765a547d.md) | 69 | `declaration-track:e2330276c52195e7765a547d563050991aa3550f31f4132c857d56f84ac7232c` |
| 5 | `def` | [shrinkMyList](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ParameterizedTypeTest/Variantced575195ee63b691e7ed07a3f12c1959c422e08073765072f24161a99e241eb.lean/declarations/shrinkmylist--a487d0fd2d9e890393baf25c.md) | 77 | `declaration-track:a487d0fd2d9e890393baf25c23e3d52cbf252e3f83b5ef4f25cf122800ff6e3e` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ParameterizedTypeTest/Variantced575195ee63b691e7ed07a3f12c1959c422e08073765072f24161a99e241eb.lean/declarations/instance--799834a7908cac41001bfd35.md) | 82 | `declaration-track:799834a7908cac41001bfd35eafbf1ad63448d83a313898d37561a770b2450fa` |
| 7 | `def` | [reverse](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ParameterizedTypeTest/Variantced575195ee63b691e7ed07a3f12c1959c422e08073765072f24161a99e241eb.lean/declarations/reverse--de7afe2026f04eece2bb489d.md) | 98 | `declaration-track:de7afe2026f04eece2bb489d2bdc99bc14a365ab64ccb0dc453bcee2ad298172` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
