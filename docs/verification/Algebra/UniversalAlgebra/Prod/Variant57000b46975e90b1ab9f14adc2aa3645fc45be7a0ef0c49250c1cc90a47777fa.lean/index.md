# Verification target: GRWTSK.Algebra.UniversalAlgebra.Prod.Variant57000b46975e90b1ab9f14adc2aa3645fc45be7a0ef0c49250c1cc90a47777fa

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f842a4cf7dc01946b293e339f9b49be2f370c3a1",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Prod/Variant57000b46975e90b1ab9f14adc2aa3645fc45be7a0ef0c49250c1cc90a47777fa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variant57000b46975e90b1ab9f14adc2aa3645fc45be7a0ef0c49250c1cc90a47777fa.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variant57000b46975e90b1ab9f14adc2aa3645fc45be7a0ef0c49250c1cc90a47777fa.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f842a4cf7dc01946b293e339f9b49be2f370c3a1`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Prod/Variant57000b46975e90b1ab9f14adc2aa3645fc45be7a0ef0c49250c1cc90a47777fa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Prod/Variant57000b46975e90b1ab9f14adc2aa3645fc45be7a0ef0c49250c1cc90a47777fa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Equiv` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Algebra.Hom` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Prod` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [algebra](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variant57000b46975e90b1ab9f14adc2aa3645fc45be7a0ef0c49250c1cc90a47777fa.lean/declarations/algebra--6036edffadaa25e2b7da7b62.md) | 43 | `declaration-track:6036edffadaa25e2b7da7b62fc3b1b7df5d0b5001a9ac2f884a3e9202b007ef5` |
| 2 | `theorem` | [algebraMap_apply](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variant57000b46975e90b1ab9f14adc2aa3645fc45be7a0ef0c49250c1cc90a47777fa.lean/declarations/algebramap-apply--b292da9fdb91e9816305f7e1.md) | 57 | `result-track:b292da9fdb91e9816305f7e16ef13e78f913d37be6cb5eb7173250dc73742b54` |
| 3 | `def` | [fst](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variant57000b46975e90b1ab9f14adc2aa3645fc45be7a0ef0c49250c1cc90a47777fa.lean/declarations/fst--bcb98ff2889415402ff438ca.md) | 67 | `declaration-track:bcb98ff2889415402ff438ca1295086e419448c1cfa4f0313c5ad7a006a2ca69` |
| 4 | `def` | [snd](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variant57000b46975e90b1ab9f14adc2aa3645fc45be7a0ef0c49250c1cc90a47777fa.lean/declarations/snd--6c1f4cd7ecc60573624d53a2.md) | 71 | `declaration-track:6c1f4cd7ecc60573624d53a21d8a46dac28846864d631a44e7b05d19c2c6e6fe` |
| 5 | `theorem` | [fst_apply](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variant57000b46975e90b1ab9f14adc2aa3645fc45be7a0ef0c49250c1cc90a47777fa.lean/declarations/fst-apply--6f42a6cbf285725cba69d4c9.md) | 77 | `result-track:6f42a6cbf285725cba69d4c98073d9b142b619e35790b7fdd93d14896128b27a` |
| 6 | `theorem` | [snd_apply](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variant57000b46975e90b1ab9f14adc2aa3645fc45be7a0ef0c49250c1cc90a47777fa.lean/declarations/snd-apply--ad4460d6ab6aa0c4f69f0387.md) | 80 | `result-track:ad4460d6ab6aa0c4f69f0387790aa1591fb7a7145663c968eeeca72a99301793` |
| 7 | `def` | [prod](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variant57000b46975e90b1ab9f14adc2aa3645fc45be7a0ef0c49250c1cc90a47777fa.lean/declarations/prod--9b062ba4ac6f04a6bcedf7fa.md) | 86 | `declaration-track:9b062ba4ac6f04a6bcedf7fa3d9b5313d803c3a8b7711194508ea385cd12d6e6` |
| 8 | `theorem` | [coe_prod](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variant57000b46975e90b1ab9f14adc2aa3645fc45be7a0ef0c49250c1cc90a47777fa.lean/declarations/coe-prod--e5ec9edfe3185ba9f19a306d.md) | 92 | `result-track:e5ec9edfe3185ba9f19a306d938060fb9a33d4129efda44fda0637cf79dbf64e` |
| 9 | `theorem` | [fst_prod](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variant57000b46975e90b1ab9f14adc2aa3645fc45be7a0ef0c49250c1cc90a47777fa.lean/declarations/fst-prod--2b88ff1200c7ebb2c026c54d.md) | 96 | `result-track:2b88ff1200c7ebb2c026c54d40323292a3f6f2e8d019f2b79c951b21ae6c5385` |
| 10 | `theorem` | [snd_prod](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variant57000b46975e90b1ab9f14adc2aa3645fc45be7a0ef0c49250c1cc90a47777fa.lean/declarations/snd-prod--09a80148385a4f613042e0d0.md) | 99 | `result-track:09a80148385a4f613042e0d05dac5999906d6c0108ffe4687085dbbe96cd14ec` |
| 11 | `theorem` | [prod_fst_snd](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variant57000b46975e90b1ab9f14adc2aa3645fc45be7a0ef0c49250c1cc90a47777fa.lean/declarations/prod-fst-snd--8b2ee8d4ff7cfa80e690be8e.md) | 102 | `result-track:8b2ee8d4ff7cfa80e690be8e45418ee020aa9047cdb5a64ce2b37af74f802ba0` |
| 12 | `theorem` | [prod_comp](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variant57000b46975e90b1ab9f14adc2aa3645fc45be7a0ef0c49250c1cc90a47777fa.lean/declarations/prod-comp--2420c2acabc12456bc51095d.md) | 104 | `result-track:2420c2acabc12456bc51095d23e541130343536b091dbb9a46162cebb4f927e1` |
| 13 | `def` | [prodEquiv](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variant57000b46975e90b1ab9f14adc2aa3645fc45be7a0ef0c49250c1cc90a47777fa.lean/declarations/prodequiv--5c9b7c81f6f72ed4f259f488.md) | 111 | `declaration-track:5c9b7c81f6f72ed4f259f488d5f4f3607cb8615975e89f81de37b0ea6680ff5f` |
| 14 | `def` | [prodMap](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variant57000b46975e90b1ab9f14adc2aa3645fc45be7a0ef0c49250c1cc90a47777fa.lean/declarations/prodmap--d3d9e096f75541b12d8ba913.md) | 118 | `declaration-track:d3d9e096f75541b12d8ba9132bc32fff55cf1a8624b56af6888b1343858fe5b5` |
| 15 | `def` | [prodUnique](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variant57000b46975e90b1ab9f14adc2aa3645fc45be7a0ef0c49250c1cc90a47777fa.lean/declarations/produnique--d782b33bbcefc47388ff18d4.md) | 130 | `declaration-track:d782b33bbcefc47388ff18d427eb3c06a1fa079a479098b5bc0b043e2996b0f0` |
| 16 | `def` | [uniqueProd](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variant57000b46975e90b1ab9f14adc2aa3645fc45be7a0ef0c49250c1cc90a47777fa.lean/declarations/uniqueprod--42613f4adaa241c5fcdfac0a.md) | 140 | `declaration-track:42613f4adaa241c5fcdfac0adaf59cd1fa7842f23ad4c6920b9271199a575020` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
