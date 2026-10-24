# Verification target: GRWTSK.Analysis.MeasureTheory.Order.Variant86e50becdb4bbef7c0fafa4ddbeb43d2be21ad431665a09b4a8cd5576416d5fa

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "602ee5467d07171d5b737c437b08ba4cb775ce70",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Order/Variant86e50becdb4bbef7c0fafa4ddbeb43d2be21ad431665a09b4a8cd5576416d5fa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Order/Variant86e50becdb4bbef7c0fafa4ddbeb43d2be21ad431665a09b4a8cd5576416d5fa.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Order/Variant86e50becdb4bbef7c0fafa4ddbeb43d2be21ad431665a09b4a8cd5576416d5fa.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `602ee5467d07171d5b737c437b08ba4cb775ce70`.

Source path: `GRWTSK/Analysis/MeasureTheory/Order/Variant86e50becdb4bbef7c0fafa4ddbeb43d2be21ad431665a09b4a8cd5576416d5fa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Order/Variant86e50becdb4bbef7c0fafa4ddbeb43d2be21ad431665a09b4a8cd5576416d5fa.lean.json)

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
| 1 | `instance` | [instPartialOrder](../../../../../mathematics/Analysis/MeasureTheory/Order/Variant86e50becdb4bbef7c0fafa4ddbeb43d2be21ad431665a09b4a8cd5576416d5fa.lean/declarations/instpartialorder--04b1e29d44e911a294777f55.md) | 52 | `declaration-track:04b1e29d44e911a294777f55751e2727d32ae60c4d1feae715c02fb6e1e22b05` |
| 2 | `theorem` | [le_iff](../../../../../mathematics/Analysis/MeasureTheory/Order/Variant86e50becdb4bbef7c0fafa4ddbeb43d2be21ad431665a09b4a8cd5576416d5fa.lean/declarations/le-iff--a32deed26da33ae37974ee08.md) | 60 | `result-track:a32deed26da33ae37974ee087c018fff9d27cfb8fe91bd7376cdc197298e417a` |
| 3 | `theorem` | [le_iff'](../../../../../mathematics/Analysis/MeasureTheory/Order/Variant86e50becdb4bbef7c0fafa4ddbeb43d2be21ad431665a09b4a8cd5576416d5fa.lean/declarations/le-iff--294d5f32967a5d6cce685339.md) | 62 | `result-track:294d5f32967a5d6cce685339ca3231b70dacd83772173e25b7a04625b12a9150` |
| 4 | `theorem` | [restrict_le_restrict_iff](../../../../../mathematics/Analysis/MeasureTheory/Order/Variant86e50becdb4bbef7c0fafa4ddbeb43d2be21ad431665a09b4a8cd5576416d5fa.lean/declarations/restrict-le-restrict-iff--e7c71385dc5d78170525f8c4.md) | 80 | `result-track:e7c71385dc5d78170525f8c41b6b95259eb7d35b5b643989221799a5dd6a8786` |
| 5 | `theorem` | [subset_le_of_restrict_le_restrict](../../../../../mathematics/Analysis/MeasureTheory/Order/Variant86e50becdb4bbef7c0fafa4ddbeb43d2be21ad431665a09b4a8cd5576416d5fa.lean/declarations/subset-le-of-restrict-le-restrict--70751d9f1c27c1d7d8b9232e.md) | 87 | `result-track:70751d9f1c27c1d7d8b9232e10b7b70723d9028ca014f21fdd676f5b8e022989` |
| 6 | `theorem` | [restrict_le_restrict_of_subset_le](../../../../../mathematics/Analysis/MeasureTheory/Order/Variant86e50becdb4bbef7c0fafa4ddbeb43d2be21ad431665a09b4a8cd5576416d5fa.lean/declarations/restrict-le-restrict-of-subset-le--1bafb047e480e6f165491ae7.md) | 93 | `result-track:1bafb047e480e6f165491ae735c98268a7285d2ec4f7bf81201d3664a007a89e` |
| 7 | `theorem` | [restrict_le_restrict_subset](../../../../../mathematics/Analysis/MeasureTheory/Order/Variant86e50becdb4bbef7c0fafa4ddbeb43d2be21ad431665a09b4a8cd5576416d5fa.lean/declarations/restrict-le-restrict-subset--c808b7738e5707ed43248c81.md) | 99 | `result-track:c808b7738e5707ed43248c810e507c37f77f0fc3d9c9a5df7e4692f5e3a5c4dc` |
| 8 | `theorem` | [le_restrict_empty](../../../../../mathematics/Analysis/MeasureTheory/Order/Variant86e50becdb4bbef7c0fafa4ddbeb43d2be21ad431665a09b4a8cd5576416d5fa.lean/declarations/le-restrict-empty--ce8c98b8cd7c4117ea6b3d5f.md) | 104 | `result-track:ce8c98b8cd7c4117ea6b3d5f9badeaa8492b8ed59d73029695ed4952a076ede2` |
| 9 | `theorem` | [le_restrict_univ_iff_le](../../../../../mathematics/Analysis/MeasureTheory/Order/Variant86e50becdb4bbef7c0fafa4ddbeb43d2be21ad431665a09b4a8cd5576416d5fa.lean/declarations/le-restrict-univ-iff-le--4bbbdcc41c5d01bca8bc9a1e.md) | 107 | `result-track:4bbbdcc41c5d01bca8bc9a1e14dcc2aa7ecfa5038d629f3345ff80e6ff34e780` |
| 10 | `theorem` | [neg_le_neg](../../../../../mathematics/Analysis/MeasureTheory/Order/Variant86e50becdb4bbef7c0fafa4ddbeb43d2be21ad431665a09b4a8cd5576416d5fa.lean/declarations/neg-le-neg--e7524f3f8c246e4123ea539b.md) | 118 | `result-track:e7524f3f8c246e4123ea539b8eb9e4803e96954794df53bae1ca9bb4dc9d9910` |
| 11 | `theorem` | [neg_le_neg_iff](../../../../../mathematics/Analysis/MeasureTheory/Order/Variant86e50becdb4bbef7c0fafa4ddbeb43d2be21ad431665a09b4a8cd5576416d5fa.lean/declarations/neg-le-neg-iff--e814119439f6a612404aec74.md) | 125 | `result-track:e814119439f6a612404aec74aa61947dcc2ac6ba880c41cffba370ebecbbc37d` |
| 12 | `theorem` | [restrict_le_restrict_iUnion](../../../../../mathematics/Analysis/MeasureTheory/Order/Variant86e50becdb4bbef7c0fafa4ddbeb43d2be21ad431665a09b4a8cd5576416d5fa.lean/declarations/restrict-le-restrict-iunion--ec6bc223d5bc44cf051cb347.md) | 136 | `result-track:ec6bc223d5bc44cf051cb3472f8e2dc7bdfcf11ef461b7e001b56f209816b918` |
| 13 | `theorem` | [restrict_le_restrict_countable_iUnion](../../../../../mathematics/Analysis/MeasureTheory/Order/Variant86e50becdb4bbef7c0fafa4ddbeb43d2be21ad431665a09b4a8cd5576416d5fa.lean/declarations/restrict-le-restrict-countable-iunion--f3d40d9b6459c9067b896ab6.md) | 158 | `result-track:f3d40d9b6459c9067b896ab6f15a54a3557de21d474c52d6a931f0399bb23e2b` |
| 14 | `theorem` | [restrict_le_restrict_union](../../../../../mathematics/Analysis/MeasureTheory/Order/Variant86e50becdb4bbef7c0fafa4ddbeb43d2be21ad431665a09b4a8cd5576416d5fa.lean/declarations/restrict-le-restrict-union--c9ce6657f4a0ab2c82a1a467.md) | 170 | `result-track:c9ce6657f4a0ab2c82a1a467b3799655410f530ec0e154fdca3594cbf372c224` |
| 15 | `theorem` | [nonneg_of_zero_le_restrict](../../../../../mathematics/Analysis/MeasureTheory/Order/Variant86e50becdb4bbef7c0fafa4ddbeb43d2be21ad431665a09b4a8cd5576416d5fa.lean/declarations/nonneg-of-zero-le-restrict--e69352956fdcf84fd87f51f3.md) | 184 | `result-track:e69352956fdcf84fd87f51f37c16d42963d935a24a48d32ca6889fa2af8eb206` |
| 16 | `theorem` | [nonpos_of_restrict_le_zero](../../../../../mathematics/Analysis/MeasureTheory/Order/Variant86e50becdb4bbef7c0fafa4ddbeb43d2be21ad431665a09b4a8cd5576416d5fa.lean/declarations/nonpos-of-restrict-le-zero--a63af915efb808e61bbab817.md) | 189 | `result-track:a63af915efb808e61bbab817cb49825ed9705c2390b2773324bd390a6a2dbf36` |
| 17 | `theorem` | [zero_le_restrict_not_measurable](../../../../../mathematics/Analysis/MeasureTheory/Order/Variant86e50becdb4bbef7c0fafa4ddbeb43d2be21ad431665a09b4a8cd5576416d5fa.lean/declarations/zero-le-restrict-not-measurable--5931ae0e61d44ea24951e0a2.md) | 194 | `result-track:5931ae0e61d44ea24951e0a20c384cfb716eb76b5d7991b9b5233965d57728eb` |
| 18 | `theorem` | [restrict_le_zero_of_not_measurable](../../../../../mathematics/Analysis/MeasureTheory/Order/Variant86e50becdb4bbef7c0fafa4ddbeb43d2be21ad431665a09b4a8cd5576416d5fa.lean/declarations/restrict-le-zero-of-not-measurable--efd3290899b7b5c1233f8892.md) | 197 | `result-track:efd3290899b7b5c1233f8892f6176381ad7ad942b30cfd09fa7c071297013637` |
| 19 | `theorem` | [measurable_of_not_zero_le_restrict](../../../../../mathematics/Analysis/MeasureTheory/Order/Variant86e50becdb4bbef7c0fafa4ddbeb43d2be21ad431665a09b4a8cd5576416d5fa.lean/declarations/measurable-of-not-zero-le-restrict--6d4f6f9ceb8eb3c3c0f81094.md) | 200 | `result-track:6d4f6f9ceb8eb3c3c0f8109446116ef5833b62591de9acddac4691ab3c20f91f` |
| 20 | `theorem` | [measurable_of_not_restrict_le_zero](../../../../../mathematics/Analysis/MeasureTheory/Order/Variant86e50becdb4bbef7c0fafa4ddbeb43d2be21ad431665a09b4a8cd5576416d5fa.lean/declarations/measurable-of-not-restrict-le-zero--8cfb4dcfd4548c7ce4dbf812.md) | 203 | `result-track:8cfb4dcfd4548c7ce4dbf812e9a254764753d0b51baf46ed611df51a061d35ac` |
| 21 | `theorem` | [zero_le_restrict_subset](../../../../../mathematics/Analysis/MeasureTheory/Order/Variant86e50becdb4bbef7c0fafa4ddbeb43d2be21ad431665a09b4a8cd5576416d5fa.lean/declarations/zero-le-restrict-subset--362e54ba47c28eba8ca6eda4.md) | 206 | `result-track:362e54ba47c28eba8ca6eda4fadd91dd25866f58e53aca18cef0265178e9310b` |
| 22 | `theorem` | [restrict_le_zero_subset](../../../../../mathematics/Analysis/MeasureTheory/Order/Variant86e50becdb4bbef7c0fafa4ddbeb43d2be21ad431665a09b4a8cd5576416d5fa.lean/declarations/restrict-le-zero-subset--fc8067e4bc6ecdc3983886a8.md) | 210 | `result-track:fc8067e4bc6ecdc3983886a82dbf915b8841e722d3ffa01ffca6e44f83d6e37e` |
| 23 | `theorem` | [exists_pos_measure_of_not_restrict_le_zero](../../../../../mathematics/Analysis/MeasureTheory/Order/Variant86e50becdb4bbef7c0fafa4ddbeb43d2be21ad431665a09b4a8cd5576416d5fa.lean/declarations/exists-pos-measure-of-not-restrict-le-zero--1694530858acffe7732f14d1.md) | 221 | `result-track:1694530858acffe7732f14d13e83676496cc08e4878d688d9a63202fff24b17c` |
| 24 | `instance` | [instAddLeftMono](../../../../../mathematics/Analysis/MeasureTheory/Order/Variant86e50becdb4bbef7c0fafa4ddbeb43d2be21ad431665a09b4a8cd5576416d5fa.lean/declarations/instaddleftmono--0fef6d41b42c3f6191719e2e.md) | 235 | `declaration-track:0fef6d41b42c3f6191719e2e0a27aa9deabb7aa1cd7e2dc0c6c6770802f6f21b` |
| 25 | `def` | [toMeasureOfZeroLE'](../../../../../mathematics/Analysis/MeasureTheory/Order/Variant86e50becdb4bbef7c0fafa4ddbeb43d2be21ad431665a09b4a8cd5576416d5fa.lean/declarations/tomeasureofzerole--9227a0f73376bb25179800e3.md) | 250 | `declaration-track:9227a0f73376bb25179800e34143cad169599d28abfea4e684f20ae7ccd1db41` |
| 26 | `def` | [toMeasureOfZeroLE](../../../../../mathematics/Analysis/MeasureTheory/Order/Variant86e50becdb4bbef7c0fafa4ddbeb43d2be21ad431665a09b4a8cd5576416d5fa.lean/declarations/tomeasureofzerole--88027d657fa3a3f84b80c111.md) | 256 | `declaration-track:88027d657fa3a3f84b80c111ae5bb1c8e688f96e863894b3b0565e81ef3eb635` |
| 27 | `theorem` | [toMeasureOfZeroLE_apply](../../../../../mathematics/Analysis/MeasureTheory/Order/Variant86e50becdb4bbef7c0fafa4ddbeb43d2be21ad431665a09b4a8cd5576416d5fa.lean/declarations/tomeasureofzerole-apply--83d664fe8fb8abf06a648d8c.md) | 278 | `result-track:83d664fe8fb8abf06a648d8c8d90e3b8abcf0623a7285abb18b502dae74e0b05` |
| 28 | `theorem` | [toMeasureOfZeroLE_real_apply](../../../../../mathematics/Analysis/MeasureTheory/Order/Variant86e50becdb4bbef7c0fafa4ddbeb43d2be21ad431665a09b4a8cd5576416d5fa.lean/declarations/tomeasureofzerole-real-apply--726ea88a5ea1b7eccea72b5e.md) | 284 | `result-track:726ea88a5ea1b7eccea72b5e73f6340e2d5a8c61a7cab037bd006ec6e46606ae` |
| 29 | `def` | [toMeasureOfLEZero](../../../../../mathematics/Analysis/MeasureTheory/Order/Variant86e50becdb4bbef7c0fafa4ddbeb43d2be21ad431665a09b4a8cd5576416d5fa.lean/declarations/tomeasureoflezero--2a2c2c74a253d5c2ab167dd2.md) | 291 | `declaration-track:2a2c2c74a253d5c2ab167dd2905aa19d5f800fb68e55ca06ee775f217293104d` |
| 30 | `theorem` | [toMeasureOfLEZero_apply](../../../../../mathematics/Analysis/MeasureTheory/Order/Variant86e50becdb4bbef7c0fafa4ddbeb43d2be21ad431665a09b4a8cd5576416d5fa.lean/declarations/tomeasureoflezero-apply--9c362671711ecad37147554a.md) | 295 | `result-track:9c362671711ecad37147554aaecfd1c10aef59c393c1de28bbdaf4c27a05be2e` |
| 31 | `theorem` | [toMeasureOfLEZero_real_apply](../../../../../mathematics/Analysis/MeasureTheory/Order/Variant86e50becdb4bbef7c0fafa4ddbeb43d2be21ad431665a09b4a8cd5576416d5fa.lean/declarations/tomeasureoflezero-real-apply--a9f7908ff7df6cd03c7e19df.md) | 302 | `result-track:a9f7908ff7df6cd03c7e19dfe55c80e60bb3b207962716fb1f4387e80d4eacab` |
| 32 | `instance` | [toMeasureOfZeroLE_finite](../../../../../mathematics/Analysis/MeasureTheory/Order/Variant86e50becdb4bbef7c0fafa4ddbeb43d2be21ad431665a09b4a8cd5576416d5fa.lean/declarations/tomeasureofzerole-finite--e3b90e0a7f712a5eaff137bf.md) | 308 | `declaration-track:e3b90e0a7f712a5eaff137bf1f210d4202df44d250ecba42ef972876db9e7df6` |
| 33 | `instance` | [toMeasureOfLEZero_finite](../../../../../mathematics/Analysis/MeasureTheory/Order/Variant86e50becdb4bbef7c0fafa4ddbeb43d2be21ad431665a09b4a8cd5576416d5fa.lean/declarations/tomeasureoflezero-finite--4c088d13271af1efdae6f92c.md) | 315 | `declaration-track:4c088d13271af1efdae6f92c4f1dc9c277cda7fe7e5521d8050aa2c185a21feb` |
| 34 | `theorem` | [toMeasureOfZeroLE_toSignedMeasure](../../../../../mathematics/Analysis/MeasureTheory/Order/Variant86e50becdb4bbef7c0fafa4ddbeb43d2be21ad431665a09b4a8cd5576416d5fa.lean/declarations/tomeasureofzerole-tosignedmeasure--e6b318d9e52a5c48483abc4d.md) | 321 | `result-track:e6b318d9e52a5c48483abc4d031877b46c92320d699e0f58448b628ee4614d44` |
| 35 | `theorem` | [toMeasureOfLEZero_toSignedMeasure](../../../../../mathematics/Analysis/MeasureTheory/Order/Variant86e50becdb4bbef7c0fafa4ddbeb43d2be21ad431665a09b4a8cd5576416d5fa.lean/declarations/tomeasureoflezero-tosignedmeasure--808a6e81fee9634e20d42cc9.md) | 326 | `result-track:808a6e81fee9634e20d42cc944a07a1123d1866065803db51b92aae420a977d9` |
| 36 | `theorem` | [zero_le_toSignedMeasure](../../../../../mathematics/Analysis/MeasureTheory/Order/Variant86e50becdb4bbef7c0fafa4ddbeb43d2be21ad431665a09b4a8cd5576416d5fa.lean/declarations/zero-le-tosignedmeasure--e5a7469837f2d7affdd19f2b.md) | 339 | `result-track:e5a7469837f2d7affdd19f2b77a516501015345ee8307ee87cafc5036cac349c` |
| 37 | `theorem` | [toSignedMeasure_toMeasureOfZeroLE](../../../../../mathematics/Analysis/MeasureTheory/Order/Variant86e50becdb4bbef7c0fafa4ddbeb43d2be21ad431665a09b4a8cd5576416d5fa.lean/declarations/tosignedmeasure-tomeasureofzerole--8cb6f9b13e985f3d2b145fad.md) | 344 | `result-track:8cb6f9b13e985f3d2b145fadf844691c1eee7973a540faf5a12841f7a52a238b` |
| 38 | `theorem` | [toSignedMeasure_restrict_eq_restrict_toSignedMeasure](../../../../../mathematics/Analysis/MeasureTheory/Order/Variant86e50becdb4bbef7c0fafa4ddbeb43d2be21ad431665a09b4a8cd5576416d5fa.lean/declarations/tosignedmeasure-restrict-eq-restrict-tosignedmeasure--f01052160fe9bfbe2b1e83f6.md) | 353 | `result-track:f01052160fe9bfbe2b1e83f68572dab4a7a109038bfb6c45b0a9c15b5a58a8ed` |
| 39 | `theorem` | [toSignedMeasure_le_toSignedMeasure_iff](../../../../../mathematics/Analysis/MeasureTheory/Order/Variant86e50becdb4bbef7c0fafa4ddbeb43d2be21ad431665a09b4a8cd5576416d5fa.lean/declarations/tosignedmeasure-le-tosignedmeasure-iff--202109b0e233391c16fd670b.md) | 358 | `result-track:202109b0e233391c16fd670bb04faa355c73497a0a7241080504451ed009152e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
