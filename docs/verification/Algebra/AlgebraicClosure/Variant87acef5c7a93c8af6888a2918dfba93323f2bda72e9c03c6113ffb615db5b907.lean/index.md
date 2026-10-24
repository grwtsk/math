# Verification target: GRWTSK.Algebra.AlgebraicClosure.Variant87acef5c7a93c8af6888a2918dfba93323f2bda72e9c03c6113ffb615db5b907

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bd401aa570b7d998350c5dfb28c129ce78e7ec96",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/AlgebraicClosure/Variant87acef5c7a93c8af6888a2918dfba93323f2bda72e9c03c6113ffb615db5b907.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/AlgebraicClosure/Variant87acef5c7a93c8af6888a2918dfba93323f2bda72e9c03c6113ffb615db5b907.lean/index.md) · [Full source](../../../../mathematics/Algebra/AlgebraicClosure/Variant87acef5c7a93c8af6888a2918dfba93323f2bda72e9c03c6113ffb615db5b907.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bd401aa570b7d998350c5dfb28c129ce78e7ec96`.

Source path: `GRWTSK/Algebra/AlgebraicClosure/Variant87acef5c7a93c8af6888a2918dfba93323f2bda72e9c03c6113ffb615db5b907.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/AlgebraicClosure/Variant87acef5c7a93c8af6888a2918dfba93323f2bda72e9c03c6113ffb615db5b907.lean.json)

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
| 1 | `def` | [algebraicClosure](../../../../mathematics/Algebra/AlgebraicClosure/Variant87acef5c7a93c8af6888a2918dfba93323f2bda72e9c03c6113ffb615db5b907.lean/declarations/algebraicclosure--b12047ece3cdbbb9566a97bf.md) | 47 | `declaration-track:b12047ece3cdbbb9566a97bfeb19057290fe2258a106529203eceb9ceb92eb26` |
| 2 | `theorem` | [algebraicClosure_toSubalgebra](../../../../mathematics/Algebra/AlgebraicClosure/Variant87acef5c7a93c8af6888a2918dfba93323f2bda72e9c03c6113ffb615db5b907.lean/declarations/algebraicclosure-tosubalgebra--fc33fcba039726cc52e45819.md) | 52 | `result-track:fc33fcba039726cc52e45819fefbf526fbfdd9e492c66bcccd223dc573869686` |
| 3 | `theorem` | [mem_algebraicClosure_iff'](../../../../mathematics/Algebra/AlgebraicClosure/Variant87acef5c7a93c8af6888a2918dfba93323f2bda72e9c03c6113ffb615db5b907.lean/declarations/mem-algebraicclosure-iff--120102b001186691877ff45b.md) | 57 | `result-track:120102b001186691877ff45bdc12cbb5f508a2b1821888e9c5cc886a33cc6bc0` |
| 4 | `theorem` | [mem_algebraicClosure_iff](../../../../mathematics/Algebra/AlgebraicClosure/Variant87acef5c7a93c8af6888a2918dfba93323f2bda72e9c03c6113ffb615db5b907.lean/declarations/mem-algebraicclosure-iff--601d23385ff0ac81bb56e835.md) | 62 | `result-track:601d23385ff0ac81bb56e835c415a5817a5c0409408076e68c217ca5eabcd1d8` |
| 5 | `theorem` | [map_mem_algebraicClosure_iff](../../../../mathematics/Algebra/AlgebraicClosure/Variant87acef5c7a93c8af6888a2918dfba93323f2bda72e9c03c6113ffb615db5b907.lean/declarations/map-mem-algebraicclosure-iff--22871f6c2610a6a5178a8ab0.md) | 67 | `result-track:22871f6c2610a6a5178a8ab04400602b33fc50a28deabe9f2f8bf022335cf4cd` |
| 6 | `theorem` | [comap_eq_of_algHom](../../../../mathematics/Algebra/AlgebraicClosure/Variant87acef5c7a93c8af6888a2918dfba93323f2bda72e9c03c6113ffb615db5b907.lean/declarations/comap-eq-of-alghom--efbe3ebfcb430af8e7aebe6e.md) | 75 | `result-track:efbe3ebfcb430af8e7aebe6e4cf0bade7e549c7595436585ecde1f0e8d005245` |
| 7 | `theorem` | [map_le_of_algHom](../../../../mathematics/Algebra/AlgebraicClosure/Variant87acef5c7a93c8af6888a2918dfba93323f2bda72e9c03c6113ffb615db5b907.lean/declarations/map-le-of-alghom--b33a33d7440bd16423085977.md) | 82 | `result-track:b33a33d7440bd16423085977014891cb7e2726d699381eab3e3f2c203618975f` |
| 8 | `theorem` | [map_eq_of_algebraicClosure_eq_bot](../../../../mathematics/Algebra/AlgebraicClosure/Variant87acef5c7a93c8af6888a2918dfba93323f2bda72e9c03c6113ffb615db5b907.lean/declarations/map-eq-of-algebraicclosure-eq-bot--9f083be8b085eec2dad4ff45.md) | 90 | `result-track:9f083be8b085eec2dad4ff45b2b9d22902492260581cc9c8abcb22612bef24ca` |
| 9 | `theorem` | [map_eq_of_algEquiv](../../../../mathematics/Algebra/AlgebraicClosure/Variant87acef5c7a93c8af6888a2918dfba93323f2bda72e9c03c6113ffb615db5b907.lean/declarations/map-eq-of-algequiv--3fb13279c9c9c2cd55a10bad.md) | 100 | `result-track:3fb13279c9c9c2cd55a10badfba1510bb5d16fd33d5cde16974310083bda4253` |
| 10 | `def` | [algEquivOfAlgEquiv](../../../../mathematics/Algebra/AlgebraicClosure/Variant87acef5c7a93c8af6888a2918dfba93323f2bda72e9c03c6113ffb615db5b907.lean/declarations/algequivofalgequiv--1feb77a8ca8d3db450b161c5.md) | 107 | `declaration-track:1feb77a8ca8d3db450b161c5a80b15511f139953ea66580f690ecf513402a8f7` |
| 11 | `instance` | [isAlgebraic](../../../../mathematics/Algebra/AlgebraicClosure/Variant87acef5c7a93c8af6888a2918dfba93323f2bda72e9c03c6113ffb615db5b907.lean/declarations/isalgebraic--4dbaee2b557e4a1adb502586.md) | 116 | `declaration-track:4dbaee2b557e4a1adb50258613d85c7d3ca5cc1721969bc0bf0a50eb97af7da0` |
| 12 | `instance` | [isIntegralClosure](../../../../mathematics/Algebra/AlgebraicClosure/Variant87acef5c7a93c8af6888a2918dfba93323f2bda72e9c03c6113ffb615db5b907.lean/declarations/isintegralclosure--b8c2334c98d0a10433fced8e.md) | 120 | `declaration-track:b8c2334c98d0a10433fced8edfe7671399be0aea7014a0f306d6d8bef681ddd7` |
| 13 | `theorem` | [Transcendental.algebraicClosure](../../../../mathematics/Algebra/AlgebraicClosure/Variant87acef5c7a93c8af6888a2918dfba93323f2bda72e9c03c6113ffb615db5b907.lean/declarations/transcendental-algebraicclosure--700ce3a871d711006c5fa6ed.md) | 125 | `result-track:700ce3a871d711006c5fa6ed1ea251510756dfa09ae0b348f25400e5c9c7fb55` |
| 14 | `theorem` | [le_algebraicClosure'](../../../../mathematics/Algebra/AlgebraicClosure/Variant87acef5c7a93c8af6888a2918dfba93323f2bda72e9c03c6113ffb615db5b907.lean/declarations/le-algebraicclosure--70c69e7541b88c8547fb0cbb.md) | 133 | `result-track:70c69e7541b88c8547fb0cbb054bd642a1a86d532e9445466e1a6ea020171d4e` |
| 15 | `theorem` | [le_algebraicClosure](../../../../mathematics/Algebra/AlgebraicClosure/Variant87acef5c7a93c8af6888a2918dfba93323f2bda72e9c03c6113ffb615db5b907.lean/declarations/le-algebraicclosure--6f78449e313b828810ea87b2.md) | 140 | `result-track:6f78449e313b828810ea87b29017315b863aadba15e2f686c8bcb1d218556952` |
| 16 | `theorem` | [le_algebraicClosure_iff](../../../../mathematics/Algebra/AlgebraicClosure/Variant87acef5c7a93c8af6888a2918dfba93323f2bda72e9c03c6113ffb615db5b907.lean/declarations/le-algebraicclosure-iff--22b609bce1c5e0849f18f2ea.md) | 145 | `result-track:22b609bce1c5e0849f18f2eab3c167cf72d85b749be349ed5dfbe2565eed078b` |
| 17 | `theorem` | [algebraicClosure_eq_bot](../../../../mathematics/Algebra/AlgebraicClosure/Variant87acef5c7a93c8af6888a2918dfba93323f2bda72e9c03c6113ffb615db5b907.lean/declarations/algebraicclosure-eq-bot--38b1deb239c623da71b4f8d2.md) | 155 | `result-track:38b1deb239c623da71b4f8d289bb46508ffd1670931c596c3c9003255c6f3a41` |
| 18 | `theorem` | [normalClosure_eq_self](../../../../mathematics/Algebra/AlgebraicClosure/Variant87acef5c7a93c8af6888a2918dfba93323f2bda72e9c03c6113ffb615db5b907.lean/declarations/normalclosure-eq-self--b5883402d10a427c87b24ea4.md) | 161 | `result-track:b5883402d10a427c87b24ea4034eead4152b2c5562b9ef6fddcb4d7395ba39e6` |
| 19 | `theorem` | [IsAlgClosed.algebraicClosure_eq_bot_iff](../../../../mathematics/Algebra/AlgebraicClosure/Variant87acef5c7a93c8af6888a2918dfba93323f2bda72e9c03c6113ffb615db5b907.lean/declarations/isalgclosed-algebraicclosure-eq-bot-iff--c66419413f0ff385411cbbce.md) | 171 | `result-track:c66419413f0ff385411cbbce4a1601587ecc09bc92ca28a71b6f349b1e36c9e1` |
| 20 | `theorem` | [IntermediateField.isAlgebraic_adjoin_iff_isAlgebraic](../../../../mathematics/Algebra/AlgebraicClosure/Variant87acef5c7a93c8af6888a2918dfba93323f2bda72e9c03c6113ffb615db5b907.lean/declarations/intermediatefield-isalgebraic-adjoin-iff-isalgebraic--e973c36597250fc23ce89607.md) | 182 | `result-track:e973c36597250fc23ce896073bb7d054c392e74399f4b64b313430697c5ce6a8` |
| 21 | `instance` | [isAlgClosure](../../../../mathematics/Algebra/AlgebraicClosure/Variant87acef5c7a93c8af6888a2918dfba93323f2bda72e9c03c6113ffb615db5b907.lean/declarations/isalgclosure--d40d91de79a2080c27166b4c.md) | 191 | `declaration-track:d40d91de79a2080c27166b4c2b544a496e51c43d747db2cfa4a6383de451c1f5` |
| 22 | `theorem` | [eq_top_iff](../../../../mathematics/Algebra/AlgebraicClosure/Variant87acef5c7a93c8af6888a2918dfba93323f2bda72e9c03c6113ffb615db5b907.lean/declarations/eq-top-iff--1ffe3614f993f2bb95e09d49.md) | 197 | `result-track:1ffe3614f993f2bb95e09d49764fc426a1965e356440df1d4f39b6d987d4e7ad` |
| 23 | `theorem` | [le_restrictScalars](../../../../mathematics/Algebra/AlgebraicClosure/Variant87acef5c7a93c8af6888a2918dfba93323f2bda72e9c03c6113ffb615db5b907.lean/declarations/le-restrictscalars--d391ea0fbba25f7f77c78dfb.md) | 203 | `result-track:d391ea0fbba25f7f77c78dfbc2de8d9357c0f40a36447fb41b6b45beec405b58` |
| 24 | `theorem` | [eq_restrictScalars_of_isAlgebraic](../../../../mathematics/Algebra/AlgebraicClosure/Variant87acef5c7a93c8af6888a2918dfba93323f2bda72e9c03c6113ffb615db5b907.lean/declarations/eq-restrictscalars-of-isalgebraic--8b955378ed191749967d7b80.md) | 209 | `result-track:8b955378ed191749967d7b8052cb16e73eb82210edf31baf78d8ea4bc1c76311` |
| 25 | `theorem` | [adjoin_le](../../../../mathematics/Algebra/AlgebraicClosure/Variant87acef5c7a93c8af6888a2918dfba93323f2bda72e9c03c6113ffb615db5b907.lean/declarations/adjoin-le--57fa25e1540f46cc8001513a.md) | 216 | `result-track:57fa25e1540f46cc8001513a4626fe2fec492a421207ceb1ccfa78ae3588ee31` |
| 26 | `theorem` | [Splits.algebraicClosure](../../../../mathematics/Algebra/AlgebraicClosure/Variant87acef5c7a93c8af6888a2918dfba93323f2bda72e9c03c6113ffb615db5b907.lean/declarations/splits-algebraicclosure--89d012f1c67e6268c75c9c46.md) | 227 | `result-track:89d012f1c67e6268c75c9c4650a0d769a9b2237e38482313b79cb60443c3446a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
