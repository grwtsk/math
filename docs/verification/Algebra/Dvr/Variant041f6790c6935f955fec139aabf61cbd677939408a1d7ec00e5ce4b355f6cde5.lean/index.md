# Verification target: GRWTSK.Algebra.Dvr.Variant041f6790c6935f955fec139aabf61cbd677939408a1d7ec00e5ce4b355f6cde5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1be7366257801362a918867fd4007702bf5bb838",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Dvr/Variant041f6790c6935f955fec139aabf61cbd677939408a1d7ec00e5ce4b355f6cde5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Dvr/Variant041f6790c6935f955fec139aabf61cbd677939408a1d7ec00e5ce4b355f6cde5.lean/index.md) · [Full source](../../../../mathematics/Algebra/Dvr/Variant041f6790c6935f955fec139aabf61cbd677939408a1d7ec00e5ce4b355f6cde5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1be7366257801362a918867fd4007702bf5bb838`.

Source path: `GRWTSK/Algebra/Dvr/Variant041f6790c6935f955fec139aabf61cbd677939408a1d7ec00e5ce4b355f6cde5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Dvr/Variant041f6790c6935f955fec139aabf61cbd677939408a1d7ec00e5ce4b355f6cde5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Ring.DimensionLEOne.localization](../../../../mathematics/Algebra/Dvr/Variant041f6790c6935f955fec139aabf61cbd677939408a1d7ec00e5ce4b355f6cde5.lean/declarations/ring-dimensionleone-localization--d5e03a1ff62b8a9f5ecb4c76.md) | 53 | `result-track:d5e03a1ff62b8a9f5ecb4c7646c6afd826e53049a3b8576e274d1710a4f50597` |
| 2 | `theorem` | [IsLocalization.isDedekindDomain](../../../../mathematics/Algebra/Dvr/Variant041f6790c6935f955fec139aabf61cbd677939408a1d7ec00e5ce4b355f6cde5.lean/declarations/islocalization-isdedekinddomain--8ce51ba6b1d5f8974ad71a4a.md) | 64 | `result-track:8ce51ba6b1d5f8974ad71a4ad0db21a4829ca5fae87a1693f85ace122e1c3714` |
| 3 | `theorem` | [IsLocalization.AtPrime.isDedekindDomain](../../../../mathematics/Algebra/Dvr/Variant041f6790c6935f955fec139aabf61cbd677939408a1d7ec00e5ce4b355f6cde5.lean/declarations/islocalization-atprime-isdedekinddomain--97103e217f1191164256b756.md) | 87 | `result-track:97103e217f1191164256b7565afbb670585629a3546b59231dc38a9feaf15a83` |
| 4 | `instance` | [Localization.AtPrime.isDedekindDomain](../../../../mathematics/Algebra/Dvr/Variant041f6790c6935f955fec139aabf61cbd677939408a1d7ec00e5ce4b355f6cde5.lean/declarations/localization-atprime-isdedekinddomain--faeab2e6a0d3996373ad022a.md) | 92 | `declaration-track:faeab2e6a0d3996373ad022a515ff1102023271b0a29dfd2c60d7c98139c6a98` |
| 5 | `theorem` | [IsLocalization.AtPrime.not_isField](../../../../mathematics/Algebra/Dvr/Variant041f6790c6935f955fec139aabf61cbd677939408a1d7ec00e5ce4b355f6cde5.lean/declarations/islocalization-atprime-not-isfield--827410b1f87ceca45168c47b.md) | 96 | `result-track:827410b1f87ceca45168c47b1160d0562e5de03dd83945dff298a6178c1a5044` |
| 6 | `theorem` | [IsLocalization.AtPrime.isDiscreteValuationRing_of_dedekind_domain](../../../../mathematics/Algebra/Dvr/Variant041f6790c6935f955fec139aabf61cbd677939408a1d7ec00e5ce4b355f6cde5.lean/declarations/islocalization-atprime-isdiscretevaluationring-of-dedekind-domain--58fc9ef485749eefb3747b8b.md) | 112 | `result-track:58fc9ef485749eefb3747b8beda406241a1d16f6fc9c556cd1951a32ff850d40` |
| 7 | `theorem` | [isDedekindDomain_iff_isDiscreteValuationRing_atPrime](../../../../mathematics/Algebra/Dvr/Variant041f6790c6935f955fec139aabf61cbd677939408a1d7ec00e5ce4b355f6cde5.lean/declarations/isdedekinddomain-iff-isdiscretevaluationring-atprime--b9376483a2e9a63f15d07dcc.md) | 129 | `result-track:b9376483a2e9a63f15d07dccfa3f5aaea8af1e23fade78e728efc630bf07f944` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
