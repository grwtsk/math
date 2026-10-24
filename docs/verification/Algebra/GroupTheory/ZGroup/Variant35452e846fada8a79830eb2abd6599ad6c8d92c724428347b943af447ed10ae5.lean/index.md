# Verification target: GRWTSK.Algebra.GroupTheory.ZGroup.Variant35452e846fada8a79830eb2abd6599ad6c8d92c724428347b943af447ed10ae5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ed3206bc3870b8c1cecb24051faaadb194a44b9f",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/ZGroup/Variant35452e846fada8a79830eb2abd6599ad6c8d92c724428347b943af447ed10ae5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/ZGroup/Variant35452e846fada8a79830eb2abd6599ad6c8d92c724428347b943af447ed10ae5.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/ZGroup/Variant35452e846fada8a79830eb2abd6599ad6c8d92c724428347b943af447ed10ae5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ed3206bc3870b8c1cecb24051faaadb194a44b9f`.

Source path: `GRWTSK/Algebra/GroupTheory/ZGroup/Variant35452e846fada8a79830eb2abd6599ad6c8d92c724428347b943af447ed10ae5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/ZGroup/Variant35452e846fada8a79830eb2abd6599ad6c8d92c724428347b943af447ed10ae5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Squarefree.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Finite.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Nilpotent` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.SchurZassenhaus` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.SemidirectProduct` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsZGroup](../../../../../mathematics/Algebra/GroupTheory/ZGroup/Variant35452e846fada8a79830eb2abd6599ad6c8d92c724428347b943af447ed10ae5.lean/declarations/iszgroup--e45c60aa1d288c46f5112ec2.md) | 43 | `declaration-track:e45c60aa1d288c46f5112ec2e06c220cbc9bcfbfe481541c2592dd1f7c42a414` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/ZGroup/Variant35452e846fada8a79830eb2abd6599ad6c8d92c724428347b943af447ed10ae5.lean/declarations/instance--bcf9559e4f4ae3a8e7f59a7d.md) | 50 | `declaration-track:bcf9559e4f4ae3a8e7f59a7dea42308a34f414c33434eb110301781636a611df` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/ZGroup/Variant35452e846fada8a79830eb2abd6599ad6c8d92c724428347b943af447ed10ae5.lean/declarations/instance--80bf06f292f0df9ca28b78a4.md) | 53 | `declaration-track:80bf06f292f0df9ca28b78a499d503fc21bd8aa68b943a75f9dcf3ca7605ee58` |
| 4 | `theorem` | [_root_.GRWTSK.Algebra.GroupTheory.RootIsPGroupIsCyclicOfIsZGroup.Variant1b20fed8653dd0dc46212463c7e3558929c8e68356c202a309e9609d09b2c9e1.IsPGroup.isCyclic_of_isZGroup](../../../../../mathematics/Algebra/GroupTheory/ZGroup/Variant35452e846fada8a79830eb2abd6599ad6c8d92c724428347b943af447ed10ae5.lean/declarations/root-grwtsk-algebra-grouptheory-rootispgroupiscyclicofiszgroup-variant1b--7df36d2e2104eed24c1fa5f8.md) | 56 | `result-track:7df36d2e2104eed24c1fa5f872afedc8080344cc0c7a839eec08327b43d962a0` |
| 5 | `theorem` | [of_squarefree](../../../../../mathematics/Algebra/GroupTheory/ZGroup/Variant35452e846fada8a79830eb2abd6599ad6c8d92c724428347b943af447ed10ae5.lean/declarations/of-squarefree--948595dd84c7a93b47898d5f.md) | 61 | `result-track:948595dd84c7a93b47898d5f7b5663741c767b6cafc72055f79854185fdbafc8` |
| 6 | `theorem` | [of_injective](../../../../../mathematics/Algebra/GroupTheory/ZGroup/Variant35452e846fada8a79830eb2abd6599ad6c8d92c724428347b943af447ed10ae5.lean/declarations/of-injective--0f903402f49427181730fec0.md) | 68 | `result-track:0f903402f49427181730fec080a296bdcd35c75ea95dd5636cdf909922900e0c` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/ZGroup/Variant35452e846fada8a79830eb2abd6599ad6c8d92c724428347b943af447ed10ae5.lean/declarations/instance--a452760051e36a62d6775d12.md) | 77 | `declaration-track:a452760051e36a62d6775d126859f79a2569cf0e425bc8de12d1415be0afd613` |
| 8 | `theorem` | [of_surjective](../../../../../mathematics/Algebra/GroupTheory/ZGroup/Variant35452e846fada8a79830eb2abd6599ad6c8d92c724428347b943af447ed10ae5.lean/declarations/of-surjective--16ee094c22c0bf0e11d8f87c.md) | 79 | `result-track:16ee094c22c0bf0e11d8f87c6a49a99a109a406ba905d0a15a610e045f74ccbf` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/ZGroup/Variant35452e846fada8a79830eb2abd6599ad6c8d92c724428347b943af447ed10ae5.lean/declarations/instance--29bf11c505fa5a886f325a78.md) | 87 | `declaration-track:29bf11c505fa5a886f325a789cb2ec6afc5c90308f49273652551d2e1985d663` |
| 10 | `theorem` | [commutator_lt](../../../../../mathematics/Algebra/GroupTheory/ZGroup/Variant35452e846fada8a79830eb2abd6599ad6c8d92c724428347b943af447ed10ae5.lean/declarations/commutator-lt--8c6561036a24479c4c1a531b.md) | 93 | `result-track:8c6561036a24479c4c1a531be8dd07442c3c749f5d28ddea399d5c33516b3a0c` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/ZGroup/Variant35452e846fada8a79830eb2abd6599ad6c8d92c724428347b943af447ed10ae5.lean/declarations/instance--ab7913d9ee43f5b6c1a55d74.md) | 106 | `declaration-track:ab7913d9ee43f5b6c1a55d74a01ee412bd46b345a34dbf9eee7364ca68dbc9f8` |
| 12 | `theorem` | [exponent_eq_card](../../../../../mathematics/Algebra/GroupTheory/ZGroup/Variant35452e846fada8a79830eb2abd6599ad6c8d92c724428347b943af447ed10ae5.lean/declarations/exponent-eq-card--d124fe91877ad6a510db7548.md) | 119 | `result-track:d124fe91877ad6a510db75481ead922b6ff69eb0a2ac98b45ebaeefce675961c` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/ZGroup/Variant35452e846fada8a79830eb2abd6599ad6c8d92c724428347b943af447ed10ae5.lean/declarations/instance--87cfd636915bde09df207277.md) | 129 | `declaration-track:87cfd636915bde09df20727753b199a6daa147e64560c74ad9501b18e9d49e1d` |
| 14 | `instance` | [isCyclic_abelianization](../../../../../mathematics/Algebra/GroupTheory/ZGroup/Variant35452e846fada8a79830eb2abd6599ad6c8d92c724428347b943af447ed10ae5.lean/declarations/iscyclic-abelianization--6310947c8733c71be9855e81.md) | 138 | `declaration-track:6310947c8733c71be9855e8153bd98b521a3aa60e6892f2e581444e9d9e2d8d5` |
| 15 | `theorem` | [isCyclic_commutator](../../../../../mathematics/Algebra/GroupTheory/ZGroup/Variant35452e846fada8a79830eb2abd6599ad6c8d92c724428347b943af447ed10ae5.lean/declarations/iscyclic-commutator--5a957390d9fedec4f50454d9.md) | 148 | `result-track:5a957390d9fedec4f50454d97baebaf8a1e2d43a943db87bcb86bdf098e8c868` |
| 16 | `theorem` | [smul_mul_inv_trivial_or_surjective](../../../../../mathematics/Algebra/GroupTheory/ZGroup/Variant35452e846fada8a79830eb2abd6599ad6c8d92c724428347b943af447ed10ae5.lean/declarations/smul-mul-inv-trivial-or-surjective--259225240fb91843819e3c1a.md) | 189 | `result-track:259225240fb91843819e3c1a94ac06aeec106da2ac95908b91f07dff61a5a82b` |
| 17 | `theorem` | [commutator_eq_bot_or_commutator_eq_self](../../../../../mathematics/Algebra/GroupTheory/ZGroup/Variant35452e846fada8a79830eb2abd6599ad6c8d92c724428347b943af447ed10ae5.lean/declarations/commutator-eq-bot-or-commutator-eq-self--dc2d14d3f329275146b2034c.md) | 216 | `result-track:dc2d14d3f329275146b2034cc7ab79409a6f20456e658a56d9892398a3923568` |
| 18 | `theorem` | [commutator_eq_bot_or_commutator_eq_self](../../../../../mathematics/Algebra/GroupTheory/ZGroup/Variant35452e846fada8a79830eb2abd6599ad6c8d92c724428347b943af447ed10ae5.lean/declarations/commutator-eq-bot-or-commutator-eq-self--486af7030b206173f49b79a8.md) | 237 | `result-track:486af7030b206173f49b79a8b746966c8a20a18bfd59cb8f67db6a3449df6e03` |
| 19 | `theorem` | [le_center_or_le_commutator](../../../../../mathematics/Algebra/GroupTheory/ZGroup/Variant35452e846fada8a79830eb2abd6599ad6c8d92c724428347b943af447ed10ae5.lean/declarations/le-center-or-le-commutator--348967c623ad5ffb77170593.md) | 243 | `result-track:348967c623ad5ffb77170593b18c5a5a05b4807865705f11a3c5cb6e2a5cd14e` |
| 20 | `theorem` | [normalizer_le_centralizer_or_le_commutator](../../../../../mathematics/Algebra/GroupTheory/ZGroup/Variant35452e846fada8a79830eb2abd6599ad6c8d92c724428347b943af447ed10ae5.lean/declarations/normalizer-le-centralizer-or-le-commutator--f39ef7b627b3f29b94407256.md) | 253 | `result-track:f39ef7b627b3f29b94407256207796382ad026ab10ee1f8ead54fb5dff928d2e` |
| 21 | `theorem` | [not_dvd_card_commutator_or_not_dvd_index_commutator](../../../../../mathematics/Algebra/GroupTheory/ZGroup/Variant35452e846fada8a79830eb2abd6599ad6c8d92c724428347b943af447ed10ae5.lean/declarations/not-dvd-card-commutator-or-not-dvd-index-commutator--7a319173f78423995bdcbdfa.md) | 272 | `result-track:7a319173f78423995bdcbdfa8cafc04d9ec3c5368a4a0c8cf641b174dcfdbf87` |
| 22 | `theorem` | [IsZGroup.coprime_commutator_index](../../../../../mathematics/Algebra/GroupTheory/ZGroup/Variant35452e846fada8a79830eb2abd6599ad6c8d92c724428347b943af447ed10ae5.lean/declarations/iszgroup-coprime-commutator-index--701fde2d7485755b9f566686.md) | 284 | `result-track:701fde2d7485755b9f566686d564b86805c39d994bd47fdbed30ab16af64b899` |
| 23 | `theorem` | [isZGroup_of_coprime](../../../../../mathematics/Algebra/GroupTheory/ZGroup/Variant35452e846fada8a79830eb2abd6599ad6c8d92c724428347b943af447ed10ae5.lean/declarations/iszgroup-of-coprime--6a9a004cf7d16193a1e816fc.md) | 298 | `result-track:6a9a004cf7d16193a1e816fc1cc8909e6167d96888e7f38c70a974f8b6a42f14` |
| 24 | `theorem` | [isZGroup_iff_exists_mulEquiv](../../../../../mathematics/Algebra/GroupTheory/ZGroup/Variant35452e846fada8a79830eb2abd6599ad6c8d92c724428347b943af447ed10ae5.lean/declarations/iszgroup-iff-exists-mulequiv--371ce43587428f8464be1f87.md) | 319 | `result-track:371ce43587428f8464be1f87623cdae942464ed560219dcb6c018a5b9c2101ca` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
