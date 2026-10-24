# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Polynomial.Variant3a97a9132bbe58c5a9888923964f9dd8b9261aaead0e268e3027e2bb815e23f3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fbab3133710d20a3f2c7cedfb29321c0009852a9",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Polynomial/Variant3a97a9132bbe58c5a9888923964f9dd8b9261aaead0e268e3027e2bb815e23f3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant3a97a9132bbe58c5a9888923964f9dd8b9261aaead0e268e3027e2bb815e23f3.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant3a97a9132bbe58c5a9888923964f9dd8b9261aaead0e268e3027e2bb815e23f3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fbab3133710d20a3f2c7cedfb29321c0009852a9`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Polynomial/Variant3a97a9132bbe58c5a9888923964f9dd8b9261aaead0e268e3027e2bb815e23f3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Polynomial/Variant3a97a9132bbe58c5a9888923964f9dd8b9261aaead0e268e3027e2bb815e23f3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Kaehler.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.MvPolynomial.PDeriv` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Derivation` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [KaehlerDifferential.mvPolynomialEquiv](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant3a97a9132bbe58c5a9888923964f9dd8b9261aaead0e268e3027e2bb815e23f3.lean/declarations/kaehlerdifferential-mvpolynomialequiv--73d455ed2c5853f66a649c8d.md) | 27 | `declaration-track:73d455ed2c5853f66a649c8d9c8585f2054ed78acd28ef8a14dfed41ffaecdf7` |
| 2 | `def` | [KaehlerDifferential.mvPolynomialBasis](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant3a97a9132bbe58c5a9888923964f9dd8b9261aaead0e268e3027e2bb815e23f3.lean/declarations/kaehlerdifferential-mvpolynomialbasis--d74bcc38751fde5b36ff5ea9.md) | 56 | `declaration-track:d74bcc38751fde5b36ff5ea978b3cea00de1b3eb2e5c394060b415e4b24dd8e4` |
| 3 | `lemma` | [KaehlerDifferential.mvPolynomialBasis_repr_comp_D](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant3a97a9132bbe58c5a9888923964f9dd8b9261aaead0e268e3027e2bb815e23f3.lean/declarations/kaehlerdifferential-mvpolynomialbasis-repr-comp-d--e1b89f7f8c7bb139edab5d03.md) | 60 | `result-track:e1b89f7f8c7bb139edab5d03fdff8e126f5152613a214d4c14f8246990297817` |
| 4 | `lemma` | [KaehlerDifferential.mvPolynomialBasis_repr_D](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant3a97a9132bbe58c5a9888923964f9dd8b9261aaead0e268e3027e2bb815e23f3.lean/declarations/kaehlerdifferential-mvpolynomialbasis-repr-d--f0b423c1d52dca25b4e9bde0.md) | 65 | `result-track:f0b423c1d52dca25b4e9bde0bb87946fcd278f4c21f44957238c343ad2d41be2` |
| 5 | `lemma` | [KaehlerDifferential.mvPolynomialBasis_repr_D_X](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant3a97a9132bbe58c5a9888923964f9dd8b9261aaead0e268e3027e2bb815e23f3.lean/declarations/kaehlerdifferential-mvpolynomialbasis-repr-d-x--45ad39bd6f5e0ea0ad9eca65.md) | 71 | `result-track:45ad39bd6f5e0ea0ad9eca65bb1357741a1125048c4845e0066419ccc1c78007` |
| 6 | `lemma` | [KaehlerDifferential.mvPolynomialBasis_repr_apply](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant3a97a9132bbe58c5a9888923964f9dd8b9261aaead0e268e3027e2bb815e23f3.lean/declarations/kaehlerdifferential-mvpolynomialbasis-repr-apply--3fc514a7dd702d205dd5e3e9.md) | 76 | `result-track:3fc514a7dd702d205dd5e3e9cb441cc32258e73f3af0e1337f8942e1a6a43a97` |
| 7 | `lemma` | [KaehlerDifferential.mvPolynomialBasis_repr_symm_single](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant3a97a9132bbe58c5a9888923964f9dd8b9261aaead0e268e3027e2bb815e23f3.lean/declarations/kaehlerdifferential-mvpolynomialbasis-repr-symm-single--f12ce318e7dbc75472226ba1.md) | 86 | `result-track:f12ce318e7dbc75472226ba1f5074bad4b18057240188b4ef83dc9601e3726d1` |
| 8 | `lemma` | [KaehlerDifferential.mvPolynomialBasis_apply](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant3a97a9132bbe58c5a9888923964f9dd8b9261aaead0e268e3027e2bb815e23f3.lean/declarations/kaehlerdifferential-mvpolynomialbasis-apply--8c93014833e0ebbc9d67d4c8.md) | 91 | `result-track:8c93014833e0ebbc9d67d4c8702d017e16a8f5a3d725e332af606c5e06b5f549` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant3a97a9132bbe58c5a9888923964f9dd8b9261aaead0e268e3027e2bb815e23f3.lean/declarations/instance--6f76479a841841a3c2ddb185.md) | 95 | `declaration-track:6f76479a841841a3c2ddb1851282c99d2593355426995002aad4bbfaa5992f5a` |
| 10 | `lemma` | [KaehlerDifferential.polynomial_D_apply](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant3a97a9132bbe58c5a9888923964f9dd8b9261aaead0e268e3027e2bb815e23f3.lean/declarations/kaehlerdifferential-polynomial-d-apply--5b42ac012b0ed4622611f0da.md) | 104 | `result-track:5b42ac012b0ed4622611f0da32952fdaa34de1cc5eef6b0fcba47ea5b38bcce2` |
| 11 | `def` | [KaehlerDifferential.polynomialEquiv](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant3a97a9132bbe58c5a9888923964f9dd8b9261aaead0e268e3027e2bb815e23f3.lean/declarations/kaehlerdifferential-polynomialequiv--6096759ac1b8c200f29e7970.md) | 110 | `declaration-track:6096759ac1b8c200f29e79704c34dafe76af725c89c5a0d1403df582c197c53f` |
| 12 | `lemma` | [KaehlerDifferential.polynomialEquiv_comp_D](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant3a97a9132bbe58c5a9888923964f9dd8b9261aaead0e268e3027e2bb815e23f3.lean/declarations/kaehlerdifferential-polynomialequiv-comp-d--d8bee90ed932f3e4d64e8e69.md) | 124 | `result-track:d8bee90ed932f3e4d64e8e69fa7b4e073897acb065b2c4db4442a519ee7f04fe` |
| 13 | `lemma` | [KaehlerDifferential.polynomialEquiv_D](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant3a97a9132bbe58c5a9888923964f9dd8b9261aaead0e268e3027e2bb815e23f3.lean/declarations/kaehlerdifferential-polynomialequiv-d--7d2a9e06bd755c78390dce5d.md) | 129 | `result-track:7d2a9e06bd755c78390dce5d3e732f7d9056907aeeddad1d16cda40dbf51a922` |
| 14 | `lemma` | [KaehlerDifferential.polynomialEquiv_symm](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant3a97a9132bbe58c5a9888923964f9dd8b9261aaead0e268e3027e2bb815e23f3.lean/declarations/kaehlerdifferential-polynomialequiv-symm--84807d4cb9612ea04e188e51.md) | 134 | `result-track:84807d4cb9612ea04e188e515dd4cd2211c8d59dfaa273f32e359f3340452f1e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
