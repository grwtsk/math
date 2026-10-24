# Verification target: GRWTSK.Spectral.FareySturmianFreeConjugacy

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "68c954fa4075509ebd0a1504ca91442405309355",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Spectral/FareySturmianFreeConjugacy.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/FareySturmianFreeConjugacy.lean/index.md) · [Full source](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/FareySturmianFreeConjugacy.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `68c954fa4075509ebd0a1504ca91442405309355`.

Source path: `GRWTSK/Spectral/FareySturmianFreeConjugacy.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Spectral/FareySturmianFreeConjugacy.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Farey.ReturnSpectralChannel`](../../../../../mathematics/NumberTheory/Farey/ReturnSpectralChannel.lean/index.md) — import line 10; pinned internal source present.
- [`GRWTSK.LinearAlgebra.Sturmian`](../../../../../mathematics/Algebra/LinearAlgebra/Sturmian__SourceOccurrence0a9093d676606a11db510ee6.lean/index.md) — import line 11; pinned internal source present.
- `Mathlib.Tactic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [frameChange](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/FareySturmianFreeConjugacy.lean/declarations/framechange--db19e76eccbc46f447e4464c.md) | 43 | `declaration-track:db19e76eccbc46f447e4464ce397395051c27b332e354d7ec74f08395abcca20` |
| 2 | `def` | [frameChangeInverse](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/FareySturmianFreeConjugacy.lean/declarations/framechangeinverse--925fdf9f972ec87d078a565d.md) | 45 | `declaration-track:925fdf9f972ec87d078a565dee6d68bf9db858b7e71ecaaf11adcbde8e9e0d53` |
| 3 | `theorem` | [frameChange_mul_inverse](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/FareySturmianFreeConjugacy.lean/declarations/framechange-mul-inverse--1585951be2bdcd75648505e3.md) | 48 | `result-track:1585951be2bdcd75648505e3410d1a9d91ad3537dc3696d4e683232c15e5d469` |
| 4 | `theorem` | [frameChange_inverse_mul](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/FareySturmianFreeConjugacy.lean/declarations/framechange-inverse-mul--c5eb5f6dfea27a361fa6071e.md) | 54 | `result-track:c5eb5f6dfea27a361fa6071e404a56bdcf7e4192c8a1456133aa4fa8206bda54` |
| 5 | `def` | [freeTransfer](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/FareySturmianFreeConjugacy.lean/declarations/freetransfer--4db6419fb6db5a3a9098bffa.md) | 61 | `declaration-track:4db6419fb6db5a3a9098bffaec1faf6b6138dc854e396afa26071fcd3da068b4` |
| 6 | `theorem` | [freeTransfer_ne_returnMatrix](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/FareySturmianFreeConjugacy.lean/declarations/freetransfer-ne-returnmatrix--c52204549b7b995584e01ff3.md) | 64 | `result-track:c52204549b7b995584e01ff354c1b2255afc1f1669d60b59699bd6634e5b6fb6` |
| 7 | `theorem` | [farey_free_intertwines](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/FareySturmianFreeConjugacy.lean/declarations/farey-free-intertwines--c717791a873934f868aef36c.md) | 71 | `result-track:c717791a873934f868aef36c71ca2b846a5c961dea66de304f16d8b21b8278bf` |
| 8 | `theorem` | [farey_free_conjugate](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/FareySturmianFreeConjugacy.lean/declarations/farey-free-conjugate--a4ae6243ba7dec2d13c7c05e.md) | 80 | `result-track:a4ae6243ba7dec2d13c7c05eef2418fe6d8343d86332f881b315a5a3f5693b4e` |
| 9 | `theorem` | [farey_free_power_intertwines](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/FareySturmianFreeConjugacy.lean/declarations/farey-free-power-intertwines--53069c669d56bc30ffbca704.md) | 94 | `result-track:53069c669d56bc30ffbca704c5c29f68bf6a548b580fdf23624c17b61df83aa1` |
| 10 | `theorem` | [sturmian_free_intertwines](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/FareySturmianFreeConjugacy.lean/declarations/sturmian-free-intertwines--c04fae7cbb9190397282a04f.md) | 115 | `result-track:c04fae7cbb9190397282a04ffc5ce24ee0d62a76ed89f1ca5fd73ff027cac4e1` |
| 11 | `theorem` | [sturmian_free_power_intertwines](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/FareySturmianFreeConjugacy.lean/declarations/sturmian-free-power-intertwines--58df3877fc609ea4516627aa.md) | 123 | `result-track:58df3877fc609ea4516627aa531b5163d365d1736d1d2f3146ea4308b59bf708` |
| 12 | `theorem` | [free_energy_three_not_elliptic](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/FareySturmianFreeConjugacy.lean/declarations/free-energy-three-not-elliptic--c0b92dc339446114e613f83a.md) | 134 | `result-track:c0b92dc339446114e613f83a134a4c5621e333cf5c9b36696096cae647ae2745` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
