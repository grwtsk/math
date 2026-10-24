# Verification target: GRWTSK.Analysis.FunctionalAnalysis.OfNorm.Variant6a02cfa1e90193220b34b36556b0d35eaab2a84aa813c7ffd9b35bc8ccd1bc68

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a974cffbf0dd8cb482fe878ec5e98a3ad3aee9b5",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/OfNorm/Variant6a02cfa1e90193220b34b36556b0d35eaab2a84aa813c7ffd9b35bc8ccd1bc68.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/OfNorm/Variant6a02cfa1e90193220b34b36556b0d35eaab2a84aa813c7ffd9b35bc8ccd1bc68.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/OfNorm/Variant6a02cfa1e90193220b34b36556b0d35eaab2a84aa813c7ffd9b35bc8ccd1bc68.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a974cffbf0dd8cb482fe878ec5e98a3ad3aee9b5`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/OfNorm/Variant6a02cfa1e90193220b34b36556b0d35eaab2a84aa813c7ffd9b35bc8ccd1bc68.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/OfNorm/Variant6a02cfa1e90193220b34b36556b0d35eaab2a84aa813c7ffd9b35bc8ccd1bc68.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Algebra.Algebra` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Convex` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.LinearMap.Rat` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Module` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [InnerProductSpaceable](../../../../../mathematics/Analysis/FunctionalAnalysis/OfNorm/Variant6a02cfa1e90193220b34b36556b0d35eaab2a84aa813c7ffd9b35bc8ccd1bc68.lean/declarations/innerproductspaceable--3cd7346df7c501625316d7e7.md) | 74 | `declaration-track:3cd7346df7c501625316d7e72cba6d834be2f81ed732e80b18e5a8b604dd8200` |
| 2 | `theorem` | [InnerProductSpace.toInnerProductSpaceable](../../../../../mathematics/Analysis/FunctionalAnalysis/OfNorm/Variant6a02cfa1e90193220b34b36556b0d35eaab2a84aa813c7ffd9b35bc8ccd1bc68.lean/declarations/innerproductspace-toinnerproductspaceable--8fc93f3202b8ba07d6d7d0a5.md) | 80 | `result-track:8fc93f3202b8ba07d6d7d0a5bf06d80518191fbf4842351d289eb32c44144f9a` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/FunctionalAnalysis/OfNorm/Variant6a02cfa1e90193220b34b36556b0d35eaab2a84aa813c7ffd9b35bc8ccd1bc68.lean/declarations/instance--d97200d88a5af622fdedf692.md) | 85 | `declaration-track:d97200d88a5af622fdedf692550fef5289e92711c73cd926706925e0f74dd916` |
| 4 | `def` | [inner_](../../../../../mathematics/Analysis/FunctionalAnalysis/OfNorm/Variant6a02cfa1e90193220b34b36556b0d35eaab2a84aa813c7ffd9b35bc8ccd1bc68.lean/declarations/inner--dc9bee0439a72194c8e8b6b7.md) | 94 | `declaration-track:dc9bee0439a72194c8e8b6b7f5bec906da19bae0909af44cc9a9a4a81b660b7f` |
| 5 | `def` | [innerProp'](../../../../../mathematics/Analysis/FunctionalAnalysis/OfNorm/Variant6a02cfa1e90193220b34b36556b0d35eaab2a84aa813c7ffd9b35bc8ccd1bc68.lean/declarations/innerprop--6ab8ac01c896a1abd90c417c.md) | 105 | `declaration-track:6ab8ac01c896a1abd90c417c363de14c2ab25d6087100169506c22fe5200e2c8` |
| 6 | `theorem` | [_root_.GRWTSK.Analysis.FunctionalAnalysis.InnerProductSpaceable.Variante0235f338abccb3082df869d053d2c87b1d6f41e0d1c114cff1d8b750a46d629.Continuous.inner_](../../../../../mathematics/Analysis/FunctionalAnalysis/OfNorm/Variant6a02cfa1e90193220b34b36556b0d35eaab2a84aa813c7ffd9b35bc8ccd1bc68.lean/declarations/root-grwtsk-analysis-functionalanalysis-innerproductspaceable-variante02--f1cbc3c7f9d62d50da44ad22.md) | 110 | `result-track:f1cbc3c7f9d62d50da44ad22b365d85478a10727f033f4f652bd526238c37255` |
| 7 | `theorem` | [inner_.norm_sq](../../../../../mathematics/Analysis/FunctionalAnalysis/OfNorm/Variant6a02cfa1e90193220b34b36556b0d35eaab2a84aa813c7ffd9b35bc8ccd1bc68.lean/declarations/inner-norm-sq--ec25a88f64afac2c7e79999d.md) | 115 | `result-track:ec25a88f64afac2c7e79999d37544c2bd304f7c722b0b91304c7c40822cefc3a` |
| 8 | `theorem` | [inner_.conj_symm](../../../../../mathematics/Analysis/FunctionalAnalysis/OfNorm/Variant6a02cfa1e90193220b34b36556b0d35eaab2a84aa813c7ffd9b35bc8ccd1bc68.lean/declarations/inner-conj-symm--bdcfc9ab0e6a1d71a61a0622.md) | 123 | `result-track:bdcfc9ab0e6a1d71a61a0622e6f1d38a01e97207c841fa5fb6aff606950dd3b0` |
| 9 | `theorem` | [add_left_aux1](../../../../../mathematics/Analysis/FunctionalAnalysis/OfNorm/Variant6a02cfa1e90193220b34b36556b0d35eaab2a84aa813c7ffd9b35bc8ccd1bc68.lean/declarations/add-left-aux1--9a130b565d04a9fe661ccecc.md) | 141 | `result-track:9a130b565d04a9fe661cceccb44dc78e4cd945f237085eda5311b4857accfa02` |
| 10 | `theorem` | [add_left_aux2](../../../../../mathematics/Analysis/FunctionalAnalysis/OfNorm/Variant6a02cfa1e90193220b34b36556b0d35eaab2a84aa813c7ffd9b35bc8ccd1bc68.lean/declarations/add-left-aux2--5cd71a354f948e565289cd64.md) | 146 | `result-track:5cd71a354f948e565289cd64f701071c11e2f8cb59c2c29c52c8c5667439a88e` |
| 11 | `theorem` | [add_left_aux3](../../../../../mathematics/Analysis/FunctionalAnalysis/OfNorm/Variant6a02cfa1e90193220b34b36556b0d35eaab2a84aa813c7ffd9b35bc8ccd1bc68.lean/declarations/add-left-aux3--3e8ad9b16084899ebd14e3e1.md) | 150 | `result-track:3e8ad9b16084899ebd14e3e1d6669a018b59e8fa4f14a34ff2082a77bb4c72b9` |
| 12 | `theorem` | [add_left_aux4](../../../../../mathematics/Analysis/FunctionalAnalysis/OfNorm/Variant6a02cfa1e90193220b34b36556b0d35eaab2a84aa813c7ffd9b35bc8ccd1bc68.lean/declarations/add-left-aux4--fbe27a7c4a1a755af60973da.md) | 154 | `result-track:fbe27a7c4a1a755af60973dae0ac588e989ee5fcb934f8e1f59f5af30cdd2097` |
| 13 | `theorem` | [add_left_aux5](../../../../../mathematics/Analysis/FunctionalAnalysis/OfNorm/Variant6a02cfa1e90193220b34b36556b0d35eaab2a84aa813c7ffd9b35bc8ccd1bc68.lean/declarations/add-left-aux5--ea868724d2594a9f8f28471d.md) | 160 | `result-track:ea868724d2594a9f8f28471d56a657b814dfa7a389057dd7cc45755e89ac25d4` |
| 14 | `theorem` | [add_left_aux6](../../../../../mathematics/Analysis/FunctionalAnalysis/OfNorm/Variant6a02cfa1e90193220b34b36556b0d35eaab2a84aa813c7ffd9b35bc8ccd1bc68.lean/declarations/add-left-aux6--4c90915a033dcac28c00e85c.md) | 167 | `result-track:4c90915a033dcac28c00e85c74adc76b85a0fcf749694a628b2c979d098d0dbd` |
| 15 | `theorem` | [add_left_aux7](../../../../../mathematics/Analysis/FunctionalAnalysis/OfNorm/Variant6a02cfa1e90193220b34b36556b0d35eaab2a84aa813c7ffd9b35bc8ccd1bc68.lean/declarations/add-left-aux7--d6d2d65fb592b7557a82ac32.md) | 174 | `result-track:d6d2d65fb592b7557a82ac325048737bcd3250a9961c7c0bb9198c2b2d96786d` |
| 16 | `theorem` | [add_left_aux8](../../../../../mathematics/Analysis/FunctionalAnalysis/OfNorm/Variant6a02cfa1e90193220b34b36556b0d35eaab2a84aa813c7ffd9b35bc8ccd1bc68.lean/declarations/add-left-aux8--beeeb420eea35664f9655bc5.md) | 179 | `result-track:beeeb420eea35664f9655bc5efe4f27d7166d4721dd1f19340407c84336abb7e` |
| 17 | `theorem` | [add_left](../../../../../mathematics/Analysis/FunctionalAnalysis/OfNorm/Variant6a02cfa1e90193220b34b36556b0d35eaab2a84aa813c7ffd9b35bc8ccd1bc68.lean/declarations/add-left--803ce6270ff5b99718c73b81.md) | 186 | `result-track:803ce6270ff5b99718c73b81c4653b04757e6a59f6eddf620d130b893a5f5414` |
| 18 | `theorem` | [rat_prop](../../../../../mathematics/Analysis/FunctionalAnalysis/OfNorm/Variant6a02cfa1e90193220b34b36556b0d35eaab2a84aa813c7ffd9b35bc8ccd1bc68.lean/declarations/rat-prop--8bde6404fe3e49c0e37329da.md) | 195 | `result-track:8bde6404fe3e49c0e37329dac2dff32bd72f45636ac4303aa95dc10ecc61f6d8` |
| 19 | `theorem` | [real_prop](../../../../../mathematics/Analysis/FunctionalAnalysis/OfNorm/Variant6a02cfa1e90193220b34b36556b0d35eaab2a84aa813c7ffd9b35bc8ccd1bc68.lean/declarations/real-prop--ca533900e566281004a79797.md) | 202 | `result-track:ca533900e566281004a79797363bcc67d6d548d281247a6763f5346f5c172815` |
| 20 | `theorem` | [I_prop](../../../../../mathematics/Analysis/FunctionalAnalysis/OfNorm/Variant6a02cfa1e90193220b34b36556b0d35eaab2a84aa813c7ffd9b35bc8ccd1bc68.lean/declarations/i-prop--dbb505b9a67c0fa09ff4bb58.md) | 211 | `result-track:dbb505b9a67c0fa09ff4bb5872e64fe854e4ea1f2e72fbe4bc527c2adb20897a` |
| 21 | `theorem` | [innerProp](../../../../../mathematics/Analysis/FunctionalAnalysis/OfNorm/Variant6a02cfa1e90193220b34b36556b0d35eaab2a84aa813c7ffd9b35bc8ccd1bc68.lean/declarations/innerprop--0c0c8ce4c14a8ad39fe0456f.md) | 223 | `result-track:0c0c8ce4c14a8ad39fe0456fe38610e00cdbc898d0f26a252290d4a9058f4b7b` |
| 22 | `def` | [InnerProductSpace.ofNorm](../../../../../mathematics/Analysis/FunctionalAnalysis/OfNorm/Variant6a02cfa1e90193220b34b36556b0d35eaab2a84aa813c7ffd9b35bc8ccd1bc68.lean/declarations/innerproductspace-ofnorm--4c6a413a598c6555065657d9.md) | 235 | `declaration-track:4c6a413a598c6555065657d9acf75be7a72c9bbbeac878d67dff6821e5b80335` |
| 23 | `theorem` | [nonempty_innerProductSpace](../../../../../mathematics/Analysis/FunctionalAnalysis/OfNorm/Variant6a02cfa1e90193220b34b36556b0d35eaab2a84aa813c7ffd9b35bc8ccd1bc68.lean/declarations/nonempty-innerproductspace--3b65a1892f59fd08eab7bca9.md) | 252 | `result-track:3b65a1892f59fd08eab7bca949ff21fd605a56dab1d7eb40cf1361f8a9ae6450` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/FunctionalAnalysis/OfNorm/Variant6a02cfa1e90193220b34b36556b0d35eaab2a84aa813c7ffd9b35bc8ccd1bc68.lean/declarations/instance--f380eb27176de70f4fabd988.md) | 264 | `declaration-track:f380eb27176de70f4fabd988f59b1312e838eaf5754c0c72f5ab7af6af2e9347` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
