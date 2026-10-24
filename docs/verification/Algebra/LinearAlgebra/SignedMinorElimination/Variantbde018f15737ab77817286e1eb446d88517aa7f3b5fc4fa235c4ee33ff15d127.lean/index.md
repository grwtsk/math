# Verification target: GRWTSK.Algebra.LinearAlgebra.SignedMinorElimination.Variantbde018f15737ab77817286e1eb446d88517aa7f3b5fc4fa235c4ee33ff15d127

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f2b57501d26aec3f258086dddf5d17632bd9d8e0",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/SignedMinorElimination/Variantbde018f15737ab77817286e1eb446d88517aa7f3b5fc4fa235c4ee33ff15d127.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/SignedMinorElimination/Variantbde018f15737ab77817286e1eb446d88517aa7f3b5fc4fa235c4ee33ff15d127.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/SignedMinorElimination/Variantbde018f15737ab77817286e1eb446d88517aa7f3b5fc4fa235c4ee33ff15d127.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f2b57501d26aec3f258086dddf5d17632bd9d8e0`.

Source path: `GRWTSK/Algebra/LinearAlgebra/SignedMinorElimination/Variantbde018f15737ab77817286e1eb446d88517aa7f3b5fc4fa235c4ee33ff15d127.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/SignedMinorElimination/Variantbde018f15737ab77817286e1eb446d88517aa7f3b5fc4fa235c4ee33ff15d127.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.Grassmannian.SignedGraph` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fin.SuccPred` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [det_cancel_signed_unit](../../../../../mathematics/Algebra/LinearAlgebra/SignedMinorElimination/Variantbde018f15737ab77817286e1eb446d88517aa7f3b5fc4fa235c4ee33ff15d127.lean/declarations/det-cancel-signed-unit--098724b65f372fbdd6173fc6.md) | 24 | `result-track:098724b65f372fbdd6173fc6b14c5e3730e995c0e6cbec7771526a55199949e2` |
| 2 | `def` | [antiReverse](../../../../../mathematics/Algebra/LinearAlgebra/SignedMinorElimination/Variantbde018f15737ab77817286e1eb446d88517aa7f3b5fc4fa235c4ee33ff15d127.lean/declarations/antireverse--22b13ab162494e922787d25b.md) | 45 | `declaration-track:22b13ab162494e922787d25b79bca2bcfcc869476d3f00ff3cc9673714c1f5de` |
| 3 | `def` | [augment](../../../../../mathematics/Algebra/LinearAlgebra/SignedMinorElimination/Variantbde018f15737ab77817286e1eb446d88517aa7f3b5fc4fa235c4ee33ff15d127.lean/declarations/augment--13a18d238b55fcc0017efd58.md) | 49 | `declaration-track:13a18d238b55fcc0017efd58347ec0cd8c566bf224f3c9d009be485863fb8398` |
| 4 | `theorem` | [antiReverse_delete_last](../../../../../mathematics/Algebra/LinearAlgebra/SignedMinorElimination/Variantbde018f15737ab77817286e1eb446d88517aa7f3b5fc4fa235c4ee33ff15d127.lean/declarations/antireverse-delete-last--615974186b66850469fba877.md) | 55 | `result-track:615974186b66850469fba8779c0d0cf5ab23ad85029b109dd805722c561766c6` |
| 5 | `theorem` | [antiReverse_det](../../../../../mathematics/Algebra/LinearAlgebra/SignedMinorElimination/Variantbde018f15737ab77817286e1eb446d88517aa7f3b5fc4fa235c4ee33ff15d127.lean/declarations/antireverse-det--d5db37d274bc37e1dbc96a15.md) | 73 | `result-track:d5db37d274bc37e1dbc96a158073567154840fa60e782821092eac0f92f10896` |
| 6 | `theorem` | [antiReverse_mul_frame](../../../../../mathematics/Algebra/LinearAlgebra/SignedMinorElimination/Variantbde018f15737ab77817286e1eb446d88517aa7f3b5fc4fa235c4ee33ff15d127.lean/declarations/antireverse-mul-frame--47bc9de3cbb3a47d70269468.md) | 95 | `result-track:47bc9de3cbb3a47d70269468c15f7cf7d387b3192acf2fb47d879fd6e3987fe1` |
| 7 | `theorem` | [frame_minor_eq_augment](../../../../../mathematics/Algebra/LinearAlgebra/SignedMinorElimination/Variantbde018f15737ab77817286e1eb446d88517aa7f3b5fc4fa235c4ee33ff15d127.lean/declarations/frame-minor-eq-augment--969bb3983f3dd6c4da64400b.md) | 108 | `result-track:969bb3983f3dd6c4da64400bc38e306d117a7f2cba4bfe61a38960f7f0992475` |
| 8 | `structure` | [Selection](../../../../../mathematics/Algebra/LinearAlgebra/SignedMinorElimination/Variantbde018f15737ab77817286e1eb446d88517aa7f3b5fc4fa235c4ee33ff15d127.lean/declarations/selection--eb511a110dd7451291d1af03.md) | 114 | `declaration-track:eb511a110dd7451291d1af038da93417f25a22c8c83c13040d4d0ead9cb03b08` |
| 9 | `def` | [Selection.value](../../../../../mathematics/Algebra/LinearAlgebra/SignedMinorElimination/Variantbde018f15737ab77817286e1eb446d88517aa7f3b5fc4fa235c4ee33ff15d127.lean/declarations/selection-value--5e046018be17ec2728a921e3.md) | 123 | `declaration-track:5e046018be17ec2728a921e3b444a384ebd6dbca1b9a3919e8d4aab5f020d593` |
| 10 | `def` | [emptySelection](../../../../../mathematics/Algebra/LinearAlgebra/SignedMinorElimination/Variantbde018f15737ab77817286e1eb446d88517aa7f3b5fc4fa235c4ee33ff15d127.lean/declarations/emptyselection--8014e2b65ca27e2edb46eafb.md) | 127 | `declaration-track:8014e2b65ca27e2edb46eafbea6530d2d1d0449a83104f8d5b631365086cf402` |
| 11 | `theorem` | [succAbove_strictMono](../../../../../mathematics/Algebra/LinearAlgebra/SignedMinorElimination/Variantbde018f15737ab77817286e1eb446d88517aa7f3b5fc4fa235c4ee33ff15d127.lean/declarations/succabove-strictmono--0dde2d4d6095266d4db092b8.md) | 131 | `result-track:0dde2d4d6095266d4db092b86161c1f5ae0f345a6fd5fd46ef24edbd8fa1b64a` |
| 12 | `def` | [deleteFirstColumns](../../../../../mathematics/Algebra/LinearAlgebra/SignedMinorElimination/Variantbde018f15737ab77817286e1eb446d88517aa7f3b5fc4fa235c4ee33ff15d127.lean/declarations/deletefirstcolumns--2938acd239c79ef5ce044f2f.md) | 138 | `declaration-track:2938acd239c79ef5ce044f2f77dd7c2f5869af9b181bc9a52e05f6b137a6d298` |
| 13 | `def` | [firstPivot](../../../../../mathematics/Algebra/LinearAlgebra/SignedMinorElimination/Variantbde018f15737ab77817286e1eb446d88517aa7f3b5fc4fa235c4ee33ff15d127.lean/declarations/firstpivot--7db5f0d24a15e0bc836601e1.md) | 156 | `declaration-track:7db5f0d24a15e0bc836601e1d29eca0493a89562ef287dae333f35d94016e828` |
| 14 | `def` | [rightColumns](../../../../../mathematics/Algebra/LinearAlgebra/SignedMinorElimination/Variantbde018f15737ab77817286e1eb446d88517aa7f3b5fc4fa235c4ee33ff15d127.lean/declarations/rightcolumns--f0c27dcac8ca77163dedf8f8.md) | 161 | `declaration-track:f0c27dcac8ca77163dedf8f8106030d107cb3ee5ea214a571488c76987b329ce` |
| 15 | `theorem` | [all_right_of_first](../../../../../mathematics/Algebra/LinearAlgebra/SignedMinorElimination/Variantbde018f15737ab77817286e1eb446d88517aa7f3b5fc4fa235c4ee33ff15d127.lean/declarations/all-right-of-first--b01b13a7915a0cfdd797aa2e.md) | 174 | `result-track:b01b13a7915a0cfdd797aa2e08d1fdb57060193e4803123c3267c41c6861df41` |
| 16 | `def` | [liftSelection](../../../../../mathematics/Algebra/LinearAlgebra/SignedMinorElimination/Variantbde018f15737ab77817286e1eb446d88517aa7f3b5fc4fa235c4ee33ff15d127.lean/declarations/liftselection--aca9a3a2ca855cc9a4993434.md) | 182 | `declaration-track:aca9a3a2ca855cc9a4993434c8941828c3d7af2cd37bd4b07bed7aedb267a8b5` |
| 17 | `def` | [decodeSelection](../../../../../mathematics/Algebra/LinearAlgebra/SignedMinorElimination/Variantbde018f15737ab77817286e1eb446d88517aa7f3b5fc4fa235c4ee33ff15d127.lean/declarations/decodeselection--54d72ae444230c71683def14.md) | 187 | `declaration-track:54d72ae444230c71683def14e5d866ba01940686940476fe039f48d8476d1118` |
| 18 | `theorem` | [first_column_pattern](../../../../../mathematics/Algebra/LinearAlgebra/SignedMinorElimination/Variantbde018f15737ab77817286e1eb446d88517aa7f3b5fc4fa235c4ee33ff15d127.lean/declarations/first-column-pattern--91b134ee2735cbfbe7fa0110.md) | 195 | `result-track:91b134ee2735cbfbe7fa0110fd50245993cf4a2f51efce0e2a1d90c996c0b530` |
| 19 | `theorem` | [delete_first_submatrix](../../../../../mathematics/Algebra/LinearAlgebra/SignedMinorElimination/Variantbde018f15737ab77817286e1eb446d88517aa7f3b5fc4fa235c4ee33ff15d127.lean/declarations/delete-first-submatrix--bc24a79f94b9764fbbcda410.md) | 215 | `result-track:bc24a79f94b9764fbbcda4109127077eb8a0e854287620b7e6d8d2693191099a` |
| 20 | `theorem` | [augment_minor_eq_decoded](../../../../../mathematics/Algebra/LinearAlgebra/SignedMinorElimination/Variantbde018f15737ab77817286e1eb446d88517aa7f3b5fc4fa235c4ee33ff15d127.lean/declarations/augment-minor-eq-decoded--8f279a0eabd9d70203591935.md) | 265 | `result-track:8f279a0eabd9d70203591935db864cff9f87b69070fa2a3c1b63b75c19246cff` |
| 21 | `theorem` | [frame_minor_eq_decoded](../../../../../mathematics/Algebra/LinearAlgebra/SignedMinorElimination/Variantbde018f15737ab77817286e1eb446d88517aa7f3b5fc4fa235c4ee33ff15d127.lean/declarations/frame-minor-eq-decoded--680752b2315cec168eeffafc.md) | 296 | `result-track:680752b2315cec168eeffafc7b3d9ed2399d4f9cb0d5fcf9e3452bfff5ca2c44` |
| 22 | `theorem` | [frame_nonnegative_of_source](../../../../../mathematics/Algebra/LinearAlgebra/SignedMinorElimination/Variantbde018f15737ab77817286e1eb446d88517aa7f3b5fc4fa235c4ee33ff15d127.lean/declarations/frame-nonnegative-of-source--d378676c00ef45d9fc6f27f2.md) | 303 | `result-track:d378676c00ef45d9fc6f27f2df9226e2e51d471094b4dcdcf9b648bfe5c71f1e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
