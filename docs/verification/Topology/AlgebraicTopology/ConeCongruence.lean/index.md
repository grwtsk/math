# Verification target: GRWTSK.Topology.AlgebraicTopology.ConeCongruence

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6299db1e2b3848e33a2b9e0753600cdcf37ca9c8",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/ConeCongruence.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Topology/AlgebraicTopology/ConeCongruence.lean/index.md) · [Full source](../../../../mathematics/Topology/AlgebraicTopology/ConeCongruence.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6299db1e2b3848e33a2b9e0753600cdcf37ca9c8`.

Source path: `GRWTSK/Topology/AlgebraicTopology/ConeCongruence.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/ConeCongruence.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Topology.AlgebraicTopology.CircleCone`](../../../../mathematics/Topology/AlgebraicTopology/CircleCone.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [radius](../../../../mathematics/Topology/AlgebraicTopology/ConeCongruence.lean/declarations/radius--35ba84d8f04ad6afb3c40bd9.md) | 24 | `declaration-track:35ba84d8f04ad6afb3c40bd912a9e105c77c222ba33b8ffde2098ae8ba961126` |
| 2 | `theorem` | [radius_coneMk](../../../../mathematics/Topology/AlgebraicTopology/ConeCongruence.lean/declarations/radius-conemk--da4bd286f6010c6070f8073a.md) | 31 | `result-track:da4bd286f6010c6070f8073a332c9808addc44cceb97751f639c4342526746ca` |
| 3 | `def` | [homeomorph](../../../../mathematics/Topology/AlgebraicTopology/ConeCongruence.lean/declarations/homeomorph--281da593f3fb2fd6e0b369df.md) | 35 | `declaration-track:281da593f3fb2fd6e0b369dfb1dbfe9f882c6f5135443cf3e305a6b1437c3e95` |
| 4 | `theorem` | [homeomorph_coneMk](../../../../mathematics/Topology/AlgebraicTopology/ConeCongruence.lean/declarations/homeomorph-conemk--3b35eb2e39f7a0fc2cae1b25.md) | 43 | `result-track:3b35eb2e39f7a0fc2cae1b25c3a22582b721319c393dc86d68148fb193d26f4b` |
| 5 | `theorem` | [radius_homeomorph](../../../../mathematics/Topology/AlgebraicTopology/ConeCongruence.lean/declarations/radius-homeomorph--e7185b5904262dfa21c8951a.md) | 46 | `result-track:e7185b5904262dfa21c8951a6c4d183c1587635eff8369403b18b52f281c7820` |
| 6 | `def` | [boundary](../../../../mathematics/Topology/AlgebraicTopology/ConeCongruence.lean/declarations/boundary--8123ca8db597412d2e1bb3e7.md) | 53 | `declaration-track:8123ca8db597412d2e1bb3e7d21b537c0825a6457fe310d6a6903bc4f660b1b4` |
| 7 | `theorem` | [homeomorph_boundary](../../../../mathematics/Topology/AlgebraicTopology/ConeCongruence.lean/declarations/homeomorph-boundary--1929def83a8bd4cbad36a2b0.md) | 55 | `result-track:1929def83a8bd4cbad36a2b0adc714b486704cb769f04ca518cf0e77417a4ba7` |
| 8 | `def` | [apex](../../../../mathematics/Topology/AlgebraicTopology/ConeCongruence.lean/declarations/apex--2d58f24c189dc3533a15fc9a.md) | 59 | `declaration-track:2d58f24c189dc3533a15fc9aed2bf1f8698b4b3d8ecab98684e364249aba182b` |
| 9 | `theorem` | [apex_eq](../../../../mathematics/Topology/AlgebraicTopology/ConeCongruence.lean/declarations/apex-eq--d3098da129f90d4c3d976140.md) | 62 | `result-track:d3098da129f90d4c3d976140f8abdaa1ae6f97c42f360fe11c08fcf5840e3b02` |
| 10 | `theorem` | [homeomorph_apex](../../../../mathematics/Topology/AlgebraicTopology/ConeCongruence.lean/declarations/homeomorph-apex--6a241d0a2bdda3b31f18de18.md) | 66 | `result-track:6a241d0a2bdda3b31f18de1862d4ee3fb9512c4632221f30b009a8e869e1c43f` |
| 11 | `theorem` | [homeomorph_refl](../../../../mathematics/Topology/AlgebraicTopology/ConeCongruence.lean/declarations/homeomorph-refl--e372744821316b158c2bdc23.md) | 69 | `result-track:e372744821316b158c2bdc23133644b6e976a0ee0f2d6d87baf8fe8423587a2f` |
| 12 | `theorem` | [homeomorph_trans](../../../../mathematics/Topology/AlgebraicTopology/ConeCongruence.lean/declarations/homeomorph-trans--3d7aa8fd89c59b0bf30b3a34.md) | 77 | `result-track:3d7aa8fd89c59b0bf30b3a348dec1b268bd0ebd435e655d1aac84d51de874ff7` |
| 13 | `theorem` | [homeomorph_symm](../../../../mathematics/Topology/AlgebraicTopology/ConeCongruence.lean/declarations/homeomorph-symm--842bd17d8a800749ca556bb7.md) | 85 | `result-track:842bd17d8a800749ca556bb7c9626031f8540a9692f7a578c973c42ba6840aaf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
