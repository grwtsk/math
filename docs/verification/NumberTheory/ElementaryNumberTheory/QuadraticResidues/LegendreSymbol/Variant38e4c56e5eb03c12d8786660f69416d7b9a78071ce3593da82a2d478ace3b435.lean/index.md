# Verification target: GRWTSK.NumberTheory.LegendreSymbol.Variant38e4c56e5eb03c12d8786660f69416d7b9a78071ce3593da82a2d478ace3b435

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "db5269773b3c2132e84a6f94d450d01d5ec61dab",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/LegendreSymbol/Variant38e4c56e5eb03c12d8786660f69416d7b9a78071ce3593da82a2d478ace3b435.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/LegendreSymbol/Variant38e4c56e5eb03c12d8786660f69416d7b9a78071ce3593da82a2d478ace3b435.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/LegendreSymbol/Variant38e4c56e5eb03c12d8786660f69416d7b9a78071ce3593da82a2d478ace3b435.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `db5269773b3c2132e84a6f94d450d01d5ec61dab`.

Source path: `GRWTSK/NumberTheory/LegendreSymbol/Variant38e4c56e5eb03c12d8786660f69416d7b9a78071ce3593da82a2d478ace3b435.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/LegendreSymbol/Variant38e4c56e5eb03c12d8786660f69416d7b9a78071ce3593da82a2d478ace3b435.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.LegendreSymbol.JacobiSymbol` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [jacobiSymNat](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/LegendreSymbol/Variant38e4c56e5eb03c12d8786660f69416d7b9a78071ce3593da82a2d478ace3b435.lean/declarations/jacobisymnat--67c5153e421414a73c214525.md) | 55 | `declaration-track:67c5153e421414a73c214525da55bfac6ab9f5c647e0167708a8791ba28e27ff` |
| 2 | `theorem` | [jacobiSymNat.zero_right](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/LegendreSymbol/Variant38e4c56e5eb03c12d8786660f69416d7b9a78071ce3593da82a2d478ace3b435.lean/declarations/jacobisymnat-zero-right--4c304c87f246546fef8d98aa.md) | 68 | `result-track:4c304c87f246546fef8d98aa6161626ca9dd734fa55ad962709e062222acf154` |
| 3 | `theorem` | [jacobiSymNat.one_right](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/LegendreSymbol/Variant38e4c56e5eb03c12d8786660f69416d7b9a78071ce3593da82a2d478ace3b435.lean/declarations/jacobisymnat-one-right--4c87b6e636d692d6f741c09a.md) | 72 | `result-track:4c87b6e636d692d6f741c09af73c9d97e1a1a1b28efd56f2b0c2c8cae9631a93` |
| 4 | `theorem` | [jacobiSymNat.zero_left](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/LegendreSymbol/Variant38e4c56e5eb03c12d8786660f69416d7b9a78071ce3593da82a2d478ace3b435.lean/declarations/jacobisymnat-zero-left--6ec51177415f8b28153546ee.md) | 76 | `result-track:6ec51177415f8b28153546eea429b0ee066f2bb05d83f5e71943ef602f14bd23` |
| 5 | `theorem` | [jacobiSymNat.one_left](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/LegendreSymbol/Variant38e4c56e5eb03c12d8786660f69416d7b9a78071ce3593da82a2d478ace3b435.lean/declarations/jacobisymnat-one-left--e17aaff6e3c269aa9e07c4d0.md) | 87 | `result-track:e17aaff6e3c269aa9e07c4d038d2eaf2c67b904cf28e9208297e2824eb795701` |
| 6 | `theorem` | [LegendreSym.to_jacobiSym](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/LegendreSymbol/Variant38e4c56e5eb03c12d8786660f69416d7b9a78071ce3593da82a2d478ace3b435.lean/declarations/legendresym-to-jacobisym--8e4f5bcda7c890e8d101d793.md) | 93 | `result-track:8e4f5bcda7c890e8d101d7935ccc91489c4f072ea1b9c6b539f2a01caaef43ef` |
| 7 | `theorem` | [JacobiSym.mod_left](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/LegendreSymbol/Variant38e4c56e5eb03c12d8786660f69416d7b9a78071ce3593da82a2d478ace3b435.lean/declarations/jacobisym-mod-left--71e5555c4cabe865748a30fc.md) | 99 | `result-track:71e5555c4cabe865748a30fc759c9270d8641f4739728682cae66342f6fef4d0` |
| 8 | `theorem` | [jacobiSymNat.mod_left](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/LegendreSymbol/Variant38e4c56e5eb03c12d8786660f69416d7b9a78071ce3593da82a2d478ace3b435.lean/declarations/jacobisymnat-mod-left--a0457f5f57dbf22c7fb00f6a.md) | 104 | `result-track:a0457f5f57dbf22c7fb00f6a0114897e71f3c0262e7c05a0ccb798db5a1ec852` |
| 9 | `theorem` | [jacobiSymNat.even_even](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/LegendreSymbol/Variant38e4c56e5eb03c12d8786660f69416d7b9a78071ce3593da82a2d478ace3b435.lean/declarations/jacobisymnat-even-even--d5b739282cd7877d11565379.md) | 110 | `result-track:d5b739282cd7877d11565379f365f03936a8a5260dc8d2bb48884e868dd898f5` |
| 10 | `theorem` | [jacobiSymNat.odd_even](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/LegendreSymbol/Variant38e4c56e5eb03c12d8786660f69416d7b9a78071ce3593da82a2d478ace3b435.lean/declarations/jacobisymnat-odd-even--07336a9e19ad59db34d192c3.md) | 122 | `result-track:07336a9e19ad59db34d192c3e696db3cdf869f15ad66e5c3dcb7c5e4de788976` |
| 11 | `theorem` | [jacobiSymNat.double_even](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/LegendreSymbol/Variant38e4c56e5eb03c12d8786660f69416d7b9a78071ce3593da82a2d478ace3b435.lean/declarations/jacobisymnat-double-even--fa6cecf8035fc179f380825f.md) | 136 | `result-track:fa6cecf8035fc179f380825f60d274b9a8f10673daf235ecf1e067fc61957425` |
| 12 | `theorem` | [jacobiSymNat.even_odd₁](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/LegendreSymbol/Variant38e4c56e5eb03c12d8786660f69416d7b9a78071ce3593da82a2d478ace3b435.lean/declarations/jacobisymnat-even-odd--5dad7f62c575fc5911363d96.md) | 147 | `result-track:5dad7f62c575fc5911363d96eec267453c66f532c1af59c336dcdcfc85fde629` |
| 13 | `theorem` | [jacobiSymNat.even_odd₇](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/LegendreSymbol/Variant38e4c56e5eb03c12d8786660f69416d7b9a78071ce3593da82a2d478ace3b435.lean/declarations/jacobisymnat-even-odd--287d4365d73637d0c46c5cb8.md) | 158 | `result-track:287d4365d73637d0c46c5cb8e7a98f603bccc006b2a1a6961b690b7e3ebea296` |
| 14 | `theorem` | [jacobiSymNat.even_odd₃](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/LegendreSymbol/Variant38e4c56e5eb03c12d8786660f69416d7b9a78071ce3593da82a2d478ace3b435.lean/declarations/jacobisymnat-even-odd--89a63593eb9c1043e5cc8d18.md) | 170 | `result-track:89a63593eb9c1043e5cc8d1835061c78a74f30a6c90e0ce6c9e5bea4b067c75b` |
| 15 | `theorem` | [jacobiSymNat.even_odd₅](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/LegendreSymbol/Variant38e4c56e5eb03c12d8786660f69416d7b9a78071ce3593da82a2d478ace3b435.lean/declarations/jacobisymnat-even-odd--cc6371898e93c0051bc0c5f3.md) | 182 | `result-track:cc6371898e93c0051bc0c5f3192facbf6eeb854f2fc2b69f5de87a5a21b3838c` |
| 16 | `theorem` | [jacobiSymNat.qr₁](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/LegendreSymbol/Variant38e4c56e5eb03c12d8786660f69416d7b9a78071ce3593da82a2d478ace3b435.lean/declarations/jacobisymnat-qr--2a2cfddec694baf36ee98d11.md) | 195 | `result-track:2a2cfddec694baf36ee98d1146a870a5103ed5cb3e1a116e29789b18c22c2a24` |
| 17 | `theorem` | [jacobiSymNat.qr₁_mod](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/LegendreSymbol/Variant38e4c56e5eb03c12d8786660f69416d7b9a78071ce3593da82a2d478ace3b435.lean/declarations/jacobisymnat-qr-mod--7a15f25d2a2245e3186de9d0.md) | 200 | `result-track:7a15f25d2a2245e3186de9d0ad2fe7d1bb2823eca2d479a765faf6437bf77fdc` |
| 18 | `theorem` | [jacobiSymNat.qr₁'](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/LegendreSymbol/Variant38e4c56e5eb03c12d8786660f69416d7b9a78071ce3593da82a2d478ace3b435.lean/declarations/jacobisymnat-qr--7969a18c6733cea2e9e7af9a.md) | 205 | `result-track:7969a18c6733cea2e9e7af9aad33c3d616e05e9616dbd6475db8de9713febc4b` |
| 19 | `theorem` | [jacobiSymNat.qr₁'_mod](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/LegendreSymbol/Variant38e4c56e5eb03c12d8786660f69416d7b9a78071ce3593da82a2d478ace3b435.lean/declarations/jacobisymnat-qr-mod--1f6e0be9415295a83d9b74d7.md) | 210 | `result-track:1f6e0be9415295a83d9b74d7490019946a3287fde49faafdda0c54660afc1d94` |
| 20 | `theorem` | [jacobiSymNat.qr₃](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/LegendreSymbol/Variant38e4c56e5eb03c12d8786660f69416d7b9a78071ce3593da82a2d478ace3b435.lean/declarations/jacobisymnat-qr--7ca8676417c29c90a65c7cf9.md) | 215 | `result-track:7ca8676417c29c90a65c7cf978524acca706b4645123af0cb0be37bd91175d07` |
| 21 | `theorem` | [jacobiSymNat.qr₃_mod](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/LegendreSymbol/Variant38e4c56e5eb03c12d8786660f69416d7b9a78071ce3593da82a2d478ace3b435.lean/declarations/jacobisymnat-qr-mod--1e7d9132af35b8e20d9f6ddc.md) | 220 | `result-track:1e7d9132af35b8e20d9f6ddca3b81a5e338c4951acf1a8b55521865b900c7b3d` |
| 22 | `theorem` | [isInt_jacobiSym](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/LegendreSymbol/Variant38e4c56e5eb03c12d8786660f69416d7b9a78071ce3593da82a2d478ace3b435.lean/declarations/isint-jacobisym--ed5d1081c94a6ccf5ee2573c.md) | 225 | `result-track:ed5d1081c94a6ccf5ee2573cde63879bd6a5f799de41d6f16236ddd49ae60054` |
| 23 | `theorem` | [isInt_jacobiSymNat](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/LegendreSymbol/Variant38e4c56e5eb03c12d8786660f69416d7b9a78071ce3593da82a2d478ace3b435.lean/declarations/isint-jacobisymnat--8fd31852b3fbb805d5914127.md) | 229 | `result-track:8fd31852b3fbb805d59141274ce44d3d2d7aa52b36c8dd2c50c35af4d79da81f` |
| 24 | `def` | [proveJacobiSymOdd](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/LegendreSymbol/Variant38e4c56e5eb03c12d8786660f69416d7b9a78071ce3593da82a2d478ace3b435.lean/declarations/provejacobisymodd--7097f740572954397c9cf810.md) | 254 | `declaration-track:7097f740572954397c9cf810c97aeaa479e1ed300ec6fe6561e26d1a86b1fe37` |
| 25 | `def` | [proveJacobiSymNat](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/LegendreSymbol/Variant38e4c56e5eb03c12d8786660f69416d7b9a78071ce3593da82a2d478ace3b435.lean/declarations/provejacobisymnat--2ed73dd5c668576a9022be9f.md) | 326 | `declaration-track:2ed73dd5c668576a9022be9f162f77f14a8ff92f9f0024a960b21203eadaab1e` |
| 26 | `def` | [proveJacobiSym](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/LegendreSymbol/Variant38e4c56e5eb03c12d8786660f69416d7b9a78071ce3593da82a2d478ace3b435.lean/declarations/provejacobisym--a15a82889ea6b3c73ff857c0.md) | 372 | `declaration-track:a15a82889ea6b3c73ff857c09ab1916a1c8ce23a216068a746b46bd7a9ce499c` |
| 27 | `def` | [evalJacobiSym](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/LegendreSymbol/Variant38e4c56e5eb03c12d8786660f69416d7b9a78071ce3593da82a2d478ace3b435.lean/declarations/evaljacobisym--c2d825c09b0b9f877169ba13.md) | 411 | `declaration-track:c2d825c09b0b9f877169ba138faffe984aa58f94333d6da40fbe5a89d5c24473` |
| 28 | `def` | [evalJacobiSymNat](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/LegendreSymbol/Variant38e4c56e5eb03c12d8786660f69416d7b9a78071ce3593da82a2d478ace3b435.lean/declarations/evaljacobisymnat--8af795323c001d5e1a1aca34.md) | 423 | `declaration-track:8af795323c001d5e1a1aca34d2ad5d6aecf86f5d700e630cc3e58c12d7d28ebe` |
| 29 | `def` | [evalLegendreSym](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/LegendreSymbol/Variant38e4c56e5eb03c12d8786660f69416d7b9a78071ce3593da82a2d478ace3b435.lean/declarations/evallegendresym--4f360eb6c31688511815d2ff.md) | 434 | `declaration-track:4f360eb6c31688511815d2ff19a293c623b697c645cbdcbdda8b87d152d765bf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
