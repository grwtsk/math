# Verification target: GRWTSK.Algebra.LinearAlgebra.Bundle.Variant83d31897b6ce3531f67028ede3e8499acf6fa8aa8f7868c3b302b22c4dc440c2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "18e49d126b4964f6862159d15ade94902b7a529f",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Bundle/Variant83d31897b6ce3531f67028ede3e8499acf6fa8aa8f7868c3b302b22c4dc440c2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Bundle/Variant83d31897b6ce3531f67028ede3e8499acf6fa8aa8f7868c3b302b22c4dc440c2.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Bundle/Variant83d31897b6ce3531f67028ede3e8499acf6fa8aa8f7868c3b302b22c4dc440c2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `18e49d126b4964f6862159d15ade94902b7a529f`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Bundle/Variant83d31897b6ce3531f67028ede3e8499acf6fa8aa8f7868c3b302b22c4dc440c2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Bundle/Variant83d31897b6ce3531f67028ede3e8499acf6fa8aa8f7868c3b302b22c4dc440c2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [TotalSpace](../../../../../mathematics/Algebra/LinearAlgebra/Bundle/Variant83d31897b6ce3531f67028ede3e8499acf6fa8aa8f7868c3b302b22c4dc440c2.lean/declarations/totalspace--a1b77d0f1d984c8fb9a1e736.md) | 60 | `declaration-track:a1b77d0f1d984c8fb9a1e736771ea86219d196d0729dfdf78ade1725838a7131` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Bundle/Variant83d31897b6ce3531f67028ede3e8499acf6fa8aa8f7868c3b302b22c4dc440c2.lean/declarations/instance--925581170d37d84b057d7c9a.md) | 67 | `declaration-track:925581170d37d84b057d7c9a984da5a38da45ad6f33cd033039e44a39753779f` |
| 3 | `abbrev` | [TotalSpace.mk'](../../../../../mathematics/Algebra/LinearAlgebra/Bundle/Variant83d31897b6ce3531f67028ede3e8499acf6fa8aa8f7868c3b302b22c4dc440c2.lean/declarations/totalspace-mk--1b84894dfbd3a78b160afb91.md) | 75 | `declaration-track:1b84894dfbd3a78b160afb915b5178fbd7a4f09645133793986b2abb30d491a3` |
| 4 | `theorem` | [TotalSpace.mk_cast](../../../../../mathematics/Algebra/LinearAlgebra/Bundle/Variant83d31897b6ce3531f67028ede3e8499acf6fa8aa8f7868c3b302b22c4dc440c2.lean/declarations/totalspace-mk-cast--137022b90bd959311480b9dd.md) | 77 | `result-track:137022b90bd959311480b9dd1186cffd23445f4642818208b2e302422c64c775` |
| 5 | `theorem` | [TotalSpace.mk_inj](../../../../../mathematics/Algebra/LinearAlgebra/Bundle/Variant83d31897b6ce3531f67028ede3e8499acf6fa8aa8f7868c3b302b22c4dc440c2.lean/declarations/totalspace-mk-inj--0dce2aba52efeb831e45d102.md) | 82 | `result-track:0dce2aba52efeb831e45d1025674c7214875e3693548e57f69caff5a6f3ac8c2` |
| 6 | `theorem` | [TotalSpace.mk_injective](../../../../../mathematics/Algebra/LinearAlgebra/Bundle/Variant83d31897b6ce3531f67028ede3e8499acf6fa8aa8f7868c3b302b22c4dc440c2.lean/declarations/totalspace-mk-injective--31fc5f53e74b011bf29b2453.md) | 85 | `result-track:31fc5f53e74b011bf29b24534429e472fbad3ebb37c0375c698ce899207255d7` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Bundle/Variant83d31897b6ce3531f67028ede3e8499acf6fa8aa8f7868c3b302b22c4dc440c2.lean/declarations/instance--22a8215ff9a0c380161f1f82.md) | 88 | `declaration-track:22a8215ff9a0c380161f1f82701f39701e6f421920b708184690c01fd10dfe69` |
| 8 | `theorem` | [TotalSpace.eta](../../../../../mathematics/Algebra/LinearAlgebra/Bundle/Variant83d31897b6ce3531f67028ede3e8499acf6fa8aa8f7868c3b302b22c4dc440c2.lean/declarations/totalspace-eta--8679dec761d3b63842fae99a.md) | 95 | `result-track:8679dec761d3b63842fae99aa56480f516bef400f0e064076f08795910480d90` |
| 9 | `theorem` | [TotalSpace.exists](../../../../../mathematics/Algebra/LinearAlgebra/Bundle/Variant83d31897b6ce3531f67028ede3e8499acf6fa8aa8f7868c3b302b22c4dc440c2.lean/declarations/totalspace-exists--7cc67fab90aab7760f1aa4fe.md) | 99 | `result-track:7cc67fab90aab7760f1aa4fe352204344b36aa48cd4a6496ef026d484bad6495` |
| 10 | `theorem` | [TotalSpace.range_mk](../../../../../mathematics/Algebra/LinearAlgebra/Bundle/Variant83d31897b6ce3531f67028ede3e8499acf6fa8aa8f7868c3b302b22c4dc440c2.lean/declarations/totalspace-range-mk--313a812165950bd2ec88d84a.md) | 103 | `result-track:313a812165950bd2ec88d84a7601bbd604fd10b47d1bba3b0d869827ae278955` |
| 11 | `def` | [Trivial](../../../../../mathematics/Algebra/LinearAlgebra/Bundle/Variant83d31897b6ce3531f67028ede3e8499acf6fa8aa8f7868c3b302b22c4dc440c2.lean/declarations/trivial--15666b4c8031dce8b8e459c1.md) | 115 | `declaration-track:15666b4c8031dce8b8e459c11d167b332868818896da4af09610be040facb98a` |
| 12 | `def` | [TotalSpace.trivialSnd](../../../../../mathematics/Algebra/LinearAlgebra/Bundle/Variant83d31897b6ce3531f67028ede3e8499acf6fa8aa8f7868c3b302b22c4dc440c2.lean/declarations/totalspace-trivialsnd--2e06aecd3fec5aeaf2c4f8a5.md) | 119 | `declaration-track:2e06aecd3fec5aeaf2c4f8a5d4f5c4ff02a843a6aaef846bc0b68b0597bb8bf7` |
| 13 | `def` | [TotalSpace.toProd](../../../../../mathematics/Algebra/LinearAlgebra/Bundle/Variant83d31897b6ce3531f67028ede3e8499acf6fa8aa8f7868c3b302b22c4dc440c2.lean/declarations/totalspace-toprod--6f27008359aeade57c75ee52.md) | 125 | `declaration-track:6f27008359aeade57c75ee52bcbed03b942c7fe179e76e11cb04dd7234831b2a` |
| 14 | `def` | [Pullback](../../../../../mathematics/Algebra/LinearAlgebra/Bundle/Variant83d31897b6ce3531f67028ede3e8499acf6fa8aa8f7868c3b302b22c4dc440c2.lean/declarations/pullback--d97c481dbfdc5a75f992e7d3.md) | 138 | `declaration-track:d97c481dbfdc5a75f992e7d3726fe777954058fec0e5bc1b565d81e8f1c8640a` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Bundle/Variant83d31897b6ce3531f67028ede3e8499acf6fa8aa8f7868c3b302b22c4dc440c2.lean/declarations/instance--a033483176b8463ccc2d8d66.md) | 144 | `declaration-track:a033483176b8463ccc2d8d667456fdb358e5fe416067bc8ce39a639da30a7e45` |
| 16 | `def` | [pullbackTotalSpaceEmbedding](../../../../../mathematics/Algebra/LinearAlgebra/Bundle/Variant83d31897b6ce3531f67028ede3e8499acf6fa8aa8f7868c3b302b22c4dc440c2.lean/declarations/pullbacktotalspaceembedding--d60b639c2e618db91d57462e.md) | 149 | `declaration-track:d60b639c2e618db91d57462eea2e63379423e7794d92daed0a7fd0bcdf827c37` |
| 17 | `def` | [Pullback.lift](../../../../../mathematics/Algebra/LinearAlgebra/Bundle/Variant83d31897b6ce3531f67028ede3e8499acf6fa8aa8f7868c3b302b22c4dc440c2.lean/declarations/pullback-lift--0e497ddbef46998bfa5c036d.md) | 155 | `declaration-track:0e497ddbef46998bfa5c036dc869927a81abfaa108f7133440c5e34169dcb610` |
| 18 | `theorem` | [Pullback.lift_mk](../../../../../mathematics/Algebra/LinearAlgebra/Bundle/Variant83d31897b6ce3531f67028ede3e8499acf6fa8aa8f7868c3b302b22c4dc440c2.lean/declarations/pullback-lift-mk--2905b9102e581869742e9c10.md) | 159 | `result-track:2905b9102e581869742e9c10e7f9e9d57121c5007bace414fe58bbabc6ee5560` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
