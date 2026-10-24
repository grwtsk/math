# Verification target: GRWTSK.Algebra.LocalCohomology.Variant09a9147509dc7683489ebb15826f33eff5196dc05df4234654b9be386b47b4fb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "68d6251810ed1ed5ea5f83e232d40f160219dd73",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LocalCohomology/Variant09a9147509dc7683489ebb15826f33eff5196dc05df4234654b9be386b47b4fb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/LocalCohomology/Variant09a9147509dc7683489ebb15826f33eff5196dc05df4234654b9be386b47b4fb.lean/index.md) · [Full source](../../../../mathematics/Algebra/LocalCohomology/Variant09a9147509dc7683489ebb15826f33eff5196dc05df4234654b9be386b47b4fb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `68d6251810ed1ed5ea5f83e232d40f160219dd73`.

Source path: `GRWTSK/Algebra/LocalCohomology/Variant09a9147509dc7683489ebb15826f33eff5196dc05df4234654b9be386b47b4fb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LocalCohomology/Variant09a9147509dc7683489ebb15826f33eff5196dc05df4234654b9be386b47b4fb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Ideal.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.Colimits` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.Projective` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Abelian.Ext` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Finiteness` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Final` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Noetherian` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ringModIdeals](../../../../mathematics/Algebra/LocalCohomology/Variant09a9147509dc7683489ebb15826f33eff5196dc05df4234654b9be386b47b4fb.lean/declarations/ringmodideals--11a7be6f7bee904e9834d0b9.md) | 70 | `declaration-track:11a7be6f7bee904e9834d0b9ad646da8fc528cab1d9afe145ba04a960060d3c7` |
| 2 | `instance` | [moduleCat_enoughProjectives'](../../../../mathematics/Algebra/LocalCohomology/Variant09a9147509dc7683489ebb15826f33eff5196dc05df4234654b9be386b47b4fb.lean/declarations/modulecat-enoughprojectives--9611e9f5e89939ffaf8e2ba1.md) | 78 | `declaration-track:9611e9f5e89939ffaf8e2ba184c2d4c0391654e767dfa43e01168f8f34169b42` |
| 3 | `def` | [diagram](../../../../mathematics/Algebra/LocalCohomology/Variant09a9147509dc7683489ebb15826f33eff5196dc05df4234654b9be386b47b4fb.lean/declarations/diagram--5c545bbf9f7c49b68e5dfad9.md) | 85 | `declaration-track:5c545bbf9f7c49b68e5dfad9e0b96ef1ebf27ce8e07c479db81157a86890773c` |
| 4 | `def` | [ofDiagram](../../../../mathematics/Algebra/LocalCohomology/Variant09a9147509dc7683489ebb15826f33eff5196dc05df4234654b9be386b47b4fb.lean/declarations/ofdiagram--c03cce9959796b5703d21aea.md) | 107 | `declaration-track:c03cce9959796b5703d21aea99cc1dbf58981d3e853a5498af5af005dfcde3d5` |
| 5 | `def` | [diagramComp](../../../../mathematics/Algebra/LocalCohomology/Variant09a9147509dc7683489ebb15826f33eff5196dc05df4234654b9be386b47b4fb.lean/declarations/diagramcomp--667a43e53ba3ac30c1ecdf16.md) | 121 | `declaration-track:667a43e53ba3ac30c1ecdf162d697408931c671a28ea13a8af10cc9495ac846f` |
| 6 | `def` | [isoOfFinal](../../../../mathematics/Algebra/LocalCohomology/Variant09a9147509dc7683489ebb15826f33eff5196dc05df4234654b9be386b47b4fb.lean/declarations/isooffinal--7697aea5e124bfcf9e651bd2.md) | 126 | `declaration-track:7697aea5e124bfcf9e651bd2389b5743f1a316a20d3139b853220a3d6669548f` |
| 7 | `def` | [idealPowersDiagram](../../../../mathematics/Algebra/LocalCohomology/Variant09a9147509dc7683489ebb15826f33eff5196dc05df4234654b9be386b47b4fb.lean/declarations/idealpowersdiagram--53810727ce3cdbe6b21241a3.md) | 138 | `declaration-track:53810727ce3cdbe6b21241a331a9432fe7f3be60637fcd7c1b8762c99598de82` |
| 8 | `def` | [SelfLERadical](../../../../mathematics/Algebra/LocalCohomology/Variant09a9147509dc7683489ebb15826f33eff5196dc05df4234654b9be386b47b4fb.lean/declarations/selfleradical--8c8c337c27aaba46c1f925b0.md) | 144 | `declaration-track:8c8c337c27aaba46c1f925b0a66420fc0854681f922340c2908fd603d1b344e4` |
| 9 | `instance` | [(anonymous)](../../../../mathematics/Algebra/LocalCohomology/Variant09a9147509dc7683489ebb15826f33eff5196dc05df4234654b9be386b47b4fb.lean/declarations/instance--1714f5130477cd52bc989c2d.md) | 150 | `declaration-track:1714f5130477cd52bc989c2d84a6e8155a5b7a820e4b5e7226a515070fe065d5` |
| 10 | `instance` | [SelfLERadical.inhabited](../../../../mathematics/Algebra/LocalCohomology/Variant09a9147509dc7683489ebb15826f33eff5196dc05df4234654b9be386b47b4fb.lean/declarations/selfleradical-inhabited--6950dc87c7af920259d01cad.md) | 153 | `declaration-track:6950dc87c7af920259d01cad72052d5d9b870e22fcce9fc4712d540bda28a782` |
| 11 | `def` | [selfLERadicalDiagram](../../../../mathematics/Algebra/LocalCohomology/Variant09a9147509dc7683489ebb15826f33eff5196dc05df4234654b9be386b47b4fb.lean/declarations/selfleradicaldiagram--d89af9930fe2461fce6ee936.md) | 159 | `declaration-track:d89af9930fe2461fce6ee936f66af4ee94671347a93c2b024d084ec3714cf716` |
| 12 | `def` | [localCohomology](../../../../mathematics/Algebra/LocalCohomology/Variant09a9147509dc7683489ebb15826f33eff5196dc05df4234654b9be386b47b4fb.lean/declarations/localcohomology--43b88a481e0de45c0885b235.md) | 181 | `declaration-track:43b88a481e0de45c0885b235b7ed9eadeac3ab1428aebcda41500401deabdadd` |
| 13 | `def` | [localCohomology.ofSelfLERadical](../../../../mathematics/Algebra/LocalCohomology/Variant09a9147509dc7683489ebb15826f33eff5196dc05df4234654b9be386b47b4fb.lean/declarations/localcohomology-ofselfleradical--dbb57021bcfc90aa17b0c7b5.md) | 187 | `declaration-track:dbb57021bcfc90aa17b0c7b5f041ec7da34e5b6df5d3677431cfd29a432dc0fd` |
| 14 | `def` | [idealPowersToSelfLERadical](../../../../mathematics/Algebra/LocalCohomology/Variant09a9147509dc7683489ebb15826f33eff5196dc05df4234654b9be386b47b4fb.lean/declarations/idealpowerstoselfleradical--895a26399495732b3f036aed.md) | 209 | `declaration-track:895a26399495732b3f036aedbb796e4b1454a2d4063f0d7b8de282fe2dc793df` |
| 15 | `theorem` | [Ideal.exists_pow_le_of_le_radical_of_fG](../../../../mathematics/Algebra/LocalCohomology/Variant09a9147509dc7683489ebb15826f33eff5196dc05df4234654b9be386b47b4fb.lean/declarations/ideal-exists-pow-le-of-le-radical-of-fg--6b0617169425b6ce49b33659.md) | 224 | `result-track:6b0617169425b6ce49b336595634f891c2b3547f6c0aab59948fff8a854d86cb` |
| 16 | `instance` | [ideal_powers_initial](../../../../mathematics/Algebra/LocalCohomology/Variant09a9147509dc7683489ebb15826f33eff5196dc05df4234654b9be386b47b4fb.lean/declarations/ideal-powers-initial--4759771231299f6a887798e8.md) | 235 | `declaration-track:4759771231299f6a887798e85b4305b55389c301ddac0514f2a04bd5651d35be` |
| 17 | `instance` | [(anonymous)](../../../../mathematics/Algebra/LocalCohomology/Variant09a9147509dc7683489ebb15826f33eff5196dc05df4234654b9be386b47b4fb.lean/declarations/instance--3d6cf41c7d298953f15dd85a.md) | 252 | `declaration-track:3d6cf41c7d298953f15dd85ab1f1182cb685402930f5527d65d45542aa4a5fa2` |
| 18 | `example` | [(anonymous)](../../../../mathematics/Algebra/LocalCohomology/Variant09a9147509dc7683489ebb15826f33eff5196dc05df4234654b9be386b47b4fb.lean/declarations/example--22bc110376b40d528699a6c6.md) | 255 | `declaration-track:22bc110376b40d528699a6c68c21e570373db764d7791e174ab246dbce43aa37` |
| 19 | `def` | [isoSelfLERadical](../../../../mathematics/Algebra/LocalCohomology/Variant09a9147509dc7683489ebb15826f33eff5196dc05df4234654b9be386b47b4fb.lean/declarations/isoselfleradical--c689644f3b65369f2be4ab66.md) | 258 | `declaration-track:c689644f3b65369f2be4ab6689450aa1e367d122754191db93c42b03bb0ecab1` |
| 20 | `def` | [SelfLERadical.cast](../../../../mathematics/Algebra/LocalCohomology/Variant09a9147509dc7683489ebb15826f33eff5196dc05df4234654b9be386b47b4fb.lean/declarations/selfleradical-cast--248a256d351159c329e48603.md) | 267 | `declaration-track:248a256d351159c329e48603a99ea66fdb8959cf01405cf1fcd9e0603f58386b` |
| 21 | `instance` | [SelfLERadical.castIsEquivalence](../../../../mathematics/Algebra/LocalCohomology/Variant09a9147509dc7683489ebb15826f33eff5196dc05df4234654b9be386b47b4fb.lean/declarations/selfleradical-castisequivalence--7ce0c7e4aee7c84cd8b2cab5.md) | 274 | `declaration-track:7ce0c7e4aee7c84cd8b2cab52252af62657c4b393be25d04babcc9b6ddd3cc3e` |
| 22 | `def` | [SelfLERadical.isoOfSameRadical](../../../../mathematics/Algebra/LocalCohomology/Variant09a9147509dc7683489ebb15826f33eff5196dc05df4234654b9be386b47b4fb.lean/declarations/selfleradical-isoofsameradical--23356057e1bf77be74fceefe.md) | 283 | `declaration-track:23356057e1bf77be74fceefec2dddff636ed5ccf3a326cd6810001bbb6dbcec4` |
| 23 | `def` | [isoOfSameRadical](../../../../mathematics/Algebra/LocalCohomology/Variant09a9147509dc7683489ebb15826f33eff5196dc05df4234654b9be386b47b4fb.lean/declarations/isoofsameradical--60ce1ed455e189f41d591e98.md) | 289 | `declaration-track:60ce1ed455e189f41d591e985c007d5983b14e2fbfca02564b9ed5766b0027db` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
