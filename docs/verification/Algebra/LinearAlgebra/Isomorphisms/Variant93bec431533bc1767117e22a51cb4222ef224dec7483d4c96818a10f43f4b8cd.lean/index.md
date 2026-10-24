# Verification target: GRWTSK.Algebra.LinearAlgebra.Isomorphisms.Variant93bec431533bc1767117e22a51cb4222ef224dec7483d4c96818a10f43f4b8cd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8fdded67ae0482b47390c3c115fcd32c5efd668f",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Isomorphisms/Variant93bec431533bc1767117e22a51cb4222ef224dec7483d4c96818a10f43f4b8cd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Isomorphisms/Variant93bec431533bc1767117e22a51cb4222ef224dec7483d4c96818a10f43f4b8cd.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Isomorphisms/Variant93bec431533bc1767117e22a51cb4222ef224dec7483d4c96818a10f43f4b8cd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8fdded67ae0482b47390c3c115fcd32c5efd668f`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Isomorphisms/Variant93bec431533bc1767117e22a51cb4222ef224dec7483d4c96818a10f43f4b8cd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Isomorphisms/Variant93bec431533bc1767117e22a51cb4222ef224dec7483d4c96818a10f43f4b8cd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Quotient` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [quotKerEquivRange](../../../../../mathematics/Algebra/LinearAlgebra/Isomorphisms/Variant93bec431533bc1767117e22a51cb4222ef224dec7483d4c96818a10f43f4b8cd.lean/declarations/quotkerequivrange--873f29df7504d9085db32d67.md) | 47 | `declaration-track:873f29df7504d9085db32d67cff855c77ad07e1daae16f9d4072d830a4d7e0d5` |
| 2 | `def` | [quotKerEquivOfSurjective](../../../../../mathematics/Algebra/LinearAlgebra/Isomorphisms/Variant93bec431533bc1767117e22a51cb4222ef224dec7483d4c96818a10f43f4b8cd.lean/declarations/quotkerequivofsurjective--2187d7237d5bc762a06c9b65.md) | 54 | `declaration-track:2187d7237d5bc762a06c9b65811cf44a5413a4ce16017e83f5952acbe95bee99` |
| 3 | `theorem` | [quotKerEquivRange_apply_mk](../../../../../mathematics/Algebra/LinearAlgebra/Isomorphisms/Variant93bec431533bc1767117e22a51cb4222ef224dec7483d4c96818a10f43f4b8cd.lean/declarations/quotkerequivrange-apply-mk--eca63fc83cd63fd9ccfe3e7a.md) | 60 | `result-track:eca63fc83cd63fd9ccfe3e7ae19416518e3c32d8362742156f7b1894626547f9` |
| 4 | `theorem` | [quotKerEquivRange_symm_apply_image](../../../../../mathematics/Algebra/LinearAlgebra/Isomorphisms/Variant93bec431533bc1767117e22a51cb4222ef224dec7483d4c96818a10f43f4b8cd.lean/declarations/quotkerequivrange-symm-apply-image--94d7178b612affc70e2cdc48.md) | 66 | `result-track:94d7178b612affc70e2cdc48d29b7734d6d259556b33a77bb56cee4f5ced89a7` |
| 5 | `def` | [subToSupQuotient](../../../../../mathematics/Algebra/LinearAlgebra/Isomorphisms/Variant93bec431533bc1767117e22a51cb4222ef224dec7483d4c96818a10f43f4b8cd.lean/declarations/subtosupquotient--7812c0ce6a99995e7e496984.md) | 74 | `declaration-track:7812c0ce6a99995e7e4969840a80e43f2a4a3889aec06e14f7f38ad2654c4be9` |
| 6 | `theorem` | [comap_leq_ker_subToSupQuotient](../../../../../mathematics/Algebra/LinearAlgebra/Isomorphisms/Variant93bec431533bc1767117e22a51cb4222ef224dec7483d4c96818a10f43f4b8cd.lean/declarations/comap-leq-ker-subtosupquotient--6d388c4b52a51b2d1e4a6670.md) | 79 | `result-track:6d388c4b52a51b2d1e4a66700d871f90ac282f41c6ef69f80781dd3df813c4d4` |
| 7 | `def` | [quotientInfToSupQuotient](../../../../../mathematics/Algebra/LinearAlgebra/Isomorphisms/Variant93bec431533bc1767117e22a51cb4222ef224dec7483d4c96818a10f43f4b8cd.lean/declarations/quotientinftosupquotient--c1a7ed2c2fca26dc58f2b89b.md) | 87 | `declaration-track:c1a7ed2c2fca26dc58f2b89bbd4247be0cbf24a5aad80268e6a3f9794f3c0101` |
| 8 | `theorem` | [quotientInfEquivSupQuotient_injective](../../../../../mathematics/Algebra/LinearAlgebra/Isomorphisms/Variant93bec431533bc1767117e22a51cb4222ef224dec7483d4c96818a10f43f4b8cd.lean/declarations/quotientinfequivsupquotient-injective--4d587baa6fa4cf5954e8b665.md) | 93 | `result-track:4d587baa6fa4cf5954e8b665cca796bedfc078d2e4ce953a786a5b28bba135d7` |
| 9 | `theorem` | [quotientInfEquivSupQuotient_surjective](../../../../../mathematics/Algebra/LinearAlgebra/Isomorphisms/Variant93bec431533bc1767117e22a51cb4222ef224dec7483d4c96818a10f43f4b8cd.lean/declarations/quotientinfequivsupquotient-surjective--d568d9c2f9f11adba5496c6e.md) | 100 | `result-track:d568d9c2f9f11adba5496c6e812b898887f321d565265d3fb16e8c4d2675583e` |
| 10 | `def` | [quotientInfEquivSupQuotient](../../../../../mathematics/Algebra/LinearAlgebra/Isomorphisms/Variant93bec431533bc1767117e22a51cb4222ef224dec7483d4c96818a10f43f4b8cd.lean/declarations/quotientinfequivsupquotient--84031902cd9a4e5007e5dc86.md) | 110 | `declaration-track:84031902cd9a4e5007e5dc867ee892171c89c61fdc96360f24cd984f66b7d73b` |
| 11 | `theorem` | [coe_quotientInfToSupQuotient](../../../../../mathematics/Algebra/LinearAlgebra/Isomorphisms/Variant93bec431533bc1767117e22a51cb4222ef224dec7483d4c96818a10f43f4b8cd.lean/declarations/coe-quotientinftosupquotient--638d531291e50e69ff2f7d83.md) | 119 | `result-track:638d531291e50e69ff2f7d83e4c61f0f3421574744a249810d6e98da11820ed9` |
| 12 | `theorem` | [quotientInfEquivSupQuotient_apply_mk](../../../../../mathematics/Algebra/LinearAlgebra/Isomorphisms/Variant93bec431533bc1767117e22a51cb4222ef224dec7483d4c96818a10f43f4b8cd.lean/declarations/quotientinfequivsupquotient-apply-mk--5617131877945fb638b91417.md) | 125 | `result-track:5617131877945fb638b914175f28f3aff698d4cc04003dafa283652eed5c1bb8` |
| 13 | `theorem` | [quotientInfEquivSupQuotient_symm_apply_left](../../../../../mathematics/Algebra/LinearAlgebra/Isomorphisms/Variant93bec431533bc1767117e22a51cb4222ef224dec7483d4c96818a10f43f4b8cd.lean/declarations/quotientinfequivsupquotient-symm-apply-left--2433c0fc8ef79d9f9ea8513e.md) | 132 | `result-track:2433c0fc8ef79d9f9ea8513e02c3157c987bc895d4037954141de1ef202b6883` |
| 14 | `theorem` | [quotientInfEquivSupQuotient_symm_apply_eq_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/Isomorphisms/Variant93bec431533bc1767117e22a51cb4222ef224dec7483d4c96818a10f43f4b8cd.lean/declarations/quotientinfequivsupquotient-symm-apply-eq-zero-iff--2177e50e192fe4d686e4dc64.md) | 143 | `result-track:2177e50e192fe4d686e4dc64927396d805402d4c3ddcf8b7f05f015d3dd3e721` |
| 15 | `theorem` | [quotientInfEquivSupQuotient_symm_apply_right](../../../../../mathematics/Algebra/LinearAlgebra/Isomorphisms/Variant93bec431533bc1767117e22a51cb4222ef224dec7483d4c96818a10f43f4b8cd.lean/declarations/quotientinfequivsupquotient-symm-apply-right--f5f7b92dbe0486dba870fe17.md) | 150 | `result-track:f5f7b92dbe0486dba870fe1765d35e17d5771862b181f66c7ce9b99091c2b8f4` |
| 16 | `def` | [quotientQuotientEquivQuotientAux](../../../../../mathematics/Algebra/LinearAlgebra/Isomorphisms/Variant93bec431533bc1767117e22a51cb4222ef224dec7483d4c96818a10f43f4b8cd.lean/declarations/quotientquotientequivquotientaux--e352488e3c8cd9be7b52a321.md) | 167 | `declaration-track:e352488e3c8cd9be7b52a3212f5c238b7d32c24b43d9a3c24900d03e304d976f` |
| 17 | `theorem` | [quotientQuotientEquivQuotientAux_mk](../../../../../mathematics/Algebra/LinearAlgebra/Isomorphisms/Variant93bec431533bc1767117e22a51cb4222ef224dec7483d4c96818a10f43f4b8cd.lean/declarations/quotientquotientequivquotientaux-mk--aefe7a65d0a4c83d40881c84.md) | 176 | `result-track:aefe7a65d0a4c83d40881c84eb7c20d89001d3f9986c2810af450b557e7cf6c7` |
| 18 | `theorem` | [quotientQuotientEquivQuotientAux_mk_mk](../../../../../mathematics/Algebra/LinearAlgebra/Isomorphisms/Variant93bec431533bc1767117e22a51cb4222ef224dec7483d4c96818a10f43f4b8cd.lean/declarations/quotientquotientequivquotientaux-mk-mk--9495157bc7aa90bc9b144028.md) | 182 | `result-track:9495157bc7aa90bc9b14402836b05f3d5b6276b0aef8522f9a97711af9d55894` |
| 19 | `def` | [quotientQuotientEquivQuotient](../../../../../mathematics/Algebra/LinearAlgebra/Isomorphisms/Variant93bec431533bc1767117e22a51cb4222ef224dec7483d4c96818a10f43f4b8cd.lean/declarations/quotientquotientequivquotient--157d5afc2ef1286487d05488.md) | 187 | `declaration-track:157d5afc2ef1286487d05488269a7f1018b52f75ce2bcb0d3f3adeb3c3f3e7b6` |
| 20 | `theorem` | [card_quotient_mul_card_quotient](../../../../../mathematics/Algebra/LinearAlgebra/Isomorphisms/Variant93bec431533bc1767117e22a51cb4222ef224dec7483d4c96818a10f43f4b8cd.lean/declarations/card-quotient-mul-card-quotient--c999ed914de876f5a88cd9e5.md) | 196 | `result-track:c999ed914de876f5a88cd9e536b5ee174d1625a6715a15f23bc34ac2b8ac8d02` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
