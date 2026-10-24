# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ULift.Variant5169c284660ab80b96ecb9d498a42ca34b327b877b08ed9cc1dce66bdf577c27

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f5013287ca24a650e54b1de364cef3679e905be8",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ULift/Variant5169c284660ab80b96ecb9d498a42ca34b327b877b08ed9cc1dce66bdf577c27.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ULift/Variant5169c284660ab80b96ecb9d498a42ca34b327b877b08ed9cc1dce66bdf577c27.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ULift/Variant5169c284660ab80b96ecb9d498a42ca34b327b877b08ed9cc1dce66bdf577c27.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f5013287ca24a650e54b1de364cef3679e905be8`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ULift/Variant5169c284660ab80b96ecb9d498a42ca34b327b877b08ed9cc1dce66bdf577c27.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/ULift/Variant5169c284660ab80b96ecb9d498a42ca34b327b877b08ed9cc1dce66bdf577c27.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Mathport.Rename` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ULift/Variant5169c284660ab80b96ecb9d498a42ca34b327b877b08ed9cc1dce66bdf577c27.lean/declarations/map--6903a34440418e3304d83598.md) | 24 | `declaration-track:6903a34440418e3304d83598e960630b8f6862d6eee8b85a5753c13e2f44a868` |
| 2 | `theorem` | [map_up](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ULift/Variant5169c284660ab80b96ecb9d498a42ca34b327b877b08ed9cc1dce66bdf577c27.lean/declarations/map-up--db2db699568474c54674f16b.md) | 29 | `result-track:db2db699568474c54674f16bff1c9c86677fed772e6fcc123ec44bb494200f6f` |
| 3 | `def` | [pure](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ULift/Variant5169c284660ab80b96ecb9d498a42ca34b327b877b08ed9cc1dce66bdf577c27.lean/declarations/pure--f66dd2b64646d5636f2a4b1e.md) | 35 | `declaration-track:f66dd2b64646d5636f2a4b1e70d1f85fb51006926a7b0ce0c371afe7f7fa4eda` |
| 4 | `def` | [seq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ULift/Variant5169c284660ab80b96ecb9d498a42ca34b327b877b08ed9cc1dce66bdf577c27.lean/declarations/seq--b9b8fc7f4b40ad12aeb4dde1.md) | 40 | `declaration-track:b9b8fc7f4b40ad12aeb4dde16ae422743791b71d0cf78e613f4ea308425fa669` |
| 5 | `theorem` | [seq_up](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ULift/Variant5169c284660ab80b96ecb9d498a42ca34b327b877b08ed9cc1dce66bdf577c27.lean/declarations/seq-up--830aad123f1e745ad4e0f9e8.md) | 45 | `result-track:830aad123f1e745ad4e0f9e83153c3a2115647e60b155de5c348223971ceb0d0` |
| 6 | `def` | [bind](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ULift/Variant5169c284660ab80b96ecb9d498a42ca34b327b877b08ed9cc1dce66bdf577c27.lean/declarations/bind--39e8f426df2b1e14a21afc3b.md) | 50 | `declaration-track:39e8f426df2b1e14a21afc3b2a9acdefebfc012cb131029f7b45cbe8764457b5` |
| 7 | `theorem` | [bind_up](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ULift/Variant5169c284660ab80b96ecb9d498a42ca34b327b877b08ed9cc1dce66bdf577c27.lean/declarations/bind-up--4d8b59a342edd05c4302d67c.md) | 55 | `result-track:4d8b59a342edd05c4302d67c351d468a22f8fc838a04542bb1134ef2b77e7428` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ULift/Variant5169c284660ab80b96ecb9d498a42ca34b327b877b08ed9cc1dce66bdf577c27.lean/declarations/instance--13c7f8447c5cc4e984f0a546.md) | 59 | `declaration-track:13c7f8447c5cc4e984f0a546cc8680748f012dc62251f843c85da7e63d442a8b` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ULift/Variant5169c284660ab80b96ecb9d498a42ca34b327b877b08ed9cc1dce66bdf577c27.lean/declarations/instance--4ad5dec6c9653f94ff0bcc75.md) | 65 | `declaration-track:4ad5dec6c9653f94ff0bcc7510a5d35515a8ec8c640866fafd0922670cb15910` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ULift/Variant5169c284660ab80b96ecb9d498a42ca34b327b877b08ed9cc1dce66bdf577c27.lean/declarations/instance--a893dbfdd77cfc79ae338dea.md) | 70 | `declaration-track:a893dbfdd77cfc79ae338dead0242a1d2496635a93c58e5f96a047d4edc53b96` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ULift/Variant5169c284660ab80b96ecb9d498a42ca34b327b877b08ed9cc1dce66bdf577c27.lean/declarations/instance--c58b673e01f2ab12275c3624.md) | 78 | `declaration-track:c58b673e01f2ab12275c3624f5977e9eddbc636b1d1beba519d796671f047568` |
| 12 | `theorem` | [rec.constant](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ULift/Variant5169c284660ab80b96ecb9d498a42ca34b327b877b08ed9cc1dce66bdf577c27.lean/declarations/rec-constant--c009226542daf5241db2b8ac.md) | 85 | `result-track:c009226542daf5241db2b8aca300d83138d06d91271b05fa9174f8607c189ff1` |
| 13 | `def` | [map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ULift/Variant5169c284660ab80b96ecb9d498a42ca34b327b877b08ed9cc1dce66bdf577c27.lean/declarations/map--3ee60ff7b762aad4ebfa9e91.md) | 96 | `declaration-track:3ee60ff7b762aad4ebfa9e91396600a74809fc5a2c8e1de1831eeee7609b12d8` |
| 14 | `theorem` | [map_up](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ULift/Variant5169c284660ab80b96ecb9d498a42ca34b327b877b08ed9cc1dce66bdf577c27.lean/declarations/map-up--eaf715cb5b9a051d25ca6b19.md) | 101 | `result-track:eaf715cb5b9a051d25ca6b19d3cd978dd76b0b532161bd6e8a1b4eabefa402f9` |
| 15 | `def` | [pure](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ULift/Variant5169c284660ab80b96ecb9d498a42ca34b327b877b08ed9cc1dce66bdf577c27.lean/declarations/pure--820888abb15db57e57e8ce29.md) | 107 | `declaration-track:820888abb15db57e57e8ce290c212ba51a30cc40b9c3dc458a1db314aa0e486a` |
| 16 | `def` | [seq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ULift/Variant5169c284660ab80b96ecb9d498a42ca34b327b877b08ed9cc1dce66bdf577c27.lean/declarations/seq--693b758a199ce1287a87657c.md) | 112 | `declaration-track:693b758a199ce1287a87657c23360a2b191ed22001847d16a520cb0bfd60d027` |
| 17 | `theorem` | [seq_up](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ULift/Variant5169c284660ab80b96ecb9d498a42ca34b327b877b08ed9cc1dce66bdf577c27.lean/declarations/seq-up--033d04a37a8bcc77e9c7871f.md) | 117 | `result-track:033d04a37a8bcc77e9c7871fb4f4f3893ad154a2333dcaf1e17a11fdff7cbadc` |
| 18 | `def` | [bind](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ULift/Variant5169c284660ab80b96ecb9d498a42ca34b327b877b08ed9cc1dce66bdf577c27.lean/declarations/bind--d6db5437840060bcf7098ee8.md) | 122 | `declaration-track:d6db5437840060bcf7098ee8b7ff43d180c0c5c138a9fb478bf25533ddef80f5` |
| 19 | `theorem` | [bind_up](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ULift/Variant5169c284660ab80b96ecb9d498a42ca34b327b877b08ed9cc1dce66bdf577c27.lean/declarations/bind-up--77baa49cc6506bbefa097846.md) | 127 | `result-track:77baa49cc6506bbefa097846cae2b89d0342b316edcfe4e80d3d66542bdb8d7c` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ULift/Variant5169c284660ab80b96ecb9d498a42ca34b327b877b08ed9cc1dce66bdf577c27.lean/declarations/instance--67831fbfa54491747a7aadb8.md) | 131 | `declaration-track:67831fbfa54491747a7aadb8ccdc63989012c04a1746e9c2f7e28f93d22db42e` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ULift/Variant5169c284660ab80b96ecb9d498a42ca34b327b877b08ed9cc1dce66bdf577c27.lean/declarations/instance--4e5825d5e019edd36d94b8ec.md) | 137 | `declaration-track:4e5825d5e019edd36d94b8eca8e05ef4cc77d7e126846f09eded692f2014c958` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ULift/Variant5169c284660ab80b96ecb9d498a42ca34b327b877b08ed9cc1dce66bdf577c27.lean/declarations/instance--00d416cd11fe1dc1cf78882a.md) | 142 | `declaration-track:00d416cd11fe1dc1cf78882a3101d4bd7a6ad97f82f9c5c96739ae3d079b7b22` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ULift/Variant5169c284660ab80b96ecb9d498a42ca34b327b877b08ed9cc1dce66bdf577c27.lean/declarations/instance--af5ac26445950d2cd83e4cf5.md) | 150 | `declaration-track:af5ac26445950d2cd83e4cf5f8f138369758d0689d09cd0433203381aa766680` |
| 24 | `theorem` | [rec.constant](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ULift/Variant5169c284660ab80b96ecb9d498a42ca34b327b877b08ed9cc1dce66bdf577c27.lean/declarations/rec-constant--4fa2381af1fb42b615eddee4.md) | 157 | `result-track:4fa2381af1fb42b615eddee475884f3f4819528118c4e713f10db8017f5025ab` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
