# Verification target: GRWTSK.Algebra.LinearAlgebra.AlgebraTower.Variantc27a10fc29d855634a52671abb6be0f1f13fdd53e0cb6ae7e2c2b0a1c7b444da

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "673800dc83bf2bd0c5719081831b9492fc0721b6",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/AlgebraTower/Variantc27a10fc29d855634a52671abb6be0f1f13fdd53e0cb6ae7e2c2b0a1c7b444da.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/AlgebraTower/Variantc27a10fc29d855634a52671abb6be0f1f13fdd53e0cb6ae7e2c2b0a1c7b444da.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/AlgebraTower/Variantc27a10fc29d855634a52671abb6be0f1f13fdd53e0cb6ae7e2c2b0a1c7b444da.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `673800dc83bf2bd0c5719081831b9492fc0721b6`.

Source path: `GRWTSK/Algebra/LinearAlgebra/AlgebraTower/Variantc27a10fc29d855634a52671abb6be0f1f13fdd53e0cb6ae7e2c2b0a1c7b444da.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/AlgebraTower/Variantc27a10fc29d855634a52671abb6be0f1f13fdd53e0cb6ae7e2c2b0a1c7b444da.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Tower` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Invertible` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.BigOperators` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Basis` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Invertible.algebraTower](../../../../../mathematics/Algebra/LinearAlgebra/AlgebraTower/Variantc27a10fc29d855634a52671abb6be0f1f13fdd53e0cb6ae7e2c2b0a1c7b444da.lean/declarations/invertible-algebratower--05facb5f7d34f3bd5e3bfe1d.md) | 58 | `declaration-track:05facb5f7d34f3bd5e3bfe1d5b1d7cf47298e1e072ce30c9153cbdd8ae002126` |
| 2 | `def` | [invertibleAlgebraCoeNat](../../../../../mathematics/Algebra/LinearAlgebra/AlgebraTower/Variantc27a10fc29d855634a52671abb6be0f1f13fdd53e0cb6ae7e2c2b0a1c7b444da.lean/declarations/invertiblealgebracoenat--66f70c53d3bd2b6ccc104b21.md) | 66 | `declaration-track:66f70c53d3bd2b6ccc104b2185155856208f93cf9a13f4a9141f874db8bc36cc` |
| 3 | `def` | [Basis.algebraMapCoeffs](../../../../../mathematics/Algebra/LinearAlgebra/AlgebraTower/Variantc27a10fc29d855634a52671abb6be0f1f13fdd53e0cb6ae7e2c2b0a1c7b444da.lean/declarations/basis-algebramapcoeffs--2e9d6e990004b76def2806ff.md) | 94 | `declaration-track:2e9d6e990004b76def2806ffb474974cf64e378d4afdb6b70469921485e3e9c0` |
| 4 | `theorem` | [Basis.algebraMapCoeffs_apply](../../../../../mathematics/Algebra/LinearAlgebra/AlgebraTower/Variantc27a10fc29d855634a52671abb6be0f1f13fdd53e0cb6ae7e2c2b0a1c7b444da.lean/declarations/basis-algebramapcoeffs-apply--daab341a287cfa3ebefd4954.md) | 99 | `result-track:daab341a287cfa3ebefd495426e0fd4411590d7230c6e68f7021926973e31655` |
| 5 | `theorem` | [Basis.coe_algebraMapCoeffs](../../../../../mathematics/Algebra/LinearAlgebra/AlgebraTower/Variantc27a10fc29d855634a52671abb6be0f1f13fdd53e0cb6ae7e2c2b0a1c7b444da.lean/declarations/basis-coe-algebramapcoeffs--2d425724f3571c7148661a7c.md) | 104 | `result-track:2d425724f3571c7148661a7c54862cec05099d8a689a7f8e9bbe027ce5823604` |
| 6 | `theorem` | [linearIndependent_smul](../../../../../mathematics/Algebra/LinearAlgebra/AlgebraTower/Variantc27a10fc29d855634a52671abb6be0f1f13fdd53e0cb6ae7e2c2b0a1c7b444da.lean/declarations/linearindependent-smul--f88610130ef1463e419453d4.md) | 124 | `result-track:f88610130ef1463e419453d41ae3c731a2e3c41d8f006530baf85587ffa15eb5` |
| 7 | `def` | [Basis.smul](../../../../../mathematics/Algebra/LinearAlgebra/AlgebraTower/Variantc27a10fc29d855634a52671abb6be0f1f13fdd53e0cb6ae7e2c2b0a1c7b444da.lean/declarations/basis-smul--d08ab140311ba864625b96af.md) | 142 | `declaration-track:d08ab140311ba864625b96af2bf035f9ac4e54d4ac1eea061d99b36d69ebd269` |
| 8 | `theorem` | [Basis.smul_repr](../../../../../mathematics/Algebra/LinearAlgebra/AlgebraTower/Variantc27a10fc29d855634a52671abb6be0f1f13fdd53e0cb6ae7e2c2b0a1c7b444da.lean/declarations/basis-smul-repr--4b2ea2ef8f92fe861b08bde8.md) | 152 | `result-track:4b2ea2ef8f92fe861b08bde88f2b24a4963841c11a021f14e16325b8bb17a3b9` |
| 9 | `theorem` | [Basis.smul_repr_mk](../../../../../mathematics/Algebra/LinearAlgebra/AlgebraTower/Variantc27a10fc29d855634a52671abb6be0f1f13fdd53e0cb6ae7e2c2b0a1c7b444da.lean/declarations/basis-smul-repr-mk--02ea97264e7b558a0592777b.md) | 156 | `result-track:02ea97264e7b558a0592777b257fef0e896a20dbece25e8bfd14dda8d2dc570a` |
| 10 | `theorem` | [Basis.smul_apply](../../../../../mathematics/Algebra/LinearAlgebra/AlgebraTower/Variantc27a10fc29d855634a52671abb6be0f1f13fdd53e0cb6ae7e2c2b0a1c7b444da.lean/declarations/basis-smul-apply--e7d992690a853cd744d04347.md) | 162 | `result-track:e7d992690a853cd744d043475a6c0e69e88ed5a568fe694527468a2df0562817` |
| 11 | `theorem` | [Basis.algebraMap_injective](../../../../../mathematics/Algebra/LinearAlgebra/AlgebraTower/Variantc27a10fc29d855634a52671abb6be0f1f13fdd53e0cb6ae7e2c2b0a1c7b444da.lean/declarations/basis-algebramap-injective--89968205525eb38cf14010e1.md) | 184 | `result-track:89968205525eb38cf14010e1e948a63ebf9ed240927ab4ffefaefb8999fc523c` |
| 12 | `def` | [AlgHom.restrictDomain](../../../../../mathematics/Algebra/LinearAlgebra/AlgebraTower/Variantc27a10fc29d855634a52671abb6be0f1f13fdd53e0cb6ae7e2c2b0a1c7b444da.lean/declarations/alghom-restrictdomain--f947ca6167b2362c8be11119.md) | 201 | `declaration-track:f947ca6167b2362c8be11119ac7556cc92e6b46745bc127a8a68b94f4dd86186` |
| 13 | `def` | [AlgHom.extendScalars](../../../../../mathematics/Algebra/LinearAlgebra/AlgebraTower/Variantc27a10fc29d855634a52671abb6be0f1f13fdd53e0cb6ae7e2c2b0a1c7b444da.lean/declarations/alghom-extendscalars--81d81c6e73dbf455ec400569.md) | 210 | `declaration-track:81d81c6e73dbf455ec4005696f697a8a8346d9f38d7641b78cc37a1653ebc019` |
| 14 | `def` | [algHomEquivSigma](../../../../../mathematics/Algebra/LinearAlgebra/AlgebraTower/Variantc27a10fc29d855634a52671abb6be0f1f13fdd53e0cb6ae7e2c2b0a1c7b444da.lean/declarations/alghomequivsigma--2020271fd420c8a461446179.md) | 227 | `declaration-track:2020271fd420c8a461446179c73efaa78fc804bc859e63626ec8481cc6f8363f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
