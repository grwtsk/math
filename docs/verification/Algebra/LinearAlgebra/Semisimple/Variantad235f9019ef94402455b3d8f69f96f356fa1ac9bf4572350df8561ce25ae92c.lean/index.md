# Verification target: GRWTSK.Algebra.LinearAlgebra.Semisimple.Variantad235f9019ef94402455b3d8f69f96f356fa1ac9bf4572350df8561ce25ae92c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b976c2a9dcadd47ca46fb0eafce81f837e391151",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Semisimple/Variantad235f9019ef94402455b3d8f69f96f356fa1ac9bf4572350df8561ce25ae92c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Semisimple/Variantad235f9019ef94402455b3d8f69f96f356fa1ac9bf4572350df8561ce25ae92c.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Semisimple/Variantad235f9019ef94402455b3d8f69f96f356fa1ac9bf4572350df8561ce25ae92c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b976c2a9dcadd47ca46fb0eafce81f837e391151`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Semisimple/Variantad235f9019ef94402455b3d8f69f96f356fa1ac9bf4572350df8561ce25ae92c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Semisimple/Variantad235f9019ef94402455b3d8f69f96f356fa1ac9bf4572350df8561ce25ae92c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Torsion` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Perfect` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.AnnihilatingPolynomial` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Artinian.Instances` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Quotient.Nilpotent` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.SimpleModule.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsSemisimple](../../../../../mathematics/Algebra/LinearAlgebra/Semisimple/Variantad235f9019ef94402455b3d8f69f96f356fa1ac9bf4572350df8561ce25ae92c.lean/declarations/issemisimple--9771e4ca62ea50403cdbf17f.md) | 56 | `declaration-track:9771e4ca62ea50403cdbf17f864d6794845da483a55762caedd068eb6de9e37d` |
| 2 | `def` | [IsFinitelySemisimple](../../../../../mathematics/Algebra/LinearAlgebra/Semisimple/Variantad235f9019ef94402455b3d8f69f96f356fa1ac9bf4572350df8561ce25ae92c.lean/declarations/isfinitelysemisimple--ca397361b8886cbfb0b83490.md) | 60 | `declaration-track:ca397361b8886cbfb0b83490cab761ad27cfa8c04e9f6176237a1166238e756c` |
| 3 | `lemma` | [isSemisimple_iff'](../../../../../mathematics/Algebra/LinearAlgebra/Semisimple/Variantad235f9019ef94402455b3d8f69f96f356fa1ac9bf4572350df8561ce25ae92c.lean/declarations/issemisimple-iff--7f8e108a5f29200bc4497d71.md) | 68 | `result-track:7f8e108a5f29200bc4497d7108c55b896a198e74492060c8f5f572da2f3898c1` |
| 4 | `lemma` | [isSemisimple_iff](../../../../../mathematics/Algebra/LinearAlgebra/Semisimple/Variantad235f9019ef94402455b3d8f69f96f356fa1ac9bf4572350df8561ce25ae92c.lean/declarations/issemisimple-iff--be67c0be703e9dcb0ae82534.md) | 74 | `result-track:be67c0be703e9dcb0ae82534421ff47fed7ca6588893c225644967098637ba0f` |
| 5 | `lemma` | [isSemisimple_restrict_iff](../../../../../mathematics/Algebra/LinearAlgebra/Semisimple/Variantad235f9019ef94402455b3d8f69f96f356fa1ac9bf4572350df8561ce25ae92c.lean/declarations/issemisimple-restrict-iff--c3553eded01f86ce47641e18.md) | 78 | `result-track:c3553eded01f86ce47641e1816122dec8e375984a57ff29522fa015218b9c750` |
| 6 | `lemma` | [isFinitelySemisimple_iff'](../../../../../mathematics/Algebra/LinearAlgebra/Semisimple/Variantad235f9019ef94402455b3d8f69f96f356fa1ac9bf4572350df8561ce25ae92c.lean/declarations/isfinitelysemisimple-iff--57906fbe9a39dda7d3bc00f6.md) | 94 | `result-track:57906fbe9a39dda7d3bc00f6f6b53680d4d0af538b1045a1d4b9889e0f44140e` |
| 7 | `lemma` | [isFinitelySemisimple_iff](../../../../../mathematics/Algebra/LinearAlgebra/Semisimple/Variantad235f9019ef94402455b3d8f69f96f356fa1ac9bf4572350df8561ce25ae92c.lean/declarations/isfinitelysemisimple-iff--91efcdaca480a268df9824eb.md) | 101 | `result-track:91efcdaca480a268df9824eba1127397c4e9047653dd33b12667fdf5a5ed9edf` |
| 8 | `lemma` | [isSemisimple_zero](../../../../../mathematics/Algebra/LinearAlgebra/Semisimple/Variantad235f9019ef94402455b3d8f69f96f356fa1ac9bf4572350df8561ce25ae92c.lean/declarations/issemisimple-zero--ac2a1638d81d5ffad6b1e3bd.md) | 107 | `result-track:ac2a1638d81d5ffad6b1e3bdb5eec1551f026eaf4ebbf95dc416c19e23bc2e5e` |
| 9 | `lemma` | [isSemisimple_id](../../../../../mathematics/Algebra/LinearAlgebra/Semisimple/Variantad235f9019ef94402455b3d8f69f96f356fa1ac9bf4572350df8561ce25ae92c.lean/declarations/issemisimple-id--686fbd8ddb79411b67589046.md) | 111 | `result-track:686fbd8ddb79411b675890460db6a54f9c9276bed0b14249944fe3890cea6b84` |
| 10 | `lemma` | [isSemisimple_neg](../../../../../mathematics/Algebra/LinearAlgebra/Semisimple/Variantad235f9019ef94402455b3d8f69f96f356fa1ac9bf4572350df8561ce25ae92c.lean/declarations/issemisimple-neg--deb4e43edd61dcc8032e6c0d.md) | 114 | `result-track:deb4e43edd61dcc8032e6c0db213bb4e3b660646b5dbe283d396812a9c5aa998` |
| 11 | `lemma` | [_root_.LinearEquiv.isSemisimple_iff](../../../../../mathematics/Algebra/LinearAlgebra/Semisimple/Variantad235f9019ef94402455b3d8f69f96f356fa1ac9bf4572350df8561ce25ae92c.lean/declarations/root-linearequiv-issemisimple-iff--1bddc6c181be79f412856a4a.md) | 118 | `result-track:1bddc6c181be79f412856a4af042dffd43f68f2bc39219490dffd1a53bdba661` |
| 12 | `lemma` | [eq_zero_of_isNilpotent_isSemisimple](../../../../../mathematics/Algebra/LinearAlgebra/Semisimple/Variantad235f9019ef94402455b3d8f69f96f356fa1ac9bf4572350df8561ce25ae92c.lean/declarations/eq-zero-of-isnilpotent-issemisimple--ffe0d82c7f66ac20680489c2.md) | 125 | `result-track:ffe0d82c7f66ac20680489c238b97307f5d1f0cc9a507163961911b065c92800` |
| 13 | `lemma` | [eq_zero_of_isNilpotent_of_isFinitelySemisimple](../../../../../mathematics/Algebra/LinearAlgebra/Semisimple/Variantad235f9019ef94402455b3d8f69f96f356fa1ac9bf4572350df8561ce25ae92c.lean/declarations/eq-zero-of-isnilpotent-of-isfinitelysemisimple--e7c7fb704d837244367690e3.md) | 131 | `result-track:e7c7fb704d837244367690e31da0bb0014d3bb77b04e51c9a45f689ac8da594d` |
| 14 | `lemma` | [isSemisimple_sub_algebraMap_iff](../../../../../mathematics/Algebra/LinearAlgebra/Semisimple/Variantad235f9019ef94402455b3d8f69f96f356fa1ac9bf4572350df8561ce25ae92c.lean/declarations/issemisimple-sub-algebramap-iff--b4a111357eeda30bc76a70f4.md) | 155 | `result-track:b4a111357eeda30bc76a70f43f4a0c0d3fd04310111cd5f972724465770d8a51` |
| 15 | `lemma` | [IsSemisimple.restrict](../../../../../mathematics/Algebra/LinearAlgebra/Semisimple/Variantad235f9019ef94402455b3d8f69f96f356fa1ac9bf4572350df8561ce25ae92c.lean/declarations/issemisimple-restrict--eddda92f0fd8e404e15146df.md) | 162 | `result-track:eddda92f0fd8e404e15146dfe7bd09e8412cb0294ce513f953efdaf97175a146` |
| 16 | `lemma` | [IsSemisimple.isFinitelySemisimple](../../../../../mathematics/Algebra/LinearAlgebra/Semisimple/Variantad235f9019ef94402455b3d8f69f96f356fa1ac9bf4572350df8561ce25ae92c.lean/declarations/issemisimple-isfinitelysemisimple--ccfd0011ac787667b7493f6f.md) | 171 | `result-track:ccfd0011ac787667b7493f6f902c0ad87ab664a0378093972c8c55d24253ec74` |
| 17 | `lemma` | [isFinitelySemisimple_iff_isSemisimple](../../../../../mathematics/Algebra/LinearAlgebra/Semisimple/Variantad235f9019ef94402455b3d8f69f96f356fa1ac9bf4572350df8561ce25ae92c.lean/declarations/isfinitelysemisimple-iff-issemisimple--2416c0b8b1bdef36ca0ff7c5.md) | 176 | `result-track:2416c0b8b1bdef36ca0ff7c565cbe5da3de5df316baa48311ed256202f911a91` |
| 18 | `lemma` | [isFinitelySemisimple_sub_algebraMap_iff](../../../../../mathematics/Algebra/LinearAlgebra/Semisimple/Variantad235f9019ef94402455b3d8f69f96f356fa1ac9bf4572350df8561ce25ae92c.lean/declarations/isfinitelysemisimple-sub-algebramap-iff--2e35d8e831cdf357267153c0.md) | 184 | `result-track:2e35d8e831cdf357267153c079a0c0a7434b135a463c3f3d6bdb49d6ea390501` |
| 19 | `lemma` | [IsFinitelySemisimple.restrict](../../../../../mathematics/Algebra/LinearAlgebra/Semisimple/Variantad235f9019ef94402455b3d8f69f96f356fa1ac9bf4572350df8561ce25ae92c.lean/declarations/isfinitelysemisimple-restrict--a3accbd1e8c066fdfea15bf9.md) | 191 | `result-track:a3accbd1e8c066fdfea15bf9b8142664ba647207a56da1a8cd6a6ac8f292e542` |
| 20 | `lemma` | [IsSemisimple_smul_iff](../../../../../mathematics/Algebra/LinearAlgebra/Semisimple/Variantad235f9019ef94402455b3d8f69f96f356fa1ac9bf4572350df8561ce25ae92c.lean/declarations/issemisimple-smul-iff--fec17e6cf786c78e9b83c714.md) | 206 | `result-track:fec17e6cf786c78e9b83c714d297702818c71a313223b2f422d41ce0dfa72535` |
| 21 | `lemma` | [IsSemisimple_smul](../../../../../mathematics/Algebra/LinearAlgebra/Semisimple/Variantad235f9019ef94402455b3d8f69f96f356fa1ac9bf4572350df8561ce25ae92c.lean/declarations/issemisimple-smul--1ff21faa2d741f8c64c924d3.md) | 210 | `result-track:1ff21faa2d741f8c64c924d3bda06820ac28a1c1f36a3c533911e048691070e6` |
| 22 | `theorem` | [isSemisimple_of_squarefree_aeval_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Semisimple/Variantad235f9019ef94402455b3d8f69f96f356fa1ac9bf4572350df8561ce25ae92c.lean/declarations/issemisimple-of-squarefree-aeval-eq-zero--73c2be83e83d098896694bb8.md) | 215 | `result-track:73c2be83e83d098896694bb8ea73f74b59c11ae4fd922dfbfd6179de2ce402fb` |
| 23 | `theorem` | [IsSemisimple.minpoly_squarefree](../../../../../mathematics/Algebra/LinearAlgebra/Semisimple/Variantad235f9019ef94402455b3d8f69f96f356fa1ac9bf4572350df8561ce25ae92c.lean/declarations/issemisimple-minpoly-squarefree--c3511fa89b2bb79a8829ffb5.md) | 238 | `result-track:c3511fa89b2bb79a8829ffb5497ab99bbd79fade5731718457f221bf05bea07f` |
| 24 | `theorem` | [IsSemisimple.aeval](../../../../../mathematics/Algebra/LinearAlgebra/Semisimple/Variantad235f9019ef94402455b3d8f69f96f356fa1ac9bf4572350df8561ce25ae92c.lean/declarations/issemisimple-aeval--1bb4b856c7a8b545044b73a9.md) | 242 | `result-track:1bb4b856c7a8b545044b73a9fca387712a916d845f324b7128156a604e6db8a8` |
| 25 | `theorem` | [IsSemisimple.of_mem_adjoin_singleton](../../../../../mathematics/Algebra/LinearAlgebra/Semisimple/Variantad235f9019ef94402455b3d8f69f96f356fa1ac9bf4572350df8561ce25ae92c.lean/declarations/issemisimple-of-mem-adjoin-singleton--b3dae679e16f7b6cab2ebd93.md) | 254 | `result-track:b3dae679e16f7b6cab2ebd9306514366a8ae15294a4358c536d2612dfe8f9ad8` |
| 26 | `theorem` | [IsSemisimple.pow](../../../../../mathematics/Algebra/LinearAlgebra/Semisimple/Variantad235f9019ef94402455b3d8f69f96f356fa1ac9bf4572350df8561ce25ae92c.lean/declarations/issemisimple-pow--1da76e72e6e8117ae797db67.md) | 258 | `result-track:1da76e72e6e8117ae797db67e2adef8a2bdb5dbb5efa174fe1f83264ef77d058` |
| 27 | `theorem` | [IsSemisimple.of_mem_adjoin_pair](../../../../../mathematics/Algebra/LinearAlgebra/Semisimple/Variantad235f9019ef94402455b3d8f69f96f356fa1ac9bf4572350df8561ce25ae92c.lean/declarations/issemisimple-of-mem-adjoin-pair--587bdda3d615719f7ededce3.md) | 269 | `result-track:587bdda3d615719f7ededce3379bdcf1a0f695e46b3626c1b64889f115c4c057` |
| 28 | `theorem` | [IsSemisimple.add_of_commute](../../../../../mathematics/Algebra/LinearAlgebra/Semisimple/Variantad235f9019ef94402455b3d8f69f96f356fa1ac9bf4572350df8561ce25ae92c.lean/declarations/issemisimple-add-of-commute--984dc6ea25e13bda7b0e7d3a.md) | 303 | `result-track:984dc6ea25e13bda7b0e7d3a24e902ba32bbb63a77f50ac0672ea5456c5f03a6` |
| 29 | `theorem` | [IsSemisimple.sub_of_commute](../../../../../mathematics/Algebra/LinearAlgebra/Semisimple/Variantad235f9019ef94402455b3d8f69f96f356fa1ac9bf4572350df8561ce25ae92c.lean/declarations/issemisimple-sub-of-commute--5329cee6d5b282205dedea65.md) | 306 | `result-track:5329cee6d5b282205dedea6570f59ca1ffb72b97029f960226d2fa7dce1c7318` |
| 30 | `theorem` | [IsSemisimple.mul_of_commute](../../../../../mathematics/Algebra/LinearAlgebra/Semisimple/Variantad235f9019ef94402455b3d8f69f96f356fa1ac9bf4572350df8561ce25ae92c.lean/declarations/issemisimple-mul-of-commute--2572cb8864c1b8e3fc6016e2.md) | 309 | `result-track:2572cb8864c1b8e3fc6016e2454f4ac839bbb42c94977ddea1fbcee21c18f68f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
