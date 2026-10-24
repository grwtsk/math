# Verification target: GRWTSK.Algebra.LinearAlgebra.EpiMono.Variant17828dd9f88324684954a9a9dfbab603a4a75cc66731a2be22525d3a618cd979

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "55095a0c2f2f6240f95966203ed11403eb9d40c0",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/EpiMono/Variant17828dd9f88324684954a9a9dfbab603a4a75cc66731a2be22525d3a618cd979.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/EpiMono/Variant17828dd9f88324684954a9a9dfbab603a4a75cc66731a2be22525d3a618cd979.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/EpiMono/Variant17828dd9f88324684954a9a9dfbab603a4a75cc66731a2be22525d3a618cd979.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `55095a0c2f2f6240f95966203ed11403eb9d40c0`.

Source path: `GRWTSK/Algebra/LinearAlgebra/EpiMono/Variant17828dd9f88324684954a9a9dfbab603a4a75cc66731a2be22525d3a618cd979.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/EpiMono/Variant17828dd9f88324684954a9a9dfbab603a4a75cc66731a2be22525d3a618cd979.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Quotient.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.ConcreteCategory.EpiMono` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [ker_eq_bot_of_mono](../../../../../mathematics/Algebra/LinearAlgebra/EpiMono/Variant17828dd9f88324684954a9a9dfbab603a4a75cc66731a2be22525d3a618cd979.lean/declarations/ker-eq-bot-of-mono--eef46d78f76cfe769009d47e.md) | 35 | `result-track:eef46d78f76cfe769009d47ed84db67a3da75c5a201331d0f0e02293dce4f1d9` |
| 2 | `theorem` | [range_eq_top_of_epi](../../../../../mathematics/Algebra/LinearAlgebra/EpiMono/Variant17828dd9f88324684954a9a9dfbab603a4a75cc66731a2be22525d3a618cd979.lean/declarations/range-eq-top-of-epi--b68433a04fbe3b1f0ae659de.md) | 39 | `result-track:b68433a04fbe3b1f0ae659de54dc99ffd3104e47fcfe80d14e8619e03ef20126` |
| 3 | `theorem` | [mono_iff_ker_eq_bot](../../../../../mathematics/Algebra/LinearAlgebra/EpiMono/Variant17828dd9f88324684954a9a9dfbab603a4a75cc66731a2be22525d3a618cd979.lean/declarations/mono-iff-ker-eq-bot--44af656ed96a040ea91ea80f.md) | 43 | `result-track:44af656ed96a040ea91ea80f418529cbe9fc05aed336246e8c65a73e6b680a2a` |
| 4 | `theorem` | [mono_iff_injective](../../../../../mathematics/Algebra/LinearAlgebra/EpiMono/Variant17828dd9f88324684954a9a9dfbab603a4a75cc66731a2be22525d3a618cd979.lean/declarations/mono-iff-injective--d6605c3a980770618b7b3cde.md) | 47 | `result-track:d6605c3a980770618b7b3cde68709ce903a7bb579ffd42bc354905c563645641` |
| 5 | `theorem` | [epi_iff_range_eq_top](../../../../../mathematics/Algebra/LinearAlgebra/EpiMono/Variant17828dd9f88324684954a9a9dfbab603a4a75cc66731a2be22525d3a618cd979.lean/declarations/epi-iff-range-eq-top--c7a679a5dd90540563c7ccab.md) | 50 | `result-track:c7a679a5dd90540563c7ccab5adab7948e1f6ffd364f621172be481e05edab72` |
| 6 | `theorem` | [epi_iff_surjective](../../../../../mathematics/Algebra/LinearAlgebra/EpiMono/Variant17828dd9f88324684954a9a9dfbab603a4a75cc66731a2be22525d3a618cd979.lean/declarations/epi-iff-surjective--989970b59b1ded9c042aec0a.md) | 54 | `result-track:989970b59b1ded9c042aec0aae844c912ad0f448c4d9b44d7a81c94098613b11` |
| 7 | `def` | [uniqueOfEpiZero](../../../../../mathematics/Algebra/LinearAlgebra/EpiMono/Variant17828dd9f88324684954a9a9dfbab603a4a75cc66731a2be22525d3a618cd979.lean/declarations/uniqueofepizero--1e301d7f9b742e1ef28af780.md) | 58 | `declaration-track:1e301d7f9b742e1ef28af7808459f3ef8b014d9d6c106456b8a04e9461bd2be6` |
| 8 | `instance` | [mono_as_hom'_subtype](../../../../../mathematics/Algebra/LinearAlgebra/EpiMono/Variant17828dd9f88324684954a9a9dfbab603a4a75cc66731a2be22525d3a618cd979.lean/declarations/mono-as-hom-subtype--6c013f7024bf7f69063fc58a.md) | 61 | `declaration-track:6c013f7024bf7f69063fc58af6539aa5d0beeff17d920a747c36d338666539ef` |
| 9 | `instance` | [epi_as_hom''_mkQ](../../../../../mathematics/Algebra/LinearAlgebra/EpiMono/Variant17828dd9f88324684954a9a9dfbab603a4a75cc66731a2be22525d3a618cd979.lean/declarations/epi-as-hom-mkq--abed740adb04984b9fff5ddd.md) | 64 | `declaration-track:abed740adb04984b9fff5ddd9f392bacd0e2e6230172d05d21b53f0a4036f9a7` |
| 10 | `instance` | [forget_preservesEpimorphisms](../../../../../mathematics/Algebra/LinearAlgebra/EpiMono/Variant17828dd9f88324684954a9a9dfbab603a4a75cc66731a2be22525d3a618cd979.lean/declarations/forget-preservesepimorphisms--398ea8fea5f890381fcb4ddc.md) | 67 | `declaration-track:398ea8fea5f890381fcb4ddccacc5033b99be53b9c246ef0e4f11e18542bac4c` |
| 11 | `instance` | [forget_preservesMonomorphisms](../../../../../mathematics/Algebra/LinearAlgebra/EpiMono/Variant17828dd9f88324684954a9a9dfbab603a4a75cc66731a2be22525d3a618cd979.lean/declarations/forget-preservesmonomorphisms--a86f26345dda5bb4268e3b5d.md) | 73 | `declaration-track:a86f26345dda5bb4268e3b5da2d4de033556da1773534f49b6b94eb991b3e40b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
