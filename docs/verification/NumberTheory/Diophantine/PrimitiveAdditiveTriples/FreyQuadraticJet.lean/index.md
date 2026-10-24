# Verification target: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyQuadraticJet

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "98bafa6013820f49daa306e1dda04dd52056bec8",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyQuadraticJet.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyQuadraticJet.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyQuadraticJet.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `98bafa6013820f49daa306e1dda04dd52056bec8`.

Source path: `GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyQuadraticJet.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyQuadraticJet.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyLocalInvariants`](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyLocalInvariants.lean/index.md) — import line 9; pinned internal source present.
- `Mathlib.RingTheory.AdjoinRoot` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [FreyQuadraticJetRing](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyQuadraticJet.lean/declarations/freyquadraticjetring--0f95b3524fb34e3c200a48fe.md) | 19 | `declaration-track:0f95b3524fb34e3c200a48fe3157a56519b6e351913b0f93cac1955f8f29ca00` |
| 2 | `def` | [freyJetParameter](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyQuadraticJet.lean/declarations/freyjetparameter--6a609a48f43bcbaa257db604.md) | 22 | `declaration-track:6a609a48f43bcbaa257db604c9ec33a31dbe6038761ab28e6f8d82b7bf6f306c` |
| 3 | `theorem` | [freyJetParameter_cube](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyQuadraticJet.lean/declarations/freyjetparameter-cube--7573d3ebaa4c06f55a035530.md) | 26 | `result-track:7573d3ebaa4c06f55a035530d8d08a39c474655800c5413ef677f9cd9aabd606` |
| 4 | `theorem` | [freyJetParameter_ne_zero](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyQuadraticJet.lean/declarations/freyjetparameter-ne-zero--ef2673aee5df87e55abdff3d.md) | 30 | `result-track:ef2673aee5df87e55abdff3da1e051d602f0351bbf185aeb82cab58c86ae2fc5` |
| 5 | `theorem` | [freyJetParameter_sq_ne_zero](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyQuadraticJet.lean/declarations/freyjetparameter-sq-ne-zero--1268b1d3c9b8e93db97c17f1.md) | 35 | `result-track:1268b1d3c9b8e93db97c17f1ce7988ab3574bcf5da6b87ccc77dae5d98e85809` |
| 6 | `def` | [PrimitiveAdditiveTriple.freyPortRoot](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyQuadraticJet.lean/declarations/primitiveadditivetriple-freyportroot--1d3da0eeb157c058c4e38a31.md) | 42 | `declaration-track:1d3da0eeb157c058c4e38a3183ab32845616ca68a2dc658f0f970bdaf84d820d` |
| 7 | `theorem` | [PrimitiveAdditiveTriple.freyPortRoot_matches_point](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyQuadraticJet.lean/declarations/primitiveadditivetriple-freyportroot-matches-point--e60bf22150c02dcd61cd7717.md) | 46 | `result-track:e60bf22150c02dcd61cd77179b4edf7ac9e71a4440e13fabc9e91362d6ae7d7a` |
| 8 | `def` | [PrimitiveAdditiveTriple.freyPortJacobian](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyQuadraticJet.lean/declarations/primitiveadditivetriple-freyportjacobian--71205b23602742be770d9da9.md) | 53 | `declaration-track:71205b23602742be770d9da99114d0b11ee66d895604b150b5c5c92f1361136a` |
| 9 | `theorem` | [PrimitiveAdditiveTriple.freyPortJacobian_values](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyQuadraticJet.lean/declarations/primitiveadditivetriple-freyportjacobian-values--640bb23af1c6f4ab2165148d.md) | 60 | `result-track:640bb23af1c6f4ab2165148d4fdc04ee6856438453076bf736def6b187f941c7` |
| 10 | `theorem` | [PrimitiveAdditiveTriple.freyPortRoot_cubic](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyQuadraticJet.lean/declarations/primitiveadditivetriple-freyportroot-cubic--202fac8975692c7848d4f822.md) | 69 | `result-track:202fac8975692c7848d4f822fd8003cf479e86e50219720ab9a2d3314f8fbc91` |
| 11 | `theorem` | [PrimitiveAdditiveTriple.freyPortJacobian_derivative](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyQuadraticJet.lean/declarations/primitiveadditivetriple-freyportjacobian-derivative--ed861924fe88d8e20bec4a98.md) | 76 | `result-track:ed861924fe88d8e20bec4a986a0a9eaa4c77d4c9eac38963a19b89cf939ce8bc` |
| 12 | `theorem` | [PrimitiveAdditiveTriple.freyPortJacobian_ne_zero](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyQuadraticJet.lean/declarations/primitiveadditivetriple-freyportjacobian-ne-zero--5878632b2747d1508d038690.md) | 86 | `result-track:5878632b2747d1508d038690314eb401373495f2ef6b549db6c06b4c4a44e21b` |
| 13 | `theorem` | [PrimitiveAdditiveTriple.freyPortJacobian_dvd_product](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyQuadraticJet.lean/declarations/primitiveadditivetriple-freyportjacobian-dvd-product--a93c9610ac1b9242aecd0995.md) | 95 | `result-track:a93c9610ac1b9242aecd09959946f25a36dc2e24e27cc6a33685077a650f3d86` |
| 14 | `theorem` | [frey_nilpotent_quadratic_curve](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyQuadraticJet.lean/declarations/frey-nilpotent-quadratic-curve--bd220f5a022efe95b5c08674.md) | 109 | `result-track:bd220f5a022efe95b5c08674a3115a4e5a66f809a65bfb836348d666a7a19d04` |
| 15 | `def` | [PrimitiveAdditiveTriple.freyQuadraticX](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyQuadraticJet.lean/declarations/primitiveadditivetriple-freyquadraticx--8a3e3e9a3d03162094c9ba44.md) | 130 | `declaration-track:8a3e3e9a3d03162094c9ba4402c7186d9619b602cebc37c8126ef80d842def94` |
| 16 | `theorem` | [PrimitiveAdditiveTriple.freyQuadraticX_cubic](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyQuadraticJet.lean/declarations/primitiveadditivetriple-freyquadraticx-cubic--11d027614f0287d3eb84b6ca.md) | 137 | `result-track:11d027614f0287d3eb84b6cab71b8a1f2ef0f93735df45474405e08fa484f03c` |
| 17 | `theorem` | [PrimitiveAdditiveTriple.freyQuadraticJet_equation](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyQuadraticJet.lean/declarations/primitiveadditivetriple-freyquadraticjet-equation--57f31a3c478b3d7dcf2915b0.md) | 156 | `result-track:57f31a3c478b3d7dcf2915b03ce466c3476e758ef45f58edfd0193c7c92e363f` |
| 18 | `def` | [PrimitiveAdditiveTriple.freyPlaneJetCoefficients](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyQuadraticJet.lean/declarations/primitiveadditivetriple-freyplanejetcoefficients--66c3beaf1b2b4dc227219d5f.md) | 171 | `declaration-track:66c3beaf1b2b4dc227219d5fd8d9f28595c59d97cbea305c4e9aca39cefa7674` |
| 19 | `theorem` | [PrimitiveAdditiveTriple.freyPlaneJet_expansion](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyQuadraticJet.lean/declarations/primitiveadditivetriple-freyplanejet-expansion--5441cfe73307a8156e1a824b.md) | 178 | `result-track:5441cfe73307a8156e1a824bc5f6c810ff11e02a98a6cdf15eb6263fec993937` |
| 20 | `theorem` | [PrimitiveAdditiveTriple.frey_x_jet](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyQuadraticJet.lean/declarations/primitiveadditivetriple-frey-x-jet--092c17e3074ca184591fe344.md) | 191 | `result-track:092c17e3074ca184591fe34474fe68b71409dfdb56e9fd930e7ca23e8c3bb4aa` |
| 21 | `theorem` | [PrimitiveAdditiveTriple.frey_y_jet](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyQuadraticJet.lean/declarations/primitiveadditivetriple-frey-y-jet--423acc76441875aa51099258.md) | 198 | `result-track:423acc76441875aa51099258f8ac3238d2e4b95e60eb843d7ada431fa990948c` |
| 22 | `theorem` | [PrimitiveAdditiveTriple.frey_exists_unit_jet_port](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyQuadraticJet.lean/declarations/primitiveadditivetriple-frey-exists-unit-jet-port--c11709c10facd6856b49d46b.md) | 205 | `result-track:c11709c10facd6856b49d46b6fa977c6e4710fd5120eea9e0f6407dbd2741291` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
