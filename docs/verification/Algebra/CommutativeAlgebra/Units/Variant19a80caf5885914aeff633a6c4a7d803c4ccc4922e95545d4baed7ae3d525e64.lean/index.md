# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Units.Variant19a80caf5885914aeff633a6c4a7d803c4ccc4922e95545d4baed7ae3d525e64

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c5c1ab32bdabb42a461772d90cf62b57fd31fcc9",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Units/Variant19a80caf5885914aeff633a6c4a7d803c4ccc4922e95545d4baed7ae3d525e64.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Units/Variant19a80caf5885914aeff633a6c4a7d803c4ccc4922e95545d4baed7ae3d525e64.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Units/Variant19a80caf5885914aeff633a6c4a7d803c4ccc4922e95545d4baed7ae3d525e64.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c5c1ab32bdabb42a461772d90cf62b57fd31fcc9`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Units/Variant19a80caf5885914aeff633a6c4a7d803c4ccc4922e95545d4baed7ae3d525e64.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Units/Variant19a80caf5885914aeff633a6c4a7d803c4ccc4922e95545d4baed7ae3d525e64.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.Degree.Domain` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Degree.SmallDegree` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [natDegree_eq_zero_of_isUnit](../../../../../mathematics/Algebra/CommutativeAlgebra/Units/Variant19a80caf5885914aeff633a6c4a7d803c4ccc4922e95545d4baed7ae3d525e64.lean/declarations/natdegree-eq-zero-of-isunit--01b9ee8ed97f3d9f5e3a06e1.md) | 35 | `result-track:01b9ee8ed97f3d9f5e3a06e12bb163a4e0191215bd78e8c6e8f15e5bbf59ea66` |
| 2 | `lemma` | [degree_eq_zero_of_isUnit](../../../../../mathematics/Algebra/CommutativeAlgebra/Units/Variant19a80caf5885914aeff633a6c4a7d803c4ccc4922e95545d4baed7ae3d525e64.lean/declarations/degree-eq-zero-of-isunit--16e6fed1cedda70faadbfea9.md) | 42 | `result-track:16e6fed1cedda70faadbfea9a79cf0307c8e88a97ccd764f87fb3061eeeb5651` |
| 3 | `lemma` | [degree_coe_units](../../../../../mathematics/Algebra/CommutativeAlgebra/Units/Variant19a80caf5885914aeff633a6c4a7d803c4ccc4922e95545d4baed7ae3d525e64.lean/declarations/degree-coe-units--86b8bc3c393bdd21d4db0f4a.md) | 47 | `result-track:86b8bc3c393bdd21d4db0f4ae5f75cc9342a9c7fcf78343b2d68d0206e824f62` |
| 4 | `lemma` | [isUnit_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Units/Variant19a80caf5885914aeff633a6c4a7d803c4ccc4922e95545d4baed7ae3d525e64.lean/declarations/isunit-iff--1aa1e9d9240597be950bbffc.md) | 52 | `result-track:1aa1e9d9240597be950bbffcea25ce6001bddae22238dbbefb5e4aebba05c658` |
| 5 | `lemma` | [not_isUnit_of_degree_pos](../../../../../mathematics/Algebra/CommutativeAlgebra/Units/Variant19a80caf5885914aeff633a6c4a7d803c4ccc4922e95545d4baed7ae3d525e64.lean/declarations/not-isunit-of-degree-pos--cadbad894c2c4ef62f54a2e3.md) | 59 | `result-track:cadbad894c2c4ef62f54a2e385f0ed0be04f131ec8433e9add4be0ca85416e53` |
| 6 | `lemma` | [not_isUnit_of_natDegree_pos](../../../../../mathematics/Algebra/CommutativeAlgebra/Units/Variant19a80caf5885914aeff633a6c4a7d803c4ccc4922e95545d4baed7ae3d525e64.lean/declarations/not-isunit-of-natdegree-pos--500113b3af83b85ae0e34a1c.md) | 65 | `result-track:500113b3af83b85ae0e34a1ce2d3d14c3094399a1f860d467ef0ff1aadf5e7a9` |
| 7 | `lemma` | [natDegree_coe_units](../../../../../mathematics/Algebra/CommutativeAlgebra/Units/Variant19a80caf5885914aeff633a6c4a7d803c4ccc4922e95545d4baed7ae3d525e64.lean/declarations/natdegree-coe-units--f31147582584af8b0ffe3a0d.md) | 68 | `result-track:f31147582584af8b0ffe3a0dd5d82c0374973d9e67781c611f9218572f15dbbe` |
| 8 | `theorem` | [coeff_coe_units_zero_ne_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Units/Variant19a80caf5885914aeff633a6c4a7d803c4ccc4922e95545d4baed7ae3d525e64.lean/declarations/coeff-coe-units-zero-ne-zero--c5a49b0c881df3baefe04f37.md) | 72 | `result-track:c5a49b0c881df3baefe04f37023721592a48330c95a4f344d633b72e593a52ff` |
| 9 | `lemma` | [Monic.C_dvd_iff_isUnit](../../../../../mathematics/Algebra/CommutativeAlgebra/Units/Variant19a80caf5885914aeff633a6c4a7d803c4ccc4922e95545d4baed7ae3d525e64.lean/declarations/monic-c-dvd-iff-isunit--0f4a31b35f93f89afe02d766.md) | 83 | `result-track:0f4a31b35f93f89afe02d76601089d93dd9aef3d47d4178b656fe68ac7891969` |
| 10 | `lemma` | [Monic.degree_pos_of_not_isUnit](../../../../../mathematics/Algebra/CommutativeAlgebra/Units/Variant19a80caf5885914aeff633a6c4a7d803c4ccc4922e95545d4baed7ae3d525e64.lean/declarations/monic-degree-pos-of-not-isunit--fa190f9e79383ac56aa83e4b.md) | 87 | `result-track:fa190f9e79383ac56aa83e4bd6810737d91bd7798bad88a471717803f3f5e26f` |
| 11 | `lemma` | [Monic.natDegree_pos_of_not_isUnit](../../../../../mathematics/Algebra/CommutativeAlgebra/Units/Variant19a80caf5885914aeff633a6c4a7d803c4ccc4922e95545d4baed7ae3d525e64.lean/declarations/monic-natdegree-pos-of-not-isunit--a9956e54f512cf04f749ae16.md) | 90 | `result-track:a9956e54f512cf04f749ae16cd857a2a71a04cdcce1c0bb30308e1444c0a0eb5` |
| 12 | `lemma` | [degree_pos_of_not_isUnit_of_dvd_monic](../../../../../mathematics/Algebra/CommutativeAlgebra/Units/Variant19a80caf5885914aeff633a6c4a7d803c4ccc4922e95545d4baed7ae3d525e64.lean/declarations/degree-pos-of-not-isunit-of-dvd-monic--d09d78070c289391fbf25379.md) | 93 | `result-track:d09d78070c289391fbf253791e5c5df2ff5d46910fb9ef9720ea4c51d8e9392f` |
| 13 | `lemma` | [natDegree_pos_of_not_isUnit_of_dvd_monic](../../../../../mathematics/Algebra/CommutativeAlgebra/Units/Variant19a80caf5885914aeff633a6c4a7d803c4ccc4922e95545d4baed7ae3d525e64.lean/declarations/natdegree-pos-of-not-isunit-of-dvd-monic--471a7bb13832551b1be83b8e.md) | 98 | `result-track:471a7bb13832551b1be83b8ef8723e806cd4b05a675507ec09489823fa5f3ba9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
