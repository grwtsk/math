# Verification target: GRWTSK.Algebra.GroupTheory.ExistsOfLE.Variant81e6f8836b8b5c9b6a556c8ec9d88193596f5d68b0af084539c8f040c16fffa0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e9db2f0cc381c3f8ca980e7f8bc6cd52e1c7d46c",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/ExistsOfLE/Variant81e6f8836b8b5c9b6a556c8ec9d88193596f5d68b0af084539c8f040c16fffa0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/ExistsOfLE/Variant81e6f8836b8b5c9b6a556c8ec9d88193596f5d68b0af084539c8f040c16fffa0.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/ExistsOfLE/Variant81e6f8836b8b5c9b6a556c8ec9d88193596f5d68b0af084539c8f040c16fffa0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e9db2f0cc381c3f8ca980e7f8bc6cd52e1c7d46c`.

Source path: `GRWTSK/Algebra/GroupTheory/ExistsOfLE/Variant81e6f8836b8b5c9b6a556c8ec9d88193596f5d68b0af084539c8f040c16fffa0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/ExistsOfLE/Variant81e6f8836b8b5c9b6a556c8ec9d88193596f5d68b0af084539c8f040c16fffa0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Monoid.Unbundled.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.MinMax` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [ExistsAddOfLE](../../../../../mathematics/Algebra/GroupTheory/ExistsOfLE/Variant81e6f8836b8b5c9b6a556c8ec9d88193596f5d68b0af084539c8f040c16fffa0.lean/declarations/existsaddofle--75c96a76e373c54056f89ee8.md) | 32 | `declaration-track:75c96a76e373c54056f89ee87c7ea1217bf407ec86f0793411865bdb521a54dc` |
| 2 | `class` | [ExistsMulOfLE](../../../../../mathematics/Algebra/GroupTheory/ExistsOfLE/Variant81e6f8836b8b5c9b6a556c8ec9d88193596f5d68b0af084539c8f040c16fffa0.lean/declarations/existsmulofle--30c1313d969abf1ec690d1bb.md) | 40 | `declaration-track:30c1313d969abf1ec690d1bb36ddf7630b5449651ae29ded922727d69931ad91` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/ExistsOfLE/Variant81e6f8836b8b5c9b6a556c8ec9d88193596f5d68b0af084539c8f040c16fffa0.lean/declarations/instance--bcfc91184c4af1d1acd0ec64.md) | 49 | `declaration-track:bcfc91184c4af1d1acd0ec64e827f8e9904bc0f17f6157a042c62fee4005a148` |
| 4 | `lemma` | [exists_one_le_mul_of_le](../../../../../mathematics/Algebra/GroupTheory/ExistsOfLE/Variant81e6f8836b8b5c9b6a556c8ec9d88193596f5d68b0af084539c8f040c16fffa0.lean/declarations/exists-one-le-mul-of-le--757d9b1031aa77879dec1262.md) | 55 | `result-track:757d9b1031aa77879dec1262e008a91fde31c41b3431d9723f1fe7710aff6e9a` |
| 5 | `lemma` | [exists_one_lt_mul_of_lt'](../../../../../mathematics/Algebra/GroupTheory/ExistsOfLE/Variant81e6f8836b8b5c9b6a556c8ec9d88193596f5d68b0af084539c8f040c16fffa0.lean/declarations/exists-one-lt-mul-of-lt--cd361a74de9d53545e799b64.md) | 59 | `result-track:cd361a74de9d53545e799b643ade9dd8154f7b90c55bc7691dedd8939b8d53a1` |
| 6 | `lemma` | [le_iff_exists_one_le_mul](../../../../../mathematics/Algebra/GroupTheory/ExistsOfLE/Variant81e6f8836b8b5c9b6a556c8ec9d88193596f5d68b0af084539c8f040c16fffa0.lean/declarations/le-iff-exists-one-le-mul--082bb0353c9398d74469825e.md) | 63 | `result-track:082bb0353c9398d74469825e9af390fa57918dc18e42661fd4009b04d2a2aed1` |
| 7 | `lemma` | [lt_iff_exists_one_lt_mul](../../../../../mathematics/Algebra/GroupTheory/ExistsOfLE/Variant81e6f8836b8b5c9b6a556c8ec9d88193596f5d68b0af084539c8f040c16fffa0.lean/declarations/lt-iff-exists-one-lt-mul--0b3207311ba657e65d1dbf51.md) | 67 | `result-track:0b3207311ba657e65d1dbf51b0cb6f3c232513a1c7e58d6693858c6a87d55ce4` |
| 8 | `theorem` | [le_of_forall_one_lt_le_mul](../../../../../mathematics/Algebra/GroupTheory/ExistsOfLE/Variant81e6f8836b8b5c9b6a556c8ec9d88193596f5d68b0af084539c8f040c16fffa0.lean/declarations/le-of-forall-one-lt-le-mul--f766616a4b4c6c37e71169d6.md) | 79 | `result-track:f766616a4b4c6c37e71169d6803b054cad0adf25ae5b73d501d28b8e443983c5` |
| 9 | `theorem` | [le_of_forall_one_lt_lt_mul'](../../../../../mathematics/Algebra/GroupTheory/ExistsOfLE/Variant81e6f8836b8b5c9b6a556c8ec9d88193596f5d68b0af084539c8f040c16fffa0.lean/declarations/le-of-forall-one-lt-lt-mul--fe22ee0470ccd930556ce4c3.md) | 85 | `result-track:fe22ee0470ccd930556ce4c3f7dbe44dbef18f42a60861f595498da12b843e75` |
| 10 | `theorem` | [le_iff_forall_one_lt_lt_mul'](../../../../../mathematics/Algebra/GroupTheory/ExistsOfLE/Variant81e6f8836b8b5c9b6a556c8ec9d88193596f5d68b0af084539c8f040c16fffa0.lean/declarations/le-iff-forall-one-lt-lt-mul--b9a683a46dc2dfbcc4dad92f.md) | 89 | `result-track:b9a683a46dc2dfbcc4dad92fda554f9953d0340a5ba6915fc3165b9fea7ceb06` |
| 11 | `theorem` | [le_iff_forall_one_lt_le_mul](../../../../../mathematics/Algebra/GroupTheory/ExistsOfLE/Variant81e6f8836b8b5c9b6a556c8ec9d88193596f5d68b0af084539c8f040c16fffa0.lean/declarations/le-iff-forall-one-lt-le-mul--214c497f8bccc07834726f70.md) | 94 | `result-track:214c497f8bccc07834726f70d5ae8a70413c6a84d88b23a49328078ed23eac70` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
