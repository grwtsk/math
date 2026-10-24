# Verification target: GRWTSK.Algebra.LinearAlgebra.Rat.Variant71f5f2ee354cb264c414a9825e959e4d2e2ad73e4b6af7c87d9a20a558266cfd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d9651fa153a5ffcaa17d4eb1569513ca2b93f2f6",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Rat/Variant71f5f2ee354cb264c414a9825e959e4d2e2ad73e4b6af7c87d9a20a558266cfd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Rat/Variant71f5f2ee354cb264c414a9825e959e4d2e2ad73e4b6af7c87d9a20a558266cfd.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Rat/Variant71f5f2ee354cb264c414a9825e959e4d2e2ad73e4b6af7c87d9a20a558266cfd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d9651fa153a5ffcaa17d4eb1569513ca2b93f2f6`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Rat/Variant71f5f2ee354cb264c414a9825e959e4d2e2ad73e4b6af7c87d9a20a558266cfd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Rat/Variant71f5f2ee354cb264c414a9825e959e4d2e2ad73e4b6af7c87d9a20a558266cfd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.NoZeroSMulDivisors.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Field.Rat` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [map_nnratCast_smul](../../../../../mathematics/Algebra/LinearAlgebra/Rat/Variant71f5f2ee354cb264c414a9825e959e4d2e2ad73e4b6af7c87d9a20a558266cfd.lean/declarations/map-nnratcast-smul--c5ec8c7463d000358ead4f98.md) | 18 | `result-track:c5ec8c7463d000358ead4f989bcf163391ba6ae04ebf21194ef31cd6ede66baa` |
| 2 | `theorem` | [map_ratCast_smul](../../../../../mathematics/Algebra/LinearAlgebra/Rat/Variant71f5f2ee354cb264c414a9825e959e4d2e2ad73e4b6af7c87d9a20a558266cfd.lean/declarations/map-ratcast-smul--c74743b18a3a3f4fe9dcf551.md) | 25 | `result-track:c74743b18a3a3f4fe9dcf5517f0a1981e55d4e58bc5d7898bd2e1022356caceb` |
| 3 | `theorem` | [map_nnrat_smul](../../../../../mathematics/Algebra/LinearAlgebra/Rat/Variant71f5f2ee354cb264c414a9825e959e4d2e2ad73e4b6af7c87d9a20a558266cfd.lean/declarations/map-nnrat-smul--f2ed6ad97924be361e0944ff.md) | 32 | `result-track:f2ed6ad97924be361e0944ffce20420177d9784765863ec2d681d6e0d7068300` |
| 4 | `theorem` | [map_rat_smul](../../../../../mathematics/Algebra/LinearAlgebra/Rat/Variant71f5f2ee354cb264c414a9825e959e4d2e2ad73e4b6af7c87d9a20a558266cfd.lean/declarations/map-rat-smul--6f0fb16243f83f24cb485d4a.md) | 38 | `result-track:6f0fb16243f83f24cb485d4a141d9936d3f3029d1b4a33ce086f758d47c1acbd` |
| 5 | `instance` | [subsingleton_nnrat_module](../../../../../mathematics/Algebra/LinearAlgebra/Rat/Variant71f5f2ee354cb264c414a9825e959e4d2e2ad73e4b6af7c87d9a20a558266cfd.lean/declarations/subsingleton-nnrat-module--c801719a9a3f2d27f1611d6e.md) | 45 | `declaration-track:c801719a9a3f2d27f1611d6ef64575cd53cf5a8bae33a60d60ddd91263fce2ed` |
| 6 | `instance` | [subsingleton_rat_module](../../../../../mathematics/Algebra/LinearAlgebra/Rat/Variant71f5f2ee354cb264c414a9825e959e4d2e2ad73e4b6af7c87d9a20a558266cfd.lean/declarations/subsingleton-rat-module--8c73e0cf03d2ba4c46ab0b5e.md) | 50 | `declaration-track:8c73e0cf03d2ba4c46ab0b5e9e39295f9396ef3840de1292d0ce3fb3e1eec8d0` |
| 7 | `theorem` | [nnratCast_smul_eq](../../../../../mathematics/Algebra/LinearAlgebra/Rat/Variant71f5f2ee354cb264c414a9825e959e4d2e2ad73e4b6af7c87d9a20a558266cfd.lean/declarations/nnratcast-smul-eq--7b3ce08f134ab0dde161c201.md) | 56 | `result-track:7b3ce08f134ab0dde161c2010d8a56ebb8f40b9a298acc7d64a8c9719a79fa60` |
| 8 | `theorem` | [ratCast_smul_eq](../../../../../mathematics/Algebra/LinearAlgebra/Rat/Variant71f5f2ee354cb264c414a9825e959e4d2e2ad73e4b6af7c87d9a20a558266cfd.lean/declarations/ratcast-smul-eq--bb644e3f192a0e4c2ae2e335.md) | 62 | `result-track:bb644e3f192a0e4c2ae2e3351d5820ae6cb5b9518ff4d9aea67ce67a5c14e082` |
| 9 | `instance` | [IsScalarTower.nnrat](../../../../../mathematics/Algebra/LinearAlgebra/Rat/Variant71f5f2ee354cb264c414a9825e959e4d2e2ad73e4b6af7c87d9a20a558266cfd.lean/declarations/isscalartower-nnrat--db1af2366279877dbaf41814.md) | 66 | `declaration-track:db1af2366279877dbaf41814a74b59ebca6aa00372db467f41ed3d969140b73c` |
| 10 | `instance` | [IsScalarTower.rat](../../../../../mathematics/Algebra/LinearAlgebra/Rat/Variant71f5f2ee354cb264c414a9825e959e4d2e2ad73e4b6af7c87d9a20a558266cfd.lean/declarations/isscalartower-rat--8a77de040557ef88cba5bb16.md) | 70 | `declaration-track:8a77de040557ef88cba5bb16a46819b2fd589bbb0742e183610b0cc5f1379bb1` |
| 11 | `instance` | [SMulCommClass.nnrat](../../../../../mathematics/Algebra/LinearAlgebra/Rat/Variant71f5f2ee354cb264c414a9825e959e4d2e2ad73e4b6af7c87d9a20a558266cfd.lean/declarations/smulcommclass-nnrat--3c14d7da5b5fc5d3a7ed6629.md) | 77 | `declaration-track:3c14d7da5b5fc5d3a7ed6629b20835202a951e33b7196afe4260098f85a77244` |
| 12 | `instance` | [SMulCommClass.rat](../../../../../mathematics/Algebra/LinearAlgebra/Rat/Variant71f5f2ee354cb264c414a9825e959e4d2e2ad73e4b6af7c87d9a20a558266cfd.lean/declarations/smulcommclass-rat--0ecbec623a94520392230628.md) | 81 | `declaration-track:0ecbec623a94520392230628a3556557860864bd6dfa3d6dc1e797272009b345` |
| 13 | `instance` | [SMulCommClass.nnrat'](../../../../../mathematics/Algebra/LinearAlgebra/Rat/Variant71f5f2ee354cb264c414a9825e959e4d2e2ad73e4b6af7c87d9a20a558266cfd.lean/declarations/smulcommclass-nnrat--b2b472b4dee6e52d83c78b4f.md) | 85 | `declaration-track:b2b472b4dee6e52d83c78b4f13168ec5c08ed4bc7f273c801df013ec0511f15d` |
| 14 | `instance` | [SMulCommClass.rat'](../../../../../mathematics/Algebra/LinearAlgebra/Rat/Variant71f5f2ee354cb264c414a9825e959e4d2e2ad73e4b6af7c87d9a20a558266cfd.lean/declarations/smulcommclass-rat--e9083332cecef7f5ad9471f0.md) | 89 | `declaration-track:e9083332cecef7f5ad9471f065fe80f3e895d07cd9a0e8959c33230919cd26d6` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Rat/Variant71f5f2ee354cb264c414a9825e959e4d2e2ad73e4b6af7c87d9a20a558266cfd.lean/declarations/instance--d61d4c0cc63558303258f71d.md) | 96 | `declaration-track:d61d4c0cc63558303258f71dc6bb3be9e536461916664804e5f02778f6e5380b` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Rat/Variant71f5f2ee354cb264c414a9825e959e4d2e2ad73e4b6af7c87d9a20a558266cfd.lean/declarations/instance--0f370ad59579c2a55289e7da.md) | 101 | `declaration-track:0f370ad59579c2a55289e7da595f35b599769f0f47287bc1d2a248b63050a067` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
