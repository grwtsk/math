# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Embedding.Variant421283d770872a3593698be3308ff595708f1875b8cd81033f9ef6260a87563d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e6192e26a15b767c10cb7a3bc9e638ebd9d8885c",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Embedding/Variant421283d770872a3593698be3308ff595708f1875b8cd81033f9ef6260a87563d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Embedding/Variant421283d770872a3593698be3308ff595708f1875b8cd81033f9ef6260a87563d.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Embedding/Variant421283d770872a3593698be3308ff595708f1875b8cd81033f9ef6260a87563d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e6192e26a15b767c10cb7a3bc9e638ebd9d8885c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Embedding/Variant421283d770872a3593698be3308ff595708f1875b8cd81033f9ef6260a87563d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Embedding/Variant421283d770872a3593698be3308ff595708f1875b8cd81033f9ef6260a87563d.lean.json)

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
| 1 | `def` | [valEmbedding](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Embedding/Variant421283d770872a3593698be3308ff595708f1875b8cd81033f9ef6260a87563d.lean/declarations/valembedding--39ce9d052050e35f7db05477.md) | 56 | `declaration-track:39ce9d052050e35f7db05477b83b9b7d0241c98c4c2f3904c15ff43970cbfcf6` |
| 2 | `theorem` | [equivSubtype_symm_trans_valEmbedding](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Embedding/Variant421283d770872a3593698be3308ff595708f1875b8cd81033f9ef6260a87563d.lean/declarations/equivsubtype-symm-trans-valembedding--fcdab6fba03e74e00b3165f3.md) | 60 | `result-track:fcdab6fba03e74e00b3165f3b9ccd6256b08333ca38230251b1285fa90359a4b` |
| 3 | `def` | [succEmb](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Embedding/Variant421283d770872a3593698be3308ff595708f1875b8cd81033f9ef6260a87563d.lean/declarations/succemb--00f11941628b708de56bb68e.md) | 73 | `declaration-track:00f11941628b708de56bb68ea7699b9df071bb00519fe2ddd2005d25c45ec364` |
| 4 | `theorem` | [coe_succEmb](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Embedding/Variant421283d770872a3593698be3308ff595708f1875b8cd81033f9ef6260a87563d.lean/declarations/coe-succemb--35e68cbec31ed73559b8d7ea.md) | 78 | `result-track:35e68cbec31ed73559b8d7eab829a9a1d67c70306f9442db4e79044cb064f914` |
| 5 | `def` | [castLEEmb](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Embedding/Variant421283d770872a3593698be3308ff595708f1875b8cd81033f9ef6260a87563d.lean/declarations/castleemb--b43eb1e5df681de5501efce9.md) | 85 | `declaration-track:b43eb1e5df681de5501efce990cfbf4e46b4e0993006ce473604be0d740fbae6` |
| 6 | `lemma` | [coe_castLEEmb](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Embedding/Variant421283d770872a3593698be3308ff595708f1875b8cd81033f9ef6260a87563d.lean/declarations/coe-castleemb--c9de5dd9f6b820b63c4f5073.md) | 89 | `result-track:c9de5dd9f6b820b63c4f50732bf57695dd8d2193debf4fdb4316671cdda1bfac` |
| 7 | `lemma` | [nonempty_embedding_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Embedding/Variant421283d770872a3593698be3308ff595708f1875b8cd81033f9ef6260a87563d.lean/declarations/nonempty-embedding-iff--f2ce400945c6819457e541f6.md) | 94 | `result-track:f2ce400945c6819457e541f68a1b6c8d2153e29add52e6ba367957d613d2fdb4` |
| 8 | `lemma` | [equiv_iff_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Embedding/Variant421283d770872a3593698be3308ff595708f1875b8cd81033f9ef6260a87563d.lean/declarations/equiv-iff-eq--b9455c5638a62ab70ac00073.md) | 107 | `result-track:b9455c5638a62ab70ac000737e0fe94bc6f4989a3cf6992681a469cc09d0748d` |
| 9 | `def` | [castAddEmb](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Embedding/Variant421283d770872a3593698be3308ff595708f1875b8cd81033f9ef6260a87563d.lean/declarations/castaddemb--91ff7aed53a4df3c18091d88.md) | 113 | `declaration-track:91ff7aed53a4df3c18091d881673735da2f1d8b6d687d99ea94d960c7291e61a` |
| 10 | `lemma` | [coe_castAddEmb](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Embedding/Variant421283d770872a3593698be3308ff595708f1875b8cd81033f9ef6260a87563d.lean/declarations/coe-castaddemb--9128e0d449bf7b8c1a87d27c.md) | 116 | `result-track:9128e0d449bf7b8c1a87d27cb0145eb58396295c13418c78a5f46e7b48d45f52` |
| 11 | `lemma` | [castAddEmb_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Embedding/Variant421283d770872a3593698be3308ff595708f1875b8cd81033f9ef6260a87563d.lean/declarations/castaddemb-apply--96ad06f8adcaa4e662094bac.md) | 118 | `result-track:96ad06f8adcaa4e662094bac1daf81844fbd5b6f9f9ef59251854d0afab6556f` |
| 12 | `def` | [castSuccEmb](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Embedding/Variant421283d770872a3593698be3308ff595708f1875b8cd81033f9ef6260a87563d.lean/declarations/castsuccemb--3f86249ab070b3c8154721b9.md) | 121 | `declaration-track:3f86249ab070b3c8154721b9c0a943fd36c5a518124f37b2f09f097141b64089` |
| 13 | `lemma` | [coe_castSuccEmb](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Embedding/Variant421283d770872a3593698be3308ff595708f1875b8cd81033f9ef6260a87563d.lean/declarations/coe-castsuccemb--ca8a0a7e7f1e8e8c33b962cb.md) | 123 | `result-track:ca8a0a7e7f1e8e8c33b962cb1078cc9848ad0db57d5f187ef2bd9b5fd9c0955b` |
| 14 | `lemma` | [castSuccEmb_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Embedding/Variant421283d770872a3593698be3308ff595708f1875b8cd81033f9ef6260a87563d.lean/declarations/castsuccemb-apply--81d7da01c74b1e3da24912a5.md) | 125 | `result-track:81d7da01c74b1e3da24912a541172b4a8e0bbe29685f1f5e999f166cb83009cb` |
| 15 | `def` | [addNatEmb](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Embedding/Variant421283d770872a3593698be3308ff595708f1875b8cd81033f9ef6260a87563d.lean/declarations/addnatemb--e356ea2ca25285f86baf78f6.md) | 129 | `declaration-track:e356ea2ca25285f86baf78f6df328979204679654cbb051dbe850a71c2270f42` |
| 16 | `def` | [natAddEmb](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Embedding/Variant421283d770872a3593698be3308ff595708f1875b8cd81033f9ef6260a87563d.lean/declarations/nataddemb--3eb40bc3e1dea6aa46ed09d2.md) | 135 | `declaration-track:3eb40bc3e1dea6aa46ed09d25b6dae02daa9ea5b04642cb1a3ed31061e90bcfd` |
| 17 | `def` | [succAboveEmb](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Embedding/Variant421283d770872a3593698be3308ff595708f1875b8cd81033f9ef6260a87563d.lean/declarations/succaboveemb--fe0b4e2540fe2bf8f28d44c8.md) | 147 | `declaration-track:fe0b4e2540fe2bf8f28d44c840636584c4f1adb439856c687562adc265101bc5` |
| 18 | `lemma` | [coe_succAboveEmb](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Embedding/Variant421283d770872a3593698be3308ff595708f1875b8cd81033f9ef6260a87563d.lean/declarations/coe-succaboveemb--e8e35710329025246fa93e59.md) | 149 | `result-track:e8e35710329025246fa93e595f9a948c4708f64d84753df337e501239323d510` |
| 19 | `def` | [natAdd_castLEEmb](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Embedding/Variant421283d770872a3593698be3308ff595708f1875b8cd81033f9ef6260a87563d.lean/declarations/natadd-castleemb--2ba19c209ef212332ba5ec35.md) | 155 | `declaration-track:2ba19c209ef212332ba5ec3558ea41a3c3e39a1dde4cf098b09dec929cce5782` |
| 20 | `lemma` | [range_natAdd_castLEEmb](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Embedding/Variant421283d770872a3593698be3308ff595708f1875b8cd81033f9ef6260a87563d.lean/declarations/range-natadd-castleemb--ea28c32136fc37df84e62968.md) | 158 | `result-track:ea28c32136fc37df84e62968bed0c4767cc274dd29cb1380ef19ecc1cca28831` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
