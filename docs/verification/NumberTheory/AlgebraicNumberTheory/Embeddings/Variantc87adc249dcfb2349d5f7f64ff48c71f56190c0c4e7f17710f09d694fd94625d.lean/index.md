# Verification target: GRWTSK.NumberTheory.AlgebraicNumberTheory.Embeddings.Variantc87adc249dcfb2349d5f7f64ff48c71f56190c0c4e7f17710f09d694fd94625d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b641817ccaecb6d81def132fbd6d782978a18853",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/Embeddings/Variantc87adc249dcfb2349d5f7f64ff48c71f56190c0c4e7f17710f09d694fd94625d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variantc87adc249dcfb2349d5f7f64ff48c71f56190c0c4e7f17710f09d694fd94625d.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variantc87adc249dcfb2349d5f7f64ff48c71f56190c0c4e7f17710f09d694fd94625d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b641817ccaecb6d81def132fbd6d782978a18853`.

Source path: `GRWTSK/NumberTheory/AlgebraicNumberTheory/Embeddings/Variantc87adc249dcfb2349d5f7f64ff48c71f56190c0c4e7f17710f09d694fd94625d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AlgebraicNumberTheory/Embeddings/Variantc87adc249dcfb2349d5f7f64ff48c71f56190c0c4e7f17710f09d694fd94625d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Hom.Rat` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.Polynomial.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.NumberField.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variantc87adc249dcfb2349d5f7f64ff48c71f56190c0c4e7f17710f09d694fd94625d.lean/declarations/instance--69256a65aff43bdbddbd5388.md) | 41 | `declaration-track:69256a65aff43bdbddbd538870e73bcde9cd5b3de3472e5eb7c75506d917d217` |
| 2 | `theorem` | [card](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variantc87adc249dcfb2349d5f7f64ff48c71f56190c0c4e7f17710f09d694fd94625d.lean/declarations/card--4e822654847a4a6a045fc4a7.md) | 47 | `result-track:4e822654847a4a6a045fc4a718f9ded52c4f20a1332da301d862d065aca5eb30` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variantc87adc249dcfb2349d5f7f64ff48c71f56190c0c4e7f17710f09d694fd94625d.lean/declarations/instance--8d86cf734344954203494a9a.md) | 50 | `declaration-track:8d86cf734344954203494a9a4d7f10a51e4543571684abc5dd2e5dbc2a4b1892` |
| 4 | `theorem` | [range_eval_eq_rootSet_minpoly](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variantc87adc249dcfb2349d5f7f64ff48c71f56190c0c4e7f17710f09d694fd94625d.lean/declarations/range-eval-eq-rootset-minpoly--c97b6dbc52d4e317e32d3042.md) | 65 | `result-track:c97b6dbc52d4e317e32d3042a1203488a5eb597d10c17dd7b99ff4a31c407425` |
| 5 | `theorem` | [coeff_bdd_of_norm_le](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variantc87adc249dcfb2349d5f7f64ff48c71f56190c0c4e7f17710f09d694fd94625d.lean/declarations/coeff-bdd-of-norm-le--8020083c990736e8ebd7be08.md) | 80 | `result-track:8020083c990736e8ebd7be0833d6486d9141f6da2e8d4749dca8231d5e5ab9a8` |
| 6 | `theorem` | [finite_of_norm_le](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variantc87adc249dcfb2349d5f7f64ff48c71f56190c0c4e7f17710f09d694fd94625d.lean/declarations/finite-of-norm-le--6cd8ccf0a7d3e8e699d8990e.md) | 95 | `result-track:6cd8ccf0a7d3e8e699d8990ec0ba4c92640c10dd3fb4151310b39613a656a59c` |
| 7 | `theorem` | [pow_eq_one_of_norm_eq_one](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variantc87adc249dcfb2349d5f7f64ff48c71f56190c0c4e7f17710f09d694fd94625d.lean/declarations/pow-eq-one-of-norm-eq-one--55103d7a6d593cb235bb03ef.md) | 109 | `result-track:55103d7a6d593cb235bb03ef31a93f29b9a63f3c263d11f1ef8a2d16a0a812b2` |
| 8 | `def` | [NumberField.place](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variantc87adc249dcfb2349d5f7f64ff48c71f56190c0c4e7f17710f09d694fd94625d.lean/declarations/numberfield-place--789a0378fb9407f2f92f6d32.md) | 131 | `declaration-track:789a0378fb9407f2f92f6d3242e1d6de8a27aa3fc6af941aafa4288fb23f1914` |
| 9 | `theorem` | [NumberField.place_apply](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variantc87adc249dcfb2349d5f7f64ff48c71f56190c0c4e7f17710f09d694fd94625d.lean/declarations/numberfield-place-apply--01cc990ca84d04faac884e3e.md) | 135 | `result-track:01cc990ca84d04faac884e3ea790719ed3a7259c16c7cb245e312581caf78232` |
| 10 | `def` | [lift](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variantc87adc249dcfb2349d5f7f64ff48c71f56190c0c4e7f17710f09d694fd94625d.lean/declarations/lift--decd53e8ee6f40b2e55407f3.md) | 150 | `declaration-track:decd53e8ee6f40b2e55407f3bc5298fc388cf10f44b7a6444d23d870bc2e871d` |
| 11 | `theorem` | [lift_comp_algebraMap](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variantc87adc249dcfb2349d5f7f64ff48c71f56190c0c4e7f17710f09d694fd94625d.lean/declarations/lift-comp-algebramap--1b521a2c0ab78f274a9b2373.md) | 155 | `result-track:1b521a2c0ab78f274a9b237371a0dc7a491a717ca9637baa4610324124973655` |
| 12 | `theorem` | [lift_algebraMap_apply](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variantc87adc249dcfb2349d5f7f64ff48c71f56190c0c4e7f17710f09d694fd94625d.lean/declarations/lift-algebramap-apply--507a362748793be0eb414e47.md) | 162 | `result-track:507a362748793be0eb414e471336b9b7c88516ff65226539ced3e01001a3825c` |
| 13 | `abbrev` | [conjugate](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variantc87adc249dcfb2349d5f7f64ff48c71f56190c0c4e7f17710f09d694fd94625d.lean/declarations/conjugate--bd38bc2947984a2878a8aa5e.md) | 169 | `declaration-track:bd38bc2947984a2878a8aa5e73cd8cecb37f9d8cba178b4ea6e5761962bdd4df` |
| 14 | `theorem` | [conjugate_coe_eq](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variantc87adc249dcfb2349d5f7f64ff48c71f56190c0c4e7f17710f09d694fd94625d.lean/declarations/conjugate-coe-eq--2a0440bf63a29b7598291e72.md) | 172 | `result-track:2a0440bf63a29b7598291e7246f50dfa0ff27663d49c2dc34f198a1df845f3e5` |
| 15 | `theorem` | [place_conjugate](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variantc87adc249dcfb2349d5f7f64ff48c71f56190c0c4e7f17710f09d694fd94625d.lean/declarations/place-conjugate--ee5abc4ad998440271737ea1.md) | 174 | `result-track:ee5abc4ad998440271737ea1d9816a3e395515a98d2c7137c840afc7347bd8c5` |
| 16 | `abbrev` | [IsReal](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variantc87adc249dcfb2349d5f7f64ff48c71f56190c0c4e7f17710f09d694fd94625d.lean/declarations/isreal--1b1ab5a552c5867675f0d4cb.md) | 178 | `declaration-track:1b1ab5a552c5867675f0d4cbe73e621795fba0322af613062adb2d79c544b160` |
| 17 | `theorem` | [isReal_iff](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variantc87adc249dcfb2349d5f7f64ff48c71f56190c0c4e7f17710f09d694fd94625d.lean/declarations/isreal-iff--9a991a1c819504865e006bb6.md) | 180 | `result-track:9a991a1c819504865e006bb66c3bf89317fd18cda40f7ced2af838b266d837bc` |
| 18 | `theorem` | [isReal_conjugate_iff](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variantc87adc249dcfb2349d5f7f64ff48c71f56190c0c4e7f17710f09d694fd94625d.lean/declarations/isreal-conjugate-iff--2897717da93be61117fb1131.md) | 182 | `result-track:2897717da93be61117fb1131fd0a9fce59e31ff860cad7ff7958717c153a0ef3` |
| 19 | `def` | [IsReal.embedding](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variantc87adc249dcfb2349d5f7f64ff48c71f56190c0c4e7f17710f09d694fd94625d.lean/declarations/isreal-embedding--3c25f56045fbd7ee6b9c74df.md) | 186 | `declaration-track:3c25f56045fbd7ee6b9c74dff6bd3825f1e4b3a488e86c4cba35f9cd5e5c0a07` |
| 20 | `theorem` | [IsReal.coe_embedding_apply](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variantc87adc249dcfb2349d5f7f64ff48c71f56190c0c4e7f17710f09d694fd94625d.lean/declarations/isreal-coe-embedding-apply--6947b77eef92ff98a402ef43.md) | 196 | `result-track:6947b77eef92ff98a402ef43835f1112e07617fbdff2032bc526a9fd4a069fc2` |
| 21 | `lemma` | [IsReal.comp](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variantc87adc249dcfb2349d5f7f64ff48c71f56190c0c4e7f17710f09d694fd94625d.lean/declarations/isreal-comp--3ee40da07221fee9a4bc26e9.md) | 203 | `result-track:3ee40da07221fee9a4bc26e9f909b27a96a19b0337aa3d67296d952c2a1852db` |
| 22 | `lemma` | [isReal_comp_iff](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variantc87adc249dcfb2349d5f7f64ff48c71f56190c0c4e7f17710f09d694fd94625d.lean/declarations/isreal-comp-iff--edbfbe4f3b89beb7a5248ef6.md) | 206 | `result-track:edbfbe4f3b89beb7a5248ef624f4e42e0b544149d4facec4918eb5711b837d77` |
| 23 | `lemma` | [exists_comp_symm_eq_of_comp_eq](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variantc87adc249dcfb2349d5f7f64ff48c71f56190c0c4e7f17710f09d694fd94625d.lean/declarations/exists-comp-symm-eq-of-comp-eq--223b6715bc2fd6565449ccbd.md) | 210 | `result-track:223b6715bc2fd6565449ccbdedc41eb4633f2e91987d41862ead880f5ae2c78a` |
| 24 | `def` | [IsConj](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variantc87adc249dcfb2349d5f7f64ff48c71f56190c0c4e7f17710f09d694fd94625d.lean/declarations/isconj--dd946fe3f5b041905a231407.md) | 226 | `declaration-track:dd946fe3f5b041905a2314077233f62bbcb2f18f53445692ca8724a9409f30e0` |
| 25 | `lemma` | [IsConj.eq](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variantc87adc249dcfb2349d5f7f64ff48c71f56190c0c4e7f17710f09d694fd94625d.lean/declarations/isconj-eq--76bcfef80e96d8d8e3794f8d.md) | 230 | `result-track:76bcfef80e96d8d8e3794f8ddfac1e25f14a30bc1dace3c689850d659f963513` |
| 26 | `lemma` | [IsConj.ext](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variantc87adc249dcfb2349d5f7f64ff48c71f56190c0c4e7f17710f09d694fd94625d.lean/declarations/isconj-ext--14ee01cce1d136479669f98d.md) | 232 | `result-track:14ee01cce1d136479669f98d0b6432f58d00e2b33e25363f8f996fe937ab7fd3` |
| 27 | `lemma` | [IsConj.ext_iff](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variantc87adc249dcfb2349d5f7f64ff48c71f56190c0c4e7f17710f09d694fd94625d.lean/declarations/isconj-ext-iff--9bb0cf4abcc7ff14aabd8b6c.md) | 235 | `result-track:9bb0cf4abcc7ff14aabd8b6c0cfe34e5dd08470a7a9b855d4f21519445dca786` |
| 28 | `lemma` | [IsConj.isReal_comp](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variantc87adc249dcfb2349d5f7f64ff48c71f56190c0c4e7f17710f09d694fd94625d.lean/declarations/isconj-isreal-comp--20bb1867586f297ea5c68911.md) | 238 | `result-track:20bb1867586f297ea5c68911a3dd835f3023701bf46ba3a02a981ac788f5871c` |
| 29 | `lemma` | [isConj_one_iff](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variantc87adc249dcfb2349d5f7f64ff48c71f56190c0c4e7f17710f09d694fd94625d.lean/declarations/isconj-one-iff--f436163792422d4a5ec7df25.md) | 243 | `result-track:f436163792422d4a5ec7df25b77cf19a2cad9ece3eb828f1c51e84015ee6ceeb` |
| 30 | `lemma` | [IsConj.symm](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variantc87adc249dcfb2349d5f7f64ff48c71f56190c0c4e7f17710f09d694fd94625d.lean/declarations/isconj-symm--35249601aa7ab8e6099adc42.md) | 247 | `result-track:35249601aa7ab8e6099adc42df142ee3ce0fe29291f34a97838700f793f0907f` |
| 31 | `lemma` | [isConj_symm](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Embeddings/Variantc87adc249dcfb2349d5f7f64ff48c71f56190c0c4e7f17710f09d694fd94625d.lean/declarations/isconj-symm--ed3ed3ce83b8d95a6cf541dc.md) | 250 | `result-track:ed3ed3ce83b8d95a6cf541dcb11d18cbb80c7f76cc17176defe24a05ca94e324` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
