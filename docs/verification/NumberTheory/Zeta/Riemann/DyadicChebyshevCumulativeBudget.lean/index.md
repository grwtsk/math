# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.DyadicChebyshevCumulativeBudget

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bc83bf1f65d66d02e65534c5056b86b00f6a4d1d",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/DyadicChebyshevCumulativeBudget.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicChebyshevCumulativeBudget.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicChebyshevCumulativeBudget.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bc83bf1f65d66d02e65534c5056b86b00f6a4d1d`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/DyadicChebyshevCumulativeBudget.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/DyadicChebyshevCumulativeBudget.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.DyadicCumulativeQuarticPacking`](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicCumulativeQuarticPacking.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.NumberTheory.Chebyshev` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [chebyshevOctaveMassConstant](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicChebyshevCumulativeBudget.lean/declarations/chebyshevoctavemassconstant--a8e00db84e8c2e7ced8e69b2.md) | 45 | `declaration-track:a8e00db84e8c2e7ced8e69b2a1a33c4acb81ec821ca4699cb199073b1e168565` |
| 2 | `theorem` | [chebyshevOctaveMassConstant_nonnegative](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicChebyshevCumulativeBudget.lean/declarations/chebyshevoctavemassconstant-nonnegative--85967e56005bf98b7ee2c049.md) | 48 | `result-track:85967e56005bf98b7ee2c0496159a6c18d24386fa18d7f104ce3a0b109880f1b` |
| 3 | `def` | [windowMangoldtMass](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicChebyshevCumulativeBudget.lean/declarations/windowmangoldtmass--2fe20b6c8672290269a9e5d5.md) | 53 | `declaration-track:2fe20b6c8672290269a9e5d5a86cf1ba11c0d4817b3f833b3c7c84b5afa7cd53` |
| 4 | `def` | [windowCoefficientMass](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicChebyshevCumulativeBudget.lean/declarations/windowcoefficientmass--56c48b2425e5f8096ac1b906.md) | 56 | `declaration-track:56c48b2425e5f8096ac1b90638dd258b706212192eb55e6c7d1704a644f9666c` |
| 5 | `theorem` | [windowMangoldtMass_nonnegative](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicChebyshevCumulativeBudget.lean/declarations/windowmangoldtmass-nonnegative--d8c99d28996ad1d3aa60f15e.md) | 59 | `result-track:d8c99d28996ad1d3aa60f15e158358da76bc931628c51b3769bd94c16073b57c` |
| 6 | `theorem` | [windowCoefficientMass_nonnegative](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicChebyshevCumulativeBudget.lean/declarations/windowcoefficientmass-nonnegative--59b2eccc6cf1c9840978ef7c.md) | 65 | `result-track:59b2eccc6cf1c9840978ef7ca16bb07b1d8fe555105d2fc82bb71c0cc8006642` |
| 7 | `theorem` | [windowMangoldtMass_le](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicChebyshevCumulativeBudget.lean/declarations/windowmangoldtmass-le--ef88135271483c24e8511580.md) | 73 | `result-track:ef88135271483c24e8511580f51f531821754f627e4caed22ed3b11e8fac60e5` |
| 8 | `theorem` | [windowCoefficientMass_le_constant](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicChebyshevCumulativeBudget.lean/declarations/windowcoefficientmass-le-constant--22fee0fe9ae5af1e1bbf7e88.md) | 101 | `result-track:22fee0fe9ae5af1e1bbf7e88f5fba27d67feafb5c6f513a30569cae4a9f28b00` |
| 9 | `theorem` | [action_norm_le_chebyshev](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicChebyshevCumulativeBudget.lean/declarations/action-norm-le-chebyshev--9824703d0430037aa89451b4.md) | 138 | `result-track:9824703d0430037aa89451b406a806464939696e2dcd53b78ea513b221c79f10` |
| 10 | `def` | [safeChebyshevActionConstant](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicChebyshevCumulativeBudget.lean/declarations/safechebyshevactionconstant--380474cd8a36535f55d0725c.md) | 214 | `declaration-track:380474cd8a36535f55d0725cecbab2f575bd85b88d56c596d64f797a5397da6f` |
| 11 | `theorem` | [safeChebyshevActionConstant_nonnegative](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicChebyshevCumulativeBudget.lean/declarations/safechebyshevactionconstant-nonnegative--9f350155a8ba29bd20df16f7.md) | 218 | `result-track:9f350155a8ba29bd20df16f756c8fae3b138f17b8f421e3cf76a7b6c668fc6b3` |
| 12 | `def` | [safeChebyshevDyadicEnvelope](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicChebyshevCumulativeBudget.lean/declarations/safechebyshevdyadicenvelope--eccd88e48802ce89b92d51b2.md) | 223 | `declaration-track:eccd88e48802ce89b92d51b2df9ddffbdd30cffd37f7a84e33a57d4c9bc4e03a` |
| 13 | `theorem` | [safeChebyshevDyadicEnvelope_nonnegative](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicChebyshevCumulativeBudget.lean/declarations/safechebyshevdyadicenvelope-nonnegative--1fd802d3a7074a6e059aa38a.md) | 226 | `result-track:1fd802d3a7074a6e059aa38a9ec5fb7776703edd611717b7b46e2aa46c426459` |
| 14 | `theorem` | [safeDyadicHalfWeight_eq_dyadicWeight_half](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicChebyshevCumulativeBudget.lean/declarations/safedyadichalfweight-eq-dyadicweight-half--3dea91cfba5a3242ccaa715d.md) | 232 | `result-track:3dea91cfba5a3242ccaa715d1e5bc2340ec872081c47a6b371421fb596f9f4d5` |
| 15 | `theorem` | [safeDyadicBlock_norm_le_chebyshevEnvelope](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicChebyshevCumulativeBudget.lean/declarations/safedyadicblock-norm-le-chebyshevenvelope--f5916094eb12b81399db0cca.md) | 240 | `result-track:f5916094eb12b81399db0cca6367e0d7d1c7ead595f07ddd5d81c7a80d082cf5` |
| 16 | `theorem` | [safePlusDyadicBlock_norm_le_chebyshev](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicChebyshevCumulativeBudget.lean/declarations/safeplusdyadicblock-norm-le-chebyshev--4a97058421fee2587c904077.md) | 274 | `result-track:4a97058421fee2587c90407725ceab1f60307adb64c5c289cba5c3325d6a4645` |
| 17 | `theorem` | [safeMinusDyadicBlock_norm_le_chebyshev](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicChebyshevCumulativeBudget.lean/declarations/safeminusdyadicblock-norm-le-chebyshev--659484df7fd328b79be8acbb.md) | 282 | `result-track:659484df7fd328b79be8acbb3ebd3c6546f9d8b6b9f99cb506a9b4b429da0494` |
| 18 | `theorem` | [safeCenterDyadicBlock_norm_le_chebyshev](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicChebyshevCumulativeBudget.lean/declarations/safecenterdyadicblock-norm-le-chebyshev--a2d563b25a2c5f655cb1d482.md) | 290 | `result-track:a2d563b25a2c5f655cb1d482933861419eb8a95b172c4496389f679439884bfc` |
| 19 | `theorem` | [safeEvenDyadicBlock_norm_le_chebyshev](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicChebyshevCumulativeBudget.lean/declarations/safeevendyadicblock-norm-le-chebyshev--2adbe8534db528436ea92c76.md) | 298 | `result-track:2adbe8534db528436ea92c768c80101b7c5301e610057d0506591b383ab51c92` |
| 20 | `theorem` | [safeOddDyadicBlock_norm_le_chebyshev](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicChebyshevCumulativeBudget.lean/declarations/safeodddyadicblock-norm-le-chebyshev--8e0e1795823e27e557056ee1.md) | 310 | `result-track:8e0e1795823e27e557056ee1a1e74fa3006909f5e7321c54511fcdce207a0a43` |
| 21 | `theorem` | [safeEvenDefectDyadicBlock_norm_le_chebyshev](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicChebyshevCumulativeBudget.lean/declarations/safeevendefectdyadicblock-norm-le-chebyshev--9bddd7fbc12e9e2d396774f3.md) | 322 | `result-track:9bddd7fbc12e9e2d396774f39fffc9365a5318e295a23c2edd1f30339a8df8be` |
| 22 | `theorem` | [safeQuarticDyadicPackingValue_le_of_envelope](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicChebyshevCumulativeBudget.lean/declarations/safequarticdyadicpackingvalue-le-of-envelope--500e6956f76fccd19db341ab.md) | 334 | `result-track:500e6956f76fccd19db341abb8b40beee7482e3cbaa7822e401e8c7b8e5c6d61` |
| 23 | `def` | [safeChebyshevEnvelopePairProduct](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicChebyshevCumulativeBudget.lean/declarations/safechebyshevenvelopepairproduct--c0037647ae5ac19ebb2c8c6c.md) | 430 | `declaration-track:c0037647ae5ac19ebb2c8c6c3b3dad090b56c6a75bfb88c99753afedd034704f` |
| 24 | `theorem` | [safeQuarticDyadicPackingValue_le_chebyshevPair](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicChebyshevCumulativeBudget.lean/declarations/safequarticdyadicpackingvalue-le-chebyshevpair--fbe0eba1eb4520fa9efd8fea.md) | 437 | `result-track:fbe0eba1eb4520fa9efd8fea7b655e7bfa4a3752bfc8b069873cebff49126516` |
| 25 | `theorem` | [dyadicWeight_half_antitone](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicChebyshevCumulativeBudget.lean/declarations/dyadicweight-half-antitone--740d3f6a5e14355d420f0bee.md) | 449 | `result-track:740d3f6a5e14355d420f0bee4161df9f025f1991c80d1f03b3616e976fcc7670` |
| 26 | `theorem` | [safeChebyshevDyadicEnvelope_antitone](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicChebyshevCumulativeBudget.lean/declarations/safechebyshevdyadicenvelope-antitone--863bc006968749af26025ed2.md) | 458 | `result-track:863bc006968749af26025ed24140e3b22934541f6f6030e33e355406ff666608` |
| 27 | `theorem` | [dyadicWeight_half_pow_four](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicChebyshevCumulativeBudget.lean/declarations/dyadicweight-half-pow-four--29ef185cf36b46eb1f5af56c.md) | 467 | `result-track:29ef185cf36b46eb1f5af56c5b85eb7b0d9e9dad4a3081a6a144704e0d445bd7` |
| 28 | `def` | [safeChebyshevPairMajorant](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicChebyshevCumulativeBudget.lean/declarations/safechebyshevpairmajorant--9d496afad1a133e89751436b.md) | 474 | `declaration-track:9d496afad1a133e89751436b6fa0004778a837db339b2e0331b62e2b32948b1b` |
| 29 | `theorem` | [safeChebyshevPairProduct_le_majorant](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicChebyshevCumulativeBudget.lean/declarations/safechebyshevpairproduct-le-majorant--3d6cd02b155dddfd220a7e7c.md) | 478 | `result-track:3d6cd02b155dddfd220a7e7ca8fb8ac819b6e662a02b8cf20fbaf6371a75ede7` |
| 30 | `theorem` | [safeChebyshevPairMajorant_summable](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicChebyshevCumulativeBudget.lean/declarations/safechebyshevpairmajorant-summable--78942ab6f2b334459efbf124.md) | 527 | `result-track:78942ab6f2b334459efbf12452447e1ec09f564530ce49314de641201578e493` |
| 31 | `def` | [safeChebyshevQuarticMajorant](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicChebyshevCumulativeBudget.lean/declarations/safechebyshevquarticmajorant--e9cebd0b7f841d0edba4866e.md) | 534 | `declaration-track:e9cebd0b7f841d0edba4866e2d99460e189cdbd7e29a3caade46c6e47dac0875` |
| 32 | `theorem` | [safeChebyshevQuarticMajorant_summable](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicChebyshevCumulativeBudget.lean/declarations/safechebyshevquarticmajorant-summable--9da2051a495f24d8420c1645.md) | 538 | `result-track:9da2051a495f24d8420c1645df9889c78aab94934424dc59d16690edbbd4233b` |
| 33 | `theorem` | [safeQuarticDyadicPackingValue_le_chebyshevMajorant](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicChebyshevCumulativeBudget.lean/declarations/safequarticdyadicpackingvalue-le-chebyshevmajorant--6a8e8af99a8b6b8267687acb.md) | 543 | `result-track:6a8e8af99a8b6b8267687acbfd7e48e6987873599a8b418af08802375f68d4a0` |
| 34 | `theorem` | [safeQuarticDyadicPackingValue_summable](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicChebyshevCumulativeBudget.lean/declarations/safequarticdyadicpackingvalue-summable--7ed7d9432dc32456a8195252.md) | 554 | `result-track:7ed7d9432dc32456a8195252c031105c18b86e5d34b80ecf29cee6c7b55651ad` |
| 35 | `def` | [safeQuarticDyadicTotalBudget](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicChebyshevCumulativeBudget.lean/declarations/safequarticdyadictotalbudget--cd5aeb9cfa4dc142a6c33deb.md) | 562 | `declaration-track:cd5aeb9cfa4dc142a6c33deb0d76f7535c99225764110c20ced2682c76a1b8d9` |
| 36 | `theorem` | [safeQuarticDyadicTotalBudget_nonnegative](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicChebyshevCumulativeBudget.lean/declarations/safequarticdyadictotalbudget-nonnegative--57db2283adc9d847a2578981.md) | 565 | `result-track:57db2283adc9d847a25789815c4d72a320f761fa530ddf89c1bd2145456ad247` |
| 37 | `theorem` | [safeQuarticDyadicPartial_le_totalBudget](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicChebyshevCumulativeBudget.lean/declarations/safequarticdyadicpartial-le-totalbudget--687fb1719e6a15483176b8de.md) | 571 | `result-track:687fb1719e6a15483176b8de9aa2c8be846da45af6e4781bbf8b98fdb51982a6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
