# Verification target: GRWTSK.Analysis.MeasureTheory.Defs.Variant9dbf75784f93edcdcaa88f5182768f35c2d0265d1b5d66d8b376467d0cc84561

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5f6f22d2f60f2e31d08f38eb78ed76d7076e4435",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Defs/Variant9dbf75784f93edcdcaa88f5182768f35c2d0265d1b5d66d8b376467d0cc84561.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Defs/Variant9dbf75784f93edcdcaa88f5182768f35c2d0265d1b5d66d8b376467d0cc84561.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Defs/Variant9dbf75784f93edcdcaa88f5182768f35c2d0265d1b5d66d8b376467d0cc84561.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5f6f22d2f60f2e31d08f38eb78ed76d7076e4435`.

Source path: `GRWTSK/Analysis/MeasureTheory/Defs/Variant9dbf75784f93edcdcaa88f5182768f35c2d0265d1b5d66d8b376467d0cc84561.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Defs/Variant9dbf75784f93edcdcaa88f5182768f35c2d0265d1b5d66d8b376467d0cc84561.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.Map` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [VAddInvariantMeasure](../../../../../mathematics/Analysis/MeasureTheory/Defs/Variant9dbf75784f93edcdcaa88f5182768f35c2d0265d1b5d66d8b376467d0cc84561.lean/declarations/vaddinvariantmeasure--24c7ce480201ddc6fcda0c9c.md) | 47 | `declaration-track:24c7ce480201ddc6fcda0c9c934022a9d8ecd5fd198ef935d0156953a8f97f11` |
| 2 | `class` | [SMulInvariantMeasure](../../../../../mathematics/Analysis/MeasureTheory/Defs/Variant9dbf75784f93edcdcaa88f5182768f35c2d0265d1b5d66d8b376467d0cc84561.lean/declarations/smulinvariantmeasure--03c820e51e3c52e6dca85388.md) | 55 | `declaration-track:03c820e51e3c52e6dca85388bae36b1b964dba3d2e7b915036f44b7b69e3ca6b` |
| 3 | `class` | [IsAddLeftInvariant](../../../../../mathematics/Analysis/MeasureTheory/Defs/Variant9dbf75784f93edcdcaa88f5182768f35c2d0265d1b5d66d8b376467d0cc84561.lean/declarations/isaddleftinvariant--2f17328121b28bfb6ae48da8.md) | 67 | `declaration-track:2f17328121b28bfb6ae48da893812b5433381e776812a88cb0079857ec8e3d46` |
| 4 | `class` | [IsMulLeftInvariant](../../../../../mathematics/Analysis/MeasureTheory/Defs/Variant9dbf75784f93edcdcaa88f5182768f35c2d0265d1b5d66d8b376467d0cc84561.lean/declarations/ismulleftinvariant--6441f6e4412b0e365511d98c.md) | 73 | `declaration-track:6441f6e4412b0e365511d98c057b0b0f2ace2f373d2eff255868accb3b008bed` |
| 5 | `class` | [IsAddRightInvariant](../../../../../mathematics/Analysis/MeasureTheory/Defs/Variant9dbf75784f93edcdcaa88f5182768f35c2d0265d1b5d66d8b376467d0cc84561.lean/declarations/isaddrightinvariant--f16a1170531d374ef6e0b6a2.md) | 78 | `declaration-track:f16a1170531d374ef6e0b6a2910d5ac08eb6c4ce8047a5921f0cf854a1cb96ad` |
| 6 | `class` | [IsMulRightInvariant](../../../../../mathematics/Analysis/MeasureTheory/Defs/Variant9dbf75784f93edcdcaa88f5182768f35c2d0265d1b5d66d8b376467d0cc84561.lean/declarations/ismulrightinvariant--b290ea504bbf4749ebbbe4a4.md) | 84 | `declaration-track:b290ea504bbf4749ebbbe4a489310b26a7fce6a1197db870d861f750d78fff18` |
| 7 | `instance` | [IsMulLeftInvariant.smulInvariantMeasure](../../../../../mathematics/Analysis/MeasureTheory/Defs/Variant9dbf75784f93edcdcaa88f5182768f35c2d0265d1b5d66d8b376467d0cc84561.lean/declarations/ismulleftinvariant-smulinvariantmeasure--94404e3a4c5956a176802418.md) | 90 | `declaration-track:94404e3a4c5956a1768024181f1b31864fd09de49a8f47b2ea84056aacd6df04` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Defs/Variant9dbf75784f93edcdcaa88f5182768f35c2d0265d1b5d66d8b376467d0cc84561.lean/declarations/instance--e59d664dfa3e6b37a6edd613.md) | 95 | `declaration-track:e59d664dfa3e6b37a6edd61399b5a5ca475c6e6b22b9799c57a7e85fded23d05` |
| 9 | `instance` | [IsMulRightInvariant.toSMulInvariantMeasure_op](../../../../../mathematics/Analysis/MeasureTheory/Defs/Variant9dbf75784f93edcdcaa88f5182768f35c2d0265d1b5d66d8b376467d0cc84561.lean/declarations/ismulrightinvariant-tosmulinvariantmeasure-op--7b53445f79d7deff1ef263c0.md) | 100 | `declaration-track:7b53445f79d7deff1ef263c0dff83cead98601afe9930e7267b1eaab1063a6bb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
