# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.GetLit.Variantd43b3bcfffed2b5c12d1751be4e4e804ee3cc41ed1066953314f85f1734f96c0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e8d4594262a78369888712ca59158477b0cc7d2c",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GetLit/Variantd43b3bcfffed2b5c12d1751be4e4e804ee3cc41ed1066953314f85f1734f96c0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GetLit/Variantd43b3bcfffed2b5c12d1751be4e4e804ee3cc41ed1066953314f85f1734f96c0.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GetLit/Variantd43b3bcfffed2b5c12d1751be4e4e804ee3cc41ed1066953314f85f1734f96c0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e8d4594262a78369888712ca59158477b0cc7d2c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GetLit/Variantd43b3bcfffed2b5c12d1751be4e4e804ee3cc41ed1066953314f85f1734f96c0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GetLit/Variantd43b3bcfffed2b5c12d1751be4e4e804ee3cc41ed1066953314f85f1734f96c0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Array.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [getLit](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GetLit/Variantd43b3bcfffed2b5c12d1751be4e4e804ee3cc41ed1066953314f85f1734f96c0.lean/declarations/getlit--33181d8f2955ddebd45ba244.md) | 23 | `declaration-track:33181d8f2955ddebd45ba244d455305f53bccbf5cc428ec4fc46d42b0ab081c1` |
| 2 | `theorem` | [extLit](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GetLit/Variantd43b3bcfffed2b5c12d1751be4e4e804ee3cc41ed1066953314f85f1734f96c0.lean/declarations/extlit--ab80c4dec69007d77beffd74.md) | 27 | `result-track:ab80c4dec69007d77beffd74237c9981b395251a2268aa0525d22df90fa00107` |
| 3 | `def` | [toListLitAux](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GetLit/Variantd43b3bcfffed2b5c12d1751be4e4e804ee3cc41ed1066953314f85f1734f96c0.lean/declarations/tolistlitaux--86525ce1fcfce487a7ea0b18.md) | 34 | `declaration-track:86525ce1fcfce487a7ea0b1838f4948211b22cfa4488bece7056f1c1036e7f36` |
| 4 | `def` | [toArrayLit](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GetLit/Variantd43b3bcfffed2b5c12d1751be4e4e804ee3cc41ed1066953314f85f1734f96c0.lean/declarations/toarraylit--70f926baf122cdbabe696ea5.md) | 39 | `declaration-track:70f926baf122cdbabe696ea5954f342490b39ff34306883a0c9243222c407b42` |
| 5 | `theorem` | [toArrayLit_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GetLit/Variantd43b3bcfffed2b5c12d1751be4e4e804ee3cc41ed1066953314f85f1734f96c0.lean/declarations/toarraylit-eq--58f8a9e7f2fb9299e4519b86.md) | 42 | `result-track:58f8a9e7f2fb9299e4519b86f8eac11b6e7e279072e275723a32768a4f1472f4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
