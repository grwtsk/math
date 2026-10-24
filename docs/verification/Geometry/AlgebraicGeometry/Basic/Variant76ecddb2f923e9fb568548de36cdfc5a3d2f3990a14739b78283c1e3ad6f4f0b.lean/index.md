# Verification target: GRWTSK.Geometry.AlgebraicGeometry.Basic.Variant76ecddb2f923e9fb568548de36cdfc5a3d2f3990a14739b78283c1e3ad6f4f0b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2c7901e4db37fccfef10e8f0f584ef5572c53512",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/Basic/Variant76ecddb2f923e9fb568548de36cdfc5a3d2f3990a14739b78283c1e3ad6f4f0b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant76ecddb2f923e9fb568548de36cdfc5a3d2f3990a14739b78283c1e3ad6f4f0b.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant76ecddb2f923e9fb568548de36cdfc5a3d2f3990a14739b78283c1e3ad6f4f0b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2c7901e4db37fccfef10e8f0f584ef5572c53512`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/Basic/Variant76ecddb2f923e9fb568548de36cdfc5a3d2f3990a14739b78283c1e3ad6f4f0b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/Basic/Variant76ecddb2f923e9fb568548de36cdfc5a3d2f3990a14739b78283c1e3ad6f4f0b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [residueFieldIsoBase](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant76ecddb2f923e9fb568548de36cdfc5a3d2f3990a14739b78283c1e3ad6f4f0b.lean/declarations/residuefieldisobase--e757ea9437056d8fcba48ab2.md) | 41 | `declaration-track:e757ea9437056d8fcba48ab2a6f88607df4b6943d39f83aed01ce6bdc6893fca` |
| 2 | `lemma` | [SpecMap_residueFieldIsoBase_inv](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant76ecddb2f923e9fb568548de36cdfc5a3d2f3990a14739b78283c1e3ad6f4f0b.lean/declarations/specmap-residuefieldisobase-inv--7057143b18ad1d79c1a3fe4d.md) | 54 | `result-track:7057143b18ad1d79c1a3fe4d2e8c0da4baaaf0a1ce6e3dd8669fd8ca4041f9cc` |
| 3 | `def` | [pointOfClosedPoint](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant76ecddb2f923e9fb568548de36cdfc5a3d2f3990a14739b78283c1e3ad6f4f0b.lean/declarations/pointofclosedpoint--cdcacaf4532fbafb8321e071.md) | 60 | `declaration-track:cdcacaf4532fbafb8321e071d14e5c30b338d6b7d4f2e1ef74b895fe2b32118c` |
| 4 | `lemma` | [pointOfClosedPoint_comp](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant76ecddb2f923e9fb568548de36cdfc5a3d2f3990a14739b78283c1e3ad6f4f0b.lean/declarations/pointofclosedpoint-comp--15d754455bb28111ccc57eff.md) | 64 | `result-track:15d754455bb28111ccc57eff92326b7cdb931992e68cc08367c28f176db73ba0` |
| 5 | `lemma` | [pointOfClosedPoint_apply](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant76ecddb2f923e9fb568548de36cdfc5a3d2f3990a14739b78283c1e3ad6f4f0b.lean/declarations/pointofclosedpoint-apply--075cfd11debfceb9816c6ce4.md) | 68 | `result-track:075cfd11debfceb9816c6ce4162c4613334120400bdd84f019513e0a31d6e1d1` |
| 6 | `def` | [pointEquivClosedPoint](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant76ecddb2f923e9fb568548de36cdfc5a3d2f3990a14739b78283c1e3ad6f4f0b.lean/declarations/pointequivclosedpoint--ead1ac3ea676a904bdae7a8a.md) | 76 | `declaration-track:ead1ac3ea676a904bdae7a8a0ee51467dfac1233d810c53dd5510aa3e38422b6` |
| 7 | `lemma` | [ext_of_apply_closedPoint_eq](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant76ecddb2f923e9fb568548de36cdfc5a3d2f3990a14739b78283c1e3ad6f4f0b.lean/declarations/ext-of-apply-closedpoint-eq--230267a0e81b1912a8451cb7.md) | 97 | `result-track:230267a0e81b1912a8451cb7d2b95197a919624e1b0ce69b0f216abfa67ea85f` |
| 8 | `lemma` | [ext_of_apply_eq](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant76ecddb2f923e9fb568548de36cdfc5a3d2f3990a14739b78283c1e3ad6f4f0b.lean/declarations/ext-of-apply-eq--0b8e28a60258023fcbe83700.md) | 108 | `result-track:0b8e28a60258023fcbe837004be50b9121f1582a2b49ab1e6c75aabc3eba2bb2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
