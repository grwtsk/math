# Verification target: GRWTSK.Algebra.Count.Variantaf08fbf53503e0cc9ef4d79d2fed1f6a5fe8aa2eba1049bfe6903e15e47f90d2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a50bfb0b40361936099dce818a245deb19c8297d",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Count/Variantaf08fbf53503e0cc9ef4d79d2fed1f6a5fe8aa2eba1049bfe6903e15e47f90d2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Count/Variantaf08fbf53503e0cc9ef4d79d2fed1f6a5fe8aa2eba1049bfe6903e15e47f90d2.lean/index.md) · [Full source](../../../../mathematics/Algebra/Count/Variantaf08fbf53503e0cc9ef4d79d2fed1f6a5fe8aa2eba1049bfe6903e15e47f90d2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a50bfb0b40361936099dce818a245deb19c8297d`.

Source path: `GRWTSK/Algebra/Count/Variantaf08fbf53503e0cc9ef4d79d2fed1f6a5fe8aa2eba1049bfe6903e15e47f90d2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Count/Variantaf08fbf53503e0cc9ef4d79d2fed1f6a5fe8aa2eba1049bfe6903e15e47f90d2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.FreeMonoid.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.TypeTags.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [countP'](../../../../mathematics/Algebra/Count/Variantaf08fbf53503e0cc9ef4d79d2fed1f6a5fe8aa2eba1049bfe6903e15e47f90d2.lean/declarations/countp--7f8d0801caeda37318e14919.md) | 32 | `declaration-track:7f8d0801caeda37318e14919dd451a3ac5e8af2aa981e8202fb85f5a7509a5a4` |
| 2 | `lemma` | [countP'_one](../../../../mathematics/Algebra/Count/Variantaf08fbf53503e0cc9ef4d79d2fed1f6a5fe8aa2eba1049bfe6903e15e47f90d2.lean/declarations/countp-one--10ae0e5b0060117db3f41324.md) | 35 | `result-track:10ae0e5b0060117db3f41324cb55a35e716a1c3f65e64ec23c0dce5db2d2832e` |
| 3 | `lemma` | [countP'_mul](../../../../mathematics/Algebra/Count/Variantaf08fbf53503e0cc9ef4d79d2fed1f6a5fe8aa2eba1049bfe6903e15e47f90d2.lean/declarations/countp-mul--1f475721eb868bacd250efa1.md) | 38 | `result-track:1f475721eb868bacd250efa1ab6b7ca9e3fed23c35f2040bd7a89a91ca5898d7` |
| 4 | `def` | [countP](../../../../mathematics/Algebra/Count/Variantaf08fbf53503e0cc9ef4d79d2fed1f6a5fe8aa2eba1049bfe6903e15e47f90d2.lean/declarations/countp--981d10c58ec957bfb43f1ca1.md) | 43 | `declaration-track:981d10c58ec957bfb43f1ca1923a0ae7d6e5c879b69ad488796c3fc208ea8e71` |
| 5 | `theorem` | [countP_apply](../../../../mathematics/Algebra/Count/Variantaf08fbf53503e0cc9ef4d79d2fed1f6a5fe8aa2eba1049bfe6903e15e47f90d2.lean/declarations/countp-apply--7e989c82b3dbd3e64bf59b46.md) | 50 | `result-track:7e989c82b3dbd3e64bf59b46d5aa5444ec6bd5e8c31b2278115c1ccab5bbc0d7` |
| 6 | `lemma` | [countP_of](../../../../mathematics/Algebra/Count/Variantaf08fbf53503e0cc9ef4d79d2fed1f6a5fe8aa2eba1049bfe6903e15e47f90d2.lean/declarations/countp-of--35fd5cbb8d803c82944a4134.md) | 52 | `result-track:35fd5cbb8d803c82944a4134f3ddd98d7ec50b819c318cbd11537ce2a8c2ac13` |
| 7 | `def` | [count](../../../../mathematics/Algebra/Count/Variantaf08fbf53503e0cc9ef4d79d2fed1f6a5fe8aa2eba1049bfe6903e15e47f90d2.lean/declarations/count--410d84a850b3f7a4dbb290b3.md) | 59 | `declaration-track:410d84a850b3f7a4dbb290b39dfe5f2b9ad54cbf77eebb7fb89875e6f9cd46c0` |
| 8 | `theorem` | [count_apply](../../../../mathematics/Algebra/Count/Variantaf08fbf53503e0cc9ef4d79d2fed1f6a5fe8aa2eba1049bfe6903e15e47f90d2.lean/declarations/count-apply--8f98a7976098c1dbc0522c54.md) | 61 | `result-track:8f98a7976098c1dbc0522c54e3090a058ae85b0e4534a34e1aa9857517316f23` |
| 9 | `theorem` | [count_of](../../../../mathematics/Algebra/Count/Variantaf08fbf53503e0cc9ef4d79d2fed1f6a5fe8aa2eba1049bfe6903e15e47f90d2.lean/declarations/count-of--f64d5e6d34a940c7a0c30a3c.md) | 64 | `result-track:f64d5e6d34a940c7a0c30a3c1d380e7c3216a9f5717b13a8f589b2c998618380` |
| 10 | `def` | [countP](../../../../mathematics/Algebra/Count/Variantaf08fbf53503e0cc9ef4d79d2fed1f6a5fe8aa2eba1049bfe6903e15e47f90d2.lean/declarations/countp--6571fe053e521a94fc4b4513.md) | 73 | `declaration-track:6571fe053e521a94fc4b4513ac4c413472d0b4ca869aef3439c2e895646b2a25` |
| 11 | `theorem` | [countP_apply](../../../../mathematics/Algebra/Count/Variantaf08fbf53503e0cc9ef4d79d2fed1f6a5fe8aa2eba1049bfe6903e15e47f90d2.lean/declarations/countp-apply--833f12d3ae60b19e2a45f887.md) | 78 | `result-track:833f12d3ae60b19e2a45f88754576ae0d2816a9159a879962d492da8988535c1` |
| 12 | `theorem` | [countP_of](../../../../mathematics/Algebra/Count/Variantaf08fbf53503e0cc9ef4d79d2fed1f6a5fe8aa2eba1049bfe6903e15e47f90d2.lean/declarations/countp-of--6a0591350c0dc72d784c7600.md) | 80 | `result-track:6a0591350c0dc72d784c7600cbb67883297445916c755b4f27bfed4e4c0e771a` |
| 13 | `def` | [count](../../../../mathematics/Algebra/Count/Variantaf08fbf53503e0cc9ef4d79d2fed1f6a5fe8aa2eba1049bfe6903e15e47f90d2.lean/declarations/count--e9d2d6f6d1f1e9d17207e38f.md) | 86 | `declaration-track:e9d2d6f6d1f1e9d17207e38f6fe6a00f4fe5fe544c9a849004727b4b5bf2b1a8` |
| 14 | `lemma` | [count_of](../../../../mathematics/Algebra/Count/Variantaf08fbf53503e0cc9ef4d79d2fed1f6a5fe8aa2eba1049bfe6903e15e47f90d2.lean/declarations/count-of--97459cd79b04d4dbfbdba9c7.md) | 88 | `result-track:97459cd79b04d4dbfbdba9c7844efbbf5978a1b93e0d50842da15a3962b76a1f` |
| 15 | `theorem` | [count_apply](../../../../mathematics/Algebra/Count/Variantaf08fbf53503e0cc9ef4d79d2fed1f6a5fe8aa2eba1049bfe6903e15e47f90d2.lean/declarations/count-apply--7c3331d8799b6047aa3e9175.md) | 93 | `result-track:7c3331d8799b6047aa3e9175647eac12e5ec042467a75863bfc7f4d937f0f8fd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
