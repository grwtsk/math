# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Basic.Variant72fb65a4c23354ee1c0cb53319cc6aa22003825bf2e1a391223e8f1303c048b7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5a02ff1e491f68349a6775448b30a1d52b81e703",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant72fb65a4c23354ee1c0cb53319cc6aa22003825bf2e1a391223e8f1303c048b7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant72fb65a4c23354ee1c0cb53319cc6aa22003825bf2e1a391223e8f1303c048b7.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant72fb65a4c23354ee1c0cb53319cc6aa22003825bf2e1a391223e8f1303c048b7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5a02ff1e491f68349a6775448b30a1d52b81e703`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant72fb65a4c23354ee1c0cb53319cc6aa22003825bf2e1a391223e8f1303c048b7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant72fb65a4c23354ee1c0cb53319cc6aa22003825bf2e1a391223e8f1303c048b7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.PID` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.TypeTags.Finite` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ZMod.QuotientRing` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [directSumNeZeroMulHom](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant72fb65a4c23354ee1c0cb53319cc6aa22003825bf2e1a391223e8f1303c048b7.lean/declarations/directsumnezeromulhom--285f01467cdfafae087f6fbf.md) | 67 | `declaration-track:285f01467cdfafae087f6fbff5b12610c3a0334e3f26a40daa78e692a609a172` |
| 2 | `def` | [directSumNeZeroMulEquiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant72fb65a4c23354ee1c0cb53319cc6aa22003825bf2e1a391223e8f1303c048b7.lean/declarations/directsumnezeromulequiv--90090f81ab8f3deea83644df.md) | 71 | `declaration-track:90090f81ab8f3deea83644df4ed3e9d283b5688eced6a2a1e917a8d44e99e9e8` |
| 3 | `theorem` | [finite_of_fg_torsion](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant72fb65a4c23354ee1c0cb53319cc6aa22003825bf2e1a391223e8f1303c048b7.lean/declarations/finite-of-fg-torsion--a4938da9e399b7e67ba6e8fe.md) | 100 | `result-track:a4938da9e399b7e67ba6e8fed90f17d0cafb62fe4b09dda96af4b0e11f56da9c` |
| 4 | `theorem` | [equiv_free_prod_directSum_zmod](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant72fb65a4c23354ee1c0cb53319cc6aa22003825bf2e1a391223e8f1303c048b7.lean/declarations/equiv-free-prod-directsum-zmod--db90e3b67d050002c1eb2c46.md) | 122 | `result-track:db90e3b67d050002c1eb2c46b29b94c20f390dd67316a6eb01074a449f78b06a` |
| 5 | `theorem` | [equiv_directSum_zmod_of_finite](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant72fb65a4c23354ee1c0cb53319cc6aa22003825bf2e1a391223e8f1303c048b7.lean/declarations/equiv-directsum-zmod-of-finite--a69debeef617866fef4d9d76.md) | 138 | `result-track:a69debeef617866fef4d9d76650ec25e12fa3daf8286a5a2fdb6f806a2d81bbb` |
| 6 | `lemma` | [equiv_directSum_zmod_of_finite'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant72fb65a4c23354ee1c0cb53319cc6aa22003825bf2e1a391223e8f1303c048b7.lean/declarations/equiv-directsum-zmod-of-finite--d6c644379175f4c8e2023ac8.md) | 154 | `result-track:d6c644379175f4c8e2023ac8777d338d4605c1c74a6ed8ba59b36fbdbf19886e` |
| 7 | `theorem` | [finite_of_fg_torsion](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant72fb65a4c23354ee1c0cb53319cc6aa22003825bf2e1a391223e8f1303c048b7.lean/declarations/finite-of-fg-torsion--5953f61fd8bdf70806bf504f.md) | 164 | `result-track:5953f61fd8bdf70806bf504f5382d7778bf498c904e3f07fdbed112cef024279` |
| 8 | `theorem` | [finite_of_fg_torsion](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant72fb65a4c23354ee1c0cb53319cc6aa22003825bf2e1a391223e8f1303c048b7.lean/declarations/finite-of-fg-torsion--e704379cec54ff0ffd76d08d.md) | 172 | `result-track:e704379cec54ff0ffd76d08dc139c722a86da50f459649082aaa99ee11a1a529` |
| 9 | `theorem` | [equiv_prod_multiplicative_zmod_of_finite](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant72fb65a4c23354ee1c0cb53319cc6aa22003825bf2e1a391223e8f1303c048b7.lean/declarations/equiv-prod-multiplicative-zmod-of-finite--6e0fcf1d298466f9490a9437.md) | 177 | `result-track:6e0fcf1d298466f9490a9437f5fb3edb12a9db930938c02dfa9c39129441ad11` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
