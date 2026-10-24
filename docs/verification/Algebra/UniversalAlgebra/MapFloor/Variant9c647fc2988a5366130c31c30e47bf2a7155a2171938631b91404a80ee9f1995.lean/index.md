# Verification target: GRWTSK.Algebra.UniversalAlgebra.MapFloor.Variant9c647fc2988a5366130c31c30e47bf2a7155a2171938631b91404a80ee9f1995

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c5d7be09de4acdbdc278277ff512aaf560befb86",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/MapFloor/Variant9c647fc2988a5366130c31c30e47bf2a7155a2171938631b91404a80ee9f1995.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/MapFloor/Variant9c647fc2988a5366130c31c30e47bf2a7155a2171938631b91404a80ee9f1995.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/MapFloor/Variant9c647fc2988a5366130c31c30e47bf2a7155a2171938631b91404a80ee9f1995.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c5d7be09de4acdbdc278277ff512aaf560befb86`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/MapFloor/Variant9c647fc2988a5366130c31c30e47bf2a7155a2171938631b91404a80ee9f1995.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/MapFloor/Variant9c647fc2988a5366130c31c30e47bf2a7155a2171938631b91404a80ee9f1995.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Round` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Group.PiLex` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Hom.Ring` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Reverse` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IntWithEpsilon](../../../../../mathematics/Algebra/UniversalAlgebra/MapFloor/Variant9c647fc2988a5366130c31c30e47bf2a7155a2171938631b91404a80ee9f1995.lean/declarations/intwithepsilon--01203d54f2ff91cf3c9c5c87.md) | 48 | `declaration-track:01203d54f2ff91cf3c9c5c871e165b28acdfb9304b20ba406daa15ce1ff93f1e` |
| 2 | `instance` | [nontrivial](../../../../../mathematics/Algebra/UniversalAlgebra/MapFloor/Variant9c647fc2988a5366130c31c30e47bf2a7155a2171938631b91404a80ee9f1995.lean/declarations/nontrivial--298ae06db9d1009e9f9d9765.md) | 57 | `declaration-track:298ae06db9d1009e9f9d97658ed1a52116532b04229a1097cfb697fa944075bc` |
| 3 | `instance` | [commRing](../../../../../mathematics/Algebra/UniversalAlgebra/MapFloor/Variant9c647fc2988a5366130c31c30e47bf2a7155a2171938631b91404a80ee9f1995.lean/declarations/commring--cb25337e6ff4ed28f8fdb4ab.md) | 61 | `declaration-track:cb25337e6ff4ed28f8fdb4ab0fa3df0d4d4aa7df7023f48f65c66a41f942195f` |
| 4 | `instance` | [inhabited](../../../../../mathematics/Algebra/UniversalAlgebra/MapFloor/Variant9c647fc2988a5366130c31c30e47bf2a7155a2171938631b91404a80ee9f1995.lean/declarations/inhabited--86a98f0dbc114b61e4d5dcad.md) | 63 | `declaration-track:86a98f0dbc114b61e4d5dcade2555967e99af1dcbc49bf9683a64fc53f46cef1` |
| 5 | `instance` | [linearOrder](../../../../../mathematics/Algebra/UniversalAlgebra/MapFloor/Variant9c647fc2988a5366130c31c30e47bf2a7155a2171938631b91404a80ee9f1995.lean/declarations/linearorder--f5a679e9745bc1295f182fb6.md) | 65 | `declaration-track:f5a679e9745bc1295f182fb64815dbeba3017d779d384c6b2387602d0e7ea1e9` |
| 6 | `instance` | [isOrderedAddMonoid](../../../../../mathematics/Algebra/UniversalAlgebra/MapFloor/Variant9c647fc2988a5366130c31c30e47bf2a7155a2171938631b91404a80ee9f1995.lean/declarations/isorderedaddmonoid--c92ad170b58b4ecff68690b7.md) | 68 | `declaration-track:c92ad170b58b4ecff68690b73c949d03d2edde7a46cc4ada9e9c3106624eb19a` |
| 7 | `theorem` | [pos_iff](../../../../../mathematics/Algebra/UniversalAlgebra/MapFloor/Variant9c647fc2988a5366130c31c30e47bf2a7155a2171938631b91404a80ee9f1995.lean/declarations/pos-iff--5557fe732a4b7ed458d21efc.md) | 74 | `result-track:5557fe732a4b7ed458d21efc69f7ca9459466c5b466f9cf3572d08d52b46608c` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/MapFloor/Variant9c647fc2988a5366130c31c30e47bf2a7155a2171938631b91404a80ee9f1995.lean/declarations/instance--faeb4f7d08026dbf62076d6e.md) | 84 | `declaration-track:faeb4f7d08026dbf62076d6efafba687a7e65abb6a36af7ef817430749346b74` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/MapFloor/Variant9c647fc2988a5366130c31c30e47bf2a7155a2171938631b91404a80ee9f1995.lean/declarations/instance--cb1835912a7a2ee0f04f8af7.md) | 87 | `declaration-track:cb1835912a7a2ee0f04f8af70399bd4294d6972cc3ee8283c12b2026d3417919` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/MapFloor/Variant9c647fc2988a5366130c31c30e47bf2a7155a2171938631b91404a80ee9f1995.lean/declarations/instance--a80c237bee73dae0d60919d9.md) | 90 | `declaration-track:a80c237bee73dae0d60919d9663af5073d350529f8a49a7c758ace51a46f6b7e` |
| 11 | `def` | [forgetEpsilons](../../../../../mathematics/Algebra/UniversalAlgebra/MapFloor/Variant9c647fc2988a5366130c31c30e47bf2a7155a2171938631b91404a80ee9f1995.lean/declarations/forgetepsilons--0287cb5b468d09a0ed383b5d.md) | 109 | `declaration-track:0287cb5b468d09a0ed383b5dabb733e7d0c5b9e9ebdd6e4447acb150bcdd2a9a` |
| 12 | `theorem` | [forgetEpsilons_apply](../../../../../mathematics/Algebra/UniversalAlgebra/MapFloor/Variant9c647fc2988a5366130c31c30e47bf2a7155a2171938631b91404a80ee9f1995.lean/declarations/forgetepsilons-apply--67aeba52f688db8191eeeaf7.md) | 122 | `result-track:67aeba52f688db8191eeeaf759c78a6a803a9ee85895a77a9d2d18c3e6428bdb` |
| 13 | `theorem` | [forgetEpsilons_floor_lt](../../../../../mathematics/Algebra/UniversalAlgebra/MapFloor/Variant9c647fc2988a5366130c31c30e47bf2a7155a2171938631b91404a80ee9f1995.lean/declarations/forgetepsilons-floor-lt--98ade2efd720bf39469a9f74.md) | 127 | `result-track:98ade2efd720bf39469a9f7423bf4e7d3a2532c00bbdfa91d4afdd2c39673dbd` |
| 14 | `theorem` | [lt_forgetEpsilons_ceil](../../../../../mathematics/Algebra/UniversalAlgebra/MapFloor/Variant9c647fc2988a5366130c31c30e47bf2a7155a2171938631b91404a80ee9f1995.lean/declarations/lt-forgetepsilons-ceil--819c5c6775135ed3cb71f57c.md) | 136 | `result-track:819c5c6775135ed3cb71f57ca7ce21564c605927646aec848dd903b87158327b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
