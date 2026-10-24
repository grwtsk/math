# Verification target: GRWTSK.Algebra.Free.Variant403069fc6b45873e9881910bab5ccc4b9ec8911bad8b563fe71714d4753bd810

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c2b65b5fb1c15d217a432bc34473d7a1413b73ab",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Free/Variant403069fc6b45873e9881910bab5ccc4b9ec8911bad8b563fe71714d4753bd810.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Free/Variant403069fc6b45873e9881910bab5ccc4b9ec8911bad8b563fe71714d4753bd810.lean/index.md) · [Full source](../../../../mathematics/Algebra/Free/Variant403069fc6b45873e9881910bab5ccc4b9ec8911bad8b563fe71714d4753bd810.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c2b65b5fb1c15d217a432bc34473d7a1413b73ab`.

Source path: `GRWTSK/Algebra/Free/Variant403069fc6b45873e9881910bab5ccc4b9ec8911bad8b563fe71714d4753bd810.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Free/Variant403069fc6b45873e9881910bab5ccc4b9ec8911bad8b563fe71714d4753bd810.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Equiv.TransferInstance` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.FreeAbelianGroup.Finsupp` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finsupp.Fintype` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.FreeGroup.Reduce` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.FreeCommRing` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Cardinal.Arithmetic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Cardinal.Finsupp` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Free/Variant403069fc6b45873e9881910bab5ccc4b9ec8911bad8b563fe71714d4753bd810.lean/declarations/instance--cb824daacbc1e0112cea1761.md) | 30 | `declaration-track:cb824daacbc1e0112cea176173832ff1e42fab7b3263c4c55cfe0bfea3aed151` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Free/Variant403069fc6b45873e9881910bab5ccc4b9ec8911bad8b563fe71714d4753bd810.lean/declarations/instance--646bc1566c343c773c69caf2.md) | 33 | `declaration-track:646bc1566c343c773c69caf25795936d6cc8519e2dcf91bf33a4e28b9478fa9b` |
| 3 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Free/Variant403069fc6b45873e9881910bab5ccc4b9ec8911bad8b563fe71714d4753bd810.lean/declarations/instance--ffb89bead785a5223e491353.md) | 37 | `declaration-track:ffb89bead785a5223e491353b4d89fb08f3bb24d238d412665952cd40672266b` |
| 4 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Free/Variant403069fc6b45873e9881910bab5ccc4b9ec8911bad8b563fe71714d4753bd810.lean/declarations/instance--992c8de2f0200ad9ddc65e04.md) | 40 | `declaration-track:992c8de2f0200ad9ddc65e04bfebfe5e7be13aaba041a43d74c6164a72e0c344` |
| 5 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Free/Variant403069fc6b45873e9881910bab5ccc4b9ec8911bad8b563fe71714d4753bd810.lean/declarations/instance--ebed0cafa297fc3ce0aebc57.md) | 42 | `declaration-track:ebed0cafa297fc3ce0aebc579b7756a1f12314a7b27768dafe2eb067c909f323` |
| 6 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Free/Variant403069fc6b45873e9881910bab5ccc4b9ec8911bad8b563fe71714d4753bd810.lean/declarations/instance--ab794fb7654f6c0f53f7d56f.md) | 51 | `declaration-track:ab794fb7654f6c0f53f7d56f10c9ddbe9fe175afa9e85f432d37759e3f9d1640` |
| 7 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Free/Variant403069fc6b45873e9881910bab5ccc4b9ec8911bad8b563fe71714d4753bd810.lean/declarations/instance--19fe1ed941ec991104a9cf6e.md) | 54 | `declaration-track:19fe1ed941ec991104a9cf6e495e95af8a29eae472474160e7225574696683cc` |
| 8 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Free/Variant403069fc6b45873e9881910bab5ccc4b9ec8911bad8b563fe71714d4753bd810.lean/declarations/instance--5755d80e66e70b7e3de3cbca.md) | 56 | `declaration-track:5755d80e66e70b7e3de3cbcafdad6582dfc0529a21f4ec78e87cef199c89f154` |
| 9 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Free/Variant403069fc6b45873e9881910bab5ccc4b9ec8911bad8b563fe71714d4753bd810.lean/declarations/instance--f6c00ac23aea59163e4ceffc.md) | 58 | `declaration-track:f6c00ac23aea59163e4ceffc37f20bb8e32d4094f59a42a40aba0cb25aa816d8` |
| 10 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Free/Variant403069fc6b45873e9881910bab5ccc4b9ec8911bad8b563fe71714d4753bd810.lean/declarations/instance--a6632efcd383883e16e90efd.md) | 60 | `declaration-track:a6632efcd383883e16e90efd63b17e4dd5a7202b125e2f827389b849d9e83069` |
| 11 | `theorem` | [mk_abelianization_le](../../../../mathematics/Algebra/Free/Variant403069fc6b45873e9881910bab5ccc4b9ec8911bad8b563fe71714d4753bd810.lean/declarations/mk-abelianization-le--cf234bce6a3e3239c295940d.md) | 68 | `result-track:cf234bce6a3e3239c295940df6f10dc69b421e9d9aad348c4c99b10c20e154cf` |
| 12 | `theorem` | [mk_freeMonoid](../../../../mathematics/Algebra/Free/Variant403069fc6b45873e9881910bab5ccc4b9ec8911bad8b563fe71714d4753bd810.lean/declarations/mk-freemonoid--28c500bb6429c7b1cd0a6bf2.md) | 72 | `result-track:28c500bb6429c7b1cd0a6bf246c4dfbfae0b777a31399f6bce20d92625810352` |
| 13 | `theorem` | [mk_freeGroup](../../../../mathematics/Algebra/Free/Variant403069fc6b45873e9881910bab5ccc4b9ec8911bad8b563fe71714d4753bd810.lean/declarations/mk-freegroup--c9b506d175a072e29a2f9fde.md) | 76 | `result-track:c9b506d175a072e29a2f9fde6a7ddc16722dc19eb60719e45bf1712a0357a6bc` |
| 14 | `theorem` | [mk_freeAbelianGroup](../../../../mathematics/Algebra/Free/Variant403069fc6b45873e9881910bab5ccc4b9ec8911bad8b563fe71714d4753bd810.lean/declarations/mk-freeabeliangroup--e2a3d3717d83b1464795509a.md) | 92 | `result-track:e2a3d3717d83b1464795509ab803b28ec1aa8bc149282a51cb882e2fcd3576ae` |
| 15 | `theorem` | [mk_freeRing](../../../../mathematics/Algebra/Free/Variant403069fc6b45873e9881910bab5ccc4b9ec8911bad8b563fe71714d4753bd810.lean/declarations/mk-freering--82eab40191a8e67961323f6a.md) | 97 | `result-track:82eab40191a8e67961323f6a362c54ecd9ced0872a7a9800eb4ee9f7052979d6` |
| 16 | `theorem` | [mk_freeCommRing](../../../../mathematics/Algebra/Free/Variant403069fc6b45873e9881910bab5ccc4b9ec8911bad8b563fe71714d4753bd810.lean/declarations/mk-freecommring--2a90732d0226fb750a4201f4.md) | 101 | `result-track:2a90732d0226fb750a4201f4f056ff06e977eb207f6d4dced95395056c26c0a8` |
| 17 | `instance` | [nonempty_commRing](../../../../mathematics/Algebra/Free/Variant403069fc6b45873e9881910bab5ccc4b9ec8911bad8b563fe71714d4753bd810.lean/declarations/nonempty-commring--89c10019aae3ddcf2f732809.md) | 111 | `declaration-track:89c10019aae3ddcf2f732809ed8bb7774f8a5366cdbbbc12bd95f24d528032a1` |
| 18 | `theorem` | [nonempty_commRing_iff](../../../../mathematics/Algebra/Free/Variant403069fc6b45873e9881910bab5ccc4b9ec8911bad8b563fe71714d4753bd810.lean/declarations/nonempty-commring-iff--9d103922320aa3d393e83026.md) | 122 | `result-track:9d103922320aa3d393e83026772467101bc35d87e673ff5ee9008e9a7e01c486` |
| 19 | `theorem` | [nonempty_ring_iff](../../../../mathematics/Algebra/Free/Variant403069fc6b45873e9881910bab5ccc4b9ec8911bad8b563fe71714d4753bd810.lean/declarations/nonempty-ring-iff--c500a0471ff3e21cb5cd42f7.md) | 126 | `result-track:c500a0471ff3e21cb5cd42f77ab58cc6730cb20c45f20ba8623a3482adaa92da` |
| 20 | `theorem` | [nonempty_commSemiring_iff](../../../../mathematics/Algebra/Free/Variant403069fc6b45873e9881910bab5ccc4b9ec8911bad8b563fe71714d4753bd810.lean/declarations/nonempty-commsemiring-iff--6fea3b81389ff6ab9482e7ba.md) | 130 | `result-track:6fea3b81389ff6ab9482e7ba7e4cb76d4879b70bfe7de35732643e27ceac83e4` |
| 21 | `theorem` | [nonempty_semiring_iff](../../../../mathematics/Algebra/Free/Variant403069fc6b45873e9881910bab5ccc4b9ec8911bad8b563fe71714d4753bd810.lean/declarations/nonempty-semiring-iff--14083681de6d43b58fdd6285.md) | 134 | `result-track:14083681de6d43b58fdd62852b250b519cc692b1a1600acd1cc5c5ede4b3d400` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
