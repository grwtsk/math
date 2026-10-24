# Verification target: GRWTSK.Geometry.AlgebraicGeometry.Flat.Variant13770c3e362f9a23d49152c8e739615028f03e21bb7f35a62ac858d691c12d58

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7419d6db5c35f1a6e1b750bb5671d6ce359e263a",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/Flat/Variant13770c3e362f9a23d49152c8e739615028f03e21bb7f35a62ac858d691c12d58.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/Flat/Variant13770c3e362f9a23d49152c8e739615028f03e21bb7f35a62ac858d691c12d58.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/Flat/Variant13770c3e362f9a23d49152c8e739615028f03e21bb7f35a62ac858d691c12d58.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7419d6db5c35f1a6e1b750bb5671d6ce359e263a`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/Flat/Variant13770c3e362f9a23d49152c8e739615028f03e21bb7f35a62ac858d691c12d58.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/Flat/Variant13770c3e362f9a23d49152c8e739615028f03e21bb7f35a62ac858d691c12d58.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicGeometry.Morphisms.RingHomProperties` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicGeometry.Morphisms.QuasiCompact` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicGeometry.Morphisms.Affine` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicGeometry.PullbackCarrier` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.RingHom.Flat` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Flat](../../../../../mathematics/Geometry/AlgebraicGeometry/Flat/Variant13770c3e362f9a23d49152c8e739615028f03e21bb7f35a62ac858d691c12d58.lean/declarations/flat--3c5564d54d7d7103ffeda0b6.md) | 38 | `declaration-track:3c5564d54d7d7103ffeda0b659aaf54bce5b64982da20a6cca7fe691676d866d` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Flat/Variant13770c3e362f9a23d49152c8e739615028f03e21bb7f35a62ac858d691c12d58.lean/declarations/instance--4b9897bf22b2ec582446654b.md) | 44 | `declaration-track:4b9897bf22b2ec582446654bf44096574fffc35f7e17de0785cb93ac9f842cb3` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Flat/Variant13770c3e362f9a23d49152c8e739615028f03e21bb7f35a62ac858d691c12d58.lean/declarations/instance--f9e6fd7412b2a5c0428f72ca.md) | 50 | `declaration-track:f9e6fd7412b2a5c0428f72ca75cf4bf7404958d3420a0ea62e8f9e797dbff189` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Flat/Variant13770c3e362f9a23d49152c8e739615028f03e21bb7f35a62ac858d691c12d58.lean/declarations/instance--15de31d1eb5b9b1ee8a6be27.md) | 54 | `declaration-track:15de31d1eb5b9b1ee8a6be27e2697a3385b03528ba8fa3cac7844e73b4c10fc9` |
| 5 | `instance` | [comp](../../../../../mathematics/Geometry/AlgebraicGeometry/Flat/Variant13770c3e362f9a23d49152c8e739615028f03e21bb7f35a62ac858d691c12d58.lean/declarations/comp--ecc588809b249b168217077e.md) | 57 | `declaration-track:ecc588809b249b168217077e2c77cdffb4acbd39ab21267248dc5122d0ee6255` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Flat/Variant13770c3e362f9a23d49152c8e739615028f03e21bb7f35a62ac858d691c12d58.lean/declarations/instance--838f8d116f79fe5c05ed2c0d.md) | 61 | `declaration-track:838f8d116f79fe5c05ed2c0dcd9d116bf528e1966c40939d45b375d88e1477fa` |
| 7 | `instance` | [isStableUnderBaseChange](../../../../../mathematics/Geometry/AlgebraicGeometry/Flat/Variant13770c3e362f9a23d49152c8e739615028f03e21bb7f35a62ac858d691c12d58.lean/declarations/isstableunderbasechange--063833534f869ab77014f565.md) | 64 | `declaration-track:063833534f869ab77014f565772f5a94206b0afe8ac93bb120b0c1f8a49f799a` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Flat/Variant13770c3e362f9a23d49152c8e739615028f03e21bb7f35a62ac858d691c12d58.lean/declarations/instance--511ea1b1e099ab1f12f6f354.md) | 67 | `declaration-track:511ea1b1e099ab1f12f6f354618aa2d0665b8bfc788fe7675af9d1a5a1101b01` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Flat/Variant13770c3e362f9a23d49152c8e739615028f03e21bb7f35a62ac858d691c12d58.lean/declarations/instance--dc4bf5b1411b053967dbb748.md) | 70 | `declaration-track:dc4bf5b1411b053967dbb748bb9bc4cbb7c4a1a2795b5be327054e05dae1234d` |
| 10 | `lemma` | [of_stalkMap](../../../../../mathematics/Geometry/AlgebraicGeometry/Flat/Variant13770c3e362f9a23d49152c8e739615028f03e21bb7f35a62ac858d691c12d58.lean/declarations/of-stalkmap--91f86dd945b52e09419e4260.md) | 73 | `result-track:91f86dd945b52e09419e42602528eb58bd9cae336c9ec73b37260bb2a8ef8b0f` |
| 11 | `lemma` | [stalkMap](../../../../../mathematics/Geometry/AlgebraicGeometry/Flat/Variant13770c3e362f9a23d49152c8e739615028f03e21bb7f35a62ac858d691c12d58.lean/declarations/stalkmap--4c8dfa577689b18e37fc1ba9.md) | 76 | `result-track:4c8dfa577689b18e37fc1ba9f3d47014d579737933ad8c634a5ad2341075cd00` |
| 12 | `lemma` | [iff_flat_stalkMap](../../../../../mathematics/Geometry/AlgebraicGeometry/Flat/Variant13770c3e362f9a23d49152c8e739615028f03e21bb7f35a62ac858d691c12d58.lean/declarations/iff-flat-stalkmap--e27a22f5fb619de38b8ac869.md) | 80 | `result-track:e27a22f5fb619de38b8ac869bb7692b3575b8bb9c3c2afcb402250a13996fb9e` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Flat/Variant13770c3e362f9a23d49152c8e739615028f03e21bb7f35a62ac858d691c12d58.lean/declarations/instance--4140b7c34698a26090d77817.md) | 83 | `declaration-track:4140b7c34698a26090d778177e2e30f94fc14981b41fd60ac6eb6d78d70f87f6` |
| 14 | `lemma` | [isQuotientMap_of_surjective](../../../../../mathematics/Geometry/AlgebraicGeometry/Flat/Variant13770c3e362f9a23d49152c8e739615028f03e21bb7f35a62ac858d691c12d58.lean/declarations/isquotientmap-of-surjective--ce104d7c7e1c879cc81a6237.md) | 89 | `result-track:ce104d7c7e1c879cc81a6237cb490898d259b32f9109908eb7d58b312ffacaf4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
