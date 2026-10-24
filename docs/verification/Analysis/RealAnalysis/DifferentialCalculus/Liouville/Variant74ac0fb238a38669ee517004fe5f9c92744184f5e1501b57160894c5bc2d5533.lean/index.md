# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Liouville.Variant74ac0fb238a38669ee517004fe5f9c92744184f5e1501b57160894c5bc2d5533

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "02cec453db1ce465ed363c5e67790c0830f73e3f",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Liouville/Variant74ac0fb238a38669ee517004fe5f9c92744184f5e1501b57160894c5bc2d5533.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Liouville/Variant74ac0fb238a38669ee517004fe5f9c92744184f5e1501b57160894c5bc2d5533.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Liouville/Variant74ac0fb238a38669ee517004fe5f9c92744184f5e1501b57160894c5bc2d5533.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `02cec453db1ce465ed363c5e67790c0830f73e3f`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Liouville/Variant74ac0fb238a38669ee517004fe5f9c92744184f5e1501b57160894c5bc2d5533.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Liouville/Variant74ac0fb238a38669ee517004fe5f9c92744184f5e1501b57160894c5bc2d5533.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.CauchyIntegral` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.FDeriv.Analytic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.Completion` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Liouville/Variant74ac0fb238a38669ee517004fe5f9c92744184f5e1501b57160894c5bc2d5533.lean/declarations/macro-rules--ef9ce61048f3f6373fd49223.md) | 34 | `declaration-track:ef9ce61048f3f6373fd4922306cfc9c3955e758602b0180d78c83b452beb8a95` |
| 2 | `theorem` | [deriv_eq_smul_circleIntegral](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Liouville/Variant74ac0fb238a38669ee517004fe5f9c92744184f5e1501b57160894c5bc2d5533.lean/declarations/deriv-eq-smul-circleintegral--e2a9fe815eb20d611bdd8287.md) | 56 | `result-track:e2a9fe815eb20d611bdd82878e4193dac33340e5388323a310cf6ea97ab26c97` |
| 3 | `theorem` | [norm_deriv_le_aux](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Liouville/Variant74ac0fb238a38669ee517004fe5f9c92744184f5e1501b57160894c5bc2d5533.lean/declarations/norm-deriv-le-aux--d7b912a4545a1c7815c9b73e.md) | 64 | `result-track:d7b912a4545a1c7815c9b73eb31544c7ce1b16c499823c1c6d4f80f867bbc6e2` |
| 4 | `theorem` | [norm_deriv_le_of_forall_mem_sphere_norm_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Liouville/Variant74ac0fb238a38669ee517004fe5f9c92744184f5e1501b57160894c5bc2d5533.lean/declarations/norm-deriv-le-of-forall-mem-sphere-norm-le--a46dcd11f3918dcbe185ce3f.md) | 82 | `result-track:a46dcd11f3918dcbe185ce3fff573dbfb6198abbaeb658498f2f357cf76bc30f` |
| 5 | `theorem` | [liouville_theorem_aux](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Liouville/Variant74ac0fb238a38669ee517004fe5f9c92744184f5e1501b57160894c5bc2d5533.lean/declarations/liouville-theorem-aux--71dea2daed18fdfac4877b47.md) | 99 | `result-track:71dea2daed18fdfac4877b479ee16d44d758330a559ce00c4894619681845a97` |
| 6 | `theorem` | [apply_eq_apply_of_bounded](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Liouville/Variant74ac0fb238a38669ee517004fe5f9c92744184f5e1501b57160894c5bc2d5533.lean/declarations/apply-eq-apply-of-bounded--78ab6bcb81a5f7d9f91ae205.md) | 122 | `result-track:78ab6bcb81a5f7d9f91ae2059723fc54afe0d7c96b7de5258e1efc0c598344f5` |
| 7 | `theorem` | [exists_const_forall_eq_of_bounded](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Liouville/Variant74ac0fb238a38669ee517004fe5f9c92744184f5e1501b57160894c5bc2d5533.lean/declarations/exists-const-forall-eq-of-bounded--7b2154d223225d8bc1d69e81.md) | 132 | `result-track:7b2154d223225d8bc1d69e81fdde64984ad61088bcf53b7dc5b3e09cf9dcc88c` |
| 8 | `theorem` | [exists_eq_const_of_bounded](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Liouville/Variant74ac0fb238a38669ee517004fe5f9c92744184f5e1501b57160894c5bc2d5533.lean/declarations/exists-eq-const-of-bounded--e1e054376670b221b3938b65.md) | 138 | `result-track:e1e054376670b221b3938b6559965214ef3b6e8163bad9467f2861962c738c55` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
