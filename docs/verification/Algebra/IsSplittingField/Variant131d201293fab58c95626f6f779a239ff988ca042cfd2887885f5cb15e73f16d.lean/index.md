# Verification target: GRWTSK.Algebra.IsSplittingField.Variant131d201293fab58c95626f6f779a239ff988ca042cfd2887885f5cb15e73f16d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "15bbfe75070e0631522db95e5665240bbed9b944",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/IsSplittingField/Variant131d201293fab58c95626f6f779a239ff988ca042cfd2887885f5cb15e73f16d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/IsSplittingField/Variant131d201293fab58c95626f6f779a239ff988ca042cfd2887885f5cb15e73f16d.lean/index.md) · [Full source](../../../../mathematics/Algebra/IsSplittingField/Variant131d201293fab58c95626f6f779a239ff988ca042cfd2887885f5cb15e73f16d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `15bbfe75070e0631522db95e5665240bbed9b944`.

Source path: `GRWTSK/Algebra/IsSplittingField/Variant131d201293fab58c95626f6f779a239ff988ca042cfd2887885f5cb15e73f16d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/IsSplittingField/Variant131d201293fab58c95626f6f779a239ff988ca042cfd2887885f5cb15e73f16d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.CharP.Algebra` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.IntermediateField` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Adjoin.Field` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsSplittingField](../../../../mathematics/Algebra/IsSplittingField/Variant131d201293fab58c95626f6f779a239ff988ca042cfd2887885f5cb15e73f16d.lean/declarations/issplittingfield--849b504d34a895c27c56513a.md) | 55 | `declaration-track:849b504d34a895c27c56513a5b664c68ed9e93513ebe17cbffa27332f27d7512` |
| 2 | `theorem` | [splits](../../../../mathematics/Algebra/IsSplittingField/Variant131d201293fab58c95626f6f779a239ff988ca042cfd2887885f5cb15e73f16d.lean/declarations/splits--79d3bb10009c6b0bbfb65309.md) | 66 | `result-track:79d3bb10009c6b0bbfb653097fb0de34c5b6f7d9e24e3b291d69db96f1588f4c` |
| 3 | `theorem` | [adjoin_rootSet](../../../../mathematics/Algebra/IsSplittingField/Variant131d201293fab58c95626f6f779a239ff988ca042cfd2887885f5cb15e73f16d.lean/declarations/adjoin-rootset--51004f855fef254077ce1f0f.md) | 72 | `result-track:51004f855fef254077ce1f0f67f47a0be49d5bcfbf1c19a3971838daddab04bb` |
| 4 | `instance` | [map](../../../../mathematics/Algebra/IsSplittingField/Variant131d201293fab58c95626f6f779a239ff988ca042cfd2887885f5cb15e73f16d.lean/declarations/map--88e39d0fdd73ac35a9a9e964.md) | 81 | `declaration-track:88e39d0fdd73ac35a9a9e9640c6e29a7467f56e7c2562a0dcf4bc1a528394107` |
| 5 | `theorem` | [splits_iff](../../../../mathematics/Algebra/IsSplittingField/Variant131d201293fab58c95626f6f779a239ff988ca042cfd2887885f5cb15e73f16d.lean/declarations/splits-iff--bc38dc9c4c56d03cb9a67681.md) | 89 | `result-track:bc38dc9c4c56d03cb9a676814059ab8391fefc9ddab60d64e4b8a67836c5cf54` |
| 6 | `theorem` | [mul](../../../../mathematics/Algebra/IsSplittingField/Variant131d201293fab58c95626f6f779a239ff988ca042cfd2887885f5cb15e73f16d.lean/declarations/mul--1ce28be833c708abb0f56206.md) | 105 | `result-track:1ce28be833c708abb0f5620609d53265d1b1888c89d69e23b3418d760601de9a` |
| 7 | `def` | [lift](../../../../mathematics/Algebra/IsSplittingField/Variant131d201293fab58c95626f6f779a239ff988ca042cfd2887885f5cb15e73f16d.lean/declarations/lift--1d003f454cce8b33c058fe98.md) | 123 | `declaration-track:1d003f454cce8b33c058fe987adcfa3e15b36eabc19faabdb8dc284653a0f249` |
| 8 | `theorem` | [finiteDimensional](../../../../mathematics/Algebra/IsSplittingField/Variant131d201293fab58c95626f6f779a239ff988ca042cfd2887885f5cb15e73f16d.lean/declarations/finitedimensional--da82ef312389a2b9fe5c5792.md) | 139 | `result-track:da82ef312389a2b9fe5c579201c5c213d4fff08dca59da724d7782ee3594f7e5` |
| 9 | `theorem` | [of_algEquiv](../../../../mathematics/Algebra/IsSplittingField/Variant131d201293fab58c95626f6f779a239ff988ca042cfd2887885f5cb15e73f16d.lean/declarations/of-algequiv--a9cd4891e231da0ca0269add.md) | 148 | `result-track:a9cd4891e231da0ca0269add69d1f8be347b8ed75b6db3b1dd2321a065f809d6` |
| 10 | `theorem` | [splits_of_splits](../../../../mathematics/Algebra/IsSplittingField/Variant131d201293fab58c95626f6f779a239ff988ca042cfd2887885f5cb15e73f16d.lean/declarations/splits-of-splits--367185bff01801c23e097858.md) | 167 | `result-track:367185bff01801c23e097858c5ac3dba7ba05fd651cfc5c659c0535758457872` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
