# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.EstimateMobiusSplit.Variantf0ca32798d5cf8ff52cf00249e8fa68724998a3d613c072eff64f5bd5945a3a8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "097bed1f2b53687613e8d5efa6dbe4533b90326b",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/EstimateMobiusSplit/Variantf0ca32798d5cf8ff52cf00249e8fa68724998a3d613c072eff64f5bd5945a3a8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/EstimateMobiusSplit/Variantf0ca32798d5cf8ff52cf00249e8fa68724998a3d613c072eff64f5bd5945a3a8.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/EstimateMobiusSplit/Variantf0ca32798d5cf8ff52cf00249e8fa68724998a3d613c072eff64f5bd5945a3a8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `097bed1f2b53687613e8d5efa6dbe4533b90326b`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/EstimateMobiusSplit/Variantf0ca32798d5cf8ff52cf00249e8fa68724998a3d613c072eff64f5bd5945a3a8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/EstimateMobiusSplit/Variantf0ca32798d5cf8ff52cf00249e8fa68724998a3d613c072eff64f5bd5945a3a8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimatePrimeSmoothDefect` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ArithmeticFunction.Moebius` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [closedPrimeWeight](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/EstimateMobiusSplit/Variantf0ca32798d5cf8ff52cf00249e8fa68724998a3d613c072eff64f5bd5945a3a8.lean/declarations/closedprimeweight--9b89726475afb147e391115a.md) | 39 | `declaration-track:9b89726475afb147e391115a78c0feabc9cf88e87c2c3e9d67e230dfe9a02174` |
| 2 | `def` | [mobiusLogTerm](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/EstimateMobiusSplit/Variantf0ca32798d5cf8ff52cf00249e8fa68724998a3d613c072eff64f5bd5945a3a8.lean/declarations/mobiuslogterm--ee14a856d5e4b6454e429237.md) | 45 | `declaration-track:ee14a856d5e4b6454e429237f66912b67446cd58ace35c1f1a81d25b3d477d5c` |
| 3 | `theorem` | [vonMangoldt_eq_mobius_log_convolution](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/EstimateMobiusSplit/Variantf0ca32798d5cf8ff52cf00249e8fa68724998a3d613c072eff64f5bd5945a3a8.lean/declarations/vonmangoldt-eq-mobius-log-convolution--bfd5d5e7377304dddd900a44.md) | 50 | `result-track:bfd5d5e7377304dddd900a44cd2cd12cca14d8777acbd50e138f778e4970c9fb` |
| 4 | `def` | [mobiusClosedPrimeMoment](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/EstimateMobiusSplit/Variantf0ca32798d5cf8ff52cf00249e8fa68724998a3d613c072eff64f5bd5945a3a8.lean/declarations/mobiusclosedprimemoment--2cc1d1b7154f5abb96276d1e.md) | 64 | `declaration-track:2cc1d1b7154f5abb96276d1ed93528f0e5d3029bb8ca81be0ef4bbd2f2be094a` |
| 5 | `theorem` | [closedPrimeMoment_eq_mobius](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/EstimateMobiusSplit/Variantf0ca32798d5cf8ff52cf00249e8fa68724998a3d613c072eff64f5bd5945a3a8.lean/declarations/closedprimemoment-eq-mobius--9374e3a444d6728ac3d6353f.md) | 70 | `result-track:9374e3a444d6728ac3d6353f62b2c0e6514978133a70c152d143045445d22dc8` |
| 6 | `def` | [smallDivisorMobiusMoment](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/EstimateMobiusSplit/Variantf0ca32798d5cf8ff52cf00249e8fa68724998a3d613c072eff64f5bd5945a3a8.lean/declarations/smalldivisormobiusmoment--bfdd7717cc35c5894d13f0ae.md) | 84 | `declaration-track:bfdd7717cc35c5894d13f0aea7fc4bf295f050c5433eeb205049852e48ea2580` |
| 7 | `def` | [largeDivisorMobiusMoment](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/EstimateMobiusSplit/Variantf0ca32798d5cf8ff52cf00249e8fa68724998a3d613c072eff64f5bd5945a3a8.lean/declarations/largedivisormobiusmoment--d2efad1768c860b1d68d6253.md) | 92 | `declaration-track:d2efad1768c860b1d68d62536049ef5511333e8ae549107038e05259248163cf` |
| 8 | `theorem` | [mobiusClosedPrimeMoment_eq_small_add_large](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/EstimateMobiusSplit/Variantf0ca32798d5cf8ff52cf00249e8fa68724998a3d613c072eff64f5bd5945a3a8.lean/declarations/mobiusclosedprimemoment-eq-small-add-large--400214d01c7518a95580c112.md) | 101 | `result-track:400214d01c7518a95580c112f8af85711ccd083ba3a524104be8aeceb73a5002` |
| 9 | `theorem` | [closedPrimeMoment_eq_small_add_large](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/EstimateMobiusSplit/Variantf0ca32798d5cf8ff52cf00249e8fa68724998a3d613c072eff64f5bd5945a3a8.lean/declarations/closedprimemoment-eq-small-add-large--d11e2edb5253b2a2ce1c0598.md) | 123 | `result-track:d11e2edb5253b2a2ce1c05989154714c8074884cc21a4182edd979a363157556` |
| 10 | `theorem` | [primeSmoothDefect_eq_mobius_split](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/EstimateMobiusSplit/Variantf0ca32798d5cf8ff52cf00249e8fa68724998a3d613c072eff64f5bd5945a3a8.lean/declarations/primesmoothdefect-eq-mobius-split--227ceda5453d91ef2f252ad2.md) | 133 | `result-track:227ceda5453d91ef2f252ad248101fd009e20ea92938e192a1f6770698061a5e` |
| 11 | `theorem` | [largeDivisorMobiusMoment_boundary_excluded](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/EstimateMobiusSplit/Variantf0ca32798d5cf8ff52cf00249e8fa68724998a3d613c072eff64f5bd5945a3a8.lean/declarations/largedivisormobiusmoment-boundary-excluded--ced30c1be18317b017e27aa4.md) | 144 | `result-track:ced30c1be18317b017e27aa4f0e3e2056278ea395e0b3f0770ee05522fa9cf41` |
| 12 | `def` | [MobiusSplitCheckpoint](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/EstimateMobiusSplit/Variantf0ca32798d5cf8ff52cf00249e8fa68724998a3d613c072eff64f5bd5945a3a8.lean/declarations/mobiussplitcheckpoint--a6f2d04c78ee9b9c12b778c4.md) | 153 | `declaration-track:a6f2d04c78ee9b9c12b778c44a4adbe0871e1d9fdf84ff2079c88a3769c14bdc` |
| 13 | `theorem` | [mobius_split_checkpoint](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/EstimateMobiusSplit/Variantf0ca32798d5cf8ff52cf00249e8fa68724998a3d613c072eff64f5bd5945a3a8.lean/declarations/mobius-split-checkpoint--00361f2e07826e1fb148de3f.md) | 164 | `result-track:00361f2e07826e1fb148de3f9f4bad2d68ae70c263e81896fbc935fe4b30b8b2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
