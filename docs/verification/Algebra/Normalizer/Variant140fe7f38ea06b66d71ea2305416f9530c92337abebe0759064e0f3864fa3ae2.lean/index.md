# Verification target: GRWTSK.Algebra.Normalizer.Variant140fe7f38ea06b66d71ea2305416f9530c92337abebe0759064e0f3864fa3ae2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f8683dd65dbb0a42eef9a1b8d0e2745e54ce9cae",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Normalizer/Variant140fe7f38ea06b66d71ea2305416f9530c92337abebe0759064e0f3864fa3ae2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Normalizer/Variant140fe7f38ea06b66d71ea2305416f9530c92337abebe0759064e0f3864fa3ae2.lean/index.md) · [Full source](../../../../mathematics/Algebra/Normalizer/Variant140fe7f38ea06b66d71ea2305416f9530c92337abebe0759064e0f3864fa3ae2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f8683dd65dbb0a42eef9a1b8d0e2745e54ce9cae`.

Source path: `GRWTSK/Algebra/Normalizer/Variant140fe7f38ea06b66d71ea2305416f9530c92337abebe0759064e0f3864fa3ae2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Normalizer/Variant140fe7f38ea06b66d71ea2305416f9530c92337abebe0759064e0f3864fa3ae2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Lie.Abelian` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Lie.IdealOperations` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Lie.Quotient` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [normalizer](../../../../mathematics/Algebra/Normalizer/Variant140fe7f38ea06b66d71ea2305416f9530c92337abebe0759064e0f3864fa3ae2.lean/declarations/normalizer--024acbe6293277ac5652f364.md) | 51 | `declaration-track:024acbe6293277ac5652f364585b77bfb413822735cd78a3bce3be97cceb54db` |
| 2 | `theorem` | [mem_normalizer](../../../../mathematics/Algebra/Normalizer/Variant140fe7f38ea06b66d71ea2305416f9530c92337abebe0759064e0f3864fa3ae2.lean/declarations/mem-normalizer--01c4910e2d6ab207a581093e.md) | 60 | `result-track:01c4910e2d6ab207a581093e90752f662074eef0afbba6df801c9f1601985613` |
| 3 | `theorem` | [le_normalizer](../../../../mathematics/Algebra/Normalizer/Variant140fe7f38ea06b66d71ea2305416f9530c92337abebe0759064e0f3864fa3ae2.lean/declarations/le-normalizer--2f7cdbe25e1c4ea51dea5009.md) | 64 | `result-track:2f7cdbe25e1c4ea51dea5009e52861f0ebde33d5e84e948c913ca22ade1b1031` |
| 4 | `theorem` | [normalizer_inf](../../../../mathematics/Algebra/Normalizer/Variant140fe7f38ea06b66d71ea2305416f9530c92337abebe0759064e0f3864fa3ae2.lean/declarations/normalizer-inf--de23da2aea0c8d5c327a3dd5.md) | 70 | `result-track:de23da2aea0c8d5c327a3dd5343a12824d1a5ce1c800f22f3d937219b02c0d3a` |
| 5 | `theorem` | [monotone_normalizer](../../../../mathematics/Algebra/Normalizer/Variant140fe7f38ea06b66d71ea2305416f9530c92337abebe0759064e0f3864fa3ae2.lean/declarations/monotone-normalizer--e585ae04443f8be4928f9ee0.md) | 75 | `result-track:e585ae04443f8be4928f9ee0cc24be8c1a93a803cbc553f003f24ffe7e1c7f7d` |
| 6 | `theorem` | [comap_normalizer](../../../../mathematics/Algebra/Normalizer/Variant140fe7f38ea06b66d71ea2305416f9530c92337abebe0759064e0f3864fa3ae2.lean/declarations/comap-normalizer--b60304ef883d01c5a0d84057.md) | 82 | `result-track:b60304ef883d01c5a0d840574a68f6898a9c8d77f89d7d680d9590496f7e7f58` |
| 7 | `theorem` | [top_lie_le_iff_le_normalizer](../../../../mathematics/Algebra/Normalizer/Variant140fe7f38ea06b66d71ea2305416f9530c92337abebe0759064e0f3864fa3ae2.lean/declarations/top-lie-le-iff-le-normalizer--5678f10ad45bee7b716efbd8.md) | 86 | `result-track:5678f10ad45bee7b716efbd80da9b958ffbdb2f3f25b9df8fcbf109b820947b0` |
| 8 | `theorem` | [gc_top_lie_normalizer](../../../../mathematics/Algebra/Normalizer/Variant140fe7f38ea06b66d71ea2305416f9530c92337abebe0759064e0f3864fa3ae2.lean/declarations/gc-top-lie-normalizer--f3449d3d96e08831b7dd48ce.md) | 90 | `result-track:f3449d3d96e08831b7dd48ce1d0e6f0119ced192d19e0e618501d640973e2e06` |
| 9 | `theorem` | [normalizer_bot_eq_maxTrivSubmodule](../../../../mathematics/Algebra/Normalizer/Variant140fe7f38ea06b66d71ea2305416f9530c92337abebe0759064e0f3864fa3ae2.lean/declarations/normalizer-bot-eq-maxtrivsubmodule--cd4c10371b9254209bbe0ecb.md) | 97 | `result-track:cd4c10371b9254209bbe0ecba990cbe6ae82c2f959c7b508e4181e16edeafc56` |
| 10 | `def` | [normalizer](../../../../mathematics/Algebra/Normalizer/Variant140fe7f38ea06b66d71ea2305416f9530c92337abebe0759064e0f3864fa3ae2.lean/declarations/normalizer--0f9cb93364b7b111910d5dae.md) | 110 | `declaration-track:0f9cb93364b7b111910d5dae439edef170e0aeef5f51dcbb1cb366b902800f5c` |
| 11 | `theorem` | [mem_normalizer_iff'](../../../../mathematics/Algebra/Normalizer/Variant140fe7f38ea06b66d71ea2305416f9530c92337abebe0759064e0f3864fa3ae2.lean/declarations/mem-normalizer-iff--6192914eb5cc09c20480f8b3.md) | 117 | `result-track:6192914eb5cc09c20480f8b355c930e71170971fba678f72ce33da47d75a37d9` |
| 12 | `theorem` | [mem_normalizer_iff](../../../../mathematics/Algebra/Normalizer/Variant140fe7f38ea06b66d71ea2305416f9530c92337abebe0759064e0f3864fa3ae2.lean/declarations/mem-normalizer-iff--5b4da9ec46c2a338a2cc3f10.md) | 121 | `result-track:5b4da9ec46c2a338a2cc3f106f7bb135c0ac0718e1284a212d6bedaa08dee34f` |
| 13 | `theorem` | [le_normalizer](../../../../mathematics/Algebra/Normalizer/Variant140fe7f38ea06b66d71ea2305416f9530c92337abebe0759064e0f3864fa3ae2.lean/declarations/le-normalizer--e3bbe7560646b71ca9da2ad0.md) | 127 | `result-track:e3bbe7560646b71ca9da2ad04bbbd8dcb412aaee12fa75610811cacee3992446` |
| 14 | `theorem` | [coe_normalizer_eq_normalizer](../../../../mathematics/Algebra/Normalizer/Variant140fe7f38ea06b66d71ea2305416f9530c92337abebe0759064e0f3864fa3ae2.lean/declarations/coe-normalizer-eq-normalizer--8c989609f0e52292e686cce2.md) | 131 | `result-track:8c989609f0e52292e686cce240a943e3e6f629473657adc4905ca250d335f022` |
| 15 | `theorem` | [lie_mem_sup_of_mem_normalizer](../../../../mathematics/Algebra/Normalizer/Variant140fe7f38ea06b66d71ea2305416f9530c92337abebe0759064e0f3864fa3ae2.lean/declarations/lie-mem-sup-of-mem-normalizer--e852cc806f575a631c355b3b.md) | 138 | `result-track:e852cc806f575a631c355b3b77e6d4a39a00ffc92f61b1a6e61ca7b8465b138a` |
| 16 | `theorem` | [ideal_in_normalizer](../../../../mathematics/Algebra/Normalizer/Variant140fe7f38ea06b66d71ea2305416f9530c92337abebe0759064e0f3864fa3ae2.lean/declarations/ideal-in-normalizer--43a36b9038eab566ea0a04d0.md) | 153 | `result-track:43a36b9038eab566ea0a04d01512ea7f72bf706aa129f975bdad47d9fbed252f` |
| 17 | `theorem` | [exists_nested_lieIdeal_ofLe_normalizer](../../../../mathematics/Algebra/Normalizer/Variant140fe7f38ea06b66d71ea2305416f9530c92337abebe0759064e0f3864fa3ae2.lean/declarations/exists-nested-lieideal-ofle-normalizer--8b383ff1a2eeed2b3b1fdd94.md) | 160 | `result-track:8b383ff1a2eeed2b3b1fdd94e53bdf97f80cef04c2427d179b6db3edece507a7` |
| 18 | `theorem` | [normalizer_eq_self_iff](../../../../mathematics/Algebra/Normalizer/Variant140fe7f38ea06b66d71ea2305416f9530c92337abebe0759064e0f3864fa3ae2.lean/declarations/normalizer-eq-self-iff--5c3abdb790a60e9aabd799a6.md) | 168 | `result-track:5c3abdb790a60e9aabd799a6369ee9735355e3931ace7a6d7934c83a785b35aa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
