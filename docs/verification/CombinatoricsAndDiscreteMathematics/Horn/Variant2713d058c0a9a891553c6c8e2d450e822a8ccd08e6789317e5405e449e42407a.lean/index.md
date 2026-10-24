# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Horn.Variant2713d058c0a9a891553c6c8e2d450e822a8ccd08e6789317e5405e449e42407a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "feebffcad18e8f09346f015c4ab652e4a600e51e",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Horn/Variant2713d058c0a9a891553c6c8e2d450e822a8ccd08e6789317e5405e449e42407a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Horn/Variant2713d058c0a9a891553c6c8e2d450e822a8ccd08e6789317e5405e449e42407a.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Horn/Variant2713d058c0a9a891553c6c8e2d450e822a8ccd08e6789317e5405e449e42407a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `feebffcad18e8f09346f015c4ab652e4a600e51e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Horn/Variant2713d058c0a9a891553c6c8e2d450e822a8ccd08e6789317e5405e449e42407a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Horn/Variant2713d058c0a9a891553c6c8e2d450e822a8ccd08e6789317e5405e449e42407a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicTopology.SimplicialSet.StdSimplex` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Subpresheaf.Equalizer` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [horn](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Horn/Variant2713d058c0a9a891553c6c8e2d450e822a8ccd08e6789317e5405e449e42407a.lean/declarations/horn--492cf35654a1974686e2ae91.md) | 27 | `declaration-track:492cf35654a1974686e2ae912c0b4e00a531b5cf1de1ffd39ab05d990a572f4b` |
| 2 | `lemma` | [horn_eq_iSup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Horn/Variant2713d058c0a9a891553c6c8e2d450e822a8ccd08e6789317e5405e449e42407a.lean/declarations/horn-eq-isup--819c85f96501b14ee75de33a.md) | 38 | `result-track:819c85f96501b14ee75de33acbc9636b0309e08c8ec622ca3491c50bc70be619` |
| 3 | `lemma` | [face_le_horn](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Horn/Variant2713d058c0a9a891553c6c8e2d450e822a8ccd08e6789317e5405e449e42407a.lean/declarations/face-le-horn--125f754c22276d2c0aa30178.md) | 45 | `result-track:125f754c22276d2c0aa30178f914614669a510e9700f6ca6dac3909dff63c29f` |
| 4 | `lemma` | [horn_obj_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Horn/Variant2713d058c0a9a891553c6c8e2d450e822a8ccd08e6789317e5405e449e42407a.lean/declarations/horn-obj-zero--d384c243a09fd8cc78a82911.md) | 51 | `result-track:d384c243a09fd8cc78a829118bed1c1e0d3c7d8138e8ced9c0821323734a046b` |
| 5 | `abbrev` | [hornInclusion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Horn/Variant2713d058c0a9a891553c6c8e2d450e822a8ccd08e6789317e5405e449e42407a.lean/declarations/horninclusion--e4142879a916e1e40f909033.md) | 74 | `declaration-track:e4142879a916e1e40f909033a51ee38592a92ebb65c5e3af527be8f6543af912` |
| 6 | `def` | [const](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Horn/Variant2713d058c0a9a891553c6c8e2d450e822a8ccd08e6789317e5405e449e42407a.lean/declarations/const--4edd1266be667cb335637876.md) | 85 | `declaration-track:4edd1266be667cb335637876f772cf4e4fe47b36a11d86d2fdc372769e155351` |
| 7 | `lemma` | [const_val_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Horn/Variant2713d058c0a9a891553c6c8e2d450e822a8ccd08e6789317e5405e449e42407a.lean/declarations/const-val-apply--715884c6ea036de08da191c3.md) | 90 | `result-track:715884c6ea036de08da191c31521dc7d4154cba990d72fac45ceec0260991d93` |
| 8 | `def` | [edge](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Horn/Variant2713d058c0a9a891553c6c8e2d450e822a8ccd08e6789317e5405e449e42407a.lean/declarations/edge--88678239100ee1e762464343.md) | 100 | `declaration-track:88678239100ee1e762464343129ed7349ad3c2fe51d84d404230854b3f291d4f` |
| 9 | `def` | [edge₃](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Horn/Variant2713d058c0a9a891553c6c8e2d450e822a8ccd08e6789317e5405e449e42407a.lean/declarations/edge--950f04837d02ecb96919f1c0.md) | 122 | `declaration-track:950f04837d02ecb96919f1c087ce482e0a24071c386ffe06913ae5258e24f246` |
| 10 | `def` | [primitiveEdge](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Horn/Variant2713d058c0a9a891553c6c8e2d450e822a8ccd08e6789317e5405e449e42407a.lean/declarations/primitiveedge--e714204186b4729f2686334f.md) | 131 | `declaration-track:e714204186b4729f2686334f709aa93453c1feaa39c10c24f7c7a57e9e30a298` |
| 11 | `def` | [primitiveTriangle](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Horn/Variant2713d058c0a9a891553c6c8e2d450e822a8ccd08e6789317e5405e449e42407a.lean/declarations/primitivetriangle--c4bcd7b5a21744c29bdea8b9.md) | 147 | `declaration-track:c4bcd7b5a21744c29bdea8b9a34cc46f32b1d3ce3159120bff8e238d376ef084` |
| 12 | `def` | [face](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Horn/Variant2713d058c0a9a891553c6c8e2d450e822a8ccd08e6789317e5405e449e42407a.lean/declarations/face--5b81490056ef0ef4f255591f.md) | 188 | `declaration-track:5b81490056ef0ef4f255591f86858238282a22d1365b7a4741963f4620814625` |
| 13 | `lemma` | [hom_ext](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Horn/Variant2713d058c0a9a891553c6c8e2d450e822a8ccd08e6789317e5405e449e42407a.lean/declarations/hom-ext--34bee5561b4516a9c32ee00b.md) | 194 | `result-track:34bee5561b4516a9c32ee00b66863e1e55cee43a0fa5d522640efdc81f58622a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
