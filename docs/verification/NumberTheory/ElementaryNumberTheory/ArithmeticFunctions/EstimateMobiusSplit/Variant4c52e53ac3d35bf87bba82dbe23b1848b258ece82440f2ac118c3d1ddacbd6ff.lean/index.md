# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.EstimateMobiusSplit.Variant4c52e53ac3d35bf87bba82dbe23b1848b258ece82440f2ac118c3d1ddacbd6ff

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d4af5def8e64a82588101d827772240d8ebf0411",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/EstimateMobiusSplit/Variant4c52e53ac3d35bf87bba82dbe23b1848b258ece82440f2ac118c3d1ddacbd6ff.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/EstimateMobiusSplit/Variant4c52e53ac3d35bf87bba82dbe23b1848b258ece82440f2ac118c3d1ddacbd6ff.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/EstimateMobiusSplit/Variant4c52e53ac3d35bf87bba82dbe23b1848b258ece82440f2ac118c3d1ddacbd6ff.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d4af5def8e64a82588101d827772240d8ebf0411`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/EstimateMobiusSplit/Variant4c52e53ac3d35bf87bba82dbe23b1848b258ece82440f2ac118c3d1ddacbd6ff.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/EstimateMobiusSplit/Variant4c52e53ac3d35bf87bba82dbe23b1848b258ece82440f2ac118c3d1ddacbd6ff.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimatePrimeSmoothDefect` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ArithmeticFunction.Moebius` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [closedPrimeWeight](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/EstimateMobiusSplit/Variant4c52e53ac3d35bf87bba82dbe23b1848b258ece82440f2ac118c3d1ddacbd6ff.lean/declarations/closedprimeweight--6d2d3932a017523e3b03186c.md) | 31 | `declaration-track:6d2d3932a017523e3b03186c9ac92e389f26549ba51615a75fef1ada0adf14fd` |
| 2 | `def` | [mobiusLogTerm](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/EstimateMobiusSplit/Variant4c52e53ac3d35bf87bba82dbe23b1848b258ece82440f2ac118c3d1ddacbd6ff.lean/declarations/mobiuslogterm--66d46bff9860016ef40eebca.md) | 37 | `declaration-track:66d46bff9860016ef40eebca5db5ee8a92644d7160f64c6c25c312c5b5dd2a75` |
| 3 | `theorem` | [vonMangoldt_eq_mobius_log_convolution](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/EstimateMobiusSplit/Variant4c52e53ac3d35bf87bba82dbe23b1848b258ece82440f2ac118c3d1ddacbd6ff.lean/declarations/vonmangoldt-eq-mobius-log-convolution--5eb95f5b1211391eab7f7c79.md) | 42 | `result-track:5eb95f5b1211391eab7f7c79709bfd8342f63d618849c4dcb97e0b95587cf253` |
| 4 | `def` | [mobiusClosedPrimeMoment](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/EstimateMobiusSplit/Variant4c52e53ac3d35bf87bba82dbe23b1848b258ece82440f2ac118c3d1ddacbd6ff.lean/declarations/mobiusclosedprimemoment--5c11e437793df4f389adf1a7.md) | 56 | `declaration-track:5c11e437793df4f389adf1a7ed5d46b0852db0f04018b1b0a7effa252d62c393` |
| 5 | `theorem` | [closedPrimeMoment_eq_mobius](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/EstimateMobiusSplit/Variant4c52e53ac3d35bf87bba82dbe23b1848b258ece82440f2ac118c3d1ddacbd6ff.lean/declarations/closedprimemoment-eq-mobius--eb091a85cdd75aa59acf684c.md) | 62 | `result-track:eb091a85cdd75aa59acf684c50445ad121f5afdf1d9723172b716f07bea52bfa` |
| 6 | `def` | [smallDivisorMobiusMoment](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/EstimateMobiusSplit/Variant4c52e53ac3d35bf87bba82dbe23b1848b258ece82440f2ac118c3d1ddacbd6ff.lean/declarations/smalldivisormobiusmoment--930693b47ef6faa502c0a004.md) | 76 | `declaration-track:930693b47ef6faa502c0a0042c2406526cda844a577ac6cc9d97dc1d2e4ac3ed` |
| 7 | `def` | [largeDivisorMobiusMoment](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/EstimateMobiusSplit/Variant4c52e53ac3d35bf87bba82dbe23b1848b258ece82440f2ac118c3d1ddacbd6ff.lean/declarations/largedivisormobiusmoment--381d79919e8a576e790915e3.md) | 84 | `declaration-track:381d79919e8a576e790915e310e5cc1bc65a20e8afa6e006133ac399c73bc59f` |
| 8 | `theorem` | [mobiusClosedPrimeMoment_eq_small_add_large](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/EstimateMobiusSplit/Variant4c52e53ac3d35bf87bba82dbe23b1848b258ece82440f2ac118c3d1ddacbd6ff.lean/declarations/mobiusclosedprimemoment-eq-small-add-large--d3886feeee0caac67ba64e97.md) | 93 | `result-track:d3886feeee0caac67ba64e97f2324eef1424c8175d3c3a03b57bd92278e46e21` |
| 9 | `theorem` | [closedPrimeMoment_eq_small_add_large](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/EstimateMobiusSplit/Variant4c52e53ac3d35bf87bba82dbe23b1848b258ece82440f2ac118c3d1ddacbd6ff.lean/declarations/closedprimemoment-eq-small-add-large--3ab14e7bab63d84ba2d366db.md) | 115 | `result-track:3ab14e7bab63d84ba2d366dbecf08e05d040f461450c04205342c6b90b328859` |
| 10 | `theorem` | [primeSmoothDefect_eq_mobius_split](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/EstimateMobiusSplit/Variant4c52e53ac3d35bf87bba82dbe23b1848b258ece82440f2ac118c3d1ddacbd6ff.lean/declarations/primesmoothdefect-eq-mobius-split--6be32ade0a167d80e223ec25.md) | 125 | `result-track:6be32ade0a167d80e223ec25f3cdceba42e8ae9e43504af8537b1090c60a5be8` |
| 11 | `theorem` | [largeDivisorMobiusMoment_boundary_excluded](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/EstimateMobiusSplit/Variant4c52e53ac3d35bf87bba82dbe23b1848b258ece82440f2ac118c3d1ddacbd6ff.lean/declarations/largedivisormobiusmoment-boundary-excluded--2bd9c681b09b53b136de65bc.md) | 136 | `result-track:2bd9c681b09b53b136de65bc53e68affd6aa5a6999e426fd320ebf15b44d583c` |
| 12 | `def` | [MobiusSplitCheckpoint](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/EstimateMobiusSplit/Variant4c52e53ac3d35bf87bba82dbe23b1848b258ece82440f2ac118c3d1ddacbd6ff.lean/declarations/mobiussplitcheckpoint--673d6570e0980f16031d331a.md) | 145 | `declaration-track:673d6570e0980f16031d331a6525fc0a5692ac1217e7c3cb090ed7910dd00f96` |
| 13 | `theorem` | [mobius_split_checkpoint](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/EstimateMobiusSplit/Variant4c52e53ac3d35bf87bba82dbe23b1848b258ece82440f2ac118c3d1ddacbd6ff.lean/declarations/mobius-split-checkpoint--44884ff692c0f648dcf5c625.md) | 156 | `result-track:44884ff692c0f648dcf5c625909ed9396d5cb0d793dfd221a01a2d9bb4206593` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
