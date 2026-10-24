# Verification target: GRWTSK.Algebra.LinearAlgebra.MatrixPolynomialAlgebra.Variant7e6ac533af6ab7e7b7cd0b2f094dfe3cdafe1475cc16ad301b2c854433fba82d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ebbebf10673b378a17a7685dc877bb65d159cd3c",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/MatrixPolynomialAlgebra/Variant7e6ac533af6ab7e7b7cd0b2f094dfe3cdafe1475cc16ad301b2c854433fba82d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/MatrixPolynomialAlgebra/Variant7e6ac533af6ab7e7b7cd0b2f094dfe3cdafe1475cc16ad301b2c854433fba82d.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/MatrixPolynomialAlgebra/Variant7e6ac533af6ab7e7b7cd0b2f094dfe3cdafe1475cc16ad301b2c854433fba82d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ebbebf10673b378a17a7685dc877bb65d159cd3c`.

Source path: `GRWTSK/Algebra/LinearAlgebra/MatrixPolynomialAlgebra/Variant7e6ac533af6ab7e7b7cd0b2f094dfe3cdafe1475cc16ad301b2c854433fba82d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/MatrixPolynomialAlgebra/Variant7e6ac533af6ab7e7b7cd0b2f094dfe3cdafe1475cc16ad301b2c854433fba82d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Matrix.Basis` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Matrix.Composition` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.MatrixAlgebra` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.PolynomialAlgebra` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [matPolyEquiv](../../../../../mathematics/Algebra/LinearAlgebra/MatrixPolynomialAlgebra/Variant7e6ac533af6ab7e7b7cd0b2f094dfe3cdafe1475cc16ad301b2c854433fba82d.lean/declarations/matpolyequiv--1abfb1224d1383f95db394fe.md) | 57 | `declaration-track:1abfb1224d1383f95db394fe7259f6d7addda7616beef58b77ebc00b2970b69d` |
| 2 | `theorem` | [matPolyEquiv_symm_C](../../../../../mathematics/Algebra/LinearAlgebra/MatrixPolynomialAlgebra/Variant7e6ac533af6ab7e7b7cd0b2f094dfe3cdafe1475cc16ad301b2c854433fba82d.lean/declarations/matpolyequiv-symm-c--dd68a4a7fecf2d392b14a1f7.md) | 61 | `result-track:dd68a4a7fecf2d392b14a1f7ba177c1ac3b1e0d1a9ec135974a3d283c723a1f7` |
| 3 | `theorem` | [matPolyEquiv_map_C](../../../../../mathematics/Algebra/LinearAlgebra/MatrixPolynomialAlgebra/Variant7e6ac533af6ab7e7b7cd0b2f094dfe3cdafe1475cc16ad301b2c854433fba82d.lean/declarations/matpolyequiv-map-c--4be7be0728a62541d449fbf0.md) | 64 | `result-track:4be7be0728a62541d449fbf057b932331905b660d1b4a78940d8187557779f15` |
| 4 | `theorem` | [matPolyEquiv_symm_X](../../../../../mathematics/Algebra/LinearAlgebra/MatrixPolynomialAlgebra/Variant7e6ac533af6ab7e7b7cd0b2f094dfe3cdafe1475cc16ad301b2c854433fba82d.lean/declarations/matpolyequiv-symm-x--7efb12f65ad0680b1faa1b2f.md) | 67 | `result-track:7efb12f65ad0680b1faa1b2fe6b9633096ab8d7bce2295e53d30654988621b0b` |
| 5 | `theorem` | [matPolyEquiv_diagonal_X](../../../../../mathematics/Algebra/LinearAlgebra/MatrixPolynomialAlgebra/Variant7e6ac533af6ab7e7b7cd0b2f094dfe3cdafe1475cc16ad301b2c854433fba82d.lean/declarations/matpolyequiv-diagonal-x--7a77a85f60b11811bf026782.md) | 71 | `result-track:7a77a85f60b11811bf02678225468806694ff4506a3e8e088feeefeb49449f27` |
| 6 | `theorem` | [matPolyEquiv_coeff_apply_aux_1](../../../../../mathematics/Algebra/LinearAlgebra/MatrixPolynomialAlgebra/Variant7e6ac533af6ab7e7b7cd0b2f094dfe3cdafe1475cc16ad301b2c854433fba82d.lean/declarations/matpolyequiv-coeff-apply-aux-1--d33b3e9d4c8e8f12e35edb3d.md) | 78 | `result-track:d33b3e9d4c8e8f12e35edb3d2072c6781784cbe42cf2527792c40e09eb606e60` |
| 7 | `theorem` | [matPolyEquiv_coeff_apply_aux_2](../../../../../mathematics/Algebra/LinearAlgebra/MatrixPolynomialAlgebra/Variant7e6ac533af6ab7e7b7cd0b2f094dfe3cdafe1475cc16ad301b2c854433fba82d.lean/declarations/matpolyequiv-coeff-apply-aux-2--4675c95974bebdc48f613a14.md) | 89 | `result-track:4675c95974bebdc48f613a14b4de913daf22d0808b312ae0f3526657354886c0` |
| 8 | `theorem` | [matPolyEquiv_coeff_apply](../../../../../mathematics/Algebra/LinearAlgebra/MatrixPolynomialAlgebra/Variant7e6ac533af6ab7e7b7cd0b2f094dfe3cdafe1475cc16ad301b2c854433fba82d.lean/declarations/matpolyequiv-coeff-apply--a43ad3a788a45055270f67b0.md) | 102 | `result-track:a43ad3a788a45055270f67b07953f2cf47f381962ba467af26f14993ea1d4620` |
| 9 | `theorem` | [matPolyEquiv_symm_apply_coeff](../../../../../mathematics/Algebra/LinearAlgebra/MatrixPolynomialAlgebra/Variant7e6ac533af6ab7e7b7cd0b2f094dfe3cdafe1475cc16ad301b2c854433fba82d.lean/declarations/matpolyequiv-symm-apply-coeff--ca087f47a0026acbf10cf92b.md) | 117 | `result-track:ca087f47a0026acbf10cf92b7334feb00ac412dd8418bcb06c3705488646d3f2` |
| 10 | `theorem` | [matPolyEquiv_smul_one](../../../../../mathematics/Algebra/LinearAlgebra/MatrixPolynomialAlgebra/Variant7e6ac533af6ab7e7b7cd0b2f094dfe3cdafe1475cc16ad301b2c854433fba82d.lean/declarations/matpolyequiv-smul-one--dd06cb9deafe3bc966e064c5.md) | 123 | `result-track:dd06cb9deafe3bc966e064c5845881ba96c73139f72254fbb8adc8685ab8c2dc` |
| 11 | `lemma` | [matPolyEquiv_map_smul](../../../../../mathematics/Algebra/LinearAlgebra/MatrixPolynomialAlgebra/Variant7e6ac533af6ab7e7b7cd0b2f094dfe3cdafe1475cc16ad301b2c854433fba82d.lean/declarations/matpolyequiv-map-smul--85bd64abc943fab8bf4f622c.md) | 131 | `result-track:85bd64abc943fab8bf4f622c978182b54d69acf029b444df3b013fdaf4387098` |
| 12 | `theorem` | [support_subset_support_matPolyEquiv](../../../../../mathematics/Algebra/LinearAlgebra/MatrixPolynomialAlgebra/Variant7e6ac533af6ab7e7b7cd0b2f094dfe3cdafe1475cc16ad301b2c854433fba82d.lean/declarations/support-subset-support-matpolyequiv--508326cea09a178359cb9ed2.md) | 135 | `result-track:508326cea09a178359cb9ed21894262bb75920f475900b8a31d88c783d63b8f4` |
| 13 | `def` | [RingHom.polyToMatrix](../../../../../mathematics/Algebra/LinearAlgebra/MatrixPolynomialAlgebra/Variant7e6ac533af6ab7e7b7cd0b2f094dfe3cdafe1475cc16ad301b2c854433fba82d.lean/declarations/ringhom-polytomatrix--978e5899197485da24a8be63.md) | 145 | `declaration-track:978e5899197485da24a8be63b171711d5bf9c69504c5c8cb4feddbb5b6e3524a` |
| 14 | `lemma` | [evalRingHom_mapMatrix_comp_polyToMatrix](../../../../../mathematics/Algebra/LinearAlgebra/MatrixPolynomialAlgebra/Variant7e6ac533af6ab7e7b7cd0b2f094dfe3cdafe1475cc16ad301b2c854433fba82d.lean/declarations/evalringhom-mapmatrix-comp-polytomatrix--6999702db56db9708f70d4be.md) | 150 | `result-track:6999702db56db9708f70d4be93d7a6b2cc3a93f2b2b4e8cdc44b709a05140af2` |
| 15 | `lemma` | [evalRingHom_mapMatrix_comp_compRingEquiv](../../../../../mathematics/Algebra/LinearAlgebra/MatrixPolynomialAlgebra/Variant7e6ac533af6ab7e7b7cd0b2f094dfe3cdafe1475cc16ad301b2c854433fba82d.lean/declarations/evalringhom-mapmatrix-comp-compringequiv--08908b430906612df17eeb54.md) | 154 | `result-track:08908b430906612df17eeb54b1ed03ffa77f23342ba65ce351e5a74ce4f1c90f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
