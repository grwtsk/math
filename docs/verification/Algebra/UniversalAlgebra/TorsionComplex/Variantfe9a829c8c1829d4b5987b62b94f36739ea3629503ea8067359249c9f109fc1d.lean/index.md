# Verification target: GRWTSK.Algebra.UniversalAlgebra.TorsionComplex.Variantfe9a829c8c1829d4b5987b62b94f36739ea3629503ea8067359249c9f109fc1d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "029ccfa44d6bb234ee6afb9ba24d092b980774fb",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/TorsionComplex/Variantfe9a829c8c1829d4b5987b62b94f36739ea3629503ea8067359249c9f109fc1d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/TorsionComplex/Variantfe9a829c8c1829d4b5987b62b94f36739ea3629503ea8067359249c9f109fc1d.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/TorsionComplex/Variantfe9a829c8c1829d4b5987b62b94f36739ea3629503ea8067359249c9f109fc1d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `029ccfa44d6bb234ee6afb9ba24d092b980774fb`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/TorsionComplex/Variantfe9a829c8c1829d4b5987b62b94f36739ea3629503ea8067359249c9f109fc1d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/TorsionComplex/Variantfe9a829c8c1829d4b5987b62b94f36739ea3629503ea8067359249c9f109fc1d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Fin` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FiniteTorsionComplex](../../../../../mathematics/Algebra/UniversalAlgebra/TorsionComplex/Variantfe9a829c8c1829d4b5987b62b94f36739ea3629503ea8067359249c9f109fc1d.lean/declarations/finitetorsioncomplex--c21663b2c2f191d10b041806.md) | 23 | `declaration-track:c21663b2c2f191d10b041806362f6ab1e599a710279817875c114c3eaa391efa` |
| 2 | `def` | [torsionMass](../../../../../mathematics/Algebra/UniversalAlgebra/TorsionComplex/Variantfe9a829c8c1829d4b5987b62b94f36739ea3629503ea8067359249c9f109fc1d.lean/declarations/torsionmass--47e894be6ff46ce6df1e8ea6.md) | 30 | `declaration-track:47e894be6ff46ce6df1e8ea67e6ede543728108ff53b93a8583ef827af34f95c` |
| 3 | `def` | [eulerShadow](../../../../../mathematics/Algebra/UniversalAlgebra/TorsionComplex/Variantfe9a829c8c1829d4b5987b62b94f36739ea3629503ea8067359249c9f109fc1d.lean/declarations/eulershadow--d95fd461fd532e14d84d5b49.md) | 34 | `declaration-track:d95fd461fd532e14d84d5b49ea5ae6c6c3877cbc3a4a11e243f429ac0c7986a7` |
| 4 | `theorem` | [torsionMass_nonnegative](../../../../../mathematics/Algebra/UniversalAlgebra/TorsionComplex/Variantfe9a829c8c1829d4b5987b62b94f36739ea3629503ea8067359249c9f109fc1d.lean/declarations/torsionmass-nonnegative--1260b37b4590286f91a841bc.md) | 39 | `result-track:1260b37b4590286f91a841bce59f8d7b8af8bf122c2973067f71a42476201f8e` |
| 5 | `theorem` | [torsionMass_identity](../../../../../mathematics/Algebra/UniversalAlgebra/TorsionComplex/Variantfe9a829c8c1829d4b5987b62b94f36739ea3629503ea8067359249c9f109fc1d.lean/declarations/torsionmass-identity--69f7990b774c3466e0c9ef85.md) | 44 | `result-track:69f7990b774c3466e0c9ef856d06727cdd5ec207bd084f5d4daf697675118485` |
| 6 | `theorem` | [eulerShadow_identity](../../../../../mathematics/Algebra/UniversalAlgebra/TorsionComplex/Variantfe9a829c8c1829d4b5987b62b94f36739ea3629503ea8067359249c9f109fc1d.lean/declarations/eulershadow-identity--9bce9abba9352f4b6cd769ac.md) | 49 | `result-track:9bce9abba9352f4b6cd769ac194b3b9e4ea149fa730c8aff2edca8ce0b57be10` |
| 7 | `theorem` | [mass_nonincreasing_comp](../../../../../mathematics/Algebra/UniversalAlgebra/TorsionComplex/Variantfe9a829c8c1829d4b5987b62b94f36739ea3629503ea8067359249c9f109fc1d.lean/declarations/mass-nonincreasing-comp--9a9549268ead283b5a62dc81.md) | 54 | `result-track:9a9549268ead283b5a62dc81120237d4aacacba6a07e214a0a1bf333e257b431` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
