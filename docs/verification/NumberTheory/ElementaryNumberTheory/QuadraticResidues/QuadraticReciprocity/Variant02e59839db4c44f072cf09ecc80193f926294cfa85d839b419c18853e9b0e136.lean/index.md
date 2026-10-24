# Verification target: GRWTSK.NumberTheory.QuadraticReciprocity.Variant02e59839db4c44f072cf09ecc80193f926294cfa85d839b419c18853e9b0e136

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "244d3435c1d70956d8fe3257bd7b102edc771ea4",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/QuadraticReciprocity/Variant02e59839db4c44f072cf09ecc80193f926294cfa85d839b419c18853e9b0e136.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/QuadraticReciprocity/Variant02e59839db4c44f072cf09ecc80193f926294cfa85d839b419c18853e9b0e136.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/QuadraticReciprocity/Variant02e59839db4c44f072cf09ecc80193f926294cfa85d839b419c18853e9b0e136.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `244d3435c1d70956d8fe3257bd7b102edc771ea4`.

Source path: `GRWTSK/NumberTheory/QuadraticReciprocity/Variant02e59839db4c44f072cf09ecc80193f926294cfa85d839b419c18853e9b0e136.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/QuadraticReciprocity/Variant02e59839db4c44f072cf09ecc80193f926294cfa85d839b419c18853e9b0e136.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.LegendreSymbol.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LegendreSymbol.QuadraticChar.GaussSum` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [at_two](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/QuadraticReciprocity/Variant02e59839db4c44f072cf09ecc80193f926294cfa85d839b419c18853e9b0e136.lean/declarations/at-two--79bb51255211ce224f878e81.md) | 68 | `result-track:79bb51255211ce224f878e81f7d409ccbb1f72cf7fe9cf2bb2efca1227dcce92` |
| 2 | `theorem` | [at_neg_two](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/QuadraticReciprocity/Variant02e59839db4c44f072cf09ecc80193f926294cfa85d839b419c18853e9b0e136.lean/declarations/at-neg-two--9984f67db525c22310443699.md) | 74 | `result-track:9984f67db525c223104436998692d5e646c190ac576b294be9b185852489f69d` |
| 3 | `theorem` | [exists_sq_eq_two_iff](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/QuadraticReciprocity/Variant02e59839db4c44f072cf09ecc80193f926294cfa85d839b419c18853e9b0e136.lean/declarations/exists-sq-eq-two-iff--571543446f856fd9e3632e49.md) | 86 | `result-track:571543446f856fd9e3632e498a75a052c3f42f6e11398e61f6069b7d162736a6` |
| 4 | `theorem` | [exists_sq_eq_neg_two_iff](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/QuadraticReciprocity/Variant02e59839db4c44f072cf09ecc80193f926294cfa85d839b419c18853e9b0e136.lean/declarations/exists-sq-eq-neg-two-iff--955b9ae3addcfb54d82d6610.md) | 97 | `result-track:955b9ae3addcfb54d82d66104352b3fa2249d53611e43de80796a3467c5147f3` |
| 5 | `theorem` | [quadratic_reciprocity](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/QuadraticReciprocity/Variant02e59839db4c44f072cf09ecc80193f926294cfa85d839b419c18853e9b0e136.lean/declarations/quadratic-reciprocity--761747272a3e7a1dbe292426.md) | 129 | `result-track:761747272a3e7a1dbe292426c8ebd15e6cedaf027aff1360ccd10eb9b7a4758e` |
| 6 | `theorem` | [quadratic_reciprocity'](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/QuadraticReciprocity/Variant02e59839db4c44f072cf09ecc80193f926294cfa85d839b419c18853e9b0e136.lean/declarations/quadratic-reciprocity--162787f222b27573dabdfd10.md) | 146 | `result-track:162787f222b27573dabdfd1025b8e401b4c0dde0c0759a13bda8c315a2d3e929` |
| 7 | `theorem` | [quadratic_reciprocity_one_mod_four](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/QuadraticReciprocity/Variant02e59839db4c44f072cf09ecc80193f926294cfa85d839b419c18853e9b0e136.lean/declarations/quadratic-reciprocity-one-mod-four--b13c93d18447f311a8f7a4fa.md) | 158 | `result-track:b13c93d18447f311a8f7a4fa2305becd79e2ddc31ff628a93913a72e0e7d7d68` |
| 8 | `theorem` | [quadratic_reciprocity_three_mod_four](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/QuadraticReciprocity/Variant02e59839db4c44f072cf09ecc80193f926294cfa85d839b419c18853e9b0e136.lean/declarations/quadratic-reciprocity-three-mod-four--8f635d4ae32206608c2c4a3f.md) | 166 | `result-track:8f635d4ae32206608c2c4a3f1e6cc75525d2ea8d644316b2230c4477d7d39c8f` |
| 9 | `theorem` | [exists_sq_eq_prime_iff_of_mod_four_eq_one](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/QuadraticReciprocity/Variant02e59839db4c44f072cf09ecc80193f926294cfa85d839b419c18853e9b0e136.lean/declarations/exists-sq-eq-prime-iff-of-mod-four-eq-one--270faa71aea71a4eadc0514c.md) | 181 | `result-track:270faa71aea71a4eadc0514c36303eb95f8510b5fdcf09e801d80c0adf70d72e` |
| 10 | `theorem` | [exists_sq_eq_prime_iff_of_mod_four_eq_three](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/QuadraticReciprocity/Variant02e59839db4c44f072cf09ecc80193f926294cfa85d839b419c18853e9b0e136.lean/declarations/exists-sq-eq-prime-iff-of-mod-four-eq-three--a12740c68a1afa6673310f4a.md) | 191 | `result-track:a12740c68a1afa6673310f4aadc567a8de9913160d4c16a9e7d8dc8aa8b2455e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
