# Verification target: GRWTSK.Algebra.Localization.Variant226a6c2687e562cddd738340edc9959094890e8d2da4ae6a803824587a8cc988

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fa0ea85fb29c44bcfbec96df2549c6fcb712d338",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Localization/Variant226a6c2687e562cddd738340edc9959094890e8d2da4ae6a803824587a8cc988.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Localization/Variant226a6c2687e562cddd738340edc9959094890e8d2da4ae6a803824587a8cc988.lean/index.md) · [Full source](../../../../mathematics/Algebra/Localization/Variant226a6c2687e562cddd738340edc9959094890e8d2da4ae6a803824587a8cc988.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fa0ea85fb29c44bcfbec96df2549c6fcb712d338`.

Source path: `GRWTSK/Algebra/Localization/Variant226a6c2687e562cddd738340edc9959094890e8d2da4ae6a803824587a8cc988.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Localization/Variant226a6c2687e562cddd738340edc9959094890e8d2da4ae6a803824587a8cc988.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.LocalizedModule.Submodule` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Dimension.DivisionRing` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.IsTensorProduct` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.BaseChange` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.FractionRing` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.OreLocalization.OreSet` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [IsLocalizedModule.lift_rank_eq](../../../../mathematics/Algebra/Localization/Variant226a6c2687e562cddd738340edc9959094890e8d2da4ae6a803824587a8cc988.lean/declarations/islocalizedmodule-lift-rank-eq--ea980515999efcf4015f010f.md) | 40 | `result-track:ea980515999efcf4015f010f9e69535384140f390585a6456cfce8344f12dab1` |
| 2 | `lemma` | [IsLocalizedModule.finrank_eq](../../../../mathematics/Algebra/Localization/Variant226a6c2687e562cddd738340edc9959094890e8d2da4ae6a803824587a8cc988.lean/declarations/islocalizedmodule-finrank-eq--696cbf3176c1fe5b80348973.md) | 52 | `result-track:696cbf3176c1fe5b8034897398c4bf6f403b3d1bf1564a63c3d00d7630660ed7` |
| 3 | `lemma` | [IsLocalizedModule.rank_eq](../../../../mathematics/Algebra/Localization/Variant226a6c2687e562cddd738340edc9959094890e8d2da4ae6a803824587a8cc988.lean/declarations/islocalizedmodule-rank-eq--f87d9fd7970cb44a3ba8613a.md) | 57 | `result-track:f87d9fd7970cb44a3ba8613a731033f37d7788ddd0015223f77f5d99c8a9e4a7` |
| 4 | `lemma` | [IsLocalization.rank_eq](../../../../mathematics/Algebra/Localization/Variant226a6c2687e562cddd738340edc9959094890e8d2da4ae6a803824587a8cc988.lean/declarations/islocalization-rank-eq--2b53e5e6ad51211b9c13cde5.md) | 61 | `result-track:2b53e5e6ad51211b9c13cde5a8d569c91a7f6f00f92407c24f76d02da7bd1461` |
| 5 | `theorem` | [exists_set_linearIndependent_of_isDomain](../../../../mathematics/Algebra/Localization/Variant226a6c2687e562cddd738340edc9959094890e8d2da4ae6a803824587a8cc988.lean/declarations/exists-set-linearindependent-of-isdomain--475c0cb9ef8c8c4aac81d2d8.md) | 74 | `result-track:475c0cb9ef8c8c4aac81d2d8446949320f5f62a88532df80aecd87477e0e57e3` |
| 6 | `theorem` | [rank_quotient_add_rank_of_isDomain](../../../../mathematics/Algebra/Localization/Variant226a6c2687e562cddd738340edc9959094890e8d2da4ae6a803824587a8cc988.lean/declarations/rank-quotient-add-rank-of-isdomain--c7b0f000ddab888bc940c84e.md) | 87 | `result-track:c7b0f000ddab888bc940c84e97f90736c38a9d6baacc418e9b1387e9723eb32a` |
| 7 | `instance` | [IsDomain.hasRankNullity](../../../../mathematics/Algebra/Localization/Variant226a6c2687e562cddd738340edc9959094890e8d2da4ae6a803824587a8cc988.lean/declarations/isdomain-hasranknullity--7ab677a8a598fe414377bcc7.md) | 97 | `declaration-track:7ab677a8a598fe414377bcc7ce45bdecc8aa3fece71ddd15fab3af6ff744829c` |
| 8 | `theorem` | [lift_rank_eq_of_le_nonZeroDivisors](../../../../mathematics/Algebra/Localization/Variant226a6c2687e562cddd738340edc9959094890e8d2da4ae6a803824587a8cc988.lean/declarations/lift-rank-eq-of-le-nonzerodivisors--8cd59446aed12c69cc463067.md) | 114 | `result-track:8cd59446aed12c69cc4630673b42f46462285e78a7ff0eb0be8125b2ba00c85d` |
| 9 | `theorem` | [finrank_eq_of_le_nonZeroDivisors](../../../../mathematics/Algebra/Localization/Variant226a6c2687e562cddd738340edc9959094890e8d2da4ae6a803824587a8cc988.lean/declarations/finrank-eq-of-le-nonzerodivisors--521897e044fc48811ae7fada.md) | 135 | `result-track:521897e044fc48811ae7fada77d12f72d6303ad034cefee12c4cc586f30f96fc` |
| 10 | `theorem` | [rank_eq_of_le_nonZeroDivisors](../../../../mathematics/Algebra/Localization/Variant226a6c2687e562cddd738340edc9959094890e8d2da4ae6a803824587a8cc988.lean/declarations/rank-eq-of-le-nonzerodivisors--e7372b417a56313bfe3cd2ac.md) | 139 | `result-track:e7372b417a56313bfe3cd2ac5648271cb7d455f27ff3e72a3e36041ae162519a` |
| 11 | `theorem` | [lift_rank_eq](../../../../mathematics/Algebra/Localization/Variant226a6c2687e562cddd738340edc9959094890e8d2da4ae6a803824587a8cc988.lean/declarations/lift-rank-eq--b875583f05cb291911f849b9.md) | 151 | `result-track:b875583f05cb291911f849b91ae0d36c80dc1844670c34ad0aefd529648e9395` |
| 12 | `theorem` | [finrank_eq](../../../../mathematics/Algebra/Localization/Variant226a6c2687e562cddd738340edc9959094890e8d2da4ae6a803824587a8cc988.lean/declarations/finrank-eq--f7efba83ad8c77a5d3c37e51.md) | 175 | `result-track:f7efba83ad8c77a5d3c37e51074e2b6893f7b0861d4163581c8ede6d430c0c67` |
| 13 | `theorem` | [rank_eq](../../../../mathematics/Algebra/Localization/Variant226a6c2687e562cddd738340edc9959094890e8d2da4ae6a803824587a8cc988.lean/declarations/rank-eq--5afc84b69fc6bef69f0efac8.md) | 178 | `result-track:5afc84b69fc6bef69f0efac8ba73f267966060975761631aa6bcef29df8e739b` |
| 14 | `lemma` | [aleph0_le_rank_of_isEmpty_oreSet](../../../../mathematics/Algebra/Localization/Variant226a6c2687e562cddd738340edc9959094890e8d2da4ae6a803824587a8cc988.lean/declarations/aleph0-le-rank-of-isempty-oreset--6d9de56c417e9064f1677089.md) | 192 | `result-track:6d9de56c417e9064f1677089eacbf769d454872a28c08eccd2e0629fc61b0548` |
| 15 | `lemma` | [nonempty_oreSet_of_strongRankCondition](../../../../mathematics/Algebra/Localization/Variant226a6c2687e562cddd738340edc9959094890e8d2da4ae6a803824587a8cc988.lean/declarations/nonempty-oreset-of-strongrankcondition--0120a85c3791ae76f1ea9d04.md) | 221 | `result-track:0120a85c3791ae76f1ea9d042a292241871e1882573a499e687a027408d46df3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
