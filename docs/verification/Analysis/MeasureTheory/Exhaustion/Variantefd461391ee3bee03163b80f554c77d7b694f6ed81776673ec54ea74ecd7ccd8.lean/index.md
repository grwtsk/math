# Verification target: GRWTSK.Analysis.MeasureTheory.Exhaustion.Variantefd461391ee3bee03163b80f554c77d7b694f6ed81776673ec54ea74ecd7ccd8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1226e60b1fc97c6fed211d1281f324114d9eb547",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Exhaustion/Variantefd461391ee3bee03163b80f554c77d7b694f6ed81776673ec54ea74ecd7ccd8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Exhaustion/Variantefd461391ee3bee03163b80f554c77d7b694f6ed81776673ec54ea74ecd7ccd8.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Exhaustion/Variantefd461391ee3bee03163b80f554c77d7b694f6ed81776673ec54ea74ecd7ccd8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1226e60b1fc97c6fed211d1281f324114d9eb547`.

Source path: `GRWTSK/Analysis/MeasureTheory/Exhaustion/Variantefd461391ee3bee03163b80f554c77d7b694f6ed81776673ec54ea74ecd7ccd8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Exhaustion/Variantefd461391ee3bee03163b80f554c77d7b694f6ed81776673ec54ea74ecd7ccd8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.Typeclasses.SFinite` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Measure.sigmaFiniteSetWRT](../../../../../mathematics/Analysis/MeasureTheory/Exhaustion/Variantefd461391ee3bee03163b80f554c77d7b694f6ed81776673ec54ea74ecd7ccd8.lean/declarations/measure-sigmafinitesetwrt--123ce91f4c4c8dd565bf9d9b.md) | 69 | `declaration-track:123ce91f4c4c8dd565bf9d9be72cfa664600ed86ea50beba882c0657baa05e21` |
| 2 | `lemma` | [measurableSet_sigmaFiniteSetWRT](../../../../../mathematics/Analysis/MeasureTheory/Exhaustion/Variantefd461391ee3bee03163b80f554c77d7b694f6ed81776673ec54ea74ecd7ccd8.lean/declarations/measurableset-sigmafinitesetwrt--9ef1a0154f308f80a3184826.md) | 76 | `result-track:9ef1a0154f308f80a31848268599be73f494eb0f6f48db63211463204980c95e` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Exhaustion/Variantefd461391ee3bee03163b80f554c77d7b694f6ed81776673ec54ea74ecd7ccd8.lean/declarations/instance--194fb9fecada5c1c8c815435.md) | 83 | `declaration-track:194fb9fecada5c1c8c815435e69e7942ba75864d0c681735cd1e0e977595e9ab` |
| 4 | `lemma` | [exists_isSigmaFiniteSet_measure_ge](../../../../../mathematics/Analysis/MeasureTheory/Exhaustion/Variantefd461391ee3bee03163b80f554c77d7b694f6ed81776673ec54ea74ecd7ccd8.lean/declarations/exists-issigmafiniteset-measure-ge--a5b2b875b3c8b86b8d73bc07.md) | 99 | `result-track:a5b2b875b3c8b86b8d73bc0743e9bb252e8468020052822c8eb0d443d51cb706` |
| 5 | `def` | [Measure.sigmaFiniteSetGE](../../../../../mathematics/Analysis/MeasureTheory/Exhaustion/Variantefd461391ee3bee03163b80f554c77d7b694f6ed81776673ec54ea74ecd7ccd8.lean/declarations/measure-sigmafinitesetge--879847a506f3058b404177ff.md) | 130 | `declaration-track:879847a506f3058b404177ff31f9c8af1dc5aeac7cc359fc5a5546e968ac77a4` |
| 6 | `lemma` | [measurableSet_sigmaFiniteSetGE](../../../../../mathematics/Analysis/MeasureTheory/Exhaustion/Variantefd461391ee3bee03163b80f554c77d7b694f6ed81776673ec54ea74ecd7ccd8.lean/declarations/measurableset-sigmafinitesetge--9f47320a739ced894062a107.md) | 133 | `result-track:9f47320a739ced894062a107ded883ef1d15930668f1e3ffdbd36be11e6d12e9` |
| 7 | `lemma` | [sigmaFinite_restrict_sigmaFiniteSetGE](../../../../../mathematics/Analysis/MeasureTheory/Exhaustion/Variantefd461391ee3bee03163b80f554c77d7b694f6ed81776673ec54ea74ecd7ccd8.lean/declarations/sigmafinite-restrict-sigmafinitesetge--325df20b2ff9ae657d97ba82.md) | 137 | `result-track:325df20b2ff9ae657d97ba82c0d5a3aa7049a64eae6e11f0bbaa332e694b9e47` |
| 8 | `lemma` | [measure_sigmaFiniteSetGE_le](../../../../../mathematics/Analysis/MeasureTheory/Exhaustion/Variantefd461391ee3bee03163b80f554c77d7b694f6ed81776673ec54ea74ecd7ccd8.lean/declarations/measure-sigmafinitesetge-le--20919cf0c4da2128f2c1c7c1.md) | 141 | `result-track:20919cf0c4da2128f2c1c7c1ec8737e93982d2f39c9f0810d1b25a8032ffc18e` |
| 9 | `lemma` | [measure_sigmaFiniteSetGE_ge](../../../../../mathematics/Analysis/MeasureTheory/Exhaustion/Variantefd461391ee3bee03163b80f554c77d7b694f6ed81776673ec54ea74ecd7ccd8.lean/declarations/measure-sigmafinitesetge-ge--453fd4c4da9dcad2ab82abc6.md) | 149 | `result-track:453fd4c4da9dcad2ab82abc649e320bcfa9b557e60f571a409f23faa92394fd9` |
| 10 | `lemma` | [tendsto_measure_sigmaFiniteSetGE](../../../../../mathematics/Analysis/MeasureTheory/Exhaustion/Variantefd461391ee3bee03163b80f554c77d7b694f6ed81776673ec54ea74ecd7ccd8.lean/declarations/tendsto-measure-sigmafinitesetge--8ca9cb27ccbf4f8d1a85c233.md) | 154 | `result-track:8ca9cb27ccbf4f8d1a85c2335e7244359fdba5c400f198a1b1d9ae2a26c530fb` |
| 11 | `def` | [Measure.sigmaFiniteSetWRT'](../../../../../mathematics/Analysis/MeasureTheory/Exhaustion/Variantefd461391ee3bee03163b80f554c77d7b694f6ed81776673ec54ea74ecd7ccd8.lean/declarations/measure-sigmafinitesetwrt--d0b17cf861a98dba8d3a7e44.md) | 166 | `declaration-track:d0b17cf861a98dba8d3a7e44464676856d61c385668b3cba83d8c97258fc60df` |
| 12 | `lemma` | [measurableSet_sigmaFiniteSetWRT'](../../../../../mathematics/Analysis/MeasureTheory/Exhaustion/Variantefd461391ee3bee03163b80f554c77d7b694f6ed81776673ec54ea74ecd7ccd8.lean/declarations/measurableset-sigmafinitesetwrt--626d11085f7492e69be0f4c6.md) | 169 | `result-track:626d11085f7492e69be0f4c6259b3674df935ed3ef9e2b1f095ae3f62adfaaab` |
| 13 | `lemma` | [sigmaFinite_restrict_sigmaFiniteSetWRT'](../../../../../mathematics/Analysis/MeasureTheory/Exhaustion/Variantefd461391ee3bee03163b80f554c77d7b694f6ed81776673ec54ea74ecd7ccd8.lean/declarations/sigmafinite-restrict-sigmafinitesetwrt--ffdb288b1df6fed87aba17da.md) | 173 | `result-track:ffdb288b1df6fed87aba17daf1e7f19fbc93aeee78ad42899d6b52af930c18dc` |
| 14 | `lemma` | [measure_sigmaFiniteSetWRT'](../../../../../mathematics/Analysis/MeasureTheory/Exhaustion/Variantefd461391ee3bee03163b80f554c77d7b694f6ed81776673ec54ea74ecd7ccd8.lean/declarations/measure-sigmafinitesetwrt--b58abe2f0164b1280ab65cdb.md) | 207 | `result-track:b58abe2f0164b1280ab65cdb41be5d97c1ee506d31dbd85c08f13994f38ab5bf` |
| 15 | `lemma` | [measure_eq_top_of_subset_compl_sigmaFiniteSetWRT'_of_measurableSet](../../../../../mathematics/Analysis/MeasureTheory/Exhaustion/Variantefd461391ee3bee03163b80f554c77d7b694f6ed81776673ec54ea74ecd7ccd8.lean/declarations/measure-eq-top-of-subset-compl-sigmafinitesetwrt-of-measurableset--f7e5b900413e3d69ee7af61f.md) | 219 | `result-track:f7e5b900413e3d69ee7af61f06be4aeb6ee5990c09e483968f28dc21f922252c` |
| 16 | `lemma` | [measure_eq_top_of_subset_compl_sigmaFiniteSetWRT'](../../../../../mathematics/Analysis/MeasureTheory/Exhaustion/Variantefd461391ee3bee03163b80f554c77d7b694f6ed81776673ec54ea74ecd7ccd8.lean/declarations/measure-eq-top-of-subset-compl-sigmafinitesetwrt--00840d8268c160b807a3f7c7.md) | 242 | `result-track:00840d8268c160b807a3f7c74eeb19ba7a0fe62f59c8c499f7e7fa24b1078be8` |
| 17 | `lemma` | [measure_eq_top_of_subset_compl_sigmaFiniteSetWRT](../../../../../mathematics/Analysis/MeasureTheory/Exhaustion/Variantefd461391ee3bee03163b80f554c77d7b694f6ed81776673ec54ea74ecd7ccd8.lean/declarations/measure-eq-top-of-subset-compl-sigmafinitesetwrt--b714ace82fb14d9e8926f24b.md) | 263 | `result-track:b714ace82fb14d9e8926f24b46ebc1aec6532872bf6a4669ff8998a44e3bed07` |
| 18 | `lemma` | [restrict_compl_sigmaFiniteSetWRT](../../../../../mathematics/Analysis/MeasureTheory/Exhaustion/Variantefd461391ee3bee03163b80f554c77d7b694f6ed81776673ec54ea74ecd7ccd8.lean/declarations/restrict-compl-sigmafinitesetwrt--3f7d4ef8cbeafb4cb5b1d199.md) | 276 | `result-track:3f7d4ef8cbeafb4cb5b1d199ee3b27f9f90b6a37088ca7deb5512f173f8b2640` |
| 19 | `lemma` | [measure_compl_sigmaFiniteSetWRT](../../../../../mathematics/Analysis/MeasureTheory/Exhaustion/Variantefd461391ee3bee03163b80f554c77d7b694f6ed81776673ec54ea74ecd7ccd8.lean/declarations/measure-compl-sigmafinitesetwrt--9e6cd3f980a8d07f8c93100f.md) | 291 | `result-track:9e6cd3f980a8d07f8c93100f0322423d65e0242eaaae047ec91505d916724dbd` |
| 20 | `def` | [Measure.sigmaFiniteSet](../../../../../mathematics/Analysis/MeasureTheory/Exhaustion/Variantefd461391ee3bee03163b80f554c77d7b694f6ed81776673ec54ea74ecd7ccd8.lean/declarations/measure-sigmafiniteset--bdf004bbeed675192611046e.md) | 311 | `declaration-track:bdf004bbeed675192611046e8eeab8990d64257f11e1ac9fdb03964a7d9bbc9c` |
| 21 | `lemma` | [measurableSet_sigmaFiniteSet](../../../../../mathematics/Analysis/MeasureTheory/Exhaustion/Variantefd461391ee3bee03163b80f554c77d7b694f6ed81776673ec54ea74ecd7ccd8.lean/declarations/measurableset-sigmafiniteset--a33a24438a5015c36f1081cb.md) | 314 | `result-track:a33a24438a5015c36f1081cbede01187d9d5b3a9b5bc61ac009e90be7f36bc03` |
| 22 | `lemma` | [measure_eq_zero_or_top_of_subset_compl_sigmaFiniteSet](../../../../../mathematics/Analysis/MeasureTheory/Exhaustion/Variantefd461391ee3bee03163b80f554c77d7b694f6ed81776673ec54ea74ecd7ccd8.lean/declarations/measure-eq-zero-or-top-of-subset-compl-sigmafiniteset--8d5d85dbbfda1e975581b92e.md) | 317 | `result-track:8d5d85dbbfda1e975581b92e35563c6cdccc19bb4bbc80a75c01ac62b132a5e7` |
| 23 | `lemma` | [restrict_compl_sigmaFiniteSet_eq_zero_or_top](../../../../../mathematics/Analysis/MeasureTheory/Exhaustion/Variantefd461391ee3bee03163b80f554c77d7b694f6ed81776673ec54ea74ecd7ccd8.lean/declarations/restrict-compl-sigmafiniteset-eq-zero-or-top--f04a4789fc3bb1a18b335db0.md) | 324 | `result-track:f04a4789fc3bb1a18b335db0abb26ea3a9eeff4ad4fa7781e11576708b8a815c` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Exhaustion/Variantefd461391ee3bee03163b80f554c77d7b694f6ed81776673ec54ea74ecd7ccd8.lean/declarations/instance--72aded89e327411d5bdddd67.md) | 330 | `declaration-track:72aded89e327411d5bdddd67651886d8e6ea20f6d7121eff482c7250c4806e07` |
| 25 | `lemma` | [sigmaFinite_of_measure_compl_sigmaFiniteSet_eq_zero](../../../../../mathematics/Analysis/MeasureTheory/Exhaustion/Variantefd461391ee3bee03163b80f554c77d7b694f6ed81776673ec54ea74ecd7ccd8.lean/declarations/sigmafinite-of-measure-compl-sigmafiniteset-eq-zero--824392f864f9422f3307e1e7.md) | 334 | `result-track:824392f864f9422f3307e1e706c9baece7a18758bf502fdb8f4bf35ec9ed2d1c` |
| 26 | `lemma` | [measure_compl_sigmaFiniteSet](../../../../../mathematics/Analysis/MeasureTheory/Exhaustion/Variantefd461391ee3bee03163b80f554c77d7b694f6ed81776673ec54ea74ecd7ccd8.lean/declarations/measure-compl-sigmafiniteset--f6292e00aabfa7d9733dc674.md) | 341 | `result-track:f6292e00aabfa7d9733dc674d56fa6f0834975609a00ba203bd11122fff534f5` |
| 27 | `lemma` | [measure_compl_sigmaFiniteSet_eq_zero_iff_sigmaFinite](../../../../../mathematics/Analysis/MeasureTheory/Exhaustion/Variantefd461391ee3bee03163b80f554c77d7b694f6ed81776673ec54ea74ecd7ccd8.lean/declarations/measure-compl-sigmafiniteset-eq-zero-iff-sigmafinite--a381f671bc266ff7fa6ad89e.md) | 345 | `result-track:a381f671bc266ff7fa6ad89e7e1aa01888dadafe835d9d345c02369beb4da4ff` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
