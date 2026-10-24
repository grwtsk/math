# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.AffineSpace.Variantae9afdd9aa7bd736558988eaae2e76467064375a738c4024d0bde0aa914dab3b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "00f72b87895ca9d19e7a5c0cc3160f65a572257f",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/AffineSpace/Variantae9afdd9aa7bd736558988eaae2e76467064375a738c4024d0bde0aa914dab3b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AffineSpace/Variantae9afdd9aa7bd736558988eaae2e76467064375a738c4024d0bde0aa914dab3b.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AffineSpace/Variantae9afdd9aa7bd736558988eaae2e76467064375a738c4024d0bde0aa914dab3b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `00f72b87895ca9d19e7a5c0cc3160f65a572257f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/AffineSpace/Variantae9afdd9aa7bd736558988eaae2e76467064375a738c4024d0bde0aa914dab3b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/AffineSpace/Variantae9afdd9aa7bd736558988eaae2e76467064375a738c4024d0bde0aa914dab3b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [convexCombination](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AffineSpace/Variantae9afdd9aa7bd736558988eaae2e76467064375a738c4024d0bde0aa914dab3b.lean/declarations/convexcombination--44d3b08d3c3b7f9d812861af.md) | 47 | `declaration-track:44d3b08d3c3b7f9d812861afb4a2c47ac99a21f8520118ceba93b4ce57388f33` |
| 2 | `theorem` | [convexCombination_single](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AffineSpace/Variantae9afdd9aa7bd736558988eaae2e76467064375a738c4024d0bde0aa914dab3b.lean/declarations/convexcombination-single--388019ad90903970874014fa.md) | 50 | `result-track:388019ad90903970874014fa313ca0fbaf1d7699861d2ca176a1e6006d332e49` |
| 3 | `theorem` | [convexCombination_assoc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AffineSpace/Variantae9afdd9aa7bd736558988eaae2e76467064375a738c4024d0bde0aa914dab3b.lean/declarations/convexcombination-assoc--4c300e78c1e5d25fd24f6f57.md) | 57 | `result-track:4c300e78c1e5d25fd24f6f57a8cecb48a05e337d56e19348f3828ef6447ef3d1` |
| 4 | `def` | [ConvexSpace.ofAddTorsor](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AffineSpace/Variantae9afdd9aa7bd736558988eaae2e76467064375a738c4024d0bde0aa914dab3b.lean/declarations/convexspace-ofaddtorsor--82c32f6bb854dcebfc2593b7.md) | 117 | `declaration-track:82c32f6bb854dcebfc2593b7555ff88fda35d1d27c4fe23d4aa80eaa188e4b51` |
| 5 | `class` | [IsAffineConvexSpace](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AffineSpace/Variantae9afdd9aa7bd736558988eaae2e76467064375a738c4024d0bde0aa914dab3b.lean/declarations/isaffineconvexspace--1f47c1ee14c87927d362c867.md) | 128 | `declaration-track:1f47c1ee14c87927d362c86741162747ec03eca6a25ced03ebb9d69fbe035ba9` |
| 6 | `instance` | [IsAffineConvexSpace.ofAddTorsor](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AffineSpace/Variantae9afdd9aa7bd736558988eaae2e76467064375a738c4024d0bde0aa914dab3b.lean/declarations/isaffineconvexspace-ofaddtorsor--cd910cf7dc6432e8872d9c72.md) | 133 | `declaration-track:cd910cf7dc6432e8872d9c72eca30610207883ebd9acf696ff31259e9105277d` |
| 7 | `instance` | [IsModuleConvexSpace.isAffineConvexSpace](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AffineSpace/Variantae9afdd9aa7bd736558988eaae2e76467064375a738c4024d0bde0aa914dab3b.lean/declarations/ismoduleconvexspace-isaffineconvexspace--934952eb3628450ce41dcd55.md) | 136 | `declaration-track:934952eb3628450ce41dcd55311c5419f20fbff6bc6fa524d229b0276ba1a68d` |
| 8 | `theorem` | [sConvexComb_eq_affineCombination](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AffineSpace/Variantae9afdd9aa7bd736558988eaae2e76467064375a738c4024d0bde0aa914dab3b.lean/declarations/sconvexcomb-eq-affinecombination--43f576c5507193b19bf6c43e.md) | 155 | `result-track:43f576c5507193b19bf6c43e90cdde93b9fc5dbc4b58ba752d20534e69831fba` |
| 9 | `theorem` | [iConvexComb_eq_affineCombination](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AffineSpace/Variantae9afdd9aa7bd736558988eaae2e76467064375a738c4024d0bde0aa914dab3b.lean/declarations/iconvexcomb-eq-affinecombination--8ee855d33e8dcb41f12c1cb3.md) | 162 | `result-track:8ee855d33e8dcb41f12c1cb3d769d6767db926adc8be841287dafb56a22a0214` |
| 10 | `theorem` | [convexCombPair_eq_lineMap](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AffineSpace/Variantae9afdd9aa7bd736558988eaae2e76467064375a738c4024d0bde0aa914dab3b.lean/declarations/convexcombpair-eq-linemap--7d5a874eb278d017c343141a.md) | 175 | `result-track:7d5a874eb278d017c343141a83dbced1f5fb909a7a3445034ec7ba59a8b7995f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
