# Verification target: GRWTSK.Algebra.Tower.Variant230ebea0a690d4bba47b2de2d3f37b14d06232d8fc817620b1cafac5fea9b1fb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "17e494e0fab9cfc426abddf06beb740065f98895",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Tower/Variant230ebea0a690d4bba47b2de2d3f37b14d06232d8fc817620b1cafac5fea9b1fb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Tower/Variant230ebea0a690d4bba47b2de2d3f37b14d06232d8fc817620b1cafac5fea9b1fb.lean/index.md) · [Full source](../../../../mathematics/Algebra/Tower/Variant230ebea0a690d4bba47b2de2d3f37b14d06232d8fc817620b1cafac5fea9b1fb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `17e494e0fab9cfc426abddf06beb740065f98895`.

Source path: `GRWTSK/Algebra/Tower/Variant230ebea0a690d4bba47b2de2d3f37b14d06232d8fc817620b1cafac5fea9b1fb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Tower/Variant230ebea0a690d4bba47b2de2d3f37b14d06232d8fc817620b1cafac5fea9b1fb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Subalgebra.Lattice` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Algebra.Tower` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [lmul_algebraMap](../../../../mathematics/Algebra/Tower/Variant230ebea0a690d4bba47b2de2d3f37b14d06232d8fc817620b1cafac5fea9b1fb.lean/declarations/lmul-algebramap--637042edca1e5fef8bfa1475.md) | 50 | `result-track:637042edca1e5fef8bfa14756fed1bb786f92a77fdee3318096c383bf10c8fea` |
| 2 | `instance` | [subalgebra](../../../../mathematics/Algebra/Tower/Variant230ebea0a690d4bba47b2de2d3f37b14d06232d8fc817620b1cafac5fea9b1fb.lean/declarations/subalgebra--1c5894ec16c666e9b372538d.md) | 62 | `declaration-track:1c5894ec16c666e9b372538d09b163ec6301b75ddc0a0d602a350ac6565d5080` |
| 3 | `instance` | [subalgebra'](../../../../mathematics/Algebra/Tower/Variant230ebea0a690d4bba47b2de2d3f37b14d06232d8fc817620b1cafac5fea9b1fb.lean/declarations/subalgebra--a513bca2086987ddccf83eb2.md) | 67 | `declaration-track:a513bca2086987ddccf83eb223398a10393a9ef5ec89443f2964271856a5fc41` |
| 4 | `def` | [restrictScalars](../../../../mathematics/Algebra/Tower/Variant230ebea0a690d4bba47b2de2d3f37b14d06232d8fc817620b1cafac5fea9b1fb.lean/declarations/restrictscalars--e26459b05573f3e04ea8bd95.md) | 87 | `declaration-track:e26459b05573f3e04ea8bd9592b9328582ea193dc68d1d8878711503dbf51e04` |
| 5 | `theorem` | [coe_restrictScalars](../../../../mathematics/Algebra/Tower/Variant230ebea0a690d4bba47b2de2d3f37b14d06232d8fc817620b1cafac5fea9b1fb.lean/declarations/coe-restrictscalars--f7d65db55a2f92b76d3cc0c3.md) | 94 | `result-track:f7d65db55a2f92b76d3cc0c3887238fd3f1b9cde85aba0179edb8af67c4c3731` |
| 6 | `theorem` | [restrictScalars_top](../../../../mathematics/Algebra/Tower/Variant230ebea0a690d4bba47b2de2d3f37b14d06232d8fc817620b1cafac5fea9b1fb.lean/declarations/restrictscalars-top--f93a565e0c477c128e7521e3.md) | 98 | `result-track:f93a565e0c477c128e7521e36e513aa096fc981fa42f6379937d7fc033a081e0` |
| 7 | `theorem` | [restrictScalars_toSubmodule](../../../../mathematics/Algebra/Tower/Variant230ebea0a690d4bba47b2de2d3f37b14d06232d8fc817620b1cafac5fea9b1fb.lean/declarations/restrictscalars-tosubmodule--f16ca371a34d98ff0ffd3e6a.md) | 102 | `result-track:f16ca371a34d98ff0ffd3e6a4af81efff099be8cdecbcea8bd5948b9eff636b5` |
| 8 | `theorem` | [mem_restrictScalars](../../../../mathematics/Algebra/Tower/Variant230ebea0a690d4bba47b2de2d3f37b14d06232d8fc817620b1cafac5fea9b1fb.lean/declarations/mem-restrictscalars--b06f7f241f93810b0ebf90a5.md) | 107 | `result-track:b06f7f241f93810b0ebf90a5e86bd204e797623e7b0729e4224a69732856c8ac` |
| 9 | `theorem` | [restrictScalars_injective](../../../../mathematics/Algebra/Tower/Variant230ebea0a690d4bba47b2de2d3f37b14d06232d8fc817620b1cafac5fea9b1fb.lean/declarations/restrictscalars-injective--f1d5453c31a481a3cedf2f9d.md) | 110 | `result-track:f1d5453c31a481a3cedf2f9dec8ae26020d6b8b22797b80d8209f8b639a374ae` |
| 10 | `def` | [ofRestrictScalars](../../../../mathematics/Algebra/Tower/Variant230ebea0a690d4bba47b2de2d3f37b14d06232d8fc817620b1cafac5fea9b1fb.lean/declarations/ofrestrictscalars--06fbe69e4bb07de350e33973.md) | 118 | `declaration-track:06fbe69e4bb07de350e33973a26592170f45cc1297b4b51576500f7b4ae6082e` |
| 11 | `lemma` | [range_isScalarTower_toAlgHom](../../../../mathematics/Algebra/Tower/Variant230ebea0a690d4bba47b2de2d3f37b14d06232d8fc817620b1cafac5fea9b1fb.lean/declarations/range-isscalartower-toalghom--6ffc31b77c99ef50275286db.md) | 126 | `result-track:6ffc31b77c99ef50275286dbd5f18401407f5e9c347e6725c1a742f387ea0bfe` |
| 12 | `theorem` | [adjoin_range_toAlgHom](../../../../mathematics/Algebra/Tower/Variant230ebea0a690d4bba47b2de2d3f37b14d06232d8fc817620b1cafac5fea9b1fb.lean/declarations/adjoin-range-toalghom--c444b739d713f667fecfe761.md) | 145 | `result-track:c444b739d713f667fecfe7611d8caf55ba50b72fed032fa090ca8e37b7fa2f8a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
