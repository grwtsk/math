# Verification target: GRWTSK.Algebra.AlgebraicClosure.Varianta64bc74911271986c1a0009618b7bd17c0c399e980221e437f1a810bde0b8863

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "794f32f75e23ef4526a2b5da7239e57a88283659",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/AlgebraicClosure/Varianta64bc74911271986c1a0009618b7bd17c0c399e980221e437f1a810bde0b8863.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/AlgebraicClosure/Varianta64bc74911271986c1a0009618b7bd17c0c399e980221e437f1a810bde0b8863.lean/index.md) · [Full source](../../../../mathematics/Algebra/AlgebraicClosure/Varianta64bc74911271986c1a0009618b7bd17c0c399e980221e437f1a810bde0b8863.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `794f32f75e23ef4526a2b5da7239e57a88283659`.

Source path: `GRWTSK/Algebra/AlgebraicClosure/Varianta64bc74911271986c1a0009618b7bd17c0c399e980221e437f1a810bde0b8863.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/AlgebraicClosure/Varianta64bc74911271986c1a0009618b7bd17c0c399e980221e437f1a810bde0b8863.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.FieldTheory.Normal.Closure` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.IsAlgClosed.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.IntermediateField.Algebraic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [algebraicClosure](../../../../mathematics/Algebra/AlgebraicClosure/Varianta64bc74911271986c1a0009618b7bd17c0c399e980221e437f1a810bde0b8863.lean/declarations/algebraicclosure--aeaf9b4bdb78a5c10f6a465f.md) | 44 | `declaration-track:aeaf9b4bdb78a5c10f6a465ff3b28242b62c3f814e6b7b79a959197e61d9f494` |
| 2 | `theorem` | [algebraicClosure_toSubalgebra](../../../../mathematics/Algebra/AlgebraicClosure/Varianta64bc74911271986c1a0009618b7bd17c0c399e980221e437f1a810bde0b8863.lean/declarations/algebraicclosure-tosubalgebra--2587450063ee9f16bcff4ea6.md) | 49 | `result-track:2587450063ee9f16bcff4ea681b7852ce892c6cbec33b3c44f3430eb3bcb243f` |
| 3 | `theorem` | [mem_algebraicClosure_iff'](../../../../mathematics/Algebra/AlgebraicClosure/Varianta64bc74911271986c1a0009618b7bd17c0c399e980221e437f1a810bde0b8863.lean/declarations/mem-algebraicclosure-iff--a64442ddaa4f630d05c7eb40.md) | 54 | `result-track:a64442ddaa4f630d05c7eb40aac9682aeee325bf9abfef1a59670c3b2a1831ed` |
| 4 | `theorem` | [mem_algebraicClosure_iff](../../../../mathematics/Algebra/AlgebraicClosure/Varianta64bc74911271986c1a0009618b7bd17c0c399e980221e437f1a810bde0b8863.lean/declarations/mem-algebraicclosure-iff--70e9f8aaea903a12851693e6.md) | 59 | `result-track:70e9f8aaea903a12851693e63707245bd20d0e86b4e256c6f0b143e596284fde` |
| 5 | `theorem` | [map_mem_algebraicClosure_iff](../../../../mathematics/Algebra/AlgebraicClosure/Varianta64bc74911271986c1a0009618b7bd17c0c399e980221e437f1a810bde0b8863.lean/declarations/map-mem-algebraicclosure-iff--42cd5f99440871fe6c4a78a2.md) | 64 | `result-track:42cd5f99440871fe6c4a78a21ebc28b9139b44858898e6d4f5569be4bb5adda2` |
| 6 | `theorem` | [comap_eq_of_algHom](../../../../mathematics/Algebra/AlgebraicClosure/Varianta64bc74911271986c1a0009618b7bd17c0c399e980221e437f1a810bde0b8863.lean/declarations/comap-eq-of-alghom--199609d2331b2d7276176d79.md) | 72 | `result-track:199609d2331b2d7276176d79de660cb0a5580eb3ef39b8f52ec473591b7fc486` |
| 7 | `theorem` | [map_le_of_algHom](../../../../mathematics/Algebra/AlgebraicClosure/Varianta64bc74911271986c1a0009618b7bd17c0c399e980221e437f1a810bde0b8863.lean/declarations/map-le-of-alghom--857595679b81d0488f012e08.md) | 79 | `result-track:857595679b81d0488f012e08ea24eefc6f069d4ca1a65893c044e958490c5ae2` |
| 8 | `theorem` | [map_eq_of_algebraicClosure_eq_bot](../../../../mathematics/Algebra/AlgebraicClosure/Varianta64bc74911271986c1a0009618b7bd17c0c399e980221e437f1a810bde0b8863.lean/declarations/map-eq-of-algebraicclosure-eq-bot--ad28aaa0f75de3ced1d33d10.md) | 87 | `result-track:ad28aaa0f75de3ced1d33d10e6afa2476bff95f4d51ab786d4098ea51df4aad6` |
| 9 | `theorem` | [map_eq_of_algEquiv](../../../../mathematics/Algebra/AlgebraicClosure/Varianta64bc74911271986c1a0009618b7bd17c0c399e980221e437f1a810bde0b8863.lean/declarations/map-eq-of-algequiv--fa6c937ab552f06a721e1e94.md) | 97 | `result-track:fa6c937ab552f06a721e1e9475df6fea02cfda03af3df4d06c7a40f66118c440` |
| 10 | `def` | [algEquivOfAlgEquiv](../../../../mathematics/Algebra/AlgebraicClosure/Varianta64bc74911271986c1a0009618b7bd17c0c399e980221e437f1a810bde0b8863.lean/declarations/algequivofalgequiv--037b6186a4328fc0c74b22a0.md) | 104 | `declaration-track:037b6186a4328fc0c74b22a0164f8719bd6fbbbb4f4039586ed7de5a8d2e70ed` |
| 11 | `instance` | [isAlgebraic](../../../../mathematics/Algebra/AlgebraicClosure/Varianta64bc74911271986c1a0009618b7bd17c0c399e980221e437f1a810bde0b8863.lean/declarations/isalgebraic--c1ece1d84377f38991b4ccda.md) | 113 | `declaration-track:c1ece1d84377f38991b4ccdaa99d2eec2faeea7170e7fff87cfc2e242571001c` |
| 12 | `instance` | [isIntegralClosure](../../../../mathematics/Algebra/AlgebraicClosure/Varianta64bc74911271986c1a0009618b7bd17c0c399e980221e437f1a810bde0b8863.lean/declarations/isintegralclosure--1c7d19fd3ebaafb1e1e1b203.md) | 117 | `declaration-track:1c7d19fd3ebaafb1e1e1b20333b67f251b7c11e71b741eba3125b1880737d710` |
| 13 | `theorem` | [Transcendental.algebraicClosure](../../../../mathematics/Algebra/AlgebraicClosure/Varianta64bc74911271986c1a0009618b7bd17c0c399e980221e437f1a810bde0b8863.lean/declarations/transcendental-algebraicclosure--f625cced24c7fac529e2a9eb.md) | 122 | `result-track:f625cced24c7fac529e2a9eb783f748085eca76f2f235c2fe4b8fd0a551ceb10` |
| 14 | `theorem` | [le_algebraicClosure'](../../../../mathematics/Algebra/AlgebraicClosure/Varianta64bc74911271986c1a0009618b7bd17c0c399e980221e437f1a810bde0b8863.lean/declarations/le-algebraicclosure--6fa653105794ca49c1124014.md) | 130 | `result-track:6fa653105794ca49c11240145cf45e485ac84f8984afef8986039b8c5b2f0e02` |
| 15 | `theorem` | [le_algebraicClosure](../../../../mathematics/Algebra/AlgebraicClosure/Varianta64bc74911271986c1a0009618b7bd17c0c399e980221e437f1a810bde0b8863.lean/declarations/le-algebraicclosure--f273e6060c6948c6bc8a64c5.md) | 137 | `result-track:f273e6060c6948c6bc8a64c54b951f7609589e1f856966312bf31f0f32fe9c4f` |
| 16 | `theorem` | [le_algebraicClosure_iff](../../../../mathematics/Algebra/AlgebraicClosure/Varianta64bc74911271986c1a0009618b7bd17c0c399e980221e437f1a810bde0b8863.lean/declarations/le-algebraicclosure-iff--63143a3724e6142ae4df0271.md) | 142 | `result-track:63143a3724e6142ae4df0271fa5e1f05536374b0dc2a121f969cf754d9d9f34a` |
| 17 | `theorem` | [algebraicClosure_eq_bot](../../../../mathematics/Algebra/AlgebraicClosure/Varianta64bc74911271986c1a0009618b7bd17c0c399e980221e437f1a810bde0b8863.lean/declarations/algebraicclosure-eq-bot--e846128d7eabc29b5b24e699.md) | 152 | `result-track:e846128d7eabc29b5b24e6998278623fcd5be28cde71bb71900e52edbff36a4c` |
| 18 | `theorem` | [normalClosure_eq_self](../../../../mathematics/Algebra/AlgebraicClosure/Varianta64bc74911271986c1a0009618b7bd17c0c399e980221e437f1a810bde0b8863.lean/declarations/normalclosure-eq-self--98e176ca8c14f907c7ab5eb4.md) | 158 | `result-track:98e176ca8c14f907c7ab5eb459cce91953bc82ee6e45168a8b2dec4ea115c00d` |
| 19 | `theorem` | [IsAlgClosed.algebraicClosure_eq_bot_iff](../../../../mathematics/Algebra/AlgebraicClosure/Varianta64bc74911271986c1a0009618b7bd17c0c399e980221e437f1a810bde0b8863.lean/declarations/isalgclosed-algebraicclosure-eq-bot-iff--9eb27ebff5d7c70f3f8982c4.md) | 168 | `result-track:9eb27ebff5d7c70f3f8982c43813dd15cc9176291ac54cadacd0589e2f14f6ed` |
| 20 | `theorem` | [IntermediateField.isAlgebraic_adjoin_iff_isAlgebraic](../../../../mathematics/Algebra/AlgebraicClosure/Varianta64bc74911271986c1a0009618b7bd17c0c399e980221e437f1a810bde0b8863.lean/declarations/intermediatefield-isalgebraic-adjoin-iff-isalgebraic--0a1bb95d202176bf7705e4a4.md) | 179 | `result-track:0a1bb95d202176bf7705e4a4129bdd113fe218a9d3e8e04ce811535abd8af819` |
| 21 | `instance` | [isAlgClosure](../../../../mathematics/Algebra/AlgebraicClosure/Varianta64bc74911271986c1a0009618b7bd17c0c399e980221e437f1a810bde0b8863.lean/declarations/isalgclosure--5171b6c3e82316853c9631b8.md) | 188 | `declaration-track:5171b6c3e82316853c9631b83f2b6cc92272c78cfbcd25ed59ee0a253c01735b` |
| 22 | `theorem` | [eq_top_iff](../../../../mathematics/Algebra/AlgebraicClosure/Varianta64bc74911271986c1a0009618b7bd17c0c399e980221e437f1a810bde0b8863.lean/declarations/eq-top-iff--c9d757e1abe50a6ec303fd49.md) | 194 | `result-track:c9d757e1abe50a6ec303fd49e537f48e1f4773996f73edac9d57f8886efe4880` |
| 23 | `theorem` | [le_restrictScalars](../../../../mathematics/Algebra/AlgebraicClosure/Varianta64bc74911271986c1a0009618b7bd17c0c399e980221e437f1a810bde0b8863.lean/declarations/le-restrictscalars--6d13d395258e1558a65f87cc.md) | 200 | `result-track:6d13d395258e1558a65f87ccb9d61760349b1ca92fb1a644366b468d81c69c48` |
| 24 | `theorem` | [eq_restrictScalars_of_isAlgebraic](../../../../mathematics/Algebra/AlgebraicClosure/Varianta64bc74911271986c1a0009618b7bd17c0c399e980221e437f1a810bde0b8863.lean/declarations/eq-restrictscalars-of-isalgebraic--4fb6bdd6ff5134dfba4cfec9.md) | 206 | `result-track:4fb6bdd6ff5134dfba4cfec98b40d7a63606abbec4094ed5605e1c6ac8e8ec64` |
| 25 | `theorem` | [adjoin_le](../../../../mathematics/Algebra/AlgebraicClosure/Varianta64bc74911271986c1a0009618b7bd17c0c399e980221e437f1a810bde0b8863.lean/declarations/adjoin-le--953a5679547ba2c620bea238.md) | 213 | `result-track:953a5679547ba2c620bea238c4c8eef6e5a8b3a993f9445e5ad3a4e2ed90bb74` |
| 26 | `theorem` | [Splits.algebraicClosure](../../../../mathematics/Algebra/AlgebraicClosure/Varianta64bc74911271986c1a0009618b7bd17c0c399e980221e437f1a810bde0b8863.lean/declarations/splits-algebraicclosure--18eedf63f5f32aacd37f0f38.md) | 224 | `result-track:18eedf63f5f32aacd37f0f38cbc9c55538b67e5e68126fa9dcdd52451b56a44f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
