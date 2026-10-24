# Verification target: GRWTSK.Algebra.Quotient.Varianta2ac194b7586ea012cef18eaaeae8e26caed7d3c78a55e2a7c0dde703341cba8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "54bb340675a08f2a95a6f566b0ef31d11175e188",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Quotient/Varianta2ac194b7586ea012cef18eaaeae8e26caed7d3c78a55e2a7c0dde703341cba8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Quotient/Varianta2ac194b7586ea012cef18eaaeae8e26caed7d3c78a55e2a7c0dde703341cba8.lean/index.md) · [Full source](../../../../mathematics/Algebra/Quotient/Varianta2ac194b7586ea012cef18eaaeae8e26caed7d3c78a55e2a7c0dde703341cba8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `54bb340675a08f2a95a6f566b0ef31d11175e188`.

Source path: `GRWTSK/Algebra/Quotient/Varianta2ac194b7586ea012cef18eaaeae8e26caed7d3c78a55e2a7c0dde703341cba8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Quotient/Varianta2ac194b7586ea012cef18eaaeae8e26caed7d3c78a55e2a7c0dde703341cba8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.DedekindDomain.Dvr` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.IntegralClosure.IntegralRestrict` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.LocalRing.Quotient` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [Algebra.trace_quotient_mk](../../../../mathematics/Algebra/Quotient/Varianta2ac194b7586ea012cef18eaaeae8e26caed7d3c78a55e2a7c0dde703341cba8.lean/declarations/algebra-trace-quotient-mk--76f89346510a858b769bfdf3.md) | 36 | `result-track:76f89346510a858b769bfdf345af770a5572ff6682716a4534c60c1fa249090e` |
| 2 | `def` | [equivQuotMaximalIdealOfIsLocalization](../../../../mathematics/Algebra/Quotient/Varianta2ac194b7586ea012cef18eaaeae8e26caed7d3c78a55e2a7c0dde703341cba8.lean/declarations/equivquotmaximalidealofislocalization--f61bf2428a4e5e7243278a2d.md) | 67 | `declaration-track:f61bf2428a4e5e7243278a2de437f6c4dcb93a39dceeb200056fb5ddac22855c` |
| 3 | `lemma` | [IsLocalization.AtPrime.map_eq_maximalIdeal](../../../../mathematics/Algebra/Quotient/Varianta2ac194b7586ea012cef18eaaeae8e26caed7d3c78a55e2a7c0dde703341cba8.lean/declarations/islocalization-atprime-map-eq-maximalideal--7170bb6456a5eb93349a832f.md) | 91 | `result-track:7170bb6456a5eb93349a832f5381bb87637339d51b13d2cd29f0e28742190ad7` |
| 4 | `lemma` | [comap_map_eq_map_of_isLocalization_algebraMapSubmonoid](../../../../mathematics/Algebra/Quotient/Varianta2ac194b7586ea012cef18eaaeae8e26caed7d3c78a55e2a7c0dde703341cba8.lean/declarations/comap-map-eq-map-of-islocalization-algebramapsubmonoid--6b72934495d5b89099f1c4e2.md) | 100 | `result-track:6b72934495d5b89099f1c4e226adc0e2b402b89db0177c950a7254d90ca9f336` |
| 5 | `def` | [quotMapEquivQuotMapMaximalIdealOfIsLocalization](../../../../mathematics/Algebra/Quotient/Varianta2ac194b7586ea012cef18eaaeae8e26caed7d3c78a55e2a7c0dde703341cba8.lean/declarations/quotmapequivquotmapmaximalidealofislocalization--dce8b2f3c063f2d0ddb688af.md) | 133 | `declaration-track:dce8b2f3c063f2d0ddb688af0544a74156a3e63e48973c8334e5bab1d2346124` |
| 6 | `lemma` | [trace_quotient_eq_trace_localization_quotient](../../../../mathematics/Algebra/Quotient/Varianta2ac194b7586ea012cef18eaaeae8e26caed7d3c78a55e2a7c0dde703341cba8.lean/declarations/trace-quotient-eq-trace-localization-quotient--102b8208ad115901edc198f1.md) | 168 | `result-track:102b8208ad115901edc198f1f934a8f42cfc8eb5b1f6aabdd02887a1624b93cf` |
| 7 | `lemma` | [Algebra.trace_quotient_eq_of_isDedekindDomain](../../../../mathematics/Algebra/Quotient/Varianta2ac194b7586ea012cef18eaaeae8e26caed7d3c78a55e2a7c0dde703341cba8.lean/declarations/algebra-trace-quotient-eq-of-isdedekinddomain--9eab7b80c168cc2474b73c00.md) | 189 | `result-track:9eab7b80c168cc2474b73c007fe901bb0ae226587dca0c0efe9eb704fde3e8a2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
