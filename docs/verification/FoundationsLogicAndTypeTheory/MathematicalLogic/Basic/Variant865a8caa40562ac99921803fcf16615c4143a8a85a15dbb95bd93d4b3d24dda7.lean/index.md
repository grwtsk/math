# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Basic.Variant865a8caa40562ac99921803fcf16615c4143a8a85a15dbb95bd93d4b3d24dda7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fdefa59d502995d47446efe232f5de2a1b57379f",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant865a8caa40562ac99921803fcf16615c4143a8a85a15dbb95bd93d4b3d24dda7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant865a8caa40562ac99921803fcf16615c4143a8a85a15dbb95bd93d4b3d24dda7.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant865a8caa40562ac99921803fcf16615c4143a8a85a15dbb95bd93d4b3d24dda7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fdefa59d502995d47446efe232f5de2a1b57379f`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant865a8caa40562ac99921803fcf16615c4143a8a85a15dbb95bd93d4b3d24dda7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant865a8caa40562ac99921803fcf16615c4143a8a85a15dbb95bd93d4b3d24dda7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.SimpleRing.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Opposite` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.TwoSidedIdeal.Kernel` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant865a8caa40562ac99921803fcf16615c4143a8a85a15dbb95bd93d4b3d24dda7.lean/declarations/instance--97085e1bd6be2e9328afec75.md) | 33 | `declaration-track:97085e1bd6be2e9328afec7510474ff3898a3f63845bb6feeab5f47b30ecfe4b` |
| 2 | `lemma` | [one_mem_of_ne_bot](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant865a8caa40562ac99921803fcf16615c4143a8a85a15dbb95bd93d4b3d24dda7.lean/declarations/one-mem-of-ne-bot--b05f473c344870c55a7ef9a8.md) | 37 | `result-track:b05f473c344870c55a7ef9a82c050273f5f5eb511cfaad0666ee30233056cf1d` |
| 3 | `lemma` | [one_mem_of_ne_zero_mem](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant865a8caa40562ac99921803fcf16615c4143a8a85a15dbb95bd93d4b3d24dda7.lean/declarations/one-mem-of-ne-zero-mem--30eb368d9f84def1c071ccf2.md) | 41 | `result-track:30eb368d9f84def1c071ccf23079eb8e6485aecb132977b9fe2419277f29927d` |
| 4 | `lemma` | [of_eq_bot_or_eq_top](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant865a8caa40562ac99921803fcf16615c4143a8a85a15dbb95bd93d4b3d24dda7.lean/declarations/of-eq-bot-or-eq-top--c94874eacf49ac094e10e379.md) | 45 | `result-track:c94874eacf49ac094e10e379e07bf5b5aa5927ee26ce0075b6c2d1c8a7aa6d59` |
| 5 | `instance` | [_root_.DivisionRing.isSimpleRing](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant865a8caa40562ac99921803fcf16615c4143a8a85a15dbb95bd93d4b3d24dda7.lean/declarations/root-divisionring-issimplering--87f75e0ad75207ddbe6488d6.md) | 49 | `declaration-track:87f75e0ad75207ddbe6488d6b23ffca05537914d6d6619b4d77aed89fbe13183` |
| 6 | `lemma` | [injective_ringHom_or_subsingleton_codomain](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant865a8caa40562ac99921803fcf16615c4143a8a85a15dbb95bd93d4b3d24dda7.lean/declarations/injective-ringhom-or-subsingleton-codomain--03af12758b3967d952cb8910.md) | 56 | `result-track:03af12758b3967d952cb8910ffb91df9316269483c075e0b59c95cac89d1f263` |
| 7 | `theorem` | [_root_.RingHom.injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant865a8caa40562ac99921803fcf16615c4143a8a85a15dbb95bd93d4b3d24dda7.lean/declarations/root-ringhom-injective--411159595a45560d35f6f48d.md) | 64 | `result-track:411159595a45560d35f6f48d78629c7d91b3d58a313d27ae316e019615b31a43` |
| 8 | `lemma` | [iff_injective_ringHom_or_subsingleton_codomain](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant865a8caa40562ac99921803fcf16615c4143a8a85a15dbb95bd93d4b3d24dda7.lean/declarations/iff-injective-ringhom-or-subsingleton-codomain--83015686ce8c9aa3da54d18a.md) | 70 | `result-track:83015686ce8c9aa3da54d18ad1c27d9f4ea1a7c5e0cbf70c2db8fa688a0eacd8` |
| 9 | `lemma` | [iff_injective_ringHom](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant865a8caa40562ac99921803fcf16615c4143a8a85a15dbb95bd93d4b3d24dda7.lean/declarations/iff-injective-ringhom--55f028323770145a29299635.md) | 80 | `result-track:55f028323770145a292996354a6b5c17c8c6134a79b90d26956cbd007f187454` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant865a8caa40562ac99921803fcf16615c4143a8a85a15dbb95bd93d4b3d24dda7.lean/declarations/instance--e3654ee17babb1525b389e42.md) | 87 | `declaration-track:e3654ee17babb1525b389e42309829bbc3e8516d0cd7f1734c611b166b802fcf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
