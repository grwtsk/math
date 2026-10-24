# Verification target: GRWTSK.Algebra.UniversalAlgebra.RingedSpace.Variant5de9b882faf83248db581d6a0e523c61be1f0d2b9edb6fa5500ba0d278a83315

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "732c281b05c9737018aaca674827f19d81d7e9cd",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/RingedSpace/Variant5de9b882faf83248db581d6a0e523c61be1f0d2b9edb6fa5500ba0d278a83315.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/RingedSpace/Variant5de9b882faf83248db581d6a0e523c61be1f0d2b9edb6fa5500ba0d278a83315.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/RingedSpace/Variant5de9b882faf83248db581d6a0e523c61be1f0d2b9edb6fa5500ba0d278a83315.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `732c281b05c9737018aaca674827f19d81d7e9cd`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/RingedSpace/Variant5de9b882faf83248db581d6a0e523c61be1f0d2b9edb6fa5500ba0d278a83315.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/RingedSpace/Variant5de9b882faf83248db581d6a0e523c61be1f0d2b9edb6fa5500ba0d278a83315.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.Ring.FilteredColimits` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicGeometry.SheafedSpace` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sheaves.Stalks` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.Ring.Colimits` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.Ring.Limits` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [RingedSpace](../../../../../mathematics/Algebra/UniversalAlgebra/RingedSpace/Variant5de9b882faf83248db581d6a0e523c61be1f0d2b9edb6fa5500ba0d278a83315.lean/declarations/ringedspace--676d12da3cdc77385b41c7fd.md) | 39 | `declaration-track:676d12da3cdc77385b41c7fdadcfcffb7c81c1d42a0d2ba76ed590c2ce56f747` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/RingedSpace/Variant5de9b882faf83248db581d6a0e523c61be1f0d2b9edb6fa5500ba0d278a83315.lean/declarations/instance--5e60248324766c678c21d5ed.md) | 51 | `declaration-track:5e60248324766c678c21d5edb338b2768b192d74eb785d0b8bd8b010bc97f503` |
| 3 | `theorem` | [isUnit_res_of_isUnit_germ](../../../../../mathematics/Algebra/UniversalAlgebra/RingedSpace/Variant5de9b882faf83248db581d6a0e523c61be1f0d2b9edb6fa5500ba0d278a83315.lean/declarations/isunit-res-of-isunit-germ--b70f37b0e08f38aeae4f785e.md) | 58 | `result-track:b70f37b0e08f38aeae4f785e0fb5a0eaee32a5003172c703a3cc9cb79eb12050` |
| 4 | `theorem` | [isUnit_of_isUnit_germ](../../../../../mathematics/Algebra/UniversalAlgebra/RingedSpace/Variant5de9b882faf83248db581d6a0e523c61be1f0d2b9edb6fa5500ba0d278a83315.lean/declarations/isunit-of-isunit-germ--e7d0b90c5eabe19ffc60d2f9.md) | 84 | `result-track:e7d0b90c5eabe19ffc60d2f9f49005eefd31d98ce56d9e28beebea10714556a4` |
| 5 | `def` | [basicOpen](../../../../../mathematics/Algebra/UniversalAlgebra/RingedSpace/Variant5de9b882faf83248db581d6a0e523c61be1f0d2b9edb6fa5500ba0d278a83315.lean/declarations/basicopen--0874103900204ecad3bfb276.md) | 133 | `declaration-track:0874103900204ecad3bfb276b0de44259ab6d7fd286e33cbbb95048a4e2c145a` |
| 6 | `theorem` | [mem_basicOpen](../../../../../mathematics/Algebra/UniversalAlgebra/RingedSpace/Variant5de9b882faf83248db581d6a0e523c61be1f0d2b9edb6fa5500ba0d278a83315.lean/declarations/mem-basicopen--9521787d99e53437513d0ff6.md) | 153 | `result-track:9521787d99e53437513d0ff6567a73047107becd82d16066c31ea11ece2fa8b4` |
| 7 | `theorem` | [mem_top_basicOpen](../../../../../mathematics/Algebra/UniversalAlgebra/RingedSpace/Variant5de9b882faf83248db581d6a0e523c61be1f0d2b9edb6fa5500ba0d278a83315.lean/declarations/mem-top-basicopen--21ec3bd0de2bc16a4d0f0fb9.md) | 162 | `result-track:21ec3bd0de2bc16a4d0f0fb9c7ca6f11c8dc042edba1d7d42d40d8e53ed6605a` |
| 8 | `theorem` | [basicOpen_le](../../../../../mathematics/Algebra/UniversalAlgebra/RingedSpace/Variant5de9b882faf83248db581d6a0e523c61be1f0d2b9edb6fa5500ba0d278a83315.lean/declarations/basicopen-le--a54dfca95ce6d941c8e5a98e.md) | 168 | `result-track:a54dfca95ce6d941c8e5a98ed884c9a8cb7ee60f3ee5815b1e3b7ed8cda02b22` |
| 9 | `theorem` | [isUnit_res_basicOpen](../../../../../mathematics/Algebra/UniversalAlgebra/RingedSpace/Variant5de9b882faf83248db581d6a0e523c61be1f0d2b9edb6fa5500ba0d278a83315.lean/declarations/isunit-res-basicopen--4e47059b6404a1f853b4991f.md) | 174 | `result-track:4e47059b6404a1f853b4991f53e02ac97e236184fb012ad07514ec82463c8cbd` |
| 10 | `theorem` | [basicOpen_res](../../../../../mathematics/Algebra/UniversalAlgebra/RingedSpace/Variant5de9b882faf83248db581d6a0e523c61be1f0d2b9edb6fa5500ba0d278a83315.lean/declarations/basicopen-res--ef5a2d590c1cc2453847f2ee.md) | 184 | `result-track:ef5a2d590c1cc2453847f2ee1cc91bfbf64d199ce7398acc839e5cbb60476f16` |
| 11 | `theorem` | [basicOpen_res_eq](../../../../../mathematics/Algebra/UniversalAlgebra/RingedSpace/Variant5de9b882faf83248db581d6a0e523c61be1f0d2b9edb6fa5500ba0d278a83315.lean/declarations/basicopen-res-eq--3eb4e905f4ef8420482a9f4f.md) | 205 | `result-track:3eb4e905f4ef8420482a9f4f0d085977193ada1a815dc8d64a8a0a299da20f4b` |
| 12 | `theorem` | [basicOpen_mul](../../../../../mathematics/Algebra/UniversalAlgebra/RingedSpace/Variant5de9b882faf83248db581d6a0e523c61be1f0d2b9edb6fa5500ba0d278a83315.lean/declarations/basicopen-mul--7203d8d65ed162040dd669c6.md) | 217 | `result-track:7203d8d65ed162040dd669c6271c20971f328d1d7ad4b33980b0f40234927e92` |
| 13 | `theorem` | [basicOpen_of_isUnit](../../../../../mathematics/Algebra/UniversalAlgebra/RingedSpace/Variant5de9b882faf83248db581d6a0e523c61be1f0d2b9edb6fa5500ba0d278a83315.lean/declarations/basicopen-of-isunit--682069b9e47572d1d6148fd2.md) | 228 | `result-track:682069b9e47572d1d6148fd20b228eaab0dffc70612796b92b1963166e494d5e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
