# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonIntegerSeed

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b0f536ec4d8db80e5fbae4e62270e033d501b02c",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/ConcreteNewtonIntegerSeed.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonIntegerSeed.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonIntegerSeed.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b0f536ec4d8db80e5fbae4e62270e033d501b02c`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/ConcreteNewtonIntegerSeed.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/ConcreteNewtonIntegerSeed.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.IntegerTaylorPolynomial`](../../../../../mathematics/Analysis/ComplexAnalysis/IntegerTaylorPolynomial.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonPacket`](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonPacket.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.Tactic.NormNum` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [argDen](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonIntegerSeed.lean/declarations/argden--a0cb1355bc51a1fcd9102bb7.md) | 29 | `declaration-track:a0cb1355bc51a1fcd9102bb7e71cc0a0a04710ea1d12756acc4d80f2a95188d7` |
| 2 | `def` | [argNum](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonIntegerSeed.lean/declarations/argnum--ce3952403232276d4084a109.md) | 31 | `declaration-track:ce3952403232276d4084a10957b588c92189ed81c5430757fe64f30c53da854a` |
| 3 | `def` | [radiusNum](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonIntegerSeed.lean/declarations/radiusnum--190507e9cece7256b22ea259.md) | 34 | `declaration-track:190507e9cece7256b22ea259099860d13835b570a097c38999e66f15ee1a374c` |
| 4 | `def` | [radiusDen](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonIntegerSeed.lean/declarations/radiusden--9d8c832d39ca5d10e2a98976.md) | 35 | `declaration-track:9d8c832d39ca5d10e2a9897628485f94c9c042a308c12b0c7726482fa73eed10` |
| 5 | `def` | [displacementNum](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonIntegerSeed.lean/declarations/displacementnum--654fe41de423950262e010a0.md) | 37 | `declaration-track:654fe41de423950262e010a063c978bdbb989db5ecc966dea57707ec0bddd628` |
| 6 | `def` | [displacementDen](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonIntegerSeed.lean/declarations/displacementden--657dda923d9a7700542dff09.md) | 38 | `declaration-track:657dda923d9a7700542dff09b0bf8cad2b47e6381809ed7e372ccf554a2f09e3` |
| 7 | `theorem` | [log_data](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonIntegerSeed.lean/declarations/log-data--c1cb1a6c86cd2627c7103119.md) | 41 | `result-track:c1cb1a6c86cd2627c710311907b4af097eab206cdf3fd5b249a744ea4d6f309e` |
| 8 | `theorem` | [argument_identity](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonIntegerSeed.lean/declarations/argument-identity--79cda389812c53a155722060.md) | 51 | `result-track:79cda389812c53a1557220605e2bf5071c6330209f3f8e8a912a3e01d033bd0f` |
| 9 | `theorem` | [radius_identity](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonIntegerSeed.lean/declarations/radius-identity--c2e1536b0727868d25f7447f.md) | 58 | `result-track:c2e1536b0727868d25f7447f7bad638a639df9a343bd2044c94eba0f6e031713` |
| 10 | `theorem` | [displacement_identity](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonIntegerSeed.lean/declarations/displacement-identity--f57c0eb78dd6da59b65814ac.md) | 65 | `result-track:f57c0eb78dd6da59b65814ac9bb1d5c8a897a2e29e4e6e6a0ac2b044716e691a` |
| 11 | `def` | [seedNum](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonIntegerSeed.lean/declarations/seednum--417d0f1e85c91efcef5219d3.md) | 73 | `declaration-track:417d0f1e85c91efcef5219d327c13c0c36817f0a1591baae41ff784c1603f23f` |
| 12 | `def` | [seedDen](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonIntegerSeed.lean/declarations/seedden--62476b5b700bf82404aa81fb.md) | 74 | `declaration-track:62476b5b700bf82404aa81fb8afec84b987fd4a0886de84136adb8ea0d35069f` |
| 13 | `def` | [taylorNum](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonIntegerSeed.lean/declarations/taylornum--f34e916c1c750efa34417a07.md) | 76 | `declaration-track:f34e916c1c750efa34417a07f9af33f13be5d42deeb93caf179720e93a671677` |
| 14 | `def` | [taylorDen](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonIntegerSeed.lean/declarations/taylorden--a2f2aa8be032a8d7f74fa593.md) | 77 | `declaration-track:a2f2aa8be032a8d7f74fa5936f3547897cb27e3a50178f3a19c2edcfc77d56fe` |
| 15 | `def` | [errorNum](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonIntegerSeed.lean/declarations/errornum--36152285e12f5740a3712b46.md) | 80 | `declaration-track:36152285e12f5740a3712b461e3b7b8d2a8516121e564f9cc2fcfc57f5467b67` |
| 16 | `def` | [errorDen](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonIntegerSeed.lean/declarations/errorden--65b4f742ec1bdc77ac38a81c.md) | 84 | `declaration-track:65b4f742ec1bdc77ac38a81cc756b88f938d648f82d4d6cb0a44daa014e3010e` |
| 17 | `def` | [start](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonIntegerSeed.lean/declarations/start--71b785e65e7cb8e559e11d21.md) | 86 | `declaration-track:71b785e65e7cb8e559e11d21060562c161121bbb5f3a68a530dc78b14b9bdc92` |
| 18 | `theorem` | [denominators_pos](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonIntegerSeed.lean/declarations/denominators-pos--b70478acd953ac71d7bd3154.md) | 88 | `result-track:b70478acd953ac71d7bd31549fd73a833d0d20e85100783f1c14da2918e23e9e` |
| 19 | `theorem` | [seed_identity](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonIntegerSeed.lean/declarations/seed-identity--6acc3f29086a9c63878ee02a.md) | 96 | `result-track:6acc3f29086a9c63878ee02a2acde221db3f5f41ded5384a385d848dcd90e843` |
| 20 | `theorem` | [seed_error_identity](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonIntegerSeed.lean/declarations/seed-error-identity--cae18ab1b3ef92a9c3f07b88.md) | 103 | `result-track:cae18ab1b3ef92a9c3f07b88b7c14d5d157f5f68bfd3f3113acd49cd6ead36ce` |
| 21 | `theorem` | [errorNum_nonneg](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonIntegerSeed.lean/declarations/errornum-nonneg--508bc0176fd1ac0c0907b24a.md) | 120 | `result-track:508bc0176fd1ac0c0907b24a63bf26080b05ccdefb4678c2f8153b5477cee44e` |
| 22 | `theorem` | [real_integer_window](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonIntegerSeed.lean/declarations/real-integer-window--a85676f04233caad61de5889.md) | 130 | `result-track:a85676f04233caad61de588935d7f2a1944ec8a183504b75944884c58215ae79` |
| 23 | `theorem` | [imag_integer_window](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonIntegerSeed.lean/declarations/imag-integer-window--e38bc3bf3073fbab4fbd4c32.md) | 134 | `result-track:e38bc3bf3073fbab4fbd4c3259eccc38509157c93fdef7aa070922d2fbc9b91b` |
| 24 | `theorem` | [error_integer_window](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonIntegerSeed.lean/declarations/error-integer-window--ae7b5559ff3e752af9441560.md) | 138 | `result-track:ae7b5559ff3e752af94415608ef280aa47923b8a84fffa961524c4481fcb193d` |
| 25 | `theorem` | [original_seed_valid](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonIntegerSeed.lean/declarations/original-seed-valid--49b4d61a6fbe3df851ac2faf.md) | 146 | `result-track:49b4d61a6fbe3df851ac2faf942db732838f433adea51125d300ce2e47fc6863` |
| 26 | `theorem` | [initial_state_eq](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonIntegerSeed.lean/declarations/initial-state-eq--6783e40c43f298ed9b8e5502.md) | 171 | `result-track:6783e40c43f298ed9b8e55026b0e8049b8d742520300cb610464640c3c836f05` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
