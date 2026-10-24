# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Expr.Variant282ef4ad47ba31c81ca51bcec969b3ed9d7362ae8dcab25973a9f5120a6cb38b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ea598771961b58ddca160d0e2fb3b5a436e97b75",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Expr/Variant282ef4ad47ba31c81ca51bcec969b3ed9d7362ae8dcab25973a9f5120a6cb38b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Expr/Variant282ef4ad47ba31c81ca51bcec969b3ed9d7362ae8dcab25973a9f5120a6cb38b.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Expr/Variant282ef4ad47ba31c81ca51bcec969b3ed9d7362ae8dcab25973a9f5120a6cb38b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ea598771961b58ddca160d0e2fb3b5a436e97b75`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Expr/Variant282ef4ad47ba31c81ca51bcec969b3ed9d7362ae8dcab25973a9f5120a6cb38b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Expr/Variant282ef4ad47ba31c81ca51bcec969b3ed9d7362ae8dcab25973a9f5120a6cb38b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean` — import line 6; external provider; requires a separately pinned dependency.
- `MathDiscovery.Core.Id` — import line 7; external provider; requires a separately pinned dependency.
- `MathDiscovery.Core.IdAtoms.A_ac5db8f52326a0f1` — import line 9; external provider; requires a separately pinned dependency.
- `MathDiscovery.Extractor.ExprAtoms.A_0aeb3c09e7e83a5d` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [BinderClass](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Expr/Variant282ef4ad47ba31c81ca51bcec969b3ed9d7362ae8dcab25973a9f5120a6cb38b.lean/declarations/binderclass--fdb277e29bb8e3a58a4248bf.md) | 29 | `declaration-track:fdb277e29bb8e3a58a4248bf12cd5a5e49a9f8772a0ef29f595c5a46eab3a398` |
| 2 | `inductive` | [CanonicalLevel](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Expr/Variant282ef4ad47ba31c81ca51bcec969b3ed9d7362ae8dcab25973a9f5120a6cb38b.lean/declarations/canonicallevel--16380cf286e8f6e7ae2fc6b1.md) | 36 | `declaration-track:16380cf286e8f6e7ae2fc6b13e1b7d93fd390c90046b39f3425e6330360bfd04` |
| 3 | `inductive` | [CanonicalLiteral](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Expr/Variant282ef4ad47ba31c81ca51bcec969b3ed9d7362ae8dcab25973a9f5120a6cb38b.lean/declarations/canonicalliteral--e8b16119507a950ee752d5b8.md) | 46 | `declaration-track:e8b16119507a950ee752d5b8c17e086307e616c59112f1c9ee39496ee633c588` |
| 4 | `inductive` | [CanonicalExpr](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Expr/Variant282ef4ad47ba31c81ca51bcec969b3ed9d7362ae8dcab25973a9f5120a6cb38b.lean/declarations/canonicalexpr--ec0ae7282c6ec78c83f62f8d.md) | 53 | `declaration-track:ec0ae7282c6ec78c83f62f8d4a3efb2f49e231af21447820e4ef1398ca8ebc61` |
| 5 | `def` | [CanonicalExpr.childIds](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Expr/Variant282ef4ad47ba31c81ca51bcec969b3ed9d7362ae8dcab25973a9f5120a6cb38b.lean/declarations/canonicalexpr-childids--3b16569ec0fe40312d8eb9e4.md) | 71 | `declaration-track:3b16569ec0fe40312d8eb9e47ecde07f5354f555a9c698f5ebf018b731aa3d9a` |
| 6 | `structure` | [PresentationVariant](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Expr/Variant282ef4ad47ba31c81ca51bcec969b3ed9d7362ae8dcab25973a9f5120a6cb38b.lean/declarations/presentationvariant--5a183b62131f56012b0c8d80.md) | 80 | `declaration-track:5a183b62131f56012b0c8d806812b573e6e9b843483454c62fa2f7e06f1591b5` |
| 7 | `structure` | [ExpressionRecord](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Expr/Variant282ef4ad47ba31c81ca51bcec969b3ed9d7362ae8dcab25973a9f5120a6cb38b.lean/declarations/expressionrecord--5edcfa141f319bede2207284.md) | 85 | `declaration-track:5edcfa141f319bede2207284d1095de811c3f59a8539d1c366d029d1cfd757dd` |
| 8 | `structure` | [ExprPath](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Expr/Variant282ef4ad47ba31c81ca51bcec969b3ed9d7362ae8dcab25973a9f5120a6cb38b.lean/declarations/exprpath--512b81e54ac65af1ee5dd0df.md) | 95 | `declaration-track:512b81e54ac65af1ee5dd0dfaebffff396759126a6e54b37edd8d2bba90bdd00` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
