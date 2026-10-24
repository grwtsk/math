# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.LocallyUniformLimit.Variant37441e3338ec2de0a321d2648c0f1592d0dfd6d7e6af8b244689a6ce1b8c4c25

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "03f3d9a6bf0df6146dde5007fd820fb253b328cb",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LocallyUniformLimit/Variant37441e3338ec2de0a321d2648c0f1592d0dfd6d7e6af8b244689a6ce1b8c4c25.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LocallyUniformLimit/Variant37441e3338ec2de0a321d2648c0f1592d0dfd6d7e6af8b244689a6ce1b8c4c25.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LocallyUniformLimit/Variant37441e3338ec2de0a321d2648c0f1592d0dfd6d7e6af8b244689a6ce1b8c4c25.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `03f3d9a6bf0df6146dde5007fd820fb253b328cb`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LocallyUniformLimit/Variant37441e3338ec2de0a321d2648c0f1592d0dfd6d7e6af8b244689a6ce1b8c4c25.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/LocallyUniformLimit/Variant37441e3338ec2de0a321d2648c0f1592d0dfd6d7e6af8b244689a6ce1b8c4c25.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.RemovableSingularity` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.UniformLimitsDeriv` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.FunctionSeries` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cderiv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LocallyUniformLimit/Variant37441e3338ec2de0a321d2648c0f1592d0dfd6d7e6af8b244689a6ce1b8c4c25.lean/declarations/cderiv--c7e580bd60390aed0231e9b9.md) | 39 | `declaration-track:c7e580bd60390aed0231e9b978c2ce5b857f11d30220a20a89f2e7b134669841` |
| 2 | `theorem` | [cderiv_eq_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LocallyUniformLimit/Variant37441e3338ec2de0a321d2648c0f1592d0dfd6d7e6af8b244689a6ce1b8c4c25.lean/declarations/cderiv-eq-deriv--89c9e7ab6b3b780bcfc8efcb.md) | 42 | `result-track:89c9e7ab6b3b780bcfc8efcbbbc0dc32196c61ac8a25c1c80d1123f4198d8fcf` |
| 3 | `theorem` | [norm_cderiv_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LocallyUniformLimit/Variant37441e3338ec2de0a321d2648c0f1592d0dfd6d7e6af8b244689a6ce1b8c4c25.lean/declarations/norm-cderiv-le--48bc88a80d2d34763839c4b0.md) | 46 | `result-track:48bc88a80d2d34763839c4b0ff2cc7d7daffba30d9e6d4c88c19f2af64e81de3` |
| 4 | `theorem` | [cderiv_sub](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LocallyUniformLimit/Variant37441e3338ec2de0a321d2648c0f1592d0dfd6d7e6af8b244689a6ce1b8c4c25.lean/declarations/cderiv-sub--5e4a9126c525e1097a141490.md) | 62 | `result-track:5e4a9126c525e1097a14149017fe7fb949e5d806e12cbdefb4aa3880da5a9d45` |
| 5 | `theorem` | [norm_cderiv_lt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LocallyUniformLimit/Variant37441e3338ec2de0a321d2648c0f1592d0dfd6d7e6af8b244689a6ce1b8c4c25.lean/declarations/norm-cderiv-lt--ed79308e29f2663802ad3ba9.md) | 73 | `result-track:ed79308e29f2663802ad3ba9ceb380eb817951ecb49b970a82928a7b45d5eac5` |
| 6 | `theorem` | [norm_cderiv_sub_lt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LocallyUniformLimit/Variant37441e3338ec2de0a321d2648c0f1592d0dfd6d7e6af8b244689a6ce1b8c4c25.lean/declarations/norm-cderiv-sub-lt--45e1447631a4786ae8f928eb.md) | 82 | `result-track:45e1447631a4786ae8f928eb423786b88c503d7ee30f6337bfd3bb13d43f609b` |
| 7 | `theorem` | [_root_.TendstoUniformlyOn.cderiv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LocallyUniformLimit/Variant37441e3338ec2de0a321d2648c0f1592d0dfd6d7e6af8b244689a6ce1b8c4c25.lean/declarations/root-tendstouniformlyon-cderiv--31410040b18f09eca88e86a5.md) | 87 | `result-track:31410040b18f09eca88e86a5a9bd1d9af93a8e8e123a0e18c3cb7e4217c0e20c` |
| 8 | `theorem` | [tendstoUniformlyOn_deriv_of_cthickening_subset](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LocallyUniformLimit/Variant37441e3338ec2de0a321d2648c0f1592d0dfd6d7e6af8b244689a6ce1b8c4c25.lean/declarations/tendstouniformlyon-deriv-of-cthickening-subset--44267a709e9b91943e2f15a1.md) | 110 | `result-track:44267a709e9b91943e2f15a1d22aa9bd454a3e6db95bd4cce77339cd9f068127` |
| 9 | `theorem` | [exists_cthickening_tendstoUniformlyOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LocallyUniformLimit/Variant37441e3338ec2de0a321d2648c0f1592d0dfd6d7e6af8b244689a6ce1b8c4c25.lean/declarations/exists-cthickening-tendstouniformlyon--5248efeda173360eaf0f7237.md) | 123 | `result-track:5248efeda173360eaf0f7237e4f73b70d187b248ac429ac027295381b3e685c9` |
| 10 | `theorem` | [_root_.TendstoLocallyUniformlyOn.differentiableOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LocallyUniformLimit/Variant37441e3338ec2de0a321d2648c0f1592d0dfd6d7e6af8b244689a6ce1b8c4c25.lean/declarations/root-tendstolocallyuniformlyon-differentiableon--9f7a8f1aac4450734055bccc.md) | 132 | `result-track:9f7a8f1aac4450734055bccc6b7034aa156373adb7d0966d66834b69d27f8861` |
| 11 | `theorem` | [_root_.TendstoLocallyUniformlyOn.deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LocallyUniformLimit/Variant37441e3338ec2de0a321d2648c0f1592d0dfd6d7e6af8b244689a6ce1b8c4c25.lean/declarations/root-tendstolocallyuniformlyon-deriv--c7ccdec5e89b460550f5da2b.md) | 150 | `result-track:c7ccdec5e89b460550f5da2bb36eba8bdb5de419e091f044f84684b2c0a9e0c2` |
| 12 | `theorem` | [differentiableOn_tsum_of_summable_norm](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LocallyUniformLimit/Variant37441e3338ec2de0a321d2648c0f1592d0dfd6d7e6af8b244689a6ce1b8c4c25.lean/declarations/differentiableon-tsum-of-summable-norm--32fb885f307c630f05487e33.md) | 167 | `result-track:32fb885f307c630f05487e330035110ed242e78792524c79e1d931b647fd5d1b` |
| 13 | `theorem` | [hasSum_deriv_of_summable_norm](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LocallyUniformLimit/Variant37441e3338ec2de0a321d2648c0f1592d0dfd6d7e6af8b244689a6ce1b8c4c25.lean/declarations/hassum-deriv-of-summable-norm--658391cb3240838ee489b2c4.md) | 179 | `result-track:658391cb3240838ee489b2c4db884ea0d36502d0c479a011f81dafcfce41d016` |
| 14 | `theorem` | [logDeriv_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LocallyUniformLimit/Variant37441e3338ec2de0a321d2648c0f1592d0dfd6d7e6af8b244689a6ce1b8c4c25.lean/declarations/logderiv-tendsto--7417e7ea58383e756765ebab.md) | 196 | `result-track:7417e7ea58383e756765ebab1c2e1b1c4ec52c356a57b16366764bfaf79a19d4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
