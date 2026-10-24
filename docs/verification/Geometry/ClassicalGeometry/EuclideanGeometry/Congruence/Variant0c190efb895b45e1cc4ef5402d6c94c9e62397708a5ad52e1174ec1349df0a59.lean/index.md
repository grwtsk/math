# Verification target: GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.Congruence.Variant0c190efb895b45e1cc4ef5402d6c94c9e62397708a5ad52e1174ec1349df0a59

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "20f78fc67e12a383a98c79984d5d87d915b79e9d",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Congruence/Variant0c190efb895b45e1cc4ef5402d6c94c9e62397708a5ad52e1174ec1349df0a59.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Congruence/Variant0c190efb895b45e1cc4ef5402d6c94c9e62397708a5ad52e1174ec1349df0a59.lean/index.md) · [Full source](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Congruence/Variant0c190efb895b45e1cc4ef5402d6c94c9e62397708a5ad52e1174ec1349df0a59.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `20f78fc67e12a383a98c79984d5d87d915b79e9d`.

Source path: `GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Congruence/Variant0c190efb895b45e1cc4ef5402d6c94c9e62397708a5ad52e1174ec1349df0a59.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ClassicalGeometry/EuclideanGeometry/Congruence/Variant0c190efb895b45e1cc4ef5402d6c94c9e62397708a5ad52e1174ec1349df0a59.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Geometry.Primitive` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CongruenceSignature](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Congruence/Variant0c190efb895b45e1cc4ef5402d6c94c9e62397708a5ad52e1174ec1349df0a59.lean/declarations/congruencesignature--a3fdba01f06690f1bd3e4044.md) | 16 | `declaration-track:a3fdba01f06690f1bd3e40448e54d8d0b4d9f23209d322182c2c3feeb78c52a8` |
| 2 | `def` | [SegmentCongruenceReflexive](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Congruence/Variant0c190efb895b45e1cc4ef5402d6c94c9e62397708a5ad52e1174ec1349df0a59.lean/declarations/segmentcongruencereflexive--dc4eab269f6eedaf9ce7816b.md) | 20 | `declaration-track:dc4eab269f6eedaf9ce7816b9f317cb3d8c554fb96a79c2c3bcd755a2cde9892` |
| 3 | `def` | [SegmentCongruenceSymmetric](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Congruence/Variant0c190efb895b45e1cc4ef5402d6c94c9e62397708a5ad52e1174ec1349df0a59.lean/declarations/segmentcongruencesymmetric--c5354fe756d32f0e8719dbc5.md) | 25 | `declaration-track:c5354fe756d32f0e8719dbc5eb10260222d5a27d9af198c102704f2ce9fe274f` |
| 4 | `def` | [SegmentCongruenceTransitive](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Congruence/Variant0c190efb895b45e1cc4ef5402d6c94c9e62397708a5ad52e1174ec1349df0a59.lean/declarations/segmentcongruencetransitive--496f7b3fbe75f171aca6d825.md) | 32 | `declaration-track:496f7b3fbe75f171aca6d8251f3301223033e3931f657f80a02bec4019987df2` |
| 5 | `def` | [AngleCongruenceReflexive](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Congruence/Variant0c190efb895b45e1cc4ef5402d6c94c9e62397708a5ad52e1174ec1349df0a59.lean/declarations/anglecongruencereflexive--0b354eec4c4a152413f49a49.md) | 40 | `declaration-track:0b354eec4c4a152413f49a4998a099c3839cb1f8225b17fe37a018e5f7dc6328` |
| 6 | `def` | [IsEquilateral](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Congruence/Variant0c190efb895b45e1cc4ef5402d6c94c9e62397708a5ad52e1174ec1349df0a59.lean/declarations/isequilateral--3db7d930d93682ac643e2954.md) | 46 | `declaration-track:3db7d930d93682ac643e29549db6c8516ba606ccd016a2b5491a517380c821d5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
