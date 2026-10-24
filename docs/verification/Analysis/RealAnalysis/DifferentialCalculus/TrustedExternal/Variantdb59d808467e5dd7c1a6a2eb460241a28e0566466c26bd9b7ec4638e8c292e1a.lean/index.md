# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.TrustedExternal.Variantdb59d808467e5dd7c1a6a2eb460241a28e0566466c26bd9b7ec4638e8c292e1a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4e5fcc311c01bb61f4efcc74d22b0a1f23076764",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/TrustedExternal/Variantdb59d808467e5dd7c1a6a2eb460241a28e0566466c26bd9b7ec4638e8c292e1a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/TrustedExternal/Variantdb59d808467e5dd7c1a6a2eb460241a28e0566466c26bd9b7ec4638e8c292e1a.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/TrustedExternal/Variantdb59d808467e5dd7c1a6a2eb460241a28e0566466c26bd9b7ec4638e8c292e1a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4e5fcc311c01bb61f4efcc74d22b0a1f23076764`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/TrustedExternal/Variantdb59d808467e5dd7c1a6a2eb460241a28e0566466c26bd9b7ec4638e8c292e1a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/TrustedExternal/Variantdb59d808467e5dd7c1a6a2eb460241a28e0566466c26bd9b7ec4638e8c292e1a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `AnalyticNumber.BoundaryCalculus` — import line 6; external provider; requires a separately pinned dependency.
- `Authority.TrustedExternalBoundary` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [TrustedExternalAnalyticToken](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/TrustedExternal/Variantdb59d808467e5dd7c1a6a2eb460241a28e0566466c26bd9b7ec4638e8c292e1a.lean/declarations/trustedexternalanalytictoken--6d060088bdd09c8580ce1269.md) | 43 | `declaration-track:6d060088bdd09c8580ce12698cedce9a426d24e33055da2377ec64377726fb36` |
| 2 | `def` | [TrustedExternalAnalyticToken.sound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/TrustedExternal/Variantdb59d808467e5dd7c1a6a2eb460241a28e0566466c26bd9b7ec4638e8c292e1a.lean/declarations/trustedexternalanalytictoken-sound--9902d3c9480a58836ca5c90d.md) | 54 | `declaration-track:9902d3c9480a58836ca5c90d3f21a042a38b36991c4e2e5277418dc20b3a01fc` |
| 3 | `def` | [OwnsWithTrustedExternal](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/TrustedExternal/Variantdb59d808467e5dd7c1a6a2eb460241a28e0566466c26bd9b7ec4638e8c292e1a.lean/declarations/ownswithtrustedexternal--73e2506bf1acdd45543800c4.md) | 66 | `declaration-track:73e2506bf1acdd45543800c42cf52c1cd2ca0fc1fcd617be5c0b73e130bbcef6` |
| 4 | `def` | [DirectOwnsWithTrustedExternal](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/TrustedExternal/Variantdb59d808467e5dd7c1a6a2eb460241a28e0566466c26bd9b7ec4638e8c292e1a.lean/declarations/directownswithtrustedexternal--752d26844545fef4868e5b87.md) | 76 | `declaration-track:752d26844545fef4868e5b87d36c48312b770633db3481790cfdbe15a3c43452` |
| 5 | `theorem` | [owns_with_trusted_external_sound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/TrustedExternal/Variantdb59d808467e5dd7c1a6a2eb460241a28e0566466c26bd9b7ec4638e8c292e1a.lean/declarations/owns-with-trusted-external-sound--a1338609ad79369c60ab6452.md) | 82 | `result-track:a1338609ad79369c60ab64522273fd8140c9dedbaa5e49698f9c310bfc5ba90c` |
| 6 | `theorem` | [no_direct_analytic_crossing_with_trusted_external](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/TrustedExternal/Variantdb59d808467e5dd7c1a6a2eb460241a28e0566466c26bd9b7ec4638e8c292e1a.lean/declarations/no-direct-analytic-crossing-with-trusted-external--e3745efd15caa44dce35979f.md) | 96 | `result-track:e3745efd15caa44dce35979f9f8fdb677bfcee25b646e0c9d9b7a96ba4bed3f5` |
| 7 | `theorem` | [analytic_extended_ownership_reduces_to_internal_without_trusted_external](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/TrustedExternal/Variantdb59d808467e5dd7c1a6a2eb460241a28e0566466c26bd9b7ec4638e8c292e1a.lean/declarations/analytic-extended-ownership-reduces-to-internal-without-trusted-external--7915a1d7fc3b38adb3699c9c.md) | 110 | `result-track:7915a1d7fc3b38adb3699c9cceb7e52a155ff6c34f12a4c0a7916d0bdf1dee94` |
| 8 | `theorem` | [analytic_extended_conservativity_without_trusted_external](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/TrustedExternal/Variantdb59d808467e5dd7c1a6a2eb460241a28e0566466c26bd9b7ec4638e8c292e1a.lean/declarations/analytic-extended-conservativity-without-trusted-external--e73046a5ef3aa18539d70e38.md) | 130 | `result-track:e73046a5ef3aa18539d70e3825eba09e6ae7585eccdec7b1e9a649df77e6d338` |
| 9 | `def` | [trustedExternalDTT](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/TrustedExternal/Variantdb59d808467e5dd7c1a6a2eb460241a28e0566466c26bd9b7ec4638e8c292e1a.lean/declarations/trustedexternaldtt--ee340a0587410e7d2e512d4c.md) | 144 | `declaration-track:ee340a0587410e7d2e512d4c493fee23988e6c9f31e4d16cac2ee2d45dfb029b` |
| 10 | `theorem` | [analytic_trusted_external_boundary_calculus_via_generic](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/TrustedExternal/Variantdb59d808467e5dd7c1a6a2eb460241a28e0566466c26bd9b7ec4638e8c292e1a.lean/declarations/analytic-trusted-external-boundary-calculus-via-generic--ea50e764fb29eb92a24b1cd5.md) | 159 | `result-track:ea50e764fb29eb92a24b1cd57ea952668f99f4d816c96f7a02276a5289acfb7b` |
| 11 | `theorem` | [untrusted_external_payload_not_analytic_authority](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/TrustedExternal/Variantdb59d808467e5dd7c1a6a2eb460241a28e0566466c26bd9b7ec4638e8c292e1a.lean/declarations/untrusted-external-payload-not-analytic-authority--37b9487b50b0e9e313623a38.md) | 169 | `result-track:37b9487b50b0e9e313623a381d8b51e99a1efd5af9241aa12475e4818e5c837a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
