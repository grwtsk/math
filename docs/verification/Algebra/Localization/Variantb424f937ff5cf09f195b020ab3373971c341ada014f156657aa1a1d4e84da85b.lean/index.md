# Verification target: GRWTSK.Algebra.Localization.Variantb424f937ff5cf09f195b020ab3373971c341ada014f156657aa1a1d4e84da85b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b6e48f687edfe37badd7e42a91fbb3efc69885a4",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Localization/Variantb424f937ff5cf09f195b020ab3373971c341ada014f156657aa1a1d4e84da85b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Localization/Variantb424f937ff5cf09f195b020ab3373971c341ada014f156657aa1a1d4e84da85b.lean/index.md) · [Full source](../../../../mathematics/Algebra/Localization/Variantb424f937ff5cf09f195b020ab3373971c341ada014f156657aa1a1d4e84da85b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b6e48f687edfe37badd7e42a91fbb3efc69885a4`.

Source path: `GRWTSK/Algebra/Localization/Variantb424f937ff5cf09f195b020ab3373971c341ada014f156657aa1a1d4e84da85b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Localization/Variantb424f937ff5cf09f195b020ab3373971c341ada014f156657aa1a1d4e84da85b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [IsLocalizedModule.lift_rank_eq](../../../../mathematics/Algebra/Localization/Variantb424f937ff5cf09f195b020ab3373971c341ada014f156657aa1a1d4e84da85b.lean/declarations/islocalizedmodule-lift-rank-eq--11c10bc0046d1f0a7c2cb122.md) | 52 | `result-track:11c10bc0046d1f0a7c2cb1222639b1542a925d1f743f759e99d792cef57caa6c` |
| 2 | `lemma` | [IsLocalizedModule.finrank_eq](../../../../mathematics/Algebra/Localization/Variantb424f937ff5cf09f195b020ab3373971c341ada014f156657aa1a1d4e84da85b.lean/declarations/islocalizedmodule-finrank-eq--1f85b48ae6b62faeccff5a97.md) | 64 | `result-track:1f85b48ae6b62faeccff5a9780fe05fa0d481942630390637be10bf4e2cb7132` |
| 3 | `lemma` | [IsLocalizedModule.rank_eq](../../../../mathematics/Algebra/Localization/Variantb424f937ff5cf09f195b020ab3373971c341ada014f156657aa1a1d4e84da85b.lean/declarations/islocalizedmodule-rank-eq--46906614a89d526880b85f00.md) | 69 | `result-track:46906614a89d526880b85f00df80ecfdcbfb394f796ef169f4e7eb9b60e73a89` |
| 4 | `lemma` | [IsLocalization.rank_eq](../../../../mathematics/Algebra/Localization/Variantb424f937ff5cf09f195b020ab3373971c341ada014f156657aa1a1d4e84da85b.lean/declarations/islocalization-rank-eq--6097b5821fffc4d8c7cf9e4d.md) | 73 | `result-track:6097b5821fffc4d8c7cf9e4d1abb858905e2c10bdefd1e558516a40737f14df8` |
| 5 | `theorem` | [IsLocalization.finrank_eq](../../../../mathematics/Algebra/Localization/Variantb424f937ff5cf09f195b020ab3373971c341ada014f156657aa1a1d4e84da85b.lean/declarations/islocalization-finrank-eq--9a140347e7020dcfb1d86caa.md) | 83 | `result-track:9a140347e7020dcfb1d86caa83feb23388aedd6e4ad4d47a1676258bc65a1d88` |
| 6 | `theorem` | [IsLocalization.linearIndepOn_finsetIntegerMultiple](../../../../mathematics/Algebra/Localization/Variantb424f937ff5cf09f195b020ab3373971c341ada014f156657aa1a1d4e84da85b.lean/declarations/islocalization-linearindepon-finsetintegermultiple--c7520db7dd31dbcf6357eb39.md) | 89 | `result-track:c7520db7dd31dbcf6357eb390b239f46d48a67a5fb99a0c247728cdbfe6fccf2` |
| 7 | `theorem` | [IsFractionRing.rank_right_eq](../../../../mathematics/Algebra/Localization/Variantb424f937ff5cf09f195b020ab3373971c341ada014f156657aa1a1d4e84da85b.lean/declarations/isfractionring-rank-right-eq--d7a365b528ca6c47165ee2d9.md) | 112 | `result-track:d7a365b528ca6c47165ee2d95c2536c271e78214a55cbbd7978d318a0bf8707c` |
| 8 | `theorem` | [IsFractionRing.finrank_right_eq](../../../../mathematics/Algebra/Localization/Variantb424f937ff5cf09f195b020ab3373971c341ada014f156657aa1a1d4e84da85b.lean/declarations/isfractionring-finrank-right-eq--9ccdf27827b77b0b4b094e46.md) | 121 | `result-track:9ccdf27827b77b0b4b094e462eb91b95cbe3ef6c6ede00eb01332758fbaea4ee` |
| 9 | `theorem` | [IsFractionRing.finrank_left_eq](../../../../mathematics/Algebra/Localization/Variantb424f937ff5cf09f195b020ab3373971c341ada014f156657aa1a1d4e84da85b.lean/declarations/isfractionring-finrank-left-eq--62e7a1973d161bed72d32629.md) | 133 | `result-track:62e7a1973d161bed72d3262913f89e1daf90cef70efe8a6f2907ac1ebfb34827` |
| 10 | `theorem` | [IsFractionRing.finrank_eq](../../../../mathematics/Algebra/Localization/Variantb424f937ff5cf09f195b020ab3373971c341ada014f156657aa1a1d4e84da85b.lean/declarations/isfractionring-finrank-eq--22a9ffd9a53cdafe95ec84cb.md) | 154 | `result-track:22a9ffd9a53cdafe95ec84cb0954f368fd101f1bf01cb93856cfc199007fd6d0` |
| 11 | `theorem` | [exists_set_linearIndependent_of_isDomain](../../../../mathematics/Algebra/Localization/Variantb424f937ff5cf09f195b020ab3373971c341ada014f156657aa1a1d4e84da85b.lean/declarations/exists-set-linearindependent-of-isdomain--f2856a4b0443bbc9db28fad3.md) | 161 | `result-track:f2856a4b0443bbc9db28fad365bd4d0cdcccfd36e6eb386d94be63879c119882` |
| 12 | `theorem` | [rank_quotient_add_rank_of_isDomain](../../../../mathematics/Algebra/Localization/Variantb424f937ff5cf09f195b020ab3373971c341ada014f156657aa1a1d4e84da85b.lean/declarations/rank-quotient-add-rank-of-isdomain--5cfa1c6f71f8c4a722ab265a.md) | 174 | `result-track:5cfa1c6f71f8c4a722ab265abc179be69e4fbd92ec0211862e7c935890f72c78` |
| 13 | `instance` | [IsDomain.hasRankNullity](../../../../mathematics/Algebra/Localization/Variantb424f937ff5cf09f195b020ab3373971c341ada014f156657aa1a1d4e84da85b.lean/declarations/isdomain-hasranknullity--196877b8b575974718ea5802.md) | 184 | `declaration-track:196877b8b575974718ea58026361545d399e86bb860dadbee2a123d5d6787932` |
| 14 | `theorem` | [lift_rank_eq_of_le_nonZeroDivisors](../../../../mathematics/Algebra/Localization/Variantb424f937ff5cf09f195b020ab3373971c341ada014f156657aa1a1d4e84da85b.lean/declarations/lift-rank-eq-of-le-nonzerodivisors--0ac494582b8e1ca29698ce53.md) | 201 | `result-track:0ac494582b8e1ca29698ce53d5b44069474c8784b9c8b7dbb99fe3c4b272ff79` |
| 15 | `theorem` | [finrank_eq_of_le_nonZeroDivisors](../../../../mathematics/Algebra/Localization/Variantb424f937ff5cf09f195b020ab3373971c341ada014f156657aa1a1d4e84da85b.lean/declarations/finrank-eq-of-le-nonzerodivisors--2c563fdc9567dc0d3816ae92.md) | 220 | `result-track:2c563fdc9567dc0d3816ae92eceaff481022834c199149b730cc7e0bbe37ac25` |
| 16 | `theorem` | [rank_eq_of_le_nonZeroDivisors](../../../../mathematics/Algebra/Localization/Variantb424f937ff5cf09f195b020ab3373971c341ada014f156657aa1a1d4e84da85b.lean/declarations/rank-eq-of-le-nonzerodivisors--d517e4bf22d9f8a641bbf57a.md) | 224 | `result-track:d517e4bf22d9f8a641bbf57a5ec24515964dc489633381208fb7dfaa1d270e87` |
| 17 | `theorem` | [lift_rank_eq](../../../../mathematics/Algebra/Localization/Variantb424f937ff5cf09f195b020ab3373971c341ada014f156657aa1a1d4e84da85b.lean/declarations/lift-rank-eq--24bb4ee49624bc987706ad37.md) | 237 | `result-track:24bb4ee49624bc987706ad373cff90d22ab304fb4f72832c455a678f0cbd28ef` |
| 18 | `theorem` | [finrank_eq](../../../../mathematics/Algebra/Localization/Variantb424f937ff5cf09f195b020ab3373971c341ada014f156657aa1a1d4e84da85b.lean/declarations/finrank-eq--1d5883e1630dddce471289ad.md) | 261 | `result-track:1d5883e1630dddce471289ad2197bb56329ef69f0201d2cb3856b43de071f271` |
| 19 | `theorem` | [rank_eq](../../../../mathematics/Algebra/Localization/Variantb424f937ff5cf09f195b020ab3373971c341ada014f156657aa1a1d4e84da85b.lean/declarations/rank-eq--58a12929c1b6016cd72d6cef.md) | 264 | `result-track:58a12929c1b6016cd72d6ceffc4944f49d13f49d065a2441df58eeae79578409` |
| 20 | `lemma` | [aleph0_le_rank_of_isEmpty_oreSet](../../../../mathematics/Algebra/Localization/Variantb424f937ff5cf09f195b020ab3373971c341ada014f156657aa1a1d4e84da85b.lean/declarations/aleph0-le-rank-of-isempty-oreset--465e3c08ef9ff002dcaf3c66.md) | 278 | `result-track:465e3c08ef9ff002dcaf3c669b972984ff7f13bffa61aed3b2556619ca02bde6` |
| 21 | `lemma` | [nonempty_oreSet_of_strongRankCondition](../../../../mathematics/Algebra/Localization/Variantb424f937ff5cf09f195b020ab3373971c341ada014f156657aa1a1d4e84da85b.lean/declarations/nonempty-oreset-of-strongrankcondition--3378bbe19391f5c84265800c.md) | 306 | `result-track:3378bbe19391f5c84265800c46a95aa3c1920b58a7b3933abb449653c74b7263` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
