# Verification target: GRWTSK.Algebra.UniversalAlgebra.WithBot.Variant661c6130c62e9419676950cd0a5213ed2b57b771666d8123a04b04eb730656cf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "992046ccc6beec550ba9252aac3c0deb31fc002f",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/WithBot/Variant661c6130c62e9419676950cd0a5213ed2b57b771666d8123a04b04eb730656cf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/WithBot/Variant661c6130c62e9419676950cd0a5213ed2b57b771666d8123a04b04eb730656cf.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/WithBot/Variant661c6130c62e9419676950cd0a5213ed2b57b771666d8123a04b04eb730656cf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `992046ccc6beec550ba9252aac3c0deb31fc002f`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/WithBot/Variant661c6130c62e9419676950cd0a5213ed2b57b771666d8123a04b04eb730656cf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/WithBot/Variant661c6130c62e9419676950cd0a5213ed2b57b771666d8123a04b04eb730656cf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Monoid.Unbundled.WithTop` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.SuccPred` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.SuccPred.WithBot` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [succ_natCast](../../../../../mathematics/Algebra/UniversalAlgebra/WithBot/Variant661c6130c62e9419676950cd0a5213ed2b57b771666d8123a04b04eb730656cf.lean/declarations/succ-natcast--434e4babb6dc6e531712b275.md) | 25 | `result-track:434e4babb6dc6e531712b2751097ec7c2f4c06f05e11469ff5a43127ff0aa763` |
| 2 | `lemma` | [succ_zero](../../../../../mathematics/Algebra/UniversalAlgebra/WithBot/Variant661c6130c62e9419676950cd0a5213ed2b57b771666d8123a04b04eb730656cf.lean/declarations/succ-zero--a1f394993d2492fafeb7350a.md) | 28 | `result-track:a1f394993d2492fafeb7350a0aa371519e2d5fda1b717fc39274139e84d0995e` |
| 3 | `lemma` | [succ_one](../../../../../mathematics/Algebra/UniversalAlgebra/WithBot/Variant661c6130c62e9419676950cd0a5213ed2b57b771666d8123a04b04eb730656cf.lean/declarations/succ-one--e8b6fd99b76111d9f5ad6802.md) | 31 | `result-track:e8b6fd99b76111d9f5ad6802a2226097289cbd4afb9ebbffe90deb0c73829a19` |
| 4 | `lemma` | [succ_ofNat](../../../../../mathematics/Algebra/UniversalAlgebra/WithBot/Variant661c6130c62e9419676950cd0a5213ed2b57b771666d8123a04b04eb730656cf.lean/declarations/succ-ofnat--5041009e48d5a22e9c115ce5.md) | 34 | `result-track:5041009e48d5a22e9c115ce595cf9bac66c9f83adc68d97aa485458525692d27` |
| 5 | `lemma` | [one_le_iff_pos](../../../../../mathematics/Algebra/UniversalAlgebra/WithBot/Variant661c6130c62e9419676950cd0a5213ed2b57b771666d8123a04b04eb730656cf.lean/declarations/one-le-iff-pos--44e282dde291d36ff5ef9fe7.md) | 37 | `result-track:44e282dde291d36ff5ef9fe7bd00b2db253fbf6fa263407d55813768da1ae6c4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
