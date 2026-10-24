# Verification target: GRWTSK.Analysis.MeasureTheory.BesicovitchVectorSpace.Variante89eeca860cff581d385f7e03afdfd6312980c9f34793c2953489bf8f4ca2964

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "33e6f5d60ba8766924c7b6d592a9c97a6e3c9a19",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/BesicovitchVectorSpace/Variante89eeca860cff581d385f7e03afdfd6312980c9f34793c2953489bf8f4ca2964.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/BesicovitchVectorSpace/Variante89eeca860cff581d385f7e03afdfd6312980c9f34793c2953489bf8f4ca2964.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/BesicovitchVectorSpace/Variante89eeca860cff581d385f7e03afdfd6312980c9f34793c2953489bf8f4ca2964.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `33e6f5d60ba8766924c7b6d592a9c97a6e3c9a19`.

Source path: `GRWTSK/Analysis/MeasureTheory/BesicovitchVectorSpace/Variante89eeca860cff581d385f7e03afdfd6312980c9f34793c2953489bf8f4ca2964.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/BesicovitchVectorSpace/Variante89eeca860cff581d385f7e03afdfd6312980c9f34793c2953489bf8f4ca2964.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.Lebesgue.EqHaar` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Covering.Besicovitch` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.AdaptationNote` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.EuclideanDomain.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [centerAndRescale](../../../../../mathematics/Analysis/MeasureTheory/BesicovitchVectorSpace/Variante89eeca860cff581d385f7e03afdfd6312980c9f34793c2953489bf8f4ca2964.lean/declarations/centerandrescale--e798e2866738c1c2d4487d5f.md) | 63 | `declaration-track:e798e2866738c1c2d4487d5fa8f0c1d24bbbb311a5cd435896e3d5b444910eab` |
| 2 | `theorem` | [centerAndRescale_center](../../../../../mathematics/Analysis/MeasureTheory/BesicovitchVectorSpace/Variante89eeca860cff581d385f7e03afdfd6312980c9f34793c2953489bf8f4ca2964.lean/declarations/centerandrescale-center--3a1dc44e04fbffcde14fc530.md) | 81 | `result-track:3a1dc44e04fbffcde14fc530c7d4231dabe7f3480548789151c35a3fdc0af30e` |
| 3 | `theorem` | [centerAndRescale_radius](../../../../../mathematics/Analysis/MeasureTheory/BesicovitchVectorSpace/Variante89eeca860cff581d385f7e03afdfd6312980c9f34793c2953489bf8f4ca2964.lean/declarations/centerandrescale-radius--9114d747b58fcdf93d51ed85.md) | 84 | `result-track:9114d747b58fcdf93d51ed8570f1631a6fb1fe573482f90b8df0a2a575c5a7e9` |
| 4 | `def` | [multiplicity](../../../../../mathematics/Analysis/MeasureTheory/BesicovitchVectorSpace/Variante89eeca860cff581d385f7e03afdfd6312980c9f34793c2953489bf8f4ca2964.lean/declarations/multiplicity--350f2e8c655911aa11b2749b.md) | 95 | `declaration-track:350f2e8c655911aa11b2749b01b431c03b7ad88678cfc3832cc6e1d03a819ab7` |
| 5 | `theorem` | [card_le_of_separated](../../../../../mathematics/Analysis/MeasureTheory/BesicovitchVectorSpace/Variante89eeca860cff581d385f7e03afdfd6312980c9f34793c2953489bf8f4ca2964.lean/declarations/card-le-of-separated--cad278d01686ed7651d451c5.md) | 106 | `result-track:cad278d01686ed7651d451c5df2fea2b84a1042c205938527bffc105b1304c19` |
| 6 | `theorem` | [multiplicity_le](../../../../../mathematics/Analysis/MeasureTheory/BesicovitchVectorSpace/Variante89eeca860cff581d385f7e03afdfd6312980c9f34793c2953489bf8f4ca2964.lean/declarations/multiplicity-le--7fe73543820ad18a3ab0c23b.md) | 148 | `result-track:7fe73543820ad18a3ab0c23b585a1bbde74d19cc79b82f77b7b8fa8da5b6521e` |
| 7 | `theorem` | [card_le_multiplicity](../../../../../mathematics/Analysis/MeasureTheory/BesicovitchVectorSpace/Variante89eeca860cff581d385f7e03afdfd6312980c9f34793c2953489bf8f4ca2964.lean/declarations/card-le-multiplicity--b9436108bf455bba6899d372.md) | 154 | `result-track:b9436108bf455bba6899d372730f22ebe5c9d00e788a70ea1241586452c0dd0b` |
| 8 | `theorem` | [exists_goodδ](../../../../../mathematics/Analysis/MeasureTheory/BesicovitchVectorSpace/Variante89eeca860cff581d385f7e03afdfd6312980c9f34793c2953489bf8f4ca2964.lean/declarations/exists-good--54f9f1166cca8d01bf2dda97.md) | 167 | `result-track:54f9f1166cca8d01bf2dda97e6bc51f02f738e07f21a0c4bc456d9754479f4b0` |
| 9 | `def` | [goodδ](../../../../../mathematics/Analysis/MeasureTheory/BesicovitchVectorSpace/Variante89eeca860cff581d385f7e03afdfd6312980c9f34793c2953489bf8f4ca2964.lean/declarations/good--87aed4ee4300ff0b5938648f.md) | 243 | `declaration-track:87aed4ee4300ff0b5938648f3c5203c84f66961bf5952e1d321f1af322814ac2` |
| 10 | `theorem` | [goodδ_lt_one](../../../../../mathematics/Analysis/MeasureTheory/BesicovitchVectorSpace/Variante89eeca860cff581d385f7e03afdfd6312980c9f34793c2953489bf8f4ca2964.lean/declarations/good-lt-one--8647bec6ac5f43b719c776da.md) | 246 | `result-track:8647bec6ac5f43b719c776da219f21e88d7763396fd240bba87c1518441ddc6c` |
| 11 | `def` | [goodτ](../../../../../mathematics/Analysis/MeasureTheory/BesicovitchVectorSpace/Variante89eeca860cff581d385f7e03afdfd6312980c9f34793c2953489bf8f4ca2964.lean/declarations/good--11feeabda2be9d951c18cfa6.md) | 252 | `declaration-track:11feeabda2be9d951c18cfa6a7e4d3573474211120796f564d85bd1d5200cf76` |
| 12 | `theorem` | [one_lt_goodτ](../../../../../mathematics/Analysis/MeasureTheory/BesicovitchVectorSpace/Variante89eeca860cff581d385f7e03afdfd6312980c9f34793c2953489bf8f4ca2964.lean/declarations/one-lt-good--2bc350bb596c77f0a58139fe.md) | 255 | `result-track:2bc350bb596c77f0a58139fe6c619a07ad3f4ef73c45cec6d755b26f235e06cb` |
| 13 | `theorem` | [card_le_multiplicity_of_δ](../../../../../mathematics/Analysis/MeasureTheory/BesicovitchVectorSpace/Variante89eeca860cff581d385f7e03afdfd6312980c9f34793c2953489bf8f4ca2964.lean/declarations/card-le-multiplicity-of--f43503d1fbff0346111e1450.md) | 260 | `result-track:f43503d1fbff0346111e1450ecc0add4f9cefdb0550a1a9270e40763ea05f324` |
| 14 | `theorem` | [le_multiplicity_of_δ_of_fin](../../../../../mathematics/Analysis/MeasureTheory/BesicovitchVectorSpace/Variante89eeca860cff581d385f7e03afdfd6312980c9f34793c2953489bf8f4ca2964.lean/declarations/le-multiplicity-of-of-fin--4d6b3f1d3d557d3560c70d01.md) | 264 | `result-track:4d6b3f1d3d557d3560c70d011c43f22f1e88ea69ba5f3b95ef508f9dbb8d1eec` |
| 15 | `theorem` | [exists_normalized_aux1](../../../../../mathematics/Analysis/MeasureTheory/BesicovitchVectorSpace/Variante89eeca860cff581d385f7e03afdfd6312980c9f34793c2953489bf8f4ca2964.lean/declarations/exists-normalized-aux1--29fb1b47de02e378779cd727.md) | 308 | `result-track:29fb1b47de02e378779cd727a2cffc85ce134e0e412cdd9a1225337b73f05d91` |
| 16 | `theorem` | [exists_normalized_aux2](../../../../../mathematics/Analysis/MeasureTheory/BesicovitchVectorSpace/Variante89eeca860cff581d385f7e03afdfd6312980c9f34793c2953489bf8f4ca2964.lean/declarations/exists-normalized-aux2--aadcbeda39346f98b8a2881d.md) | 339 | `result-track:aadcbeda39346f98b8a2881db6fcbec647bef4769bb5a1a8003f8673110e1787` |
| 17 | `theorem` | [exists_normalized_aux3](../../../../../mathematics/Analysis/MeasureTheory/BesicovitchVectorSpace/Variante89eeca860cff581d385f7e03afdfd6312980c9f34793c2953489bf8f4ca2964.lean/declarations/exists-normalized-aux3--2afecd27cb6445f02497bf7b.md) | 392 | `result-track:2afecd27cb6445f02497bf7bd33e9869f5b35c83267f80fd2657bd0c50071a93` |
| 18 | `theorem` | [exists_normalized](../../../../../mathematics/Analysis/MeasureTheory/BesicovitchVectorSpace/Variante89eeca860cff581d385f7e03afdfd6312980c9f34793c2953489bf8f4ca2964.lean/declarations/exists-normalized--b10bde99364a3b156562e6e1.md) | 448 | `result-track:b10bde99364a3b156562e6e146ead6ebd076d93cf6edff3f6b26f052e9922a69` |
| 19 | `theorem` | [isEmpty_satelliteConfig_multiplicity](../../../../../mathematics/Analysis/MeasureTheory/BesicovitchVectorSpace/Variante89eeca860cff581d385f7e03afdfd6312980c9f34793c2953489bf8f4ca2964.lean/declarations/isempty-satelliteconfig-multiplicity--9d45b6cc26f50c6ca32fb0c1.md) | 485 | `result-track:9d45b6cc26f50c6ca32fb0c1eb9368334c960e9714fa018b9a0b76a06f79ad97` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/BesicovitchVectorSpace/Variante89eeca860cff581d385f7e03afdfd6312980c9f34793c2953489bf8f4ca2964.lean/declarations/instance--b8a46f75a300fcd4ae8b2ab9.md) | 496 | `declaration-track:b8a46f75a300fcd4ae8b2ab98bd61fbacbad434c3f07fe10485f27b416c3c527` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
