# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.FinCases.Variantb0c1d456a20b86862b5ece70d24c65ccbe650adaf077c131da15f0a4b7da6f56

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0fb313ef81e297f57d79e978b499a9f3a7b66706",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FinCases/Variantb0c1d456a20b86862b5ece70d24c65ccbe650adaf077c131da15f0a4b7da6f56.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FinCases/Variantb0c1d456a20b86862b5ece70d24c65ccbe650adaf077c131da15f0a4b7da6f56.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FinCases/Variantb0c1d456a20b86862b5ece70d24c65ccbe650adaf077c131da15f0a4b7da6f56.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0fb313ef81e297f57d79e978b499a9f3a7b66706`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/FinCases/Variantb0c1d456a20b86862b5ece70d24c65ccbe650adaf077c131da15f0a4b7da6f56.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/FinCases/Variantb0c1d456a20b86862b5ece70d24c65ccbe650adaf077c131da15f0a4b7da6f56.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.Core` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Lean.Expr.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [getMemType](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FinCases/Variantb0c1d456a20b86862b5ece70d24c65ccbe650adaf077c131da15f0a4b7da6f56.lean/declarations/getmemtype--89b400094bbd9c0edb2be8b6.md) | 26 | `declaration-track:89b400094bbd9c0edb2be8b6e32b21e18a4cfcf474a68acf0a6c87f18d575d4a` |
| 2 | `def` | [unfoldCases](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FinCases/Variantb0c1d456a20b86862b5ece70d24c65ccbe650adaf077c131da15f0a4b7da6f56.lean/declarations/unfoldcases--3d46ad73d0f15217fe987815.md) | 48 | `declaration-track:3d46ad73d0f15217fe9878159d519d871155ade0e546c2e71144589c514c8111` |
| 3 | `def` | [finCasesAt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FinCases/Variantb0c1d456a20b86862b5ece70d24c65ccbe650adaf077c131da15f0a4b7da6f56.lean/declarations/fincasesat--8fce60f7713b8b01bcd7c4a5.md) | 59 | `declaration-track:8fce60f7713b8b01bcd7c4a5ec0580245370a7e4ad1b7e1f79abd41d35fee991` |
| 4 | `syntax` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FinCases/Variantb0c1d456a20b86862b5ece70d24c65ccbe650adaf077c131da15f0a4b7da6f56.lean/declarations/syntax--7ea69edb9be5fadfd8af16be.md) | 85 | `declaration-track:7ea69edb9be5fadfd8af16be0f04b55bce916c70afaf8c223bbf7c21eb761cca` |
| 5 | `elab_rules` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FinCases/Variantb0c1d456a20b86862b5ece70d24c65ccbe650adaf077c131da15f0a4b7da6f56.lean/declarations/elab-rules--bf786717c10cd595b7ede723.md) | 124 | `declaration-track:bf786717c10cd595b7ede7235acd7f3aca218f105c47e25d7d59877dfc3261ee` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
