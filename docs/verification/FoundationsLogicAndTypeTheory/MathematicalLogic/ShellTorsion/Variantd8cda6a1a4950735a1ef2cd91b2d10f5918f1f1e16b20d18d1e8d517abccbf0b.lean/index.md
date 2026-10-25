# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.ShellTorsion.Variantd8cda6a1a4950735a1ef2cd91b2d10f5918f1f1e16b20d18d1e8d517abccbf0b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c37aaeec8bc9d21f3a282ecc53f4694e4af8bb77",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ShellTorsion/Variantd8cda6a1a4950735a1ef2cd91b2d10f5918f1f1e16b20d18d1e8d517abccbf0b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ShellTorsion/Variantd8cda6a1a4950735a1ef2cd91b2d10f5918f1f1e16b20d18d1e8d517abccbf0b.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ShellTorsion/Variantd8cda6a1a4950735a1ef2cd91b2d10f5918f1f1e16b20d18d1e8d517abccbf0b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c37aaeec8bc9d21f3a282ecc53f4694e4af8bb77`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ShellTorsion/Variantd8cda6a1a4950735a1ef2cd91b2d10f5918f1f1e16b20d18d1e8d517abccbf0b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/ShellTorsion/Variantd8cda6a1a4950735a1ef2cd91b2d10f5918f1f1e16b20d18d1e8d517abccbf0b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Expansion.ShellFiber` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ShellTorsion](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ShellTorsion/Variantd8cda6a1a4950735a1ef2cd91b2d10f5918f1f1e16b20d18d1e8d517abccbf0b.lean/declarations/shelltorsion--8c9018700960ee894ac0f3a4.md) | 21 | `declaration-track:8c9018700960ee894ac0f3a4515429f47f0506ad64c0a4b84b59cd58faa47465` |
| 2 | `def` | [id](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ShellTorsion/Variantd8cda6a1a4950735a1ef2cd91b2d10f5918f1f1e16b20d18d1e8d517abccbf0b.lean/declarations/id--85b9279ea03eacd655b8cdd5.md) | 27 | `declaration-track:85b9279ea03eacd655b8cdd5a3b7b98595df368ca0d31a8b053fb9ba840c2506` |
| 3 | `def` | [comp](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ShellTorsion/Variantd8cda6a1a4950735a1ef2cd91b2d10f5918f1f1e16b20d18d1e8d517abccbf0b.lean/declarations/comp--2cae33d94260f551363098aa.md) | 30 | `declaration-track:2cae33d94260f551363098aab9596c53f970d40ac84f170e72f5604c2ab5858d` |
| 4 | `def` | [act](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ShellTorsion/Variantd8cda6a1a4950735a1ef2cd91b2d10f5918f1f1e16b20d18d1e8d517abccbf0b.lean/declarations/act--6c72ee204669dc7fc7b42608.md) | 33 | `declaration-track:6c72ee204669dc7fc7b42608b3ba65aeb8272bddf4783d0a5907ccd694408398` |
| 5 | `theorem` | [shellTorsion_id_act](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ShellTorsion/Variantd8cda6a1a4950735a1ef2cd91b2d10f5918f1f1e16b20d18d1e8d517abccbf0b.lean/declarations/shelltorsion-id-act--a21abfc2292409f99bd0b6f1.md) | 36 | `result-track:a21abfc2292409f99bd0b6f102145c4e73b6ddee031f0e43a0f8d8b56ce92793` |
| 6 | `theorem` | [shellTorsion_comp_act](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ShellTorsion/Variantd8cda6a1a4950735a1ef2cd91b2d10f5918f1f1e16b20d18d1e8d517abccbf0b.lean/declarations/shelltorsion-comp-act--0abebacb2320b99ffef27810.md) | 41 | `result-track:0abebacb2320b99ffef27810efbcc3caa8547775b3bb16df7c831e614a4cfb85` |
| 7 | `theorem` | [shellTorsion_preserves_shell_count_ones](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ShellTorsion/Variantd8cda6a1a4950735a1ef2cd91b2d10f5918f1f1e16b20d18d1e8d517abccbf0b.lean/declarations/shelltorsion-preserves-shell-count-ones--ea3133e73a88a1f8bcaaff75.md) | 48 | `result-track:ea3133e73a88a1f8bcaaff75c900e8affc6eb9624b7e21eed2d8cd5b299ac836` |
| 8 | `def` | [cornerTopLeft](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ShellTorsion/Variantd8cda6a1a4950735a1ef2cd91b2d10f5918f1f1e16b20d18d1e8d517abccbf0b.lean/declarations/cornertopleft--93e2e6757b17fcf02b2568e4.md) | 75 | `declaration-track:93e2e6757b17fcf02b2568e4f251f3100e8e522f395ef106a52a5958e025f3fe` |
| 9 | `def` | [cornerTopRight](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ShellTorsion/Variantd8cda6a1a4950735a1ef2cd91b2d10f5918f1f1e16b20d18d1e8d517abccbf0b.lean/declarations/cornertopright--c27de27065b005f8ded51003.md) | 81 | `declaration-track:c27de27065b005f8ded510035a90ae8be92d79b27b8f54d49fd314fb07a52c34` |
| 10 | `def` | [cornerBottomRight](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ShellTorsion/Variantd8cda6a1a4950735a1ef2cd91b2d10f5918f1f1e16b20d18d1e8d517abccbf0b.lean/declarations/cornerbottomright--56be0ad6625783955afc7c59.md) | 87 | `declaration-track:56be0ad6625783955afc7c592fecb5510593c21b30638f9d360cef63291deeb4` |
| 11 | `def` | [cornerBottomLeft](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ShellTorsion/Variantd8cda6a1a4950735a1ef2cd91b2d10f5918f1f1e16b20d18d1e8d517abccbf0b.lean/declarations/cornerbottomleft--bb4afda838869fe35ec30630.md) | 94 | `declaration-track:bb4afda838869fe35ec3063092384a926de51ef835c09dd1f434e744a1f3d3e6` |
| 12 | `def` | [cornerCycleTorsion](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ShellTorsion/Variantd8cda6a1a4950735a1ef2cd91b2d10f5918f1f1e16b20d18d1e8d517abccbf0b.lean/declarations/cornercycletorsion--746ab7b65bf2ddbda1421353.md) | 100 | `declaration-track:746ab7b65bf2ddbda1421353028c80e16603be5d6fe8edc326d3f3f878fe312f` |
| 13 | `theorem` | [cornerBottomLeft_ne_topLeft](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ShellTorsion/Variantd8cda6a1a4950735a1ef2cd91b2d10f5918f1f1e16b20d18d1e8d517abccbf0b.lean/declarations/cornerbottomleft-ne-topleft--c93804a74d2a3f9f0e6d8d89.md) | 106 | `result-track:c93804a74d2a3f9f0e6d8d895e3ea69dbd816c1487da6c9742b45b2444c9ddf8` |
| 14 | `theorem` | [cornerBottomLeft_ne_topRight](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ShellTorsion/Variantd8cda6a1a4950735a1ef2cd91b2d10f5918f1f1e16b20d18d1e8d517abccbf0b.lean/declarations/cornerbottomleft-ne-topright--4b0fb570c04fbd15ca9aa3fa.md) | 113 | `result-track:4b0fb570c04fbd15ca9aa3fa2417e637f6e2e3ef3a4ee2b965aadf0bfc677e2d` |
| 15 | `theorem` | [cornerBottomLeft_ne_bottomRight](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ShellTorsion/Variantd8cda6a1a4950735a1ef2cd91b2d10f5918f1f1e16b20d18d1e8d517abccbf0b.lean/declarations/cornerbottomleft-ne-bottomright--eea79175ac08f8f82d663a8c.md) | 120 | `result-track:eea79175ac08f8f82d663a8c891dad8da73e6d246d84b107be3670ffde7f69de` |
| 16 | `theorem` | [cornerBottomRight_ne_topLeft](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ShellTorsion/Variantd8cda6a1a4950735a1ef2cd91b2d10f5918f1f1e16b20d18d1e8d517abccbf0b.lean/declarations/cornerbottomright-ne-topleft--78a2fac186904909f2036520.md) | 127 | `result-track:78a2fac186904909f20365209e51753712d45c77a7d7cfd97f6a486f6817bd61` |
| 17 | `theorem` | [cornerBottomRight_ne_topRight](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ShellTorsion/Variantd8cda6a1a4950735a1ef2cd91b2d10f5918f1f1e16b20d18d1e8d517abccbf0b.lean/declarations/cornerbottomright-ne-topright--c1ade25016e715dcb9652c00.md) | 134 | `result-track:c1ade25016e715dcb9652c00c54b608e96177fca278603142b77b1a409301401` |
| 18 | `theorem` | [cornerTopRight_ne_bottomRight](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ShellTorsion/Variantd8cda6a1a4950735a1ef2cd91b2d10f5918f1f1e16b20d18d1e8d517abccbf0b.lean/declarations/cornertopright-ne-bottomright--f1aa233c8fdc856cf37efd4e.md) | 141 | `result-track:f1aa233c8fdc856cf37efd4ee220c93ceeb080b31221164cc64ac30109666412` |
| 19 | `theorem` | [cornerTopRight_ne_bottomLeft](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ShellTorsion/Variantd8cda6a1a4950735a1ef2cd91b2d10f5918f1f1e16b20d18d1e8d517abccbf0b.lean/declarations/cornertopright-ne-bottomleft--d72e92c33661ef567bba2551.md) | 145 | `result-track:d72e92c33661ef567bba2551bfc244f86811fe14c579ac4289158937b2a99c50` |
| 20 | `theorem` | [cornerTopLeft_ne_topRight](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ShellTorsion/Variantd8cda6a1a4950735a1ef2cd91b2d10f5918f1f1e16b20d18d1e8d517abccbf0b.lean/declarations/cornertopleft-ne-topright--41893e838296f381ceefb3b1.md) | 152 | `result-track:41893e838296f381ceefb3b1363a335bf8b21c22fbac06d7a2e80f43e6c54bd3` |
| 21 | `theorem` | [cornerTopLeft_ne_bottomRight](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ShellTorsion/Variantd8cda6a1a4950735a1ef2cd91b2d10f5918f1f1e16b20d18d1e8d517abccbf0b.lean/declarations/cornertopleft-ne-bottomright--1e8750adfc3babd366f69f95.md) | 159 | `result-track:1e8750adfc3babd366f69f95735f48e4ba20f79c1904e68cc75090c8e0abb192` |
| 22 | `theorem` | [cornerTopLeft_ne_bottomLeft](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ShellTorsion/Variantd8cda6a1a4950735a1ef2cd91b2d10f5918f1f1e16b20d18d1e8d517abccbf0b.lean/declarations/cornertopleft-ne-bottomleft--16691c79065374ddcb29144f.md) | 163 | `result-track:16691c79065374ddcb29144f288ed01c0043e492395f5e146ffd72e845865963` |
| 23 | `theorem` | [cornerCycle_topLeft](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ShellTorsion/Variantd8cda6a1a4950735a1ef2cd91b2d10f5918f1f1e16b20d18d1e8d517abccbf0b.lean/declarations/cornercycle-topleft--85351f843bef836dadf8738e.md) | 168 | `result-track:85351f843bef836dadf8738e028d3da46921801d021272b103a505fbf2d92473` |
| 24 | `theorem` | [cornerCycle_bottomLeft](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ShellTorsion/Variantd8cda6a1a4950735a1ef2cd91b2d10f5918f1f1e16b20d18d1e8d517abccbf0b.lean/declarations/cornercycle-bottomleft--cf11c2c1ab2906c1b4a36bf5.md) | 177 | `result-track:cf11c2c1ab2906c1b4a36bf540bc23d0cbfa3e2de2393e4adb693156104a3c37` |
| 25 | `theorem` | [cornerCycle_bottomRight](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ShellTorsion/Variantd8cda6a1a4950735a1ef2cd91b2d10f5918f1f1e16b20d18d1e8d517abccbf0b.lean/declarations/cornercycle-bottomright--8cc75211d49f1b90ae5101bb.md) | 188 | `result-track:8cc75211d49f1b90ae5101bb4716bb45291061f3cabe9e74250bd845b66d124b` |
| 26 | `theorem` | [cornerCycle_topRight](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ShellTorsion/Variantd8cda6a1a4950735a1ef2cd91b2d10f5918f1f1e16b20d18d1e8d517abccbf0b.lean/declarations/cornercycle-topright--a31f4f3f4acb0890ffd938a0.md) | 199 | `result-track:a31f4f3f4acb0890ffd938a0e569d740c39851b9e8a13c3638b1c85717c45d4f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
