# Verification target: GRWTSK.Geometry.AlgebraicGeometry.Over.Variant7f31eef23a82134aefe972dff9c101d6c77e78417f0c7fea5ce35f2e82f5aa6c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "05c63a3f43b602fc583ebd6107eaf4158fe0522e",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/Over/Variant7f31eef23a82134aefe972dff9c101d6c77e78417f0c7fea5ce35f2e82f5aa6c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/Over/Variant7f31eef23a82134aefe972dff9c101d6c77e78417f0c7fea5ce35f2e82f5aa6c.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/Over/Variant7f31eef23a82134aefe972dff9c101d6c77e78417f0c7fea5ce35f2e82f5aa6c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `05c63a3f43b602fc583ebd6107eaf4158fe0522e`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/Over/Variant7f31eef23a82134aefe972dff9c101d6c77e78417f0c7fea5ce35f2e82f5aa6c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/Over/Variant7f31eef23a82134aefe972dff9c101d6c77e78417f0c7fea5ce35f2e82f5aa6c.lean.json)

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
| 1 | `abbrev` | [Over](../../../../../mathematics/Geometry/AlgebraicGeometry/Over/Variant7f31eef23a82134aefe972dff9c101d6c77e78417f0c7fea5ce35f2e82f5aa6c.lean/declarations/over--6d28a43f314915badab1beb5.md) | 36 | `declaration-track:6d28a43f314915badab1beb5355ea3cc3f2961d87e494f7bc13e4e505c52fe6d` |
| 2 | `abbrev` | [CanonicallyOver](../../../../../mathematics/Geometry/AlgebraicGeometry/Over/Variant7f31eef23a82134aefe972dff9c101d6c77e78417f0c7fea5ce35f2e82f5aa6c.lean/declarations/canonicallyover--b4b08481f3612489e42be498.md) | 42 | `declaration-track:b4b08481f3612489e42be498b11b5a55c51668688451b17b3f33fd473b6e088e` |
| 3 | `abbrev` | [Hom.IsOver](../../../../../mathematics/Geometry/AlgebraicGeometry/Over/Variant7f31eef23a82134aefe972dff9c101d6c77e78417f0c7fea5ce35f2e82f5aa6c.lean/declarations/hom-isover--450659dc8ecdb48ce4a04921.md) | 46 | `declaration-track:450659dc8ecdb48ce4a0492107be9692a2c5623d91f27b4573f0d756a7914fda` |
| 4 | `lemma` | [Hom.isOver_iff](../../../../../mathematics/Geometry/AlgebraicGeometry/Over/Variant7f31eef23a82134aefe972dff9c101d6c77e78417f0c7fea5ce35f2e82f5aa6c.lean/declarations/hom-isover-iff--5f793597ef73973cb3a4b8fd.md) | 49 | `result-track:5f793597ef73973cb3a4b8fd929a5a0833f865bcabf3be2505c932c18fc1860b` |
| 5 | `abbrev` | [asOver](../../../../../mathematics/Geometry/AlgebraicGeometry/Over/Variant7f31eef23a82134aefe972dff9c101d6c77e78417f0c7fea5ce35f2e82f5aa6c.lean/declarations/asover--9d21b0d458e769bc2538fb05.md) | 55 | `declaration-track:9d21b0d458e769bc2538fb0525a7ce1acb4b35acb1ebc2c668961b7217314eff` |
| 6 | `abbrev` | [Hom.asOver](../../../../../mathematics/Geometry/AlgebraicGeometry/Over/Variant7f31eef23a82134aefe972dff9c101d6c77e78417f0c7fea5ce35f2e82f5aa6c.lean/declarations/hom-asover--8ace05fb3eb9654415fafec9.md) | 58 | `declaration-track:8ace05fb3eb9654415fafec9f29570e81e77c687d620fa322c754ef8c3d50660` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
