# Verification target: GRWTSK.Algebra.UniversalAlgebra.WithBot.Variantf67d167f3a27f40d54f3fadfd29245fd1bf012dd4c18233e6f3509108b764fcd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bd3460556c4cc3884494e739bbcb3067c7c339cc",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/WithBot/Variantf67d167f3a27f40d54f3fadfd29245fd1bf012dd4c18233e6f3509108b764fcd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/WithBot/Variantf67d167f3a27f40d54f3fadfd29245fd1bf012dd4c18233e6f3509108b764fcd.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/WithBot/Variantf67d167f3a27f40d54f3fadfd29245fd1bf012dd4c18233e6f3509108b764fcd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bd3460556c4cc3884494e739bbcb3067c7c339cc`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/WithBot/Variantf67d167f3a27f40d54f3fadfd29245fd1bf012dd4c18233e6f3509108b764fcd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/WithBot/Variantf67d167f3a27f40d54f3fadfd29245fd1bf012dd4c18233e6f3509108b764fcd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Monoid.Unbundled.WithTop` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.SuccPred` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.SuccPred.WithBot` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [succ_natCast](../../../../../mathematics/Algebra/UniversalAlgebra/WithBot/Variantf67d167f3a27f40d54f3fadfd29245fd1bf012dd4c18233e6f3509108b764fcd.lean/declarations/succ-natcast--866b1881f764d8aefd73735c.md) | 17 | `result-track:866b1881f764d8aefd73735c76f8e831d1ba53c1903736585f8fc13acd0c7598` |
| 2 | `lemma` | [succ_zero](../../../../../mathematics/Algebra/UniversalAlgebra/WithBot/Variantf67d167f3a27f40d54f3fadfd29245fd1bf012dd4c18233e6f3509108b764fcd.lean/declarations/succ-zero--aae78417172f0cb6cc188263.md) | 20 | `result-track:aae78417172f0cb6cc188263c6dec1c615d63c5a08bf120d448d49ddc16e49e9` |
| 3 | `lemma` | [succ_one](../../../../../mathematics/Algebra/UniversalAlgebra/WithBot/Variantf67d167f3a27f40d54f3fadfd29245fd1bf012dd4c18233e6f3509108b764fcd.lean/declarations/succ-one--862added32dc0404e0ff1c56.md) | 23 | `result-track:862added32dc0404e0ff1c56b0b30d5a526eaa98569333c55ad96704ac57d17f` |
| 4 | `lemma` | [succ_ofNat](../../../../../mathematics/Algebra/UniversalAlgebra/WithBot/Variantf67d167f3a27f40d54f3fadfd29245fd1bf012dd4c18233e6f3509108b764fcd.lean/declarations/succ-ofnat--d4b08065b29a7173d7cc0775.md) | 26 | `result-track:d4b08065b29a7173d7cc0775c230156edb69c3fd765eb58d2283a5436c08cd87` |
| 5 | `lemma` | [one_le_iff_pos](../../../../../mathematics/Algebra/UniversalAlgebra/WithBot/Variantf67d167f3a27f40d54f3fadfd29245fd1bf012dd4c18233e6f3509108b764fcd.lean/declarations/one-le-iff-pos--fa33036aa5a6f890391e7c91.md) | 29 | `result-track:fa33036aa5a6f890391e7c91927dfcc4b04823bae7b7e7653a1550356815292c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
