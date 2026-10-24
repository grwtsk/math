# Verification target: GRWTSK.Topology.GeneralTopology.BoundedContinuousFunctionChar.Variant2e5bdbb050e175b06c305044df845f3a02dd2d8cb508afec16e686b1e7164026

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4cd423dbf0934d2d496b3804a58e88e7c1141a6d",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/BoundedContinuousFunctionChar/Variant2e5bdbb050e175b06c305044df845f3a02dd2d8cb508afec16e686b1e7164026.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/BoundedContinuousFunctionChar/Variant2e5bdbb050e175b06c305044df845f3a02dd2d8cb508afec16e686b1e7164026.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/BoundedContinuousFunctionChar/Variant2e5bdbb050e175b06c305044df845f3a02dd2d8cb508afec16e686b1e7164026.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4cd423dbf0934d2d496b3804a58e88e7c1141a6d`.

Source path: `GRWTSK/Topology/GeneralTopology/BoundedContinuousFunctionChar/Variant2e5bdbb050e175b06c305044df845f3a02dd2d8cb508afec16e686b1e7164026.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/BoundedContinuousFunctionChar/Variant2e5bdbb050e175b06c305044df845f3a02dd2d8cb508afec16e686b1e7164026.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.MonoidAlgebra.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.Circle` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousMap.Bounded.Star` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [char](../../../../../mathematics/Topology/GeneralTopology/BoundedContinuousFunctionChar/Variant2e5bdbb050e175b06c305044df845f3a02dd2d8cb508afec16e686b1e7164026.lean/declarations/char--67c9c79ebc874b5e7061a1d5.md) | 56 | `declaration-track:67c9c79ebc874b5e7061a1d58bedbc74edacbf47c306a5c88b6b445fb2efc8f5` |
| 2 | `lemma` | [char_apply](../../../../../mathematics/Topology/GeneralTopology/BoundedContinuousFunctionChar/Variant2e5bdbb050e175b06c305044df845f3a02dd2d8cb508afec16e686b1e7164026.lean/declarations/char-apply--d4d4aa85617779f9cf2255ff.md) | 70 | `result-track:d4d4aa85617779f9cf2255ff4673e621719af466c52b216975ec24e4aca62546` |
| 3 | `lemma` | [char_zero_eq_one](../../../../../mathematics/Topology/GeneralTopology/BoundedContinuousFunctionChar/Variant2e5bdbb050e175b06c305044df845f3a02dd2d8cb508afec16e686b1e7164026.lean/declarations/char-zero-eq-one--0aab74387bc3ee7a3ccd6875.md) | 74 | `result-track:0aab74387bc3ee7a3ccd68754d9b2a1f6f3b5d9dfdaaf42158437a82b99ddf90` |
| 4 | `lemma` | [char_add_eq_mul](../../../../../mathematics/Topology/GeneralTopology/BoundedContinuousFunctionChar/Variant2e5bdbb050e175b06c305044df845f3a02dd2d8cb508afec16e686b1e7164026.lean/declarations/char-add-eq-mul--fbee4a4662b6b865a3f0021a.md) | 76 | `result-track:fbee4a4662b6b865a3f0021a49c4d973c60e7cb1ca7fac40dc84f2f24a113c23` |
| 5 | `lemma` | [char_neg](../../../../../mathematics/Topology/GeneralTopology/BoundedContinuousFunctionChar/Variant2e5bdbb050e175b06c305044df845f3a02dd2d8cb508afec16e686b1e7164026.lean/declarations/char-neg--de3ae85c182292cbd16588f7.md) | 81 | `result-track:de3ae85c182292cbd16588f7c2fb6930d7fd2b1f740a0b91051385e0975023cd` |
| 6 | `theorem` | [ext_of_char_eq](../../../../../mathematics/Topology/GeneralTopology/BoundedContinuousFunctionChar/Variant2e5bdbb050e175b06c305044df845f3a02dd2d8cb508afec16e686b1e7164026.lean/declarations/ext-of-char-eq--fd1cdb3bbbdd26dbfe0add24.md) | 85 | `result-track:fd1cdb3bbbdd26dbfe0add24e73c9af3f437044c4298f0b4db9d2a694bcf96c0` |
| 7 | `def` | [charMonoidHom](../../../../../mathematics/Topology/GeneralTopology/BoundedContinuousFunctionChar/Variant2e5bdbb050e175b06c305044df845f3a02dd2d8cb508afec16e686b1e7164026.lean/declarations/charmonoidhom--a187294dfb8181f07345d2e1.md) | 111 | `declaration-track:a187294dfb8181f07345d2e1e7e79e7ff9edda78b2cb3b8e9892d109e418ef2f` |
| 8 | `lemma` | [charMonoidHom_apply](../../../../../mathematics/Topology/GeneralTopology/BoundedContinuousFunctionChar/Variant2e5bdbb050e175b06c305044df845f3a02dd2d8cb508afec16e686b1e7164026.lean/declarations/charmonoidhom-apply--93125ddab4eade4e30e0ce3a.md) | 118 | `result-track:93125ddab4eade4e30e0ce3abd17871a3f6981e1ccf3eb8a11cb3195a8946a2b` |
| 9 | `def` | [charAlgHom](../../../../../mathematics/Topology/GeneralTopology/BoundedContinuousFunctionChar/Variant2e5bdbb050e175b06c305044df845f3a02dd2d8cb508afec16e686b1e7164026.lean/declarations/charalghom--5563ac97569c478ce9b20b92.md) | 123 | `declaration-track:5563ac97569c478ce9b20b92394770d1f2860c88d4dd266901f684e9c4631b26` |
| 10 | `lemma` | [charAlgHom_apply](../../../../../mathematics/Topology/GeneralTopology/BoundedContinuousFunctionChar/Variant2e5bdbb050e175b06c305044df845f3a02dd2d8cb508afec16e686b1e7164026.lean/declarations/charalghom-apply--6e5354344f10c94272ad7918.md) | 128 | `result-track:6e5354344f10c94272ad7918783b3c7367ee651f703dc32d78c8125372c2bbbc` |
| 11 | `lemma` | [star_mem_range_charAlgHom](../../../../../mathematics/Topology/GeneralTopology/BoundedContinuousFunctionChar/Variant2e5bdbb050e175b06c305044df845f3a02dd2d8cb508afec16e686b1e7164026.lean/declarations/star-mem-range-charalghom--95c9542e5f3307828edd57d2.md) | 137 | `result-track:95c9542e5f3307828edd57d2da6d49473142febfd093917d64fd18a0c6bdf611` |
| 12 | `def` | [charPoly](../../../../../mathematics/Topology/GeneralTopology/BoundedContinuousFunctionChar/Variant2e5bdbb050e175b06c305044df845f3a02dd2d8cb508afec16e686b1e7164026.lean/declarations/charpoly--ecfa391f269311a195631ef7.md) | 153 | `declaration-track:ecfa391f269311a195631ef7e5bd887d27ec1b42432d33676ac22da54b9ecd1e` |
| 13 | `lemma` | [mem_charPoly](../../../../../mathematics/Topology/GeneralTopology/BoundedContinuousFunctionChar/Variant2e5bdbb050e175b06c305044df845f3a02dd2d8cb508afec16e686b1e7164026.lean/declarations/mem-charpoly--560681bc4913409bb72a51d9.md) | 158 | `result-track:560681bc4913409bb72a51d99c14ecf28f656a67730f41eeead610cc3b0ebe20` |
| 14 | `lemma` | [char_mem_charPoly](../../../../../mathematics/Topology/GeneralTopology/BoundedContinuousFunctionChar/Variant2e5bdbb050e175b06c305044df845f3a02dd2d8cb508afec16e686b1e7164026.lean/declarations/char-mem-charpoly--eddcd5e0723521d6035f3fdf.md) | 164 | `result-track:eddcd5e0723521d6035f3fdfb1384f762ff51f9826c8790017273697d6c4cc1c` |
| 15 | `lemma` | [separatesPoints_charPoly](../../../../../mathematics/Topology/GeneralTopology/BoundedContinuousFunctionChar/Variant2e5bdbb050e175b06c305044df845f3a02dd2d8cb508afec16e686b1e7164026.lean/declarations/separatespoints-charpoly--e22858b528b3d8eccff4cd30.md) | 175 | `result-track:e22858b528b3d8eccff4cd30fcfa56f52b640a19e029996e728b5eda7c9438bf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
