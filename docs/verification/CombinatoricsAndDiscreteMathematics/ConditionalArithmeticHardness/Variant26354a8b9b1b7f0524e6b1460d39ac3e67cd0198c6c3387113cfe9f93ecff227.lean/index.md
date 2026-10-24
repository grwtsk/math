# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.ConditionalArithmeticHardness.Variant26354a8b9b1b7f0524e6b1460d39ac3e67cd0198c6c3387113cfe9f93ecff227

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3636e1c16b496fbd5f173b36b0bb75794b55586c",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ConditionalArithmeticHardness/Variant26354a8b9b1b7f0524e6b1460d39ac3e67cd0198c6c3387113cfe9f93ecff227.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ConditionalArithmeticHardness/Variant26354a8b9b1b7f0524e6b1460d39ac3e67cd0198c6c3387113cfe9f93ecff227.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ConditionalArithmeticHardness/Variant26354a8b9b1b7f0524e6b1460d39ac3e67cd0198c6c3387113cfe9f93ecff227.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3636e1c16b496fbd5f173b36b0bb75794b55586c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/ConditionalArithmeticHardness/Variant26354a8b9b1b7f0524e6b1460d39ac3e67cd0198c6c3387113cfe9f93ecff227.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/ConditionalArithmeticHardness/Variant26354a8b9b1b7f0524e6b1460d39ac3e67cd0198c6c3387113cfe9f93ecff227.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Resolution.ArithmeticAdversaryProfile` — import line 1; external provider; requires a separately pinned dependency.
- `Mathematics.Resolution.CryptographicReduction` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ArithmeticSecurityScale](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ConditionalArithmeticHardness/Variant26354a8b9b1b7f0524e6b1460d39ac3e67cd0198c6c3387113cfe9f93ecff227.lean/declarations/arithmeticsecurityscale--d1c28ee3b11d698f871f0d11.md) | 17 | `declaration-track:d1c28ee3b11d698f871f0d1161f7aabc6aa9fd56317652608aea8d5860653490` |
| 2 | `structure` | [UniformGrowthCertificate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ConditionalArithmeticHardness/Variant26354a8b9b1b7f0524e6b1460d39ac3e67cd0198c6c3387113cfe9f93ecff227.lean/declarations/uniformgrowthcertificate--9b8164c3075ab501098493b3.md) | 26 | `declaration-track:9b8164c3075ab501098493b33a9d4cfdd999e764b8c67c75eae58a40d219db38` |
| 3 | `structure` | [ConditionalArithmeticQueryCertificate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ConditionalArithmeticHardness/Variant26354a8b9b1b7f0524e6b1460d39ac3e67cd0198c6c3387113cfe9f93ecff227.lean/declarations/conditionalarithmeticquerycertificate--f1e5b5660ef0e79af8a479f6.md) | 37 | `declaration-track:f1e5b5660ef0e79af8a479f6a724aef72d3fc0ec03e74d62ce90066d8548d63e` |
| 4 | `theorem` | [query_lower_bound](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ConditionalArithmeticHardness/Variant26354a8b9b1b7f0524e6b1460d39ac3e67cd0198c6c3387113cfe9f93ecff227.lean/declarations/query-lower-bound--35967079a2c29c173f1b61e1.md) | 66 | `result-track:35967079a2c29c173f1b61e1e8869f8abdb96cad945c855620c95beadd76c567` |
| 5 | `structure` | [ConditionalArithmeticWorkCertificate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ConditionalArithmeticHardness/Variant26354a8b9b1b7f0524e6b1460d39ac3e67cd0198c6c3387113cfe9f93ecff227.lean/declarations/conditionalarithmeticworkcertificate--0a9a09f6eb18daad9a0aa083.md) | 93 | `declaration-track:0a9a09f6eb18daad9a0aa083341b0d89a52097ba1307b1c5f9482fc634169bcf` |
| 6 | `theorem` | [work_lower_bound](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ConditionalArithmeticHardness/Variant26354a8b9b1b7f0524e6b1460d39ac3e67cd0198c6c3387113cfe9f93ecff227.lean/declarations/work-lower-bound--095bc053e6e8fd1620f676eb.md) | 126 | `result-track:095bc053e6e8fd1620f676eb89354c5a12e1ddef313488b7dadac1d4588447a7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
