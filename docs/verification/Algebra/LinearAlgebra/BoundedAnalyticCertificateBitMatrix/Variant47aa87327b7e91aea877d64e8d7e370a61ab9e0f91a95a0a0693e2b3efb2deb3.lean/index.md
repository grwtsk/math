# Verification target: GRWTSK.Algebra.LinearAlgebra.BoundedAnalyticCertificateBitMatrix.Variant47aa87327b7e91aea877d64e8d7e370a61ab9e0f91a95a0a0693e2b3efb2deb3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f57cb2c8bc45774b71b0d105e6641f107f875d3a",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/BoundedAnalyticCertificateBitMatrix/Variant47aa87327b7e91aea877d64e8d7e370a61ab9e0f91a95a0a0693e2b3efb2deb3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/BoundedAnalyticCertificateBitMatrix/Variant47aa87327b7e91aea877d64e8d7e370a61ab9e0f91a95a0a0693e2b3efb2deb3.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/BoundedAnalyticCertificateBitMatrix/Variant47aa87327b7e91aea877d64e8d7e370a61ab9e0f91a95a0a0693e2b3efb2deb3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f57cb2c8bc45774b71b0d105e6641f107f875d3a`.

Source path: `GRWTSK/Algebra/LinearAlgebra/BoundedAnalyticCertificateBitMatrix/Variant47aa87327b7e91aea877d64e8d7e370a61ab9e0f91a95a0a0693e2b3efb2deb3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/BoundedAnalyticCertificateBitMatrix/Variant47aa87327b7e91aea877d64e8d7e370a61ab9e0f91a95a0a0693e2b3efb2deb3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.SourceTree.Legacy.Analysis.BoundedAnalyticCertificate` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [BoundedCertificateBitRow](../../../../../mathematics/Algebra/LinearAlgebra/BoundedAnalyticCertificateBitMatrix/Variant47aa87327b7e91aea877d64e8d7e370a61ab9e0f91a95a0a0693e2b3efb2deb3.lean/declarations/boundedcertificatebitrow--f7acce8298c679b647b88c27.md) | 27 | `declaration-track:f7acce8298c679b647b88c27bbfe5037338871a513831d8d2893e71e75ccbab7` |
| 2 | `def` | [allBoundedCertificateBitRows](../../../../../mathematics/Algebra/LinearAlgebra/BoundedAnalyticCertificateBitMatrix/Variant47aa87327b7e91aea877d64e8d7e370a61ab9e0f91a95a0a0693e2b3efb2deb3.lean/declarations/allboundedcertificatebitrows--fd00f9fdd2b62a91089180cb.md) | 37 | `declaration-track:fd00f9fdd2b62a91089180cb5a437734708f2cf9a21ab6dad662aa8f4437acf0` |
| 3 | `theorem` | [all_bounded_certificate_bit_rows_length](../../../../../mathematics/Algebra/LinearAlgebra/BoundedAnalyticCertificateBitMatrix/Variant47aa87327b7e91aea877d64e8d7e370a61ab9e0f91a95a0a0693e2b3efb2deb3.lean/declarations/all-bounded-certificate-bit-rows-length--5a4767071a42d2193ca8af33.md) | 46 | `result-track:5a4767071a42d2193ca8af338672c862cac44e2ae678cc98026cc4f1919f7780` |
| 4 | `theorem` | [all_bounded_certificate_bit_rows_complete](../../../../../mathematics/Algebra/LinearAlgebra/BoundedAnalyticCertificateBitMatrix/Variant47aa87327b7e91aea877d64e8d7e370a61ab9e0f91a95a0a0693e2b3efb2deb3.lean/declarations/all-bounded-certificate-bit-rows-complete--efc07025f307b976bf3287c5.md) | 50 | `result-track:efc07025f307b976bf3287c5e0bc10790aca4830d0792e41335b2e2ff6854ceb` |
| 5 | `def` | [boundedCertificateBitRowCount](../../../../../mathematics/Algebra/LinearAlgebra/BoundedAnalyticCertificateBitMatrix/Variant47aa87327b7e91aea877d64e8d7e370a61ab9e0f91a95a0a0693e2b3efb2deb3.lean/declarations/boundedcertificatebitrowcount--13d3291d49086fdbcb9af3e6.md) | 56 | `declaration-track:13d3291d49086fdbcb9af3e6a1dd40cee32537a529982c96507816441acdfef4` |
| 6 | `structure` | [BoundedCertificateBitMatrix](../../../../../mathematics/Algebra/LinearAlgebra/BoundedAnalyticCertificateBitMatrix/Variant47aa87327b7e91aea877d64e8d7e370a61ab9e0f91a95a0a0693e2b3efb2deb3.lean/declarations/boundedcertificatebitmatrix--487422a5b00e68b159df1f3f.md) | 67 | `declaration-track:487422a5b00e68b159df1f3fb40c6a684e4ca6a70d9e9680f0501ea58882e5f9` |
| 7 | `def` | [BoundedCertificateBitMatrix.Accepts](../../../../../mathematics/Algebra/LinearAlgebra/BoundedAnalyticCertificateBitMatrix/Variant47aa87327b7e91aea877d64e8d7e370a61ab9e0f91a95a0a0693e2b3efb2deb3.lean/declarations/boundedcertificatebitmatrix-accepts--883825a1560af0bad015ff48.md) | 77 | `declaration-track:883825a1560af0bad015ff4880e9028fdc7b310e473ba404b368e452cd43c296` |
| 8 | `def` | [allTrueBoundedCertificateBitMatrix](../../../../../mathematics/Algebra/LinearAlgebra/BoundedAnalyticCertificateBitMatrix/Variant47aa87327b7e91aea877d64e8d7e370a61ab9e0f91a95a0a0693e2b3efb2deb3.lean/declarations/alltrueboundedcertificatebitmatrix--3a6681863c893123bd84c9fd.md) | 88 | `declaration-track:3a6681863c893123bd84c9fdecc071498d181ba5f7598b209e948366b44a894a` |
| 9 | `theorem` | [all_true_bounded_certificate_bitmatrix_accepts](../../../../../mathematics/Algebra/LinearAlgebra/BoundedAnalyticCertificateBitMatrix/Variant47aa87327b7e91aea877d64e8d7e370a61ab9e0f91a95a0a0693e2b3efb2deb3.lean/declarations/all-true-bounded-certificate-bitmatrix-accepts--283c347c6844dc1e4e1f77f4.md) | 98 | `result-track:283c347c6844dc1e4e1f77f4cb22c261c3fadef499e702c1270486348cede565` |
| 10 | `theorem` | [bitmatrix_accepts_requires_generator_data](../../../../../mathematics/Algebra/LinearAlgebra/BoundedAnalyticCertificateBitMatrix/Variant47aa87327b7e91aea877d64e8d7e370a61ab9e0f91a95a0a0693e2b3efb2deb3.lean/declarations/bitmatrix-accepts-requires-generator-data--57dae6b78880c5262513737f.md) | 105 | `result-track:57dae6b78880c5262513737f15edd11dfb547714b182818b99831463c8208f88` |
| 11 | `theorem` | [bitmatrix_accepts_requires_generator_output](../../../../../mathematics/Algebra/LinearAlgebra/BoundedAnalyticCertificateBitMatrix/Variant47aa87327b7e91aea877d64e8d7e370a61ab9e0f91a95a0a0693e2b3efb2deb3.lean/declarations/bitmatrix-accepts-requires-generator-output--4df23ca2158c9a419ec44ed8.md) | 113 | `result-track:4df23ca2158c9a419ec44ed89e498be7bd46408899c91cca333562ae3eb8549a` |
| 12 | `theorem` | [bitmatrix_accepts_requires_local_analytic](../../../../../mathematics/Algebra/LinearAlgebra/BoundedAnalyticCertificateBitMatrix/Variant47aa87327b7e91aea877d64e8d7e370a61ab9e0f91a95a0a0693e2b3efb2deb3.lean/declarations/bitmatrix-accepts-requires-local-analytic--8f00117e25466d3905a9806c.md) | 121 | `result-track:8f00117e25466d3905a9806c5783c9746c5f18d32ee2a83a19d4787cbbb9e007` |
| 13 | `theorem` | [bitmatrix_accepts_requires_overlap_equalizer](../../../../../mathematics/Algebra/LinearAlgebra/BoundedAnalyticCertificateBitMatrix/Variant47aa87327b7e91aea877d64e8d7e370a61ab9e0f91a95a0a0693e2b3efb2deb3.lean/declarations/bitmatrix-accepts-requires-overlap-equalizer--0875dab5eb5dc8bbe68d061a.md) | 129 | `result-track:0875dab5eb5dc8bbe68d061a01615cdbd47b84d8fc353c5292a1ab0b69b273cc` |
| 14 | `theorem` | [bitmatrix_accepts_requires_identification](../../../../../mathematics/Algebra/LinearAlgebra/BoundedAnalyticCertificateBitMatrix/Variant47aa87327b7e91aea877d64e8d7e370a61ab9e0f91a95a0a0693e2b3efb2deb3.lean/declarations/bitmatrix-accepts-requires-identification--9463bd2405e09e94f2bf6a09.md) | 137 | `result-track:9463bd2405e09e94f2bf6a09551806d34f83f31d60d2d9cfb7a1892fcfb06767` |
| 15 | `theorem` | [bitmatrix_accepts_requires_globalization_gate](../../../../../mathematics/Algebra/LinearAlgebra/BoundedAnalyticCertificateBitMatrix/Variant47aa87327b7e91aea877d64e8d7e370a61ab9e0f91a95a0a0693e2b3efb2deb3.lean/declarations/bitmatrix-accepts-requires-globalization-gate--607ff950208baedfde9e53db.md) | 145 | `result-track:607ff950208baedfde9e53db5be7b4865c710275f11ed111a90120cf58dd4952` |
| 16 | `def` | [bitmatrixOfSectionCertificate](../../../../../mathematics/Algebra/LinearAlgebra/BoundedAnalyticCertificateBitMatrix/Variant47aa87327b7e91aea877d64e8d7e370a61ab9e0f91a95a0a0693e2b3efb2deb3.lean/declarations/bitmatrixofsectioncertificate--e69531eb836ab4fe9bd98c4c.md) | 170 | `declaration-track:e69531eb836ab4fe9bd98c4c2e92d807bb85e46c569300398bfd11fccc536c4b` |
| 17 | `theorem` | [bitmatrix_of_section_certificate_accepts](../../../../../mathematics/Algebra/LinearAlgebra/BoundedAnalyticCertificateBitMatrix/Variant47aa87327b7e91aea877d64e8d7e370a61ab9e0f91a95a0a0693e2b3efb2deb3.lean/declarations/bitmatrix-of-section-certificate-accepts--20d035d17413adec8bdc0ad7.md) | 180 | `result-track:20d035d17413adec8bdc0ad72546295b3cb0bfe603990df19a24c5cc2b8158bc` |
| 18 | `def` | [bitmatrixOfCoefficientCertificate](../../../../../mathematics/Algebra/LinearAlgebra/BoundedAnalyticCertificateBitMatrix/Variant47aa87327b7e91aea877d64e8d7e370a61ab9e0f91a95a0a0693e2b3efb2deb3.lean/declarations/bitmatrixofcoefficientcertificate--45cba6fa4adc4b2da1a893df.md) | 195 | `declaration-track:45cba6fa4adc4b2da1a893df602a9f5df742537dd5ad834d7a12999f54d51d76` |
| 19 | `theorem` | [bitmatrix_of_coefficient_certificate_accepts](../../../../../mathematics/Algebra/LinearAlgebra/BoundedAnalyticCertificateBitMatrix/Variant47aa87327b7e91aea877d64e8d7e370a61ab9e0f91a95a0a0693e2b3efb2deb3.lean/declarations/bitmatrix-of-coefficient-certificate-accepts--45ee78ad853eceedbb45824c.md) | 205 | `result-track:45ee78ad853eceedbb45824ce556f9c1dcd7e95fdfa85a7fb5e541d3d2ff92c9` |
| 20 | `theorem` | [bounded_section_certificate_yields_membership_and_accepting_bitmatrix](../../../../../mathematics/Algebra/LinearAlgebra/BoundedAnalyticCertificateBitMatrix/Variant47aa87327b7e91aea877d64e8d7e370a61ab9e0f91a95a0a0693e2b3efb2deb3.lean/declarations/bounded-section-certificate-yields-membership-and-accepting-bitmatrix--53635d900aa492f529e2b284.md) | 217 | `result-track:53635d900aa492f529e2b28437814f94d39ec36deb03c2031ffd53ac9ab60c29` |
| 21 | `theorem` | [bounded_coefficient_certificate_yields_membership_and_accepting_bitmatrix](../../../../../mathematics/Algebra/LinearAlgebra/BoundedAnalyticCertificateBitMatrix/Variant47aa87327b7e91aea877d64e8d7e370a61ab9e0f91a95a0a0693e2b3efb2deb3.lean/declarations/bounded-coefficient-certificate-yields-membership-and-accepting-bitmatri--a09591d163d099bfb5e58564.md) | 231 | `result-track:a09591d163d099bfb5e58564a920fb53022792fe5699004a359205773d4294a9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
