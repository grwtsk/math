# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.FourFunctions.Variant5525c49b31805acd5cdfa8ac675b7ba1985b2c60e3b4357678a6e6b06970d486

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "adc34eaf2b1dbafd34da9d2464810e6fb854e024",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FourFunctions/Variant5525c49b31805acd5cdfa8ac675b7ba1985b2c60e3b4357678a6e6b06970d486.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FourFunctions/Variant5525c49b31805acd5cdfa8ac675b7ba1985b2c60e3b4357678a6e6b06970d486.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FourFunctions/Variant5525c49b31805acd5cdfa8ac675b7ba1985b2c60e3b4357678a6e6b06970d486.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `adc34eaf2b1dbafd34da9d2464810e6fb854e024`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/FourFunctions/Variant5525c49b31805acd5cdfa8ac675b7ba1985b2c60e3b4357678a6e6b06970d486.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/FourFunctions/Variant5525c49b31805acd5cdfa8ac675b7ba1985b2c60e3b4357678a6e6b06970d486.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Group.Finset.Piecewise` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.BigOperators.Group.Finset` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Pi` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Nat` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Sups` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Birkhoff` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Booleanisation` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Sublattice` — import line 18; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Positivity.Basic` — import line 19; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 20; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [ineq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FourFunctions/Variant5525c49b31805acd5cdfa8ac675b7ba1985b2c60e3b4357678a6e6b06970d486.lean/declarations/ineq--869348efbbae7a63ba1b0838.md) | 76 | `result-track:869348efbbae7a63ba1b08384a2d421f145ecaadc2e414011b859fd79ea13882` |
| 2 | `def` | [collapse](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FourFunctions/Variant5525c49b31805acd5cdfa8ac675b7ba1985b2c60e3b4357678a6e6b06970d486.lean/declarations/collapse--6d9a86cbb6a127de95d10fa4.md) | 98 | `declaration-track:6d9a86cbb6a127de95d10fa46173b69c230560e8e032bffe95efa1b58c0b2148` |
| 3 | `lemma` | [erase_eq_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FourFunctions/Variant5525c49b31805acd5cdfa8ac675b7ba1985b2c60e3b4357678a6e6b06970d486.lean/declarations/erase-eq-iff--d4542d262416d577cb39fa4a.md) | 101 | `result-track:d4542d262416d577cb39fa4a29c9b61d4fe151236c526428af042b1facad8211` |
| 4 | `lemma` | [filter_collapse_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FourFunctions/Variant5525c49b31805acd5cdfa8ac675b7ba1985b2c60e3b4357678a6e6b06970d486.lean/declarations/filter-collapse-eq--bd615706f89a1594dc97b517.md) | 106 | `result-track:bd615706f89a1594dc97b517943bce3d086eeb392c67b52675ef4945c307cddf` |
| 5 | `lemma` | [collapse_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FourFunctions/Variant5525c49b31805acd5cdfa8ac675b7ba1985b2c60e3b4357678a6e6b06970d486.lean/declarations/collapse-eq--04ae8bc66e2e75c74e85d67d.md) | 115 | `result-track:04ae8bc66e2e75c74e85d67ddb3f466a65ca60eac7710a73e685b64e6f9c03bb` |
| 6 | `lemma` | [collapse_of_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FourFunctions/Variant5525c49b31805acd5cdfa8ac675b7ba1985b2c60e3b4357678a6e6b06970d486.lean/declarations/collapse-of-mem--19e056bd20c787c626002adf.md) | 122 | `result-track:19e056bd20c787c626002adfe21842bd944bbc70b430a3336cb77e42d83e5d05` |
| 7 | `lemma` | [le_collapse_of_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FourFunctions/Variant5525c49b31805acd5cdfa8ac675b7ba1985b2c60e3b4357678a6e6b06970d486.lean/declarations/le-collapse-of-mem--b638a5edbb409331d8ff7317.md) | 126 | `result-track:b638a5edbb409331d8ff7317de48e2ce3a5a5be8950689eca7c6cf2a2e95d6ea` |
| 8 | `lemma` | [le_collapse_of_insert_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FourFunctions/Variant5525c49b31805acd5cdfa8ac675b7ba1985b2c60e3b4357678a6e6b06970d486.lean/declarations/le-collapse-of-insert-mem--c0e40a2d540a24ccd0801f2f.md) | 134 | `result-track:c0e40a2d540a24ccd0801f2fdd913632a052cde7db435a28015e5833ff7c1c4b` |
| 9 | `lemma` | [collapse_nonneg](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FourFunctions/Variant5525c49b31805acd5cdfa8ac675b7ba1985b2c60e3b4357678a6e6b06970d486.lean/declarations/collapse-nonneg--8de5dcf493ca9c73b12c269a.md) | 141 | `result-track:8de5dcf493ca9c73b12c269aa2a0179a196b105d978b31997d413ba85de1063f` |
| 10 | `lemma` | [collapse_modular](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FourFunctions/Variant5525c49b31805acd5cdfa8ac675b7ba1985b2c60e3b4357678a6e6b06970d486.lean/declarations/collapse-modular--d4f02e753a7c83ecca102918.md) | 143 | `result-track:d4f02e753a7c83ecca102918ef60b6f70668e5a443ead840a6e86380354af096` |
| 11 | `lemma` | [sum_collapse](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FourFunctions/Variant5525c49b31805acd5cdfa8ac675b7ba1985b2c60e3b4357678a6e6b06970d486.lean/declarations/sum-collapse--a98bb5c3956bd8b4d828c1b9.md) | 228 | `result-track:a98bb5c3956bd8b4d828c1b9569c5c54009dfac420791b522ac7f4a3f4a17571` |
| 12 | `lemma` | [Finset.four_functions_theorem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FourFunctions/Variant5525c49b31805acd5cdfa8ac675b7ba1985b2c60e3b4357678a6e6b06970d486.lean/declarations/finset-four-functions-theorem--d0a05ced3328524c5d9c08b5.md) | 254 | `result-track:d0a05ced3328524c5d9c08b59a6daa5039f465e8137e94c2636d370690fb8a01` |
| 13 | `lemma` | [four_functions_theorem_aux](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FourFunctions/Variant5525c49b31805acd5cdfa8ac675b7ba1985b2c60e3b4357678a6e6b06970d486.lean/declarations/four-functions-theorem-aux--faf362bf542f3ccd596e39e5.md) | 273 | `result-track:faf362bf542f3ccd596e39e5debfc983c4d5b869590151b23310b8f9d63679d1` |
| 14 | `lemma` | [four_functions_theorem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FourFunctions/Variant5525c49b31805acd5cdfa8ac675b7ba1985b2c60e3b4357678a6e6b06970d486.lean/declarations/four-functions-theorem--9e3c6efedf497bb3fa93b965.md) | 285 | `result-track:9e3c6efedf497bb3fa93b965f6316095bf54dc523dca48a54f48e2b09fa33bb5` |
| 15 | `lemma` | [Finset.le_card_infs_mul_card_sups](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FourFunctions/Variant5525c49b31805acd5cdfa8ac675b7ba1985b2c60e3b4357678a6e6b06970d486.lean/declarations/finset-le-card-infs-mul-card-sups--2f49c6ebdb0d2a1a5c07d424.md) | 321 | `result-track:2f49c6ebdb0d2a1a5c07d4243c11670756ed32e98dbf594b7e9928b59a5cb483` |
| 16 | `lemma` | [four_functions_theorem_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FourFunctions/Variant5525c49b31805acd5cdfa8ac675b7ba1985b2c60e3b4357678a6e6b06970d486.lean/declarations/four-functions-theorem-univ--df567e5e3031140864e4f4bc.md) | 329 | `result-track:df567e5e3031140864e4f4bc7c0c3e287c970fd4f205b9bc02fdfa8ef0d0aa5c` |
| 17 | `lemma` | [holley](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FourFunctions/Variant5525c49b31805acd5cdfa8ac675b7ba1985b2c60e3b4357678a6e6b06970d486.lean/declarations/holley--25bd7c1ce4cda708b4470932.md) | 335 | `result-track:25bd7c1ce4cda708b4470932f1358f1c0a90be18be48926625a561649bcff055` |
| 18 | `lemma` | [fkg](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FourFunctions/Variant5525c49b31805acd5cdfa8ac675b7ba1985b2c60e3b4357678a6e6b06970d486.lean/declarations/fkg--1b66b4a93056e6d06b951a8c.md) | 353 | `result-track:1b66b4a93056e6d06b951a8c56cff86d7b8fcd5c15cc5b58d2f477510d3f1254` |
| 19 | `lemma` | [Finset.le_card_diffs_mul_card_diffs](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FourFunctions/Variant5525c49b31805acd5cdfa8ac675b7ba1985b2c60e3b4357678a6e6b06970d486.lean/declarations/finset-le-card-diffs-mul-card-diffs--dc5d94ccaa307ad1f7c73507.md) | 370 | `result-track:dc5d94ccaa307ad1f7c73507ef6f3e5e03d8bcf5fafd229f560476a459ab0962` |
| 20 | `lemma` | [Finset.card_le_card_diffs](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FourFunctions/Variant5525c49b31805acd5cdfa8ac675b7ba1985b2c60e3b4357678a6e6b06970d486.lean/declarations/finset-card-le-card-diffs--9c3fef17e51948aa052c5351.md) | 382 | `result-track:9c3fef17e51948aa052c5351d7ce8556615c3908bb3695010395b645a9f2bdb4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
