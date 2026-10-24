# Verification target: GRWTSK.Algebra.LinearAlgebra.AlgebraTower.Variant59190bba31c559cccb2df5ef1c340047fd2deb5be9fce9fa1c4d7b9e8c2ef287

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "501618857aa927a1db6792510339270641e64f25",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/AlgebraTower/Variant59190bba31c559cccb2df5ef1c340047fd2deb5be9fce9fa1c4d7b9e8c2ef287.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/AlgebraTower/Variant59190bba31c559cccb2df5ef1c340047fd2deb5be9fce9fa1c4d7b9e8c2ef287.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/AlgebraTower/Variant59190bba31c559cccb2df5ef1c340047fd2deb5be9fce9fa1c4d7b9e8c2ef287.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `501618857aa927a1db6792510339270641e64f25`.

Source path: `GRWTSK/Algebra/LinearAlgebra/AlgebraTower/Variant59190bba31c559cccb2df5ef1c340047fd2deb5be9fce9fa1c4d7b9e8c2ef287.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/AlgebraTower/Variant59190bba31c559cccb2df5ef1c340047fd2deb5be9fce9fa1c4d7b9e8c2ef287.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Tower` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Basis.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Invertible.algebraTower](../../../../../mathematics/Algebra/LinearAlgebra/AlgebraTower/Variant59190bba31c559cccb2df5ef1c340047fd2deb5be9fce9fa1c4d7b9e8c2ef287.lean/declarations/invertible-algebratower--8dd8ed40c241b3581c70e469.md) | 41 | `declaration-track:8dd8ed40c241b3581c70e46943cceb7e6ff3cfe910bebfef59f74f5bdec5db14` |
| 2 | `def` | [invertibleAlgebraCoeNat](../../../../../mathematics/Algebra/LinearAlgebra/AlgebraTower/Variant59190bba31c559cccb2df5ef1c340047fd2deb5be9fce9fa1c4d7b9e8c2ef287.lean/declarations/invertiblealgebracoenat--62aa7ea81b791702a9ac74cd.md) | 48 | `declaration-track:62aa7ea81b791702a9ac74cd016fd91a6b64f77f2fa4a6ff9ea2eb68f06c6d98` |
| 3 | `def` | [Basis.algebraMapCoeffs](../../../../../mathematics/Algebra/LinearAlgebra/AlgebraTower/Variant59190bba31c559cccb2df5ef1c340047fd2deb5be9fce9fa1c4d7b9e8c2ef287.lean/declarations/basis-algebramapcoeffs--946337cae924516658320414.md) | 72 | `declaration-track:946337cae9245166583204142a4118e18c77175a6323d3396aeaf5919118439b` |
| 4 | `theorem` | [Basis.algebraMapCoeffs_repr](../../../../../mathematics/Algebra/LinearAlgebra/AlgebraTower/Variant59190bba31c559cccb2df5ef1c340047fd2deb5be9fce9fa1c4d7b9e8c2ef287.lean/declarations/basis-algebramapcoeffs-repr--348e2a27f5f5fe91b6119e7e.md) | 76 | `result-track:348e2a27f5f5fe91b6119e7eb54230746508300ba20d198695e4305b04045e13` |
| 5 | `theorem` | [Basis.algebraMapCoeffs_apply](../../../../../mathematics/Algebra/LinearAlgebra/AlgebraTower/Variant59190bba31c559cccb2df5ef1c340047fd2deb5be9fce9fa1c4d7b9e8c2ef287.lean/declarations/basis-algebramapcoeffs-apply--43a1d299e3c86539821f9acc.md) | 80 | `result-track:43a1d299e3c86539821f9acc5c47b2c192e587118ba7bd503fee2da46e4035c8` |
| 6 | `theorem` | [Basis.coe_algebraMapCoeffs](../../../../../mathematics/Algebra/LinearAlgebra/AlgebraTower/Variant59190bba31c559cccb2df5ef1c340047fd2deb5be9fce9fa1c4d7b9e8c2ef287.lean/declarations/basis-coe-algebramapcoeffs--688cdc36ec9c7b10ada36175.md) | 84 | `result-track:688cdc36ec9c7b10ada361750abd664e45796441aab5225cc1f77d1ba9289efc` |
| 7 | `theorem` | [linearIndependent_smul](../../../../../mathematics/Algebra/LinearAlgebra/AlgebraTower/Variant59190bba31c559cccb2df5ef1c340047fd2deb5be9fce9fa1c4d7b9e8c2ef287.lean/declarations/linearindependent-smul--38fa5cb7f09d8e9c8d82a337.md) | 97 | `result-track:38fa5cb7f09d8e9c8d82a337b268dbe35e3c2d46704cdcc6cd70b607e9321166` |
| 8 | `theorem` | [Basis.isScalarTower_of_nonempty](../../../../../mathematics/Algebra/LinearAlgebra/AlgebraTower/Variant59190bba31c559cccb2df5ef1c340047fd2deb5be9fce9fa1c4d7b9e8c2ef287.lean/declarations/basis-isscalartower-of-nonempty--30836255f435925f40e421b2.md) | 109 | `result-track:30836255f435925f40e421b2128074459a1d3900902a9aa139f2e7e21a18bed6` |
| 9 | `theorem` | [Basis.isScalarTower_finsupp](../../../../../mathematics/Algebra/LinearAlgebra/AlgebraTower/Variant59190bba31c559cccb2df5ef1c340047fd2deb5be9fce9fa1c4d7b9e8c2ef287.lean/declarations/basis-isscalartower-finsupp--38702212e3b26c10a37ebfda.md) | 113 | `result-track:38702212e3b26c10a37ebfdab2f7ad0a77487c4373df451d333af96a318d2e0d` |
| 10 | `def` | [Basis.smulTower](../../../../../mathematics/Algebra/LinearAlgebra/AlgebraTower/Variant59190bba31c559cccb2df5ef1c340047fd2deb5be9fce9fa1c4d7b9e8c2ef287.lean/declarations/basis-smultower--4172722f05c7a0e01f962480.md) | 121 | `declaration-track:4172722f05c7a0e01f962480693da5ee47a9618cafa67f5d9033b5335e544b47` |
| 11 | `theorem` | [Basis.smulTower_repr](../../../../../mathematics/Algebra/LinearAlgebra/AlgebraTower/Variant59190bba31c559cccb2df5ef1c340047fd2deb5be9fce9fa1c4d7b9e8c2ef287.lean/declarations/basis-smultower-repr--9e46211dd86f426086359545.md) | 130 | `result-track:9e46211dd86f4260863595452e4f95b4a184601cb50675477a3a73ce32aa50bf` |
| 12 | `theorem` | [Basis.smulTower_repr_mk](../../../../../mathematics/Algebra/LinearAlgebra/AlgebraTower/Variant59190bba31c559cccb2df5ef1c340047fd2deb5be9fce9fa1c4d7b9e8c2ef287.lean/declarations/basis-smultower-repr-mk--39dd89ae2215a98ce179b2a1.md) | 134 | `result-track:39dd89ae2215a98ce179b2a1b2407964d377dc77bee97c8fd8a0e1d7b80266a8` |
| 13 | `theorem` | [Basis.smulTower_apply](../../../../../mathematics/Algebra/LinearAlgebra/AlgebraTower/Variant59190bba31c559cccb2df5ef1c340047fd2deb5be9fce9fa1c4d7b9e8c2ef287.lean/declarations/basis-smultower-apply--38977d0bc59d678463c67bec.md) | 138 | `result-track:38977d0bc59d678463c67bec82219e0a072e5cf884bbcc3d3878206897af10de` |
| 14 | `def` | [Basis.smulTower'](../../../../../mathematics/Algebra/LinearAlgebra/AlgebraTower/Variant59190bba31c559cccb2df5ef1c340047fd2deb5be9fce9fa1c4d7b9e8c2ef287.lean/declarations/basis-smultower--2764996da31e04cf2782ad4a.md) | 152 | `declaration-track:2764996da31e04cf2782ad4a3a39599eb0433278a19f31e71be76a53dc3e1478` |
| 15 | `theorem` | [Basis.smulTower'_repr](../../../../../mathematics/Algebra/LinearAlgebra/AlgebraTower/Variant59190bba31c559cccb2df5ef1c340047fd2deb5be9fce9fa1c4d7b9e8c2ef287.lean/declarations/basis-smultower-repr--5c1e0f304916554f8f0f5259.md) | 155 | `result-track:5c1e0f304916554f8f0f52591060310edf4711313e96ac6d21337dffc35b77ec` |
| 16 | `theorem` | [Basis.smulTower'_repr_mk](../../../../../mathematics/Algebra/LinearAlgebra/AlgebraTower/Variant59190bba31c559cccb2df5ef1c340047fd2deb5be9fce9fa1c4d7b9e8c2ef287.lean/declarations/basis-smultower-repr-mk--1f7bf5f8c59e9d6f44eb299a.md) | 159 | `result-track:1f7bf5f8c59e9d6f44eb299a638fe4f1ad2e077a7cfd4ca2c51161c355b9e2d1` |
| 17 | `theorem` | [Basis.smulTower'_apply](../../../../../mathematics/Algebra/LinearAlgebra/AlgebraTower/Variant59190bba31c559cccb2df5ef1c340047fd2deb5be9fce9fa1c4d7b9e8c2ef287.lean/declarations/basis-smultower-apply--ff15af5a8b489442dec25ea7.md) | 162 | `result-track:ff15af5a8b489442dec25ea7b58763c0b1a069cf2d17a35bcf6670fe8573cb5e` |
| 18 | `theorem` | [Basis.algebraMap_injective](../../../../../mathematics/Algebra/LinearAlgebra/AlgebraTower/Variant59190bba31c559cccb2df5ef1c340047fd2deb5be9fce9fa1c4d7b9e8c2ef287.lean/declarations/basis-algebramap-injective--89a28257d9d3f43e41fa3b4c.md) | 173 | `result-track:89a28257d9d3f43e41fa3b4c00bfc58af6e20a76615a1abcd15a530036a5dfa7` |
| 19 | `def` | [AlgHom.restrictDomain](../../../../../mathematics/Algebra/LinearAlgebra/AlgebraTower/Variant59190bba31c559cccb2df5ef1c340047fd2deb5be9fce9fa1c4d7b9e8c2ef287.lean/declarations/alghom-restrictdomain--9cd796a866c9ddad39fadff3.md) | 188 | `declaration-track:9cd796a866c9ddad39fadff3a38b628a179c582782f6926cfc364d4f598f6caf` |
| 20 | `def` | [AlgHom.extendScalars](../../../../../mathematics/Algebra/LinearAlgebra/AlgebraTower/Variant59190bba31c559cccb2df5ef1c340047fd2deb5be9fce9fa1c4d7b9e8c2ef287.lean/declarations/alghom-extendscalars--37996f2e62d869531d188a1f.md) | 196 | `declaration-track:37996f2e62d869531d188a1f2dbdaf2d003beb4058378ab79e0b818eff517d3d` |
| 21 | `def` | [algHomEquivSigma](../../../../../mathematics/Algebra/LinearAlgebra/AlgebraTower/Variant59190bba31c559cccb2df5ef1c340047fd2deb5be9fce9fa1c4d7b9e8c2ef287.lean/declarations/alghomequivsigma--5f0e7897bca4466ccf137b78.md) | 212 | `declaration-track:5f0e7897bca4466ccf137b78ac517bfa97227aea514776fd4d11eb5c4600647a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
