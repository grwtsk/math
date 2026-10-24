# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.NormPow.Variant7c4e3104450d72796e369fceb22297a1e72aa1ebde19bcd73334d05f1d37941b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e3fd0e2563aa76d9f11cf333125fa3a6bbe19947",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/NormPow/Variant7c4e3104450d72796e369fceb22297a1e72aa1ebde19bcd73334d05f1d37941b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormPow/Variant7c4e3104450d72796e369fceb22297a1e72aa1ebde19bcd73334d05f1d37941b.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormPow/Variant7c4e3104450d72796e369fceb22297a1e72aa1ebde19bcd73334d05f1d37941b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e3fd0e2563aa76d9f11cf333125fa3a6bbe19947`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/NormPow/Variant7c4e3104450d72796e369fceb22297a1e72aa1ebde19bcd73334d05f1d37941b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/NormPow/Variant7c4e3104450d72796e369fceb22297a1e72aa1ebde19bcd73334d05f1d37941b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [hasFDerivAt_norm_rpow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormPow/Variant7c4e3104450d72796e369fceb22297a1e72aa1ebde19bcd73334d05f1d37941b.lean/declarations/hasfderivat-norm-rpow--9f4ffd4268d1f3ef11689583.md) | 41 | `result-track:9f4ffd4268d1f3ef11689583daa49969365c81af41595a51bb6b3a0d707f9518` |
| 2 | `theorem` | [differentiable_norm_rpow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormPow/Variant7c4e3104450d72796e369fceb22297a1e72aa1ebde19bcd73334d05f1d37941b.lean/declarations/differentiable-norm-rpow--778d4bf5ba24fd23f2bf65c5.md) | 64 | `result-track:778d4bf5ba24fd23f2bf65c59beeaada90809e8964983aa59d80c2d9394ce2ea` |
| 3 | `theorem` | [hasDerivAt_norm_rpow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormPow/Variant7c4e3104450d72796e369fceb22297a1e72aa1ebde19bcd73334d05f1d37941b.lean/declarations/hasderivat-norm-rpow--e12421206b3078e215731b91.md) | 68 | `result-track:e12421206b3078e215731b9108c6a0cadf419a664f04ed2b1bb391e8befe7747` |
| 4 | `theorem` | [hasDerivAt_abs_rpow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormPow/Variant7c4e3104450d72796e369fceb22297a1e72aa1ebde19bcd73334d05f1d37941b.lean/declarations/hasderivat-abs-rpow--03bc3bac541c3ba29da8deb5.md) | 72 | `result-track:03bc3bac541c3ba29da8deb5011aa4a9c490f6be8cd8fd2f64a7f2e8d450128b` |
| 5 | `theorem` | [fderiv_norm_rpow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormPow/Variant7c4e3104450d72796e369fceb22297a1e72aa1ebde19bcd73334d05f1d37941b.lean/declarations/fderiv-norm-rpow--a3e718251339c1745e211f6b.md) | 76 | `result-track:a3e718251339c1745e211f6b2d6aaacc8fca3d290eb0b595b771c47df4f2849c` |
| 6 | `theorem` | [Differentiable.fderiv_norm_rpow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormPow/Variant7c4e3104450d72796e369fceb22297a1e72aa1ebde19bcd73334d05f1d37941b.lean/declarations/differentiable-fderiv-norm-rpow--cfd84447fac3fc31dd9602be.md) | 80 | `result-track:cfd84447fac3fc31dd9602be341b4598b26bd97e3d46d5056e728ca4dca53f20` |
| 7 | `theorem` | [norm_fderiv_norm_rpow_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormPow/Variant7c4e3104450d72796e369fceb22297a1e72aa1ebde19bcd73334d05f1d37941b.lean/declarations/norm-fderiv-norm-rpow-le--668220ae193e0cea58cca3de.md) | 86 | `result-track:668220ae193e0cea58cca3de27fbebe56ca7d86af8917f898e6a51da87f10d95` |
| 8 | `theorem` | [norm_fderiv_norm_id_rpow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormPow/Variant7c4e3104450d72796e369fceb22297a1e72aa1ebde19bcd73334d05f1d37941b.lean/declarations/norm-fderiv-norm-id-rpow--995674b637ecc93bab6f140e.md) | 98 | `result-track:995674b637ecc93bab6f140ec05b707c625af847020ca1a6a1e2a88d93e524da` |
| 9 | `theorem` | [nnnorm_fderiv_norm_rpow_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormPow/Variant7c4e3104450d72796e369fceb22297a1e72aa1ebde19bcd73334d05f1d37941b.lean/declarations/nnnorm-fderiv-norm-rpow-le--782653853ac5c3005a9ef1d4.md) | 106 | `result-track:782653853ac5c3005a9ef1d4e882256dc1483549f8aa441f13befab2037b68da` |
| 10 | `lemma` | [enorm_fderiv_norm_rpow_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormPow/Variant7c4e3104450d72796e369fceb22297a1e72aa1ebde19bcd73334d05f1d37941b.lean/declarations/enorm-fderiv-norm-rpow-le--da651c542201f110f459255d.md) | 111 | `result-track:da651c542201f110f459255dc5bbd41343b94edd69025afa594865c9a2c4d83d` |
| 11 | `theorem` | [contDiff_norm_rpow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormPow/Variant7c4e3104450d72796e369fceb22297a1e72aa1ebde19bcd73334d05f1d37941b.lean/declarations/contdiff-norm-rpow--b139312b00b8dc8f82360dd4.md) | 117 | `result-track:b139312b00b8dc8f82360dd46a2fbbd34ce2d24de03371ae56f527199406f6d6` |
| 12 | `theorem` | [ContDiff.norm_rpow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormPow/Variant7c4e3104450d72796e369fceb22297a1e72aa1ebde19bcd73334d05f1d37941b.lean/declarations/contdiff-norm-rpow--66bf17d09dff10f7d2c51b5f.md) | 133 | `result-track:66bf17d09dff10f7d2c51b5fa737c414962ac039059a75f4d91e3f4c7824c605` |
| 13 | `theorem` | [Differentiable.norm_rpow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormPow/Variant7c4e3104450d72796e369fceb22297a1e72aa1ebde19bcd73334d05f1d37941b.lean/declarations/differentiable-norm-rpow--dc419b181c6b49518e75173b.md) | 137 | `result-track:dc419b181c6b49518e75173be3a81b5ec9f45cceb83673e5649984b59a440f53` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
