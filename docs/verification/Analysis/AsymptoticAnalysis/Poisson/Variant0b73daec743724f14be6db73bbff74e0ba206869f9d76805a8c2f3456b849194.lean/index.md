# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.Poisson.Variant0b73daec743724f14be6db73bbff74e0ba206869f9d76805a8c2f3456b849194

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "78a61f9d425c3c55b23c4ddb612b986f0bcb34f3",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Poisson/Variant0b73daec743724f14be6db73bbff74e0ba206869f9d76805a8c2f3456b849194.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/Poisson/Variant0b73daec743724f14be6db73bbff74e0ba206869f9d76805a8c2f3456b849194.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/Poisson/Variant0b73daec743724f14be6db73bbff74e0ba206869f9d76805a8c2f3456b849194.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `78a61f9d425c3c55b23c4ddb612b986f0bcb34f3`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Poisson/Variant0b73daec743724f14be6db73bbff74e0ba206869f9d76805a8c2f3456b849194.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Poisson/Variant0b73daec743724f14be6db73bbff74e0ba206869f9d76805a8c2f3456b849194.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Fourier.PoissonSummation` — import line 26; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Haar.NormedSpace` — import line 27; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Prod` — import line 28; external provider; requires a separately pinned dependency.
- `Zeta23.Defs` — import line 29; external provider; requires a separately pinned dependency.
- `Zeta23.Poisson.PaperFT` — import line 30; external provider; requires a separately pinned dependency.
- `Zeta23.Taper.Strip` — import line 31; external provider; requires a separately pinned dependency.
- `Zeta23.Taper.Fourier` — import line 32; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isBigO_of_decay](../../../../../mathematics/Analysis/AsymptoticAnalysis/Poisson/Variant0b73daec743724f14be6db73bbff74e0ba206869f9d76805a8c2f3456b849194.lean/declarations/isbigo-of-decay--3c6ed0a599cec0883b507964.md) | 45 | `result-track:3c6ed0a599cec0883b50796455c8e944210912af3491a6d0169366853199248b` |
| 2 | `def` | [gInt](../../../../../mathematics/Analysis/AsymptoticAnalysis/Poisson/Variant0b73daec743724f14be6db73bbff74e0ba206869f9d76805a8c2f3456b849194.lean/declarations/gint--361a9b93f6d2be7b97a4bf9f.md) | 88 | `declaration-track:361a9b93f6d2be7b97a4bf9fc47d78a3c5c6cf04631ad4c7c4c39520c8fe0e68` |
| 3 | `def` | [Gaux](../../../../../mathematics/Analysis/AsymptoticAnalysis/Poisson/Variant0b73daec743724f14be6db73bbff74e0ba206869f9d76805a8c2f3456b849194.lean/declarations/gaux--d01899b455cc4d96e24e6d09.md) | 93 | `declaration-track:d01899b455cc4d96e24e6d096f1ecec45a5ad59a0dcec02761152c6106d8bae1` |
| 4 | `theorem` | [gInt_eq_zero_of_not_mem](../../../../../mathematics/Analysis/AsymptoticAnalysis/Poisson/Variant0b73daec743724f14be6db73bbff74e0ba206869f9d76805a8c2f3456b849194.lean/declarations/gint-eq-zero-of-not-mem--f4bb7a4ae0a4f72abc4f2378.md) | 97 | `result-track:f4bb7a4ae0a4f72abc4f23787245bed31b2af34fee06638abaddd209cac1fdef` |
| 5 | `theorem` | [gInt_continuous](../../../../../mathematics/Analysis/AsymptoticAnalysis/Poisson/Variant0b73daec743724f14be6db73bbff74e0ba206869f9d76805a8c2f3456b849194.lean/declarations/gint-continuous--9ee004a9416d4b6f4177906b.md) | 113 | `result-track:9ee004a9416d4b6f4177906b32f0b76fbedff94d3a127b5a639142ed1adbfe55` |
| 6 | `theorem` | [gInt_hasCompactSupport](../../../../../mathematics/Analysis/AsymptoticAnalysis/Poisson/Variant0b73daec743724f14be6db73bbff74e0ba206869f9d76805a8c2f3456b849194.lean/declarations/gint-hascompactsupport--676688017f1fe2279b33e235.md) | 118 | `result-track:676688017f1fe2279b33e235e061550a1fa8075704902d659c423ecadfcde063` |
| 7 | `theorem` | [gInt_integrable_prod](../../../../../mathematics/Analysis/AsymptoticAnalysis/Poisson/Variant0b73daec743724f14be6db73bbff74e0ba206869f9d76805a8c2f3456b849194.lean/declarations/gint-integrable-prod--7ca463ad667455bf73032cda.md) | 132 | `result-track:7ca463ad667455bf73032cdad01c3fbf48207ee0c77cc728e6a09f2ed04c477c` |
| 8 | `theorem` | [Gaux_continuous](../../../../../mathematics/Analysis/AsymptoticAnalysis/Poisson/Variant0b73daec743724f14be6db73bbff74e0ba206869f9d76805a8c2f3456b849194.lean/declarations/gaux-continuous--f8f25c87b4dd8167fa927cc8.md) | 138 | `result-track:f8f25c87b4dd8167fa927cc8ceed9064dbff25007561d78e013840f96a15e200` |
| 9 | `theorem` | [Gaux_eq_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/Poisson/Variant0b73daec743724f14be6db73bbff74e0ba206869f9d76805a8c2f3456b849194.lean/declarations/gaux-eq-zero--ff7560857d4656939cfc74f9.md) | 154 | `result-track:ff7560857d4656939cfc74f93ddb71500af8740ab59b256483cd6d2536d58506` |
| 10 | `theorem` | [Gaux_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/Poisson/Variant0b73daec743724f14be6db73bbff74e0ba206869f9d76805a8c2f3456b849194.lean/declarations/gaux-zero--fc5894f27f576b551fcdccac.md) | 164 | `result-track:fc5894f27f576b551fcdccac4729f015d9bd39ebc2211e40191718160be5f234` |
| 11 | `theorem` | [cexp_bookkeeping](../../../../../mathematics/Analysis/AsymptoticAnalysis/Poisson/Variant0b73daec743724f14be6db73bbff74e0ba206869f9d76805a8c2f3456b849194.lean/declarations/cexp-bookkeeping--5dd070b7fa9a7fd21f596289.md) | 177 | `result-track:5dd070b7fa9a7fd21f596289316b8f60779909a9d6e7ac050bab45fbfdd344e7` |
| 12 | `theorem` | [fourier_Gaux](../../../../../mathematics/Analysis/AsymptoticAnalysis/Poisson/Variant0b73daec743724f14be6db73bbff74e0ba206869f9d76805a8c2f3456b849194.lean/declarations/fourier-gaux--90cead640c2f35fa8de4587d.md) | 189 | `result-track:90cead640c2f35fa8de4587d82fd359d2fed8c12db10e9dd7713e02b7d9a1a9b` |
| 13 | `theorem` | [hasSum_paperFT_mul_paperFT](../../../../../mathematics/Analysis/AsymptoticAnalysis/Poisson/Variant0b73daec743724f14be6db73bbff74e0ba206869f9d76805a8c2f3456b849194.lean/declarations/hassum-paperft-mul-paperft--a75d95dc5a04e17bbc488fd1.md) | 263 | `result-track:a75d95dc5a04e17bbc488fd17744082094f19c0677024a1d7665deab5ffdc577` |
| 14 | `theorem` | [phiHat_decay](../../../../../mathematics/Analysis/AsymptoticAnalysis/Poisson/Variant0b73daec743724f14be6db73bbff74e0ba206869f9d76805a8c2f3456b849194.lean/declarations/phihat-decay--ea728ec09129a2a271d5c86b.md) | 335 | `result-track:ea728ec09129a2a271d5c86bf44eb3607c99b7943738c214ba58872f725bb0b0` |
| 15 | `theorem` | [hasSum_phiHatR_mul](../../../../../mathematics/Analysis/AsymptoticAnalysis/Poisson/Variant0b73daec743724f14be6db73bbff74e0ba206869f9d76805a8c2f3456b849194.lean/declarations/hassum-phihatr-mul--36242a271507900f80ae71d3.md) | 347 | `result-track:36242a271507900f80ae71d3227d99d29802007712374a5ec7904e78ee987eee` |
| 16 | `theorem` | [hasSum_phiHatR_sq](../../../../../mathematics/Analysis/AsymptoticAnalysis/Poisson/Variant0b73daec743724f14be6db73bbff74e0ba206869f9d76805a8c2f3456b849194.lean/declarations/hassum-phihatr-sq--bb07268b01d1fb29344b42d1.md) | 367 | `result-track:bb07268b01d1fb29344b42d1c36f5462dab115bf30f5d4de60901d3cad2f5d10` |
| 17 | `theorem` | [w_pos'](../../../../../mathematics/Analysis/AsymptoticAnalysis/Poisson/Variant0b73daec743724f14be6db73bbff74e0ba206869f9d76805a8c2f3456b849194.lean/declarations/w-pos--3d39bdab34c0a07f2aa4ae8d.md) | 381 | `result-track:3d39bdab34c0a07f2aa4ae8db10e8c870ab9e7a8e41ee7a7bed51c1e501b5de1` |
| 18 | `theorem` | [hasSum_phiHatR_mul](../../../../../mathematics/Analysis/AsymptoticAnalysis/Poisson/Variant0b73daec743724f14be6db73bbff74e0ba206869f9d76805a8c2f3456b849194.lean/declarations/hassum-phihatr-mul--09163f953ed876d100e6ab8a.md) | 388 | `result-track:09163f953ed876d100e6ab8abbade0182ebcbe9949b3fd116b1b48a86f3cfdb6` |
| 19 | `theorem` | [hasSum_phiHatR_sq](../../../../../mathematics/Analysis/AsymptoticAnalysis/Poisson/Variant0b73daec743724f14be6db73bbff74e0ba206869f9d76805a8c2f3456b849194.lean/declarations/hassum-phihatr-sq--89f9af2bdb683cc5162b1a3e.md) | 394 | `result-track:89f9af2bdb683cc5162b1a3eccafb3b651e1778d4800be088db597a3c4c7c43d` |
| 20 | `theorem` | [tsum_phiHatR_sq](../../../../../mathematics/Analysis/AsymptoticAnalysis/Poisson/Variant0b73daec743724f14be6db73bbff74e0ba206869f9d76805a8c2f3456b849194.lean/declarations/tsum-phihatr-sq--e7a4566d20321ac1b0f6b8aa.md) | 398 | `result-track:e7a4566d20321ac1b0f6b8aa64f6b5c6bf66160ff3d8e3b107b65e367cb3ede5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
