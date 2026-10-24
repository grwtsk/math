# Verification target: GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.ReLU.Variant5b69b2937199ee21c8b23a4780d1ea3477d2bcfafe11b676b980035284891dd0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c39feccad70d53e3f42359df6c9fa7d5771bb6fc",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/ReLU/Variant5b69b2937199ee21c8b23a4780d1ea3477d2bcfafe11b676b980035284891dd0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/ReLU/Variant5b69b2937199ee21c8b23a4780d1ea3477d2bcfafe11b676b980035284891dd0.lean/index.md) · [Full source](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/ReLU/Variant5b69b2937199ee21c8b23a4780d1ea3477d2bcfafe11b676b980035284891dd0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c39feccad70d53e3f42359df6c9fa7d5771bb6fc`.

Source path: `GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/ReLU/Variant5b69b2937199ee21c8b23a4780d1ea3477d2bcfafe11b676b980035284891dd0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ClassicalGeometry/EuclideanGeometry/ReLU/Variant5b69b2937199ee21c8b23a4780d1ea3477d2bcfafe11b676b980035284891dd0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Core.IntervalDyadic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [LinearBound](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/ReLU/Variant5b69b2937199ee21c8b23a4780d1ea3477d2bcfafe11b676b980035284891dd0.lean/declarations/linearbound--ed8a0093af37a0e7d1ab8f58.md) | 48 | `declaration-track:ed8a0093af37a0e7d1ab8f58ba038f05c275cce9efb4be560d2cfdf759af4bf5` |
| 2 | `def` | [LinearBound.eval](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/ReLU/Variant5b69b2937199ee21c8b23a4780d1ea3477d2bcfafe11b676b980035284891dd0.lean/declarations/linearbound-eval--e766fed456c6c7b92dc16cba.md) | 54 | `declaration-track:e766fed456c6c7b92dc16cba7188802330fed36b5f592c47981a8e51913186ca` |
| 3 | `def` | [crossingUpperBound](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/ReLU/Variant5b69b2937199ee21c8b23a4780d1ea3477d2bcfafe11b676b980035284891dd0.lean/declarations/crossingupperbound--0328894ca9ee89feb171cb4a.md) | 61 | `declaration-track:0328894ca9ee89feb171cb4ac2b9d821042d33d45391f92bc24ccc00f0861505` |
| 4 | `theorem` | [crossingUpperBound_eval](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/ReLU/Variant5b69b2937199ee21c8b23a4780d1ea3477d2bcfafe11b676b980035284891dd0.lean/declarations/crossingupperbound-eval--e0bbd126c26fca26d5163c3c.md) | 67 | `result-track:e0bbd126c26fca26d5163c3ccbaa1260953c14b9ff1e7fbd02f138ee2a06fdd9` |
| 5 | `theorem` | [upper_bound_valid](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/ReLU/Variant5b69b2937199ee21c8b23a4780d1ea3477d2bcfafe11b676b980035284891dd0.lean/declarations/upper-bound-valid--df7674120893f9a0f70738f6.md) | 83 | `result-track:df7674120893f9a0f70738f6b734e5db1cd1a968292485b66eade88e3c3dc7ca` |
| 6 | `structure` | [SymbolicBound](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/ReLU/Variant5b69b2937199ee21c8b23a4780d1ea3477d2bcfafe11b676b980035284891dd0.lean/declarations/symbolicbound--013f3fbf872521e90c1c6e08.md) | 124 | `declaration-track:013f3fbf872521e90c1c6e08dc70fac896cc70c9aa67fbf4a2db182b1cce6d5a` |
| 7 | `def` | [getReLURelaxation](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/ReLU/Variant5b69b2937199ee21c8b23a4780d1ea3477d2bcfafe11b676b980035284891dd0.lean/declarations/getrelurelaxation--e0da04a1da84596ead8a26af.md) | 132 | `declaration-track:e0da04a1da84596ead8a26afe4bb6dab1c1caec25ec8b7bb4ae1135c68d0e695` |
| 8 | `theorem` | [lower_bound_crossing](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/ReLU/Variant5b69b2937199ee21c8b23a4780d1ea3477d2bcfafe11b676b980035284891dd0.lean/declarations/lower-bound-crossing--131ce2f7bdcd1d666c7a2b14.md) | 147 | `result-track:131ce2f7bdcd1d666c7a2b14764bc63e686c3f572e309424187b1cfc7ae68a3f` |
| 9 | `theorem` | [relu_relaxation_sound](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/ReLU/Variant5b69b2937199ee21c8b23a4780d1ea3477d2bcfafe11b676b980035284891dd0.lean/declarations/relu-relaxation-sound--7dcd2631204cd73f1582b622.md) | 156 | `result-track:7dcd2631204cd73f1582b62290dd63910d24ebdc4b33930eb074456a4f79d58f` |
| 10 | `def` | [LinearBound.identity](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/ReLU/Variant5b69b2937199ee21c8b23a4780d1ea3477d2bcfafe11b676b980035284891dd0.lean/declarations/linearbound-identity--207f675d15b6e53549bea5de.md) | 191 | `declaration-track:207f675d15b6e53549bea5dee9a72c40636cbe4149859016598623ece568f548` |
| 11 | `def` | [LinearBound.zero](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/ReLU/Variant5b69b2937199ee21c8b23a4780d1ea3477d2bcfafe11b676b980035284891dd0.lean/declarations/linearbound-zero--68e8c7827493e059d659e9fd.md) | 194 | `declaration-track:68e8c7827493e059d659e9fd942c5e190312b653c49232f5a6b7d656bcd71efc` |
| 12 | `theorem` | [LinearBound.eval_identity](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/ReLU/Variant5b69b2937199ee21c8b23a4780d1ea3477d2bcfafe11b676b980035284891dd0.lean/declarations/linearbound-eval-identity--f6b18fcb97925d16b17216d2.md) | 197 | `result-track:f6b18fcb97925d16b17216d204d9fd90fdc36a4ab95a098d4a7ac0cbd5bc5aa1` |
| 13 | `theorem` | [LinearBound.eval_zero](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/ReLU/Variant5b69b2937199ee21c8b23a4780d1ea3477d2bcfafe11b676b980035284891dd0.lean/declarations/linearbound-eval-zero--912aa2791206ed5438762ded.md) | 201 | `result-track:912aa2791206ed5438762ded75b6164099af345ea8957d1a7eb5d4b9afc69a50` |
| 14 | `def` | [LinearBound.compose](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/ReLU/Variant5b69b2937199ee21c8b23a4780d1ea3477d2bcfafe11b676b980035284891dd0.lean/declarations/linearbound-compose--d9c3373b37bd5ef1ff485738.md) | 205 | `declaration-track:d9c3373b37bd5ef1ff4857385a37687d64b5319843f9efc3ae0b2d2e61349626` |
| 15 | `theorem` | [LinearBound.eval_compose](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/ReLU/Variant5b69b2937199ee21c8b23a4780d1ea3477d2bcfafe11b676b980035284891dd0.lean/declarations/linearbound-eval-compose--41985f18cdf452790e7ffde3.md) | 209 | `result-track:41985f18cdf452790e7ffde311dcd1882bc629c8cc499b04e00b6e88e795e303` |
| 16 | `def` | [outputWidth](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/ReLU/Variant5b69b2937199ee21c8b23a4780d1ea3477d2bcfafe11b676b980035284891dd0.lean/declarations/outputwidth--49106769eee22b395ebbeb37.md) | 219 | `declaration-track:49106769eee22b395ebbeb3782f477f4cadc8d7c3f5b7e344f15e34e9cda9f97` |
| 17 | `theorem` | [crossingUpperBound_at_u](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/ReLU/Variant5b69b2937199ee21c8b23a4780d1ea3477d2bcfafe11b676b980035284891dd0.lean/declarations/crossingupperbound-at-u--c361d661f7f7e0ea8a0bc2fd.md) | 225 | `result-track:c361d661f7f7e0ea8a0bc2fd8c0d80854c06136d9636cf6988ddbf963da1f2c7` |
| 18 | `theorem` | [crossingUpperBound_at_l](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/ReLU/Variant5b69b2937199ee21c8b23a4780d1ea3477d2bcfafe11b676b980035284891dd0.lean/declarations/crossingupperbound-at-l--25f939766c01e5beb2b4e746.md) | 233 | `result-track:25f939766c01e5beb2b4e746ce2a2689b02bf5561a983de329573a46d393e06e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
