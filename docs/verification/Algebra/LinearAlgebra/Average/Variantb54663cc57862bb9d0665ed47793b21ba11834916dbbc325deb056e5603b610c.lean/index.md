# Verification target: GRWTSK.Algebra.LinearAlgebra.Average.Variantb54663cc57862bb9d0665ed47793b21ba11834916dbbc325deb056e5603b610c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fbe30a4c0af7ec5b787ba6708901810f4eb7d9cc",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Average/Variantb54663cc57862bb9d0665ed47793b21ba11834916dbbc325deb056e5603b610c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Average/Variantb54663cc57862bb9d0665ed47793b21ba11834916dbbc325deb056e5603b610c.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Average/Variantb54663cc57862bb9d0665ed47793b21ba11834916dbbc325deb056e5603b610c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fbe30a4c0af7ec5b787ba6708901810f4eb7d9cc`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Average/Variantb54663cc57862bb9d0665ed47793b21ba11834916dbbc325deb056e5603b610c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Average/Variantb54663cc57862bb9d0665ed47793b21ba11834916dbbc325deb056e5603b610c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Dynamics.BirkhoffSum.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [birkhoffAverage](../../../../../mathematics/Algebra/LinearAlgebra/Average/Variantb54663cc57862bb9d0665ed47793b21ba11834916dbbc325deb056e5603b610c.lean/declarations/birkhoffaverage--d7ed3914651d94215bc7ff89.md) | 50 | `declaration-track:d7ed3914651d94215bc7ff89e16f90f221e476becf5d8aeb1ba104000219a1a5` |
| 2 | `theorem` | [birkhoffAverage_zero](../../../../../mathematics/Algebra/LinearAlgebra/Average/Variantb54663cc57862bb9d0665ed47793b21ba11834916dbbc325deb056e5603b610c.lean/declarations/birkhoffaverage-zero--6f81750d5035169a9fedf9ae.md) | 52 | `result-track:6f81750d5035169a9fedf9aeb901709642d12f779bfc3745b7ab1cad0a8550ac` |
| 3 | `theorem` | [birkhoffAverage_zero'](../../../../../mathematics/Algebra/LinearAlgebra/Average/Variantb54663cc57862bb9d0665ed47793b21ba11834916dbbc325deb056e5603b610c.lean/declarations/birkhoffaverage-zero--6bfa822d7f12667c50681ba6.md) | 55 | `result-track:6bfa822d7f12667c50681ba69496a7b24e018b081975b4c1d29e543fc7d1e05d` |
| 4 | `theorem` | [birkhoffAverage_one](../../../../../mathematics/Algebra/LinearAlgebra/Average/Variantb54663cc57862bb9d0665ed47793b21ba11834916dbbc325deb056e5603b610c.lean/declarations/birkhoffaverage-one--e552e742eb5b8a0bb60bcb7a.md) | 58 | `result-track:e552e742eb5b8a0bb60bcb7a9e83b03c96f7ff2485de9cf6e53eac23867c9c94` |
| 5 | `theorem` | [birkhoffAverage_one'](../../../../../mathematics/Algebra/LinearAlgebra/Average/Variantb54663cc57862bb9d0665ed47793b21ba11834916dbbc325deb056e5603b610c.lean/declarations/birkhoffaverage-one--bb09522d388bc02cfb10a377.md) | 62 | `result-track:bb09522d388bc02cfb10a377fdcf67a25f6d42cd60e8ee6cb7d9ba1416e8e853` |
| 6 | `theorem` | [map_birkhoffAverage](../../../../../mathematics/Algebra/LinearAlgebra/Average/Variantb54663cc57862bb9d0665ed47793b21ba11834916dbbc325deb056e5603b610c.lean/declarations/map-birkhoffaverage--e2af94779026a1fa0754267b.md) | 65 | `result-track:e2af94779026a1fa0754267b8d3e3e5bd5dbfaaab611697e425cfb3acc25f0c0` |
| 7 | `theorem` | [birkhoffAverage_congr_ring](../../../../../mathematics/Algebra/LinearAlgebra/Average/Variantb54663cc57862bb9d0665ed47793b21ba11834916dbbc325deb056e5603b610c.lean/declarations/birkhoffaverage-congr-ring--eb0e2880bd267de1ab25cfbc.md) | 71 | `result-track:eb0e2880bd267de1ab25cfbc33af799dde5911a7bfa5bb8f691c0a09e15e1dea` |
| 8 | `theorem` | [birkhoffAverage_congr_ring'](../../../../../mathematics/Algebra/LinearAlgebra/Average/Variantb54663cc57862bb9d0665ed47793b21ba11834916dbbc325deb056e5603b610c.lean/declarations/birkhoffaverage-congr-ring--31ab5744e4614cbde09966ad.md) | 76 | `result-track:31ab5744e4614cbde09966ad1fef8e9ea4fe37724597a34f25b84b51e95cc09f` |
| 9 | `theorem` | [Function.IsFixedPt.birkhoffAverage_eq](../../../../../mathematics/Algebra/LinearAlgebra/Average/Variantb54663cc57862bb9d0665ed47793b21ba11834916dbbc325deb056e5603b610c.lean/declarations/function-isfixedpt-birkhoffaverage-eq--3d25de64bdeea2c8e3c7e8b2.md) | 80 | `result-track:3d25de64bdeea2c8e3c7e8b2aa7e0e0df958ea691623b48fe0ce91ac174d2496` |
| 10 | `theorem` | [birkhoffAverage_apply_sub_birkhoffAverage](../../../../../mathematics/Algebra/LinearAlgebra/Average/Variantb54663cc57862bb9d0665ed47793b21ba11834916dbbc325deb056e5603b610c.lean/declarations/birkhoffaverage-apply-sub-birkhoffaverage--030e6bf45e3c90614c6b6a0f.md) | 90 | `result-track:030e6bf45e3c90614c6b6a0f5feeae6b9d0cd4c0c78c14eaa51bc4bd795d863e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
