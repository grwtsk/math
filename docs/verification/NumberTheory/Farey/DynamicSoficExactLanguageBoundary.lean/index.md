# Verification target: GRWTSK.NumberTheory.Farey.DynamicSoficExactLanguageBoundary

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9b41af8b4b4e7e1b2caf7abfe30b741dd95ff8e9",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Farey/DynamicSoficExactLanguageBoundary.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Farey/DynamicSoficExactLanguageBoundary.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Farey/DynamicSoficExactLanguageBoundary.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9b41af8b4b4e7e1b2caf7abfe30b741dd95ff8e9`.

Source path: `GRWTSK/NumberTheory/Farey/DynamicSoficExactLanguageBoundary.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Farey/DynamicSoficExactLanguageBoundary.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Farey.DynamicSoficSpectralCover`](../../../../mathematics/NumberTheory/Farey/DynamicSoficSpectralCover.lean/index.md) — import line 9; pinned internal source present.
- [`GRWTSK.NumberTheory.Farey.HeatFlowCompressionSofic`](../../../../mathematics/NumberTheory/Farey/HeatFlowCompressionSofic.lean/index.md) — import line 10; pinned internal source present.
- `Mathlib` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [StageCells](../../../../mathematics/NumberTheory/Farey/DynamicSoficExactLanguageBoundary.lean/declarations/stagecells--12731e38a89edb0e1aefdc4c.md) | 50 | `declaration-track:12731e38a89edb0e1aefdc4c50236e88af3bdbf8da93f3126fafdb3356ff4f57` |
| 2 | `structure` | [GrowingRefinement](../../../../mathematics/NumberTheory/Farey/DynamicSoficExactLanguageBoundary.lean/declarations/growingrefinement--1d1ef744ce1848baa4917441.md) | 53 | `declaration-track:1d1ef744ce1848baa4917441655e84a28aaa9ce05d245952035db3175fd00177` |
| 3 | `theorem` | [GrowingRefinement.distinction_persists](../../../../mathematics/NumberTheory/Farey/DynamicSoficExactLanguageBoundary.lean/declarations/growingrefinement-distinction-persists--ef49f4ca9ca4fba5736d9976.md) | 68 | `result-track:ef49f4ca9ca4fba5736d9976d570fad3416c19d18c4067c45177e502652e82bb` |
| 4 | `structure` | [RootedSoficGraph](../../../../mathematics/NumberTheory/Farey/DynamicSoficExactLanguageBoundary.lean/declarations/rootedsoficgraph--c1f17beb6a5ec2deae926097.md) | 85 | `declaration-track:c1f17beb6a5ec2deae9260974a3b60937a72e43cb46e0dc355a6a36b2adcb7d7` |
| 5 | `def` | [RootedSoficGraph.asSoficGraph](../../../../mathematics/NumberTheory/Farey/DynamicSoficExactLanguageBoundary.lean/declarations/rootedsoficgraph-assoficgraph--ceae704590b3a47c79feb704.md) | 93 | `declaration-track:ceae704590b3a47c79feb704c4e04873024e336bb72e0e88d2c583fc252dca4f` |
| 6 | `inductive` | [LabeledPath](../../../../mathematics/NumberTheory/Farey/DynamicSoficExactLanguageBoundary.lean/declarations/labeledpath--e20d706d93aad6e851c73e48.md) | 101 | `declaration-track:e20d706d93aad6e851c73e488307d7bd3c2df85cd092902daac2daf2099050b2` |
| 7 | `def` | [Accepts](../../../../mathematics/NumberTheory/Farey/DynamicSoficExactLanguageBoundary.lean/declarations/accepts--d4a7056dc329aa25125ad7c6.md) | 110 | `declaration-track:d4a7056dc329aa25125ad7c62063516424aa936f35011f1c046d0bed6deba024` |
| 8 | `def` | [«prefix»](../../../../mathematics/NumberTheory/Farey/DynamicSoficExactLanguageBoundary.lean/declarations/prefix--3ce44335657a01beb9743d53.md) | 115 | `declaration-track:3ce44335657a01beb9743d536b48cf1cc8a0160aeafb721980b7d21a39e7186d` |
| 9 | `def` | [AdmitsStream](../../../../mathematics/NumberTheory/Farey/DynamicSoficExactLanguageBoundary.lean/declarations/admitsstream--13c2500f114f9f931f1fcb8d.md) | 119 | `declaration-track:13c2500f114f9f931f1fcb8d78efffe2dc259e7a314dbc784a5838ea9ae419ed` |
| 10 | `def` | [ExactPrefixPresented](../../../../mathematics/NumberTheory/Farey/DynamicSoficExactLanguageBoundary.lean/declarations/exactprefixpresented--72356e5a0d20dcd6c3ed96de.md) | 125 | `declaration-track:72356e5a0d20dcd6c3ed96de71b4117e7bfd73b10b0d5f1d1daf1684d1cb4a85` |
| 11 | `def` | [EventuallyExactPrefixPresented](../../../../mathematics/NumberTheory/Farey/DynamicSoficExactLanguageBoundary.lean/declarations/eventuallyexactprefixpresented--959e7dd92e020a848a8d9b80.md) | 133 | `declaration-track:959e7dd92e020a848a8d9b80741c813160b24a07cad5799bf57bad54cddebc0a` |
| 12 | `def` | [fullShiftGraph](../../../../mathematics/NumberTheory/Farey/DynamicSoficExactLanguageBoundary.lean/declarations/fullshiftgraph--bf13fc20da1153e003dfeb85.md) | 141 | `declaration-track:bf13fc20da1153e003dfeb8559b5f332c856599ee0c5a3ed39681448c225f4b1` |
| 13 | `theorem` | [fullShift_path](../../../../mathematics/NumberTheory/Farey/DynamicSoficExactLanguageBoundary.lean/declarations/fullshift-path--0a11eba163323db73128382b.md) | 148 | `result-track:0a11eba163323db73128382bfa74c0b2db17db8ac1418adffa388fb935746fc1` |
| 14 | `theorem` | [every_stream_admitted](../../../../mathematics/NumberTheory/Farey/DynamicSoficExactLanguageBoundary.lean/declarations/every-stream-admitted--5729ee285c443e2d1d1fcc3b.md) | 158 | `result-track:5729ee285c443e2d1d1fcc3bc13f05bcc528d53c3cd3dbd9b3251fe12ee15f3f` |
| 15 | `theorem` | [no_universal_prefix_rejection](../../../../mathematics/NumberTheory/Farey/DynamicSoficExactLanguageBoundary.lean/declarations/no-universal-prefix-rejection--44c033508d33a4975ed81f70.md) | 167 | `result-track:44c033508d33a4975ed81f70071374b10acd7d6ce3bd65c8030ced2da66440ed` |
| 16 | `theorem` | [fullShift_not_exact_for_constant_false](../../../../mathematics/NumberTheory/Farey/DynamicSoficExactLanguageBoundary.lean/declarations/fullshift-not-exact-for-constant-false--5d8846c91fa79f2a7a9bf622.md) | 178 | `result-track:5d8846c91fa79f2a7a9bf622e09ef09262b64f98c6d4877169ff59a100396267` |
| 17 | `structure` | [CommutingLosslessGraphCover](../../../../mathematics/NumberTheory/Farey/DynamicSoficExactLanguageBoundary.lean/declarations/commutinglosslessgraphcover--bd616cfd4529a327dd22d898.md) | 192 | `declaration-track:bd616cfd4529a327dd22d898f2386c71b5d98bec9330f752f0e4cb7880a76edd` |
| 18 | `theorem` | [CommutingLosslessGraphCover.lift_injective](../../../../mathematics/NumberTheory/Farey/DynamicSoficExactLanguageBoundary.lean/declarations/commutinglosslessgraphcover-lift-injective--dc27b3bfd14747239d3809a0.md) | 208 | `result-track:dc27b3bfd14747239d3809a02d3e38b1397999f094cc3cb387b9a0dc3866ef7b` |
| 19 | `theorem` | [CommutingLosslessGraphCover.readout_factors](../../../../mathematics/NumberTheory/Farey/DynamicSoficExactLanguageBoundary.lean/declarations/commutinglosslessgraphcover-readout-factors--97caa3a5b1cf42a419e14d0f.md) | 222 | `result-track:97caa3a5b1cf42a419e14d0fbadaee47cb3b0efb22550d6226ef8a24806f655d` |
| 20 | `theorem` | [CommutingLosslessGraphCover.no_recovery_after_collision](../../../../mathematics/NumberTheory/Farey/DynamicSoficExactLanguageBoundary.lean/declarations/commutinglosslessgraphcover-no-recovery-after-collision--ada33404dffc9bc21c0fecb2.md) | 236 | `result-track:ada33404dffc9bc21c0fecb2d526565b5f0965ad3e5e2678bed2bde61ad6bff5` |
| 21 | `def` | [emittedWord](../../../../mathematics/NumberTheory/Farey/DynamicSoficExactLanguageBoundary.lean/declarations/emittedword--93799b60f552e93e00ae97c2.md) | 255 | `declaration-track:93799b60f552e93e00ae97c281e14cc39f29d8c5eb96db82adc8bc7f45022cd0` |
| 22 | `theorem` | [CommutingLosslessGraphCover.emittedWord_is_path](../../../../mathematics/NumberTheory/Farey/DynamicSoficExactLanguageBoundary.lean/declarations/commutinglosslessgraphcover-emittedword-is-path--072edd95299beec25260402f.md) | 264 | `result-track:072edd95299beec25260402fc1160e89ed2ee6f64f184ef0c104d17ceae5b6dc` |
| 23 | `structure` | [GrowingSoficSpectralDiagram](../../../../mathematics/NumberTheory/Farey/DynamicSoficExactLanguageBoundary.lean/declarations/growingsoficspectraldiagram--4b06f556792280002ba750d8.md) | 283 | `declaration-track:4b06f556792280002ba750d8ed523482963e1917a35a6e86b9811b19a939170c` |
| 24 | `theorem` | [GrowingSoficSpectralDiagram.graph_projection_collision](../../../../mathematics/NumberTheory/Farey/DynamicSoficExactLanguageBoundary.lean/declarations/growingsoficspectraldiagram-graph-projection-collision--2cbe225b7cda9e825d9b0666.md) | 297 | `result-track:2cbe225b7cda9e825d9b0666654a779088e5c9f163bc77656fd122c9a0ca0fea` |
| 25 | `theorem` | [GrowingSoficSpectralDiagram.no_vertex_only_decoder](../../../../mathematics/NumberTheory/Farey/DynamicSoficExactLanguageBoundary.lean/declarations/growingsoficspectraldiagram-no-vertex-only-decoder--4671b9435f27e19b3f13c934.md) | 318 | `result-track:4671b9435f27e19b3f13c93463262931332bdfb442c873759edb0c22f0cc1950` |
| 26 | `structure` | [AnalyticDynamicSoficPipeline](../../../../mathematics/NumberTheory/Farey/DynamicSoficExactLanguageBoundary.lean/declarations/analyticdynamicsoficpipeline--524563fb0c1f85dcaa8efe33.md) | 343 | `declaration-track:524563fb0c1f85dcaa8efe33602db40bff2634826f3a74c6a7f7f315b56854cd` |
| 27 | `theorem` | [AnalyticDynamicSoficPipeline.limit_zeroFree](../../../../mathematics/NumberTheory/Farey/DynamicSoficExactLanguageBoundary.lean/declarations/analyticdynamicsoficpipeline-limit-zerofree--f3a54c3d7d7a3d6a9522de34.md) | 353 | `result-track:f3a54c3d7d7a3d6a9522de340b2b45e2edaad0ab6dc62b8b90e2a3fbacaf00b2` |
| 28 | `theorem` | [AnalyticDynamicSoficPipeline.ordinate_from_spectrum](../../../../mathematics/NumberTheory/Farey/DynamicSoficExactLanguageBoundary.lean/declarations/analyticdynamicsoficpipeline-ordinate-from-spectrum--6640d8183b22ab9f513f5d62.md) | 361 | `result-track:6640d8183b22ab9f513f5d6248fecf2a78a233f5679bc3a19d336cfda4256868` |
| 29 | `structure` | [OrdinateExactLanguageSuppliers](../../../../mathematics/NumberTheory/Farey/DynamicSoficExactLanguageBoundary.lean/declarations/ordinateexactlanguagesuppliers--fe64f4496efc7560197c2880.md) | 369 | `declaration-track:fe64f4496efc7560197c288088ab52b948568f243b95db8fa0800adeab787b26` |
| 30 | `theorem` | [OrdinateExactLanguageSuppliers.irrational_without_grh](../../../../mathematics/NumberTheory/Farey/DynamicSoficExactLanguageBoundary.lean/declarations/ordinateexactlanguagesuppliers-irrational-without-grh--d1eee161a54fda6b7d6b07b9.md) | 389 | `result-track:d1eee161a54fda6b7d6b07b94e8ed26b40f1276426afc8126324515f16a91395` |
| 31 | `theorem` | [OrdinateExactLanguageSuppliers.grh_critical_and_transcendental](../../../../mathematics/NumberTheory/Farey/DynamicSoficExactLanguageBoundary.lean/declarations/ordinateexactlanguagesuppliers-grh-critical-and-transcendental--696079f91aa74fced0e16e4c.md) | 402 | `result-track:696079f91aa74fced0e16e4c047bfa4738d77931d45c0ba7d3f1ff1584c65c1f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
