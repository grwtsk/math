# Verification target: GRWTSK.Algebra.LinearAlgebra.StdBasis.Variant66035bde53cc1c97f8305a2717c226498722aa025a5292e37794d9af3451260c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ca0fbee9ef294b28199b942bbbc15c260428a8f3",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/StdBasis/Variant66035bde53cc1c97f8305a2717c226498722aa025a5292e37794d9af3451260c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variant66035bde53cc1c97f8305a2717c226498722aa025a5292e37794d9af3451260c.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variant66035bde53cc1c97f8305a2717c226498722aa025a5292e37794d9af3451260c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ca0fbee9ef294b28199b942bbbc15c260428a8f3`.

Source path: `GRWTSK/Algebra/LinearAlgebra/StdBasis/Variant66035bde53cc1c97f8305a2717c226498722aa025a5292e37794d9af3451260c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/StdBasis/Variant66035bde53cc1c97f8305a2717c226498722aa025a5292e37794d9af3451260c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Matrix.Basis` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Basis` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Pi` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [stdBasis](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variant66035bde53cc1c97f8305a2717c226498722aa025a5292e37794d9af3451260c.lean/declarations/stdbasis--cd4d04df3e6934a7dc726a6e.md) | 48 | `declaration-track:cd4d04df3e6934a7dc726a6e2e511f64bb662bd0dfbf543102aea46f89aaea7e` |
| 2 | `theorem` | [stdBasis_apply](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variant66035bde53cc1c97f8305a2717c226498722aa025a5292e37794d9af3451260c.lean/declarations/stdbasis-apply--2717637c6b7815d693179158.md) | 52 | `result-track:2717637c6b7815d69317915882b859a0e47f68012d8a51c351118b3084131acc` |
| 3 | `theorem` | [stdBasis_apply'](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variant66035bde53cc1c97f8305a2717c226498722aa025a5292e37794d9af3451260c.lean/declarations/stdbasis-apply--1d393a1807dc32c1b8f316fd.md) | 57 | `result-track:1d393a1807dc32c1b8f316fde37bd8aa7e04a42ed750aee4b7e53fd133272ba7` |
| 4 | `theorem` | [coe_stdBasis](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variant66035bde53cc1c97f8305a2717c226498722aa025a5292e37794d9af3451260c.lean/declarations/coe-stdbasis--e821ebcf51cab7ee007ca4b3.md) | 62 | `result-track:e821ebcf51cab7ee007ca4b306f90c4d03aa574c1f1eb21d4ac636a1dc630c19` |
| 5 | `theorem` | [stdBasis_same](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variant66035bde53cc1c97f8305a2717c226498722aa025a5292e37794d9af3451260c.lean/declarations/stdbasis-same--2dece34aceb5391f0a0f20c4.md) | 67 | `result-track:2dece34aceb5391f0a0f20c48117c66b3f479331c2cb84161fc7096d45073b58` |
| 6 | `theorem` | [stdBasis_ne](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variant66035bde53cc1c97f8305a2717c226498722aa025a5292e37794d9af3451260c.lean/declarations/stdbasis-ne--ae5f4d31a7468acbdd294ecd.md) | 71 | `result-track:ae5f4d31a7468acbdd294ecd5484cd5d6bb2190e225b476a4002d26789a41134` |
| 7 | `theorem` | [stdBasis_eq_pi_diag](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variant66035bde53cc1c97f8305a2717c226498722aa025a5292e37794d9af3451260c.lean/declarations/stdbasis-eq-pi-diag--fa790d50f491df07664d3639.md) | 75 | `result-track:fa790d50f491df07664d3639caa5c8b0e3400784f26e57d223545c8f2164907c` |
| 8 | `theorem` | [ker_stdBasis](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variant66035bde53cc1c97f8305a2717c226498722aa025a5292e37794d9af3451260c.lean/declarations/ker-stdbasis--ed1e8d4b9fbfdddddf7aa471.md) | 82 | `result-track:ed1e8d4b9fbfdddddf7aa4711bb6e7b0c17df6196eae736ee433becdf8909ea1` |
| 9 | `theorem` | [proj_comp_stdBasis](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variant66035bde53cc1c97f8305a2717c226498722aa025a5292e37794d9af3451260c.lean/declarations/proj-comp-stdbasis--38ce92ee27e20542c8b5c693.md) | 86 | `result-track:38ce92ee27e20542c8b5c693628e4a043b68edaaae87de058e22bb1b5e1e4a54` |
| 10 | `theorem` | [proj_stdBasis_same](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variant66035bde53cc1c97f8305a2717c226498722aa025a5292e37794d9af3451260c.lean/declarations/proj-stdbasis-same--1e59d1c556f0d5fc88924d74.md) | 90 | `result-track:1e59d1c556f0d5fc88924d74a97fec5658b3b7953f76601000ad6a10053b3fd1` |
| 11 | `theorem` | [proj_stdBasis_ne](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variant66035bde53cc1c97f8305a2717c226498722aa025a5292e37794d9af3451260c.lean/declarations/proj-stdbasis-ne--33576d9e57d592e21ea16aa4.md) | 94 | `result-track:33576d9e57d592e21ea16aa442ee3bc8c5b37b670660fc935d00870977556616` |
| 12 | `theorem` | [iSup_range_stdBasis_le_iInf_ker_proj](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variant66035bde53cc1c97f8305a2717c226498722aa025a5292e37794d9af3451260c.lean/declarations/isup-range-stdbasis-le-iinf-ker-proj--f8ca137986695a1a38787122.md) | 98 | `result-track:f8ca137986695a1a3878712259c1882e8852c8f9f6a8dabc1b4eb1c7286acded` |
| 13 | `theorem` | [iInf_ker_proj_le_iSup_range_stdBasis](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variant66035bde53cc1c97f8305a2717c226498722aa025a5292e37794d9af3451260c.lean/declarations/iinf-ker-proj-le-isup-range-stdbasis--0ec818fe78c33c8069eb0b0f.md) | 108 | `result-track:0ec818fe78c33c8069eb0b0f95759130320b437a9d6869d2b087fd15e370b063` |
| 14 | `theorem` | [iSup_range_stdBasis_eq_iInf_ker_proj](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variant66035bde53cc1c97f8305a2717c226498722aa025a5292e37794d9af3451260c.lean/declarations/isup-range-stdbasis-eq-iinf-ker-proj--a9ac4fd118bbfec6c302bd2d.md) | 125 | `result-track:a9ac4fd118bbfec6c302bd2dc538adb7d8b16daf45f291ff0826e167e08d3bb9` |
| 15 | `theorem` | [iSup_range_stdBasis](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variant66035bde53cc1c97f8305a2717c226498722aa025a5292e37794d9af3451260c.lean/declarations/isup-range-stdbasis--84eac731d35685de1fdde9e6.md) | 134 | `result-track:84eac731d35685de1fdde9e60c0bdd4caa5578746a7da15e079708d7dd83d02c` |
| 16 | `theorem` | [disjoint_stdBasis_stdBasis](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variant66035bde53cc1c97f8305a2717c226498722aa025a5292e37794d9af3451260c.lean/declarations/disjoint-stdbasis-stdbasis--a675cf58245d49990cc46868.md) | 142 | `result-track:a675cf58245d49990cc46868ec1ccd56a9b5a275260b04dcd30f2ed2c531cb69` |
| 17 | `theorem` | [stdBasis_eq_single](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variant66035bde53cc1c97f8305a2717c226498722aa025a5292e37794d9af3451260c.lean/declarations/stdbasis-eq-single--daae49790cdc66faedde7266.md) | 158 | `result-track:daae49790cdc66faedde72662a4a143ef5270bcfd962a925fc4e0cb1a9405606` |
| 18 | `theorem` | [linearIndependent_stdBasis](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variant66035bde53cc1c97f8305a2717c226498722aa025a5292e37794d9af3451260c.lean/declarations/linearindependent-stdbasis--002aae296803ddaf6e898af2.md) | 177 | `result-track:002aae296803ddaf6e898af22fb6405debcf330c7b610c8c6e387f1b651a54ed` |
| 19 | `def` | [basis](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variant66035bde53cc1c97f8305a2717c226498722aa025a5292e37794d9af3451260c.lean/declarations/basis--fc523361a4977a04469183c9.md) | 219 | `declaration-track:fc523361a4977a04469183c9bedd3f6817a52b250d737ab00fa076fb56498e65` |
| 20 | `theorem` | [basis_repr_stdBasis](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variant66035bde53cc1c97f8305a2717c226498722aa025a5292e37794d9af3451260c.lean/declarations/basis-repr-stdbasis--f4ac81c373bf6ddd52d1af65.md) | 233 | `result-track:f4ac81c373bf6ddd52d1af6544aebe5086b56faaa5ef3a555ca2b4a53a638441` |
| 21 | `theorem` | [basis_apply](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variant66035bde53cc1c97f8305a2717c226498722aa025a5292e37794d9af3451260c.lean/declarations/basis-apply--1dc287c5054ebb837ea90e67.md) | 257 | `result-track:1dc287c5054ebb837ea90e67c287c1951b8131a151f376dc0778665aff8d02d9` |
| 22 | `theorem` | [basis_repr](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variant66035bde53cc1c97f8305a2717c226498722aa025a5292e37794d9af3451260c.lean/declarations/basis-repr--b76b74c332e34b6a7843d613.md) | 263 | `result-track:b76b74c332e34b6a7843d61321778379c19fdf431a459dec67827c3237323c1b` |
| 23 | `def` | [basisFun](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variant66035bde53cc1c97f8305a2717c226498722aa025a5292e37794d9af3451260c.lean/declarations/basisfun--421964d0b135d4f10a8054a9.md) | 275 | `declaration-track:421964d0b135d4f10a8054a95f46babf21f5eb026b548c0b3974e6456600156c` |
| 24 | `theorem` | [basisFun_apply](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variant66035bde53cc1c97f8305a2717c226498722aa025a5292e37794d9af3451260c.lean/declarations/basisfun-apply--0ea3cec949e5cf719661ff3a.md) | 280 | `result-track:0ea3cec949e5cf719661ff3a78b4aa8d165f1a9be315f34b20d1ccee084a6b3d` |
| 25 | `theorem` | [basisFun_repr](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variant66035bde53cc1c97f8305a2717c226498722aa025a5292e37794d9af3451260c.lean/declarations/basisfun-repr--9fd06ca3b071af7c6f337669.md) | 286 | `result-track:9fd06ca3b071af7c6f337669313194caa0765d8897f1be48208d9568e2755f46` |
| 26 | `theorem` | [basisFun_equivFun](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variant66035bde53cc1c97f8305a2717c226498722aa025a5292e37794d9af3451260c.lean/declarations/basisfun-equivfun--2896f0724acb49f0573385ec.md) | 290 | `result-track:2896f0724acb49f0573385ec159251db667f238e5260e6fd39174e3886f2c2bb` |
| 27 | `def` | [stdBasis](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variant66035bde53cc1c97f8305a2717c226498722aa025a5292e37794d9af3451260c.lean/declarations/stdbasis--ac12b622e1c0339444c8e7be.md) | 305 | `declaration-track:ac12b622e1c0339444c8e7be459116b91b11b107e63b6879fcb5cf6744ad65f6` |
| 28 | `theorem` | [stdBasis_eq_stdBasisMatrix](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variant66035bde53cc1c97f8305a2717c226498722aa025a5292e37794d9af3451260c.lean/declarations/stdbasis-eq-stdbasismatrix--6c06dfe450cdf762917e57f3.md) | 311 | `result-track:6c06dfe450cdf762917e57f3b17ff231545489613aaaca1cfb1fba873b55d802` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
