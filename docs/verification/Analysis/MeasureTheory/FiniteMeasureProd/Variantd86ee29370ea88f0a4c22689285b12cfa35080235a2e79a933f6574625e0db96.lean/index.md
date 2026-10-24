# Verification target: GRWTSK.Analysis.MeasureTheory.FiniteMeasureProd.Variantd86ee29370ea88f0a4c22689285b12cfa35080235a2e79a933f6574625e0db96

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2b804c058044f619af5ce5a6b6e6314e836fd185",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/FiniteMeasureProd/Variantd86ee29370ea88f0a4c22689285b12cfa35080235a2e79a933f6574625e0db96.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/FiniteMeasureProd/Variantd86ee29370ea88f0a4c22689285b12cfa35080235a2e79a933f6574625e0db96.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/FiniteMeasureProd/Variantd86ee29370ea88f0a4c22689285b12cfa35080235a2e79a933f6574625e0db96.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2b804c058044f619af5ce5a6b6e6314e836fd185`.

Source path: `GRWTSK/Analysis/MeasureTheory/FiniteMeasureProd/Variantd86ee29370ea88f0a4c22689285b12cfa35080235a2e79a933f6574625e0db96.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/FiniteMeasureProd/Variantd86ee29370ea88f0a4c22689285b12cfa35080235a2e79a933f6574625e0db96.lean.json)

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
| 1 | `def` | [prod](../../../../../mathematics/Analysis/MeasureTheory/FiniteMeasureProd/Variantd86ee29370ea88f0a4c22689285b12cfa35080235a2e79a933f6574625e0db96.lean/declarations/prod--6a2021bddd75ffd35cec4e12.md) | 46 | `declaration-track:6a2021bddd75ffd35cec4e125358528b1f12412944dffa62c2678e84366d4fec` |
| 2 | `lemma` | [toMeasure_prod](../../../../../mathematics/Analysis/MeasureTheory/FiniteMeasureProd/Variantd86ee29370ea88f0a4c22689285b12cfa35080235a2e79a933f6574625e0db96.lean/declarations/tomeasure-prod--1e535f056e3d9305dab8c4e2.md) | 51 | `result-track:1e535f056e3d9305dab8c4e2d91ec534392668eb0cb3f6fc9c4191a79d901dac` |
| 3 | `lemma` | [prod_apply](../../../../../mathematics/Analysis/MeasureTheory/FiniteMeasureProd/Variantd86ee29370ea88f0a4c22689285b12cfa35080235a2e79a933f6574625e0db96.lean/declarations/prod-apply--46dec5602d14d1a0179f7920.md) | 53 | `result-track:46dec5602d14d1a0179f79206d6362fd0fd80ea14624da7b99a30ea83a90c500` |
| 4 | `lemma` | [prod_apply_symm](../../../../../mathematics/Analysis/MeasureTheory/FiniteMeasureProd/Variantd86ee29370ea88f0a4c22689285b12cfa35080235a2e79a933f6574625e0db96.lean/declarations/prod-apply-symm--8bb754ddf54fb89c9dd54ea7.md) | 57 | `result-track:8bb754ddf54fb89c9dd54ea76fd72d3328e3c95f3a46b3152873afc3608e2c9c` |
| 5 | `lemma` | [prod_prod](../../../../../mathematics/Analysis/MeasureTheory/FiniteMeasureProd/Variantd86ee29370ea88f0a4c22689285b12cfa35080235a2e79a933f6574625e0db96.lean/declarations/prod-prod--5d9b17cf51bf95b688c916c2.md) | 61 | `result-track:5d9b17cf51bf95b688c916c243c70c3918f8087df5e2b7c0aa74d518c9401da3` |
| 6 | `lemma` | [mass_prod](../../../../../mathematics/Analysis/MeasureTheory/FiniteMeasureProd/Variantd86ee29370ea88f0a4c22689285b12cfa35080235a2e79a933f6574625e0db96.lean/declarations/mass-prod--dbac3e3803e0ede1316bbe85.md) | 64 | `result-track:dbac3e3803e0ede1316bbe85a3ba09c63064c12ee35bb2f6288b338d7ea6dee8` |
| 7 | `lemma` | [zero_prod](../../../../../mathematics/Analysis/MeasureTheory/FiniteMeasureProd/Variantd86ee29370ea88f0a4c22689285b12cfa35080235a2e79a933f6574625e0db96.lean/declarations/zero-prod--d563eb0eb3cffdc7c664f7c5.md) | 69 | `result-track:d563eb0eb3cffdc7c664f7c5dc66caffa94288a90ca82064d924bafa625dd953` |
| 8 | `lemma` | [prod_zero](../../../../../mathematics/Analysis/MeasureTheory/FiniteMeasureProd/Variantd86ee29370ea88f0a4c22689285b12cfa35080235a2e79a933f6574625e0db96.lean/declarations/prod-zero--601c4e51a8be126ef212a94b.md) | 72 | `result-track:601c4e51a8be126ef212a94b9556fcab8aa8d4207e2b8144b2274c557f924172` |
| 9 | `lemma` | [map_fst_prod](../../../../../mathematics/Analysis/MeasureTheory/FiniteMeasureProd/Variantd86ee29370ea88f0a4c22689285b12cfa35080235a2e79a933f6574625e0db96.lean/declarations/map-fst-prod--8e99c284eb96f26c84a1e6c1.md) | 75 | `result-track:8e99c284eb96f26c84a1e6c1d6a2d693cce4bb09102fd9501a78947ccdf8546f` |
| 10 | `lemma` | [map_snd_prod](../../../../../mathematics/Analysis/MeasureTheory/FiniteMeasureProd/Variantd86ee29370ea88f0a4c22689285b12cfa35080235a2e79a933f6574625e0db96.lean/declarations/map-snd-prod--d8ab433f052884951510c899.md) | 76 | `result-track:d8ab433f052884951510c899a4aa0c2a28b3bb9eb1b646bc8bf9b3c788f8822f` |
| 11 | `lemma` | [map_prod_map](../../../../../mathematics/Analysis/MeasureTheory/FiniteMeasureProd/Variantd86ee29370ea88f0a4c22689285b12cfa35080235a2e79a933f6574625e0db96.lean/declarations/map-prod-map--2f1b05d7ba5b3686240d3374.md) | 78 | `result-track:2f1b05d7ba5b3686240d3374872a567f0b3aa2aef2caacb5bbf85ae3d1cf3c59` |
| 12 | `lemma` | [prod_swap](../../../../../mathematics/Analysis/MeasureTheory/FiniteMeasureProd/Variantd86ee29370ea88f0a4c22689285b12cfa35080235a2e79a933f6574625e0db96.lean/declarations/prod-swap--1599838c015a7e87e172b3a4.md) | 85 | `result-track:1599838c015a7e87e172b3a4f3df6d9d28df42bbe0786ca4e0b0cc3e056a550e` |
| 13 | `def` | [prod](../../../../../mathematics/Analysis/MeasureTheory/FiniteMeasureProd/Variantd86ee29370ea88f0a4c22689285b12cfa35080235a2e79a933f6574625e0db96.lean/declarations/prod--abc02a4c4ef7ff34a6f3208b.md) | 100 | `declaration-track:abc02a4c4ef7ff34a6f3208b06498d0114872b541fa1fe1d1202ab4e47583c79` |
| 14 | `lemma` | [toMeasure_prod](../../../../../mathematics/Analysis/MeasureTheory/FiniteMeasureProd/Variantd86ee29370ea88f0a4c22689285b12cfa35080235a2e79a933f6574625e0db96.lean/declarations/tomeasure-prod--de016abc8fdf018385490f54.md) | 106 | `result-track:de016abc8fdf018385490f542d5cad8dceeb20c4cdc91b7ede7d5229cb23dafa` |
| 15 | `lemma` | [prod_apply](../../../../../mathematics/Analysis/MeasureTheory/FiniteMeasureProd/Variantd86ee29370ea88f0a4c22689285b12cfa35080235a2e79a933f6574625e0db96.lean/declarations/prod-apply--c4dde3f27455269eb3f79ed4.md) | 108 | `result-track:c4dde3f27455269eb3f79ed499aa11e99f59956903b98528685f8ad98f579d38` |
| 16 | `lemma` | [prod_apply_symm](../../../../../mathematics/Analysis/MeasureTheory/FiniteMeasureProd/Variantd86ee29370ea88f0a4c22689285b12cfa35080235a2e79a933f6574625e0db96.lean/declarations/prod-apply-symm--3b2cfe1f946b4c56649a2954.md) | 112 | `result-track:3b2cfe1f946b4c56649a29548e1812e5d8f4b7ed9948875ecd7838e005edf753` |
| 17 | `lemma` | [prod_prod](../../../../../mathematics/Analysis/MeasureTheory/FiniteMeasureProd/Variantd86ee29370ea88f0a4c22689285b12cfa35080235a2e79a933f6574625e0db96.lean/declarations/prod-prod--be5f2019af779a19bc9fe437.md) | 116 | `result-track:be5f2019af779a19bc9fe43728cdd857ad730a2483d86498a27ebbc69f595d98` |
| 18 | `lemma` | [map_fst_prod](../../../../../mathematics/Analysis/MeasureTheory/FiniteMeasureProd/Variantd86ee29370ea88f0a4c22689285b12cfa35080235a2e79a933f6574625e0db96.lean/declarations/map-fst-prod--45dc803a90c65a3eec854c94.md) | 120 | `result-track:45dc803a90c65a3eec854c94365399088815827e9080e687c9ba7cc229744cf3` |
| 19 | `lemma` | [map_snd_prod](../../../../../mathematics/Analysis/MeasureTheory/FiniteMeasureProd/Variantd86ee29370ea88f0a4c22689285b12cfa35080235a2e79a933f6574625e0db96.lean/declarations/map-snd-prod--12c6489fbd4045572060ac41.md) | 125 | `result-track:12c6489fbd4045572060ac419a23ce067cebf7a66530f7c08d971df8424db0b0` |
| 20 | `lemma` | [map_prod_map](../../../../../mathematics/Analysis/MeasureTheory/FiniteMeasureProd/Variantd86ee29370ea88f0a4c22689285b12cfa35080235a2e79a933f6574625e0db96.lean/declarations/map-prod-map--a0fbd42e842c380c5331036c.md) | 129 | `result-track:a0fbd42e842c380c5331036c84c21f9ec2430d42b31255656083ae51e3dda74a` |
| 21 | `lemma` | [prod_swap](../../../../../mathematics/Analysis/MeasureTheory/FiniteMeasureProd/Variantd86ee29370ea88f0a4c22689285b12cfa35080235a2e79a933f6574625e0db96.lean/declarations/prod-swap--22e2ee2d30a51556c35e4c0d.md) | 136 | `result-track:22e2ee2d30a51556c35e4c0d3be1c0519076c22260a82831160c7c8693d43970` |
| 22 | `theorem` | [continuous_prod](../../../../../mathematics/Analysis/MeasureTheory/FiniteMeasureProd/Variantd86ee29370ea88f0a4c22689285b12cfa35080235a2e79a933f6574625e0db96.lean/declarations/continuous-prod--d43034203b6e0d618879cc3a.md) | 144 | `result-track:d43034203b6e0d618879cc3a8d896dad10e07e114f64faa33c2983a1389bde91` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
