# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.ThreePointVolumeQuarticExtraction

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8b8f253adacd80a3df2ad81a31d19420362f8652",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/ThreePointVolumeQuarticExtraction.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/ThreePointVolumeQuarticExtraction.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/ThreePointVolumeQuarticExtraction.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8b8f253adacd80a3df2ad81a31d19420362f8652`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/ThreePointVolumeQuarticExtraction.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/ThreePointVolumeQuarticExtraction.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.PrimeGramQuarticExtraction`](../../../../../mathematics/NumberTheory/Zeta/Riemann/PrimeGramQuarticExtraction.lean/index.md) — import line 3; pinned internal source present.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PackingPoint](../../../../../mathematics/NumberTheory/Zeta/Riemann/ThreePointVolumeQuarticExtraction.lean/declarations/packingpoint--5a8fd4f97b0f98d23da90cc5.md) | 32 | `declaration-track:5a8fd4f97b0f98d23da90cc5d7415035f19c110628e311be8b80a539d915c7bb` |
| 2 | `theorem` | [ext](../../../../../mathematics/NumberTheory/Zeta/Riemann/ThreePointVolumeQuarticExtraction.lean/declarations/ext--d8e6d2fdf8066aa681f4ad3d.md) | 38 | `result-track:d8e6d2fdf8066aa681f4ad3dd9f4b7298970fbedc50999b80f43ab2d2364fdb8` |
| 3 | `def` | [sub](../../../../../mathematics/NumberTheory/Zeta/Riemann/ThreePointVolumeQuarticExtraction.lean/declarations/sub--fbdd98850a03caa7a1895285.md) | 43 | `declaration-track:fbdd98850a03caa7a18952853b48b06428992dbe95ba093a94a644e6a4d6fcce` |
| 4 | `def` | [dot](../../../../../mathematics/NumberTheory/Zeta/Riemann/ThreePointVolumeQuarticExtraction.lean/declarations/dot--2a9f200e4dab3bc843b7e49f.md) | 46 | `declaration-track:2a9f200e4dab3bc843b7e49fe035272cb8ddd8300e425693eb299fb1bbd459e4` |
| 5 | `def` | [normSq](../../../../../mathematics/NumberTheory/Zeta/Riemann/ThreePointVolumeQuarticExtraction.lean/declarations/normsq--7b0aa2c2cd912df9284c9430.md) | 49 | `declaration-track:7b0aa2c2cd912df9284c9430942269c97453e59e56ab4fc709b85fb7f3940c6a` |
| 6 | `theorem` | [normSq_nonneg](../../../../../mathematics/NumberTheory/Zeta/Riemann/ThreePointVolumeQuarticExtraction.lean/declarations/normsq-nonneg--47528a954bb3b479ccf6e9f9.md) | 52 | `result-track:47528a954bb3b479ccf6e9f98784478aab23687fa28aea0003cb549896fa8e85` |
| 7 | `structure` | [ThreePointPacking](../../../../../mathematics/NumberTheory/Zeta/Riemann/ThreePointVolumeQuarticExtraction.lean/declarations/threepointpacking--4ae68f311e1c5b1ceb5e01b2.md) | 58 | `declaration-track:4ae68f311e1c5b1ceb5e01b2ce9ecede6907783df1f98216546a8b0fe8e8f6e4` |
| 8 | `def` | [edge01](../../../../../mathematics/NumberTheory/Zeta/Riemann/ThreePointVolumeQuarticExtraction.lean/declarations/edge01--21f9e8fa934305e257115ddf.md) | 66 | `declaration-track:21f9e8fa934305e257115ddfdd65320a15cb1ed58c19b624ed15332475f9c571` |
| 9 | `def` | [edge12](../../../../../mathematics/NumberTheory/Zeta/Riemann/ThreePointVolumeQuarticExtraction.lean/declarations/edge12--ab5498dcf3f0212820914b02.md) | 70 | `declaration-track:ab5498dcf3f0212820914b029be5c034c147babe9bcc4b294c83dd9449d97980` |
| 10 | `def` | [orientedVolume](../../../../../mathematics/NumberTheory/Zeta/Riemann/ThreePointVolumeQuarticExtraction.lean/declarations/orientedvolume--bac9f5b50e9d4e27790a4097.md) | 74 | `declaration-track:bac9f5b50e9d4e27790a4097aeabe1e3a06a58086ae250cd46ce5eb058562fbe` |
| 11 | `def` | [gramVolume](../../../../../mathematics/NumberTheory/Zeta/Riemann/ThreePointVolumeQuarticExtraction.lean/declarations/gramvolume--7d1954d3c7eecd71f9bd2552.md) | 78 | `declaration-track:7d1954d3c7eecd71f9bd2552144f16d5a6b0b7cce8c0bb46057ca0e1e55e3868` |
| 12 | `theorem` | [gramVolume_nonnegative](../../../../../mathematics/NumberTheory/Zeta/Riemann/ThreePointVolumeQuarticExtraction.lean/declarations/gramvolume-nonnegative--866439d9aaab8f22fce4afef.md) | 82 | `result-track:866439d9aaab8f22fce4afefbbe2e7d977241dc8b33b4e1dc7a11c7c4e437c0c` |
| 13 | `theorem` | [gramVolume_eq_gramDet](../../../../../mathematics/NumberTheory/Zeta/Riemann/ThreePointVolumeQuarticExtraction.lean/declarations/gramvolume-eq-gramdet--c2e2ee1807ab31232496a9ea.md) | 87 | `result-track:c2e2ee1807ab31232496a9eafc3602e61e04b0324a2960c7cb68b826ea67acf6` |
| 14 | `theorem` | [gramVolume_eq_zero_of_orientedVolume_eq_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/ThreePointVolumeQuarticExtraction.lean/declarations/gramvolume-eq-zero-of-orientedvolume-eq-zero--3ae2a94bd8777bf2b86395c8.md) | 96 | `result-track:3ae2a94bd8777bf2b86395c8e4191513c522b8ff513a4ecf11922a7934feb1d7` |
| 15 | `structure` | [ThreePointPrimePackingStage](../../../../../mathematics/NumberTheory/Zeta/Riemann/ThreePointVolumeQuarticExtraction.lean/declarations/threepointprimepackingstage--75043e98d40efbdf12d3b655.md) | 105 | `declaration-track:75043e98d40efbdf12d3b655ea8f6fe835347ce2e24610f0b6655da547a489ef` |
| 16 | `theorem` | [nonnegative](../../../../../mathematics/NumberTheory/Zeta/Riemann/ThreePointVolumeQuarticExtraction.lean/declarations/nonnegative--213660f3b5a7a8dbeab8e64c.md) | 116 | `result-track:213660f3b5a7a8dbeab8e64c90f4c1c81be0cd9cf6cb61c1a615f11fef046f87` |
| 17 | `theorem` | [value_eq_gramDet](../../../../../mathematics/NumberTheory/Zeta/Riemann/ThreePointVolumeQuarticExtraction.lean/declarations/value-eq-gramdet--c4ab18203524653aec18ba81.md) | 122 | `result-track:c4ab18203524653aec18ba81e09c587784ac5de2697b845855305e68282e5488` |
| 18 | `structure` | [ThreePointVolumeExtractionAtZero](../../../../../mathematics/NumberTheory/Zeta/Riemann/ThreePointVolumeQuarticExtraction.lean/declarations/threepointvolumeextractionatzero--8cf8f5ca833fa5804c61c72e.md) | 131 | `declaration-track:8cf8f5ca833fa5804c61c72e2b89d0aa6af1fc2d1030a8cf295e11f0bd0771c7` |
| 19 | `def` | [ThreePointVolumeExtractionAtZero.toQuarticExtraction](../../../../../mathematics/NumberTheory/Zeta/Riemann/ThreePointVolumeQuarticExtraction.lean/declarations/threepointvolumeextractionatzero-toquarticextraction--a8c6d06a5e6e71b7045ec9af.md) | 145 | `declaration-track:a8c6d06a5e6e71b7045ec9afb626459bd85b865bbd018d1c017a8e44693d61cf` |
| 20 | `def` | [ThreePointVolumeQuarticClaim](../../../../../mathematics/NumberTheory/Zeta/Riemann/ThreePointVolumeQuarticExtraction.lean/declarations/threepointvolumequarticclaim--cf78d38c3c1da9b1d2b3bf54.md) | 158 | `declaration-track:cf78d38c3c1da9b1d2b3bf5416be28b244b7532ce5bc0af51f64e077764dced2` |
| 21 | `structure` | [SourceBoundThreePointVolumeExtraction](../../../../../mathematics/NumberTheory/Zeta/Riemann/ThreePointVolumeQuarticExtraction.lean/declarations/sourceboundthreepointvolumeextraction--936824f4eb8097885cd6b28c.md) | 162 | `declaration-track:936824f4eb8097885cd6b28cc93db5971f7a211dfbf9710c1c279fa2c8111fe9` |
| 22 | `theorem` | [riemannHypothesis_of_sourceBoundThreePointVolumeExtraction](../../../../../mathematics/NumberTheory/Zeta/Riemann/ThreePointVolumeQuarticExtraction.lean/declarations/riemannhypothesis-of-sourceboundthreepointvolumeextraction--df4e27deb6d1301d04dbc912.md) | 170 | `result-track:df4e27deb6d1301d04dbc9125a73c05cc19bdcee2261a133454f8b5607b7ff3a` |
| 23 | `structure` | [LocalThreePointVolumeExtractor](../../../../../mathematics/NumberTheory/Zeta/Riemann/ThreePointVolumeQuarticExtraction.lean/declarations/localthreepointvolumeextractor--391c74ae87fad18da4e35856.md) | 184 | `declaration-track:391c74ae87fad18da4e35856f3626e1a99c8d7c5711371280a011368c8b2b572` |
| 24 | `def` | [SourceBoundMechanismBridgeAccepted.toThreePointVolumeExtraction](../../../../../mathematics/NumberTheory/Zeta/Riemann/ThreePointVolumeQuarticExtraction.lean/declarations/sourceboundmechanismbridgeaccepted-tothreepointvolumeextraction--5f8084e2628c5ca1cd315c39.md) | 189 | `declaration-track:5f8084e2628c5ca1cd315c397045243cd9edafec4284caa4349bf07042905d13` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
