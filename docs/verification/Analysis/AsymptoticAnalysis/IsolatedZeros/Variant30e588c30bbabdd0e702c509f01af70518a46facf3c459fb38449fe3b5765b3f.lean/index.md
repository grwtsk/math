# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.IsolatedZeros.Variant30e588c30bbabdd0e702c509f01af70518a46facf3c459fb38449fe3b5765b3f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f8dcc5e5f065eec7e873994c65e8aff6cd580528",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/IsolatedZeros/Variant30e588c30bbabdd0e702c509f01af70518a46facf3c459fb38449fe3b5765b3f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/IsolatedZeros/Variant30e588c30bbabdd0e702c509f01af70518a46facf3c459fb38449fe3b5765b3f.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/IsolatedZeros/Variant30e588c30bbabdd0e702c509f01af70518a46facf3c459fb38449fe3b5765b3f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f8dcc5e5f065eec7e873994c65e8aff6cd580528`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/IsolatedZeros/Variant30e588c30bbabdd0e702c509f01af70518a46facf3c459fb38449fe3b5765b3f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/IsolatedZeros/Variant30e588c30bbabdd0e702c509f01af70518a46facf3c459fb38449fe3b5765b3f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Analytic.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Dslope` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.FDeriv.Analytic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.FormalMultilinearSeries` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Analytic.Uniqueness` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [hasSum_at_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/IsolatedZeros/Variant30e588c30bbabdd0e702c509f01af70518a46facf3c459fb38449fe3b5765b3f.lean/declarations/hassum-at-zero--98a262c04a2b5141d4a700eb.md) | 55 | `result-track:98a262c04a2b5141d4a700eb0320e48a5baf80b60ed672ba212061cf44f9ccd9` |
| 2 | `theorem` | [exists_hasSum_smul_of_apply_eq_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/IsolatedZeros/Variant30e588c30bbabdd0e702c509f01af70518a46facf3c459fb38449fe3b5765b3f.lean/declarations/exists-hassum-smul-of-apply-eq-zero--9621cad265451b87f466deb0.md) | 62 | `result-track:9621cad265451b87f466deb00d89473543569c6b1e219b38f697923ffe0a710e` |
| 3 | `theorem` | [has_fpower_series_dslope_fslope](../../../../../mathematics/Analysis/AsymptoticAnalysis/IsolatedZeros/Variant30e588c30bbabdd0e702c509f01af70518a46facf3c459fb38449fe3b5765b3f.lean/declarations/has-fpower-series-dslope-fslope--c24fd88d7dc64ed76cb3719b.md) | 83 | `result-track:c24fd88d7dc64ed76cb3719b720f3283a79f216e702498d38a292fc299e6d77f` |
| 4 | `theorem` | [has_fpower_series_iterate_dslope_fslope](../../../../../mathematics/Analysis/AsymptoticAnalysis/IsolatedZeros/Variant30e588c30bbabdd0e702c509f01af70518a46facf3c459fb38449fe3b5765b3f.lean/declarations/has-fpower-series-iterate-dslope-fslope--a74371a219b69e5dbe77ceab.md) | 97 | `result-track:a74371a219b69e5dbe77ceab94956467c7a0f231cb4ab6a49aafb2fef5c0982a` |
| 5 | `theorem` | [iterate_dslope_fslope_ne_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/IsolatedZeros/Variant30e588c30bbabdd0e702c509f01af70518a46facf3c459fb38449fe3b5765b3f.lean/declarations/iterate-dslope-fslope-ne-zero--35154a5a9b4df6622c755feb.md) | 104 | `result-track:35154a5a9b4df6622c755febe9256dae614d641e6e3f318f431c3744b08edcdd` |
| 6 | `theorem` | [eq_pow_order_mul_iterate_dslope](../../../../../mathematics/Analysis/AsymptoticAnalysis/IsolatedZeros/Variant30e588c30bbabdd0e702c509f01af70518a46facf3c459fb38449fe3b5765b3f.lean/declarations/eq-pow-order-mul-iterate-dslope--b980bdb9cc465233ddf25fad.md) | 110 | `result-track:b980bdb9cc465233ddf25fadfd61f4092246828a471d3bebf4170ccb4629a569` |
| 7 | `theorem` | [locally_ne_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/IsolatedZeros/Variant30e588c30bbabdd0e702c509f01af70518a46facf3c459fb38449fe3b5765b3f.lean/declarations/locally-ne-zero--c07d0127113dd321810d4137.md) | 122 | `result-track:c07d0127113dd321810d41379e1e6f9c27b1f957e49d1d0c73fc50d94ea36c9e` |
| 8 | `theorem` | [locally_zero_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/IsolatedZeros/Variant30e588c30bbabdd0e702c509f01af70518a46facf3c459fb38449fe3b5765b3f.lean/declarations/locally-zero-iff--d42f9b7ec19884d432c0057a.md) | 130 | `result-track:d42f9b7ec19884d432c0057a382c81d9b064f096b71f55229a5bd7c1de54dff8` |
| 9 | `theorem` | [eventually_eq_zero_or_eventually_ne_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/IsolatedZeros/Variant30e588c30bbabdd0e702c509f01af70518a46facf3c459fb38449fe3b5765b3f.lean/declarations/eventually-eq-zero-or-eventually-ne-zero--d24091f7bde06f62ae694e3e.md) | 141 | `result-track:d24091f7bde06f62ae694e3e13dec8f2e1e3b91bede0f64a25958c6b2d9492ae` |
| 10 | `theorem` | [eventually_eq_or_eventually_ne](../../../../../mathematics/Analysis/AsymptoticAnalysis/IsolatedZeros/Variant30e588c30bbabdd0e702c509f01af70518a46facf3c459fb38449fe3b5765b3f.lean/declarations/eventually-eq-or-eventually-ne--4a97eef051dada80faf7d0fa.md) | 149 | `result-track:4a97eef051dada80faf7d0fabaa8267e160fc45033ed26811f93cc9eb4b7b0c5` |
| 11 | `theorem` | [frequently_zero_iff_eventually_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/IsolatedZeros/Variant30e588c30bbabdd0e702c509f01af70518a46facf3c459fb38449fe3b5765b3f.lean/declarations/frequently-zero-iff-eventually-zero--6b70adcf4a17413be753cba1.md) | 154 | `result-track:6b70adcf4a17413be753cba1cd63b339e6833fedc88ccd292d132541de820032` |
| 12 | `theorem` | [frequently_eq_iff_eventually_eq](../../../../../mathematics/Analysis/AsymptoticAnalysis/IsolatedZeros/Variant30e588c30bbabdd0e702c509f01af70518a46facf3c459fb38449fe3b5765b3f.lean/declarations/frequently-eq-iff-eventually-eq--8ebe2ab0781f65133e2397ea.md) | 160 | `result-track:8ebe2ab0781f65133e2397ea1ef38b047ec609e33feae27225926ef2642dcf1c` |
| 13 | `theorem` | [eqOn_zero_of_preconnected_of_frequently_eq_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/IsolatedZeros/Variant30e588c30bbabdd0e702c509f01af70518a46facf3c459fb38449fe3b5765b3f.lean/declarations/eqon-zero-of-preconnected-of-frequently-eq-zero--c2c16daa2d57d5095fc80bf2.md) | 176 | `result-track:c2c16daa2d57d5095fc80bf2ac956e6ebe6e13be2b3ffa161664ce3492dd40ff` |
| 14 | `theorem` | [eqOn_zero_of_preconnected_of_mem_closure](../../../../../mathematics/Analysis/AsymptoticAnalysis/IsolatedZeros/Variant30e588c30bbabdd0e702c509f01af70518a46facf3c459fb38449fe3b5765b3f.lean/declarations/eqon-zero-of-preconnected-of-mem-closure--963804cf4123c024a462328b.md) | 182 | `result-track:963804cf4123c024a462328b07a8b3e349bb263eeedd636c50fef5ad7559dd98` |
| 15 | `theorem` | [eqOn_of_preconnected_of_frequently_eq](../../../../../mathematics/Analysis/AsymptoticAnalysis/IsolatedZeros/Variant30e588c30bbabdd0e702c509f01af70518a46facf3c459fb38449fe3b5765b3f.lean/declarations/eqon-of-preconnected-of-frequently-eq--e15443c77429df170670e234.md) | 193 | `result-track:e15443c77429df170670e234594ecc5a27d2d6b5df858b29ccb791c0c31df8aa` |
| 16 | `theorem` | [eqOn_of_preconnected_of_mem_closure](../../../../../mathematics/Analysis/AsymptoticAnalysis/IsolatedZeros/Variant30e588c30bbabdd0e702c509f01af70518a46facf3c459fb38449fe3b5765b3f.lean/declarations/eqon-of-preconnected-of-mem-closure--be20aa6caf93f092c8c5446f.md) | 201 | `result-track:be20aa6caf93f092c8c5446fb99034722c536b09beed9d96990aac968a71c534` |
| 17 | `theorem` | [eq_of_frequently_eq](../../../../../mathematics/Analysis/AsymptoticAnalysis/IsolatedZeros/Variant30e588c30bbabdd0e702c509f01af70518a46facf3c459fb38449fe3b5765b3f.lean/declarations/eq-of-frequently-eq--ab3c7230b4ff82c4fe803a55.md) | 212 | `result-track:ab3c7230b4ff82c4fe803a55c21556eec81d9c22d865d839ab3b3ccd978ec412` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
