# Verification target: GRWTSK.Algebra.Basic.Variant01257656aa88e1c05c7df6ffce685d6a48aeacb03affd29d1a195f86601816b2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "961bd3f0d9d367bee34d4d22bb872e702486515a",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variant01257656aa88e1c05c7df6ffce685d6a48aeacb03affd29d1a195f86601816b2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variant01257656aa88e1c05c7df6ffce685d6a48aeacb03affd29d1a195f86601816b2.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variant01257656aa88e1c05c7df6ffce685d6a48aeacb03affd29d1a195f86601816b2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `961bd3f0d9d367bee34d4d22bb872e702486515a`.

Source path: `GRWTSK/Algebra/Basic/Variant01257656aa88e1c05c7df6ffce685d6a48aeacb03affd29d1a195f86601816b2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variant01257656aa88e1c05c7df6ffce685d6a48aeacb03affd29d1a195f86601816b2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Units.Hom` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.LocalRing.MaximalIdeal.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Maps` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isLocalHom_id](../../../../mathematics/Algebra/Basic/Variant01257656aa88e1c05c7df6ffce685d6a48aeacb03affd29d1a195f86601816b2.lean/declarations/islocalhom-id--1b644ba3960a2f581aacef06.md) | 32 | `result-track:1b644ba3960a2f581aacef0653963c049c86bc4e8468b92788dff9dcaa596ea6` |
| 2 | `theorem` | [isLocalHom_toRingHom](../../../../mathematics/Algebra/Basic/Variant01257656aa88e1c05c7df6ffce685d6a48aeacb03affd29d1a195f86601816b2.lean/declarations/islocalhom-toringhom--4689ac64acf580131868c791.md) | 37 | `result-track:4689ac64acf580131868c7919361772bfaab6c21558edb1abdf753ec5ef77166` |
| 3 | `theorem` | [RingHom.isLocalHom_comp](../../../../mathematics/Algebra/Basic/Variant01257656aa88e1c05c7df6ffce685d6a48aeacb03affd29d1a195f86601816b2.lean/declarations/ringhom-islocalhom-comp--398423db5c3a06bc98453da5.md) | 42 | `result-track:398423db5c3a06bc98453da5b2bf112186977b5e8df973e425d576dc106f923b` |
| 4 | `theorem` | [isLocalHom_of_comp](../../../../mathematics/Algebra/Basic/Variant01257656aa88e1c05c7df6ffce685d6a48aeacb03affd29d1a195f86601816b2.lean/declarations/islocalhom-of-comp--aad17e8c5669494645a03779.md) | 46 | `result-track:aad17e8c5669494645a037798317e717a0ac6fdf7b4b8b83b2c23fc825802ffc` |
| 5 | `theorem` | [RingHom.domain_isLocalRing](../../../../mathematics/Algebra/Basic/Variant01257656aa88e1c05c7df6ffce685d6a48aeacb03affd29d1a195f86601816b2.lean/declarations/ringhom-domain-islocalring--28709f3fadb476736d4df117.md) | 51 | `result-track:28709f3fadb476736d4df117ded3b9f132ecb36edf72ee94bd9552f481dfc26b` |
| 6 | `theorem` | [map_nonunit](../../../../mathematics/Algebra/Basic/Variant01257656aa88e1c05c7df6ffce685d6a48aeacb03affd29d1a195f86601816b2.lean/declarations/map-nonunit--890eb08b41f46c8754380cbc.md) | 72 | `result-track:890eb08b41f46c8754380cbc60d161432f7a01649254b2062d0e57a6b3fa5760` |
| 7 | `theorem` | [local_hom_TFAE](../../../../mathematics/Algebra/Basic/Variant01257656aa88e1c05c7df6ffce685d6a48aeacb03affd29d1a195f86601816b2.lean/declarations/local-hom-tfae--b0b45bb5a1c7c629668d597a.md) | 86 | `result-track:b0b45bb5a1c7c629668d597adb0e54e6a6c809e5a86d8c2c8926ccc26397f297` |
| 8 | `theorem` | [of_surjective](../../../../mathematics/Algebra/Basic/Variant01257656aa88e1c05c7df6ffce685d6a48aeacb03affd29d1a195f86601816b2.lean/declarations/of-surjective--bdde21f1723b73dca98b3dc8.md) | 103 | `result-track:bdde21f1723b73dca98b3dc8d7879df722008962fb7e39cc948423e346a5f251` |
| 9 | `lemma` | [_root_.GRWTSK.Algebra.IsLocalHomId.Variant1d4ec2e70af5ae48287eb1096431387926cb6cede1685da2241e0c233e82715a.IsLocalHom.of_surjective](../../../../mathematics/Algebra/Basic/Variant01257656aa88e1c05c7df6ffce685d6a48aeacb03affd29d1a195f86601816b2.lean/declarations/root-grwtsk-algebra-islocalhomid-variant1d4ec2e70af5ae48287eb10964313879--58c2c35ff198ee23dbc2afb3.md) | 114 | `result-track:58c2c35ff198ee23dbc2afb356dd3d3592b02c193aa5d70373a5f136ff3b8dff` |
| 10 | `theorem` | [surjective_units_map_of_local_ringHom](../../../../mathematics/Algebra/Basic/Variant01257656aa88e1c05c7df6ffce685d6a48aeacb03affd29d1a195f86601816b2.lean/declarations/surjective-units-map-of-local-ringhom--b2f94328e3986188d8612625.md) | 125 | `result-track:b2f94328e3986188d861262554bfcbb6837b273dab257015578f9f94e2e33630` |
| 11 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant01257656aa88e1c05c7df6ffce685d6a48aeacb03affd29d1a195f86601816b2.lean/declarations/instance--5e90b0880d336fdcbb2d96db.md) | 137 | `declaration-track:5e90b0880d336fdcbb2d96dbccb35c3c99a218b943b93b47796bf7705ecbeac5` |
| 12 | `theorem` | [isLocalRing](../../../../mathematics/Algebra/Basic/Variant01257656aa88e1c05c7df6ffce685d6a48aeacb03affd29d1a195f86601816b2.lean/declarations/islocalring--98f2b7b85ae46e34d20c17e5.md) | 151 | `result-track:98f2b7b85ae46e34d20c17e54ffcd85e382a39eef8a7bbe7a9020a1fdda2f90d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
