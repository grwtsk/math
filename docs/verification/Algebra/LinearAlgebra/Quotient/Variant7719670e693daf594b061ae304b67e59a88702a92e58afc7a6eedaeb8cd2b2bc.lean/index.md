# Verification target: GRWTSK.Algebra.LinearAlgebra.Quotient.Variant7719670e693daf594b061ae304b67e59a88702a92e58afc7a6eedaeb8cd2b2bc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "061e6117570d6d49e64717a4ca31b2b960e7facc",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Quotient/Variant7719670e693daf594b061ae304b67e59a88702a92e58afc7a6eedaeb8cd2b2bc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant7719670e693daf594b061ae304b67e59a88702a92e58afc7a6eedaeb8cd2b2bc.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant7719670e693daf594b061ae304b67e59a88702a92e58afc7a6eedaeb8cd2b2bc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `061e6117570d6d49e64717a4ca31b2b960e7facc`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Quotient/Variant7719670e693daf594b061ae304b67e59a88702a92e58afc7a6eedaeb8cd2b2bc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Quotient/Variant7719670e693daf594b061ae304b67e59a88702a92e58afc7a6eedaeb8cd2b2bc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Rhetorical.Hilbert.Null` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Quotient.Basic` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [PreRhetoricalSpace](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant7719670e693daf594b061ae304b67e59a88702a92e58afc7a6eedaeb8cd2b2bc.lean/declarations/prerhetoricalspace--ff733c0e0ab017b40734c8ba.md) | 22 | `declaration-track:ff733c0e0ab017b40734c8ba830e34cf8c0ffb4de618e94ae7ccaa4605cbc4e3` |
| 2 | `def` | [preRhetoricalMk](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant7719670e693daf594b061ae304b67e59a88702a92e58afc7a6eedaeb8cd2b2bc.lean/declarations/prerhetoricalmk--8543c4e379187a0efe51c3fa.md) | 26 | `declaration-track:8543c4e379187a0efe51c3fa729364ec2f694b4868f622b43c5666fc846e625a` |
| 3 | `theorem` | [preRhetoricalInner_representative_invariant](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant7719670e693daf594b061ae304b67e59a88702a92e58afc7a6eedaeb8cd2b2bc.lean/declarations/prerhetoricalinner-representative-invariant--250fd5b35290a8ffed37e6e5.md) | 33 | `result-track:250fd5b35290a8ffed37e6e5205f819d90dc801b5baee44955106166c53d453c` |
| 4 | `def` | [preRhetoricalInner](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant7719670e693daf594b061ae304b67e59a88702a92e58afc7a6eedaeb8cd2b2bc.lean/declarations/prerhetoricalinner--d62b5df78d41efdbac4fc62b.md) | 50 | `declaration-track:d62b5df78d41efdbac4fc62b91366ec34d9f06703b1d383ff8bfcd8df08c1fbe` |
| 5 | `theorem` | [preRhetoricalInner_wellDefined](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant7719670e693daf594b061ae304b67e59a88702a92e58afc7a6eedaeb8cd2b2bc.lean/declarations/prerhetoricalinner-welldefined--f711d44a2645f9e2774cde16.md) | 58 | `result-track:f711d44a2645f9e2774cde16cb6bdcae3bb268522c8240ea31e5180a21932e2c` |
| 6 | `def` | [preRhetoricalPreCore](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant7719670e693daf594b061ae304b67e59a88702a92e58afc7a6eedaeb8cd2b2bc.lean/declarations/prerhetoricalprecore--dccacf2f09e3995b9973510f.md) | 66 | `declaration-track:dccacf2f09e3995b9973510f165a27c78a2990be330ff655cab78585e4366122` |
| 7 | `def` | [preRhetoricalCore](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant7719670e693daf594b061ae304b67e59a88702a92e58afc7a6eedaeb8cd2b2bc.lean/declarations/prerhetoricalcore--f478a57b515067d6734faa54.md) | 114 | `declaration-track:f478a57b515067d6734faa5448bba7d56e8f7f9bfa3dd74eb8fa5992f70a3779` |
| 8 | `instance` | [instPreRhetoricalNormedAddCommGroup](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant7719670e693daf594b061ae304b67e59a88702a92e58afc7a6eedaeb8cd2b2bc.lean/declarations/instprerhetoricalnormedaddcommgroup--fd77dbbdba6155e0b9c7cb75.md) | 126 | `declaration-track:fd77dbbdba6155e0b9c7cb75c8695e322da02baa448a56690d14260c9047def2` |
| 9 | `instance` | [instPreRhetoricalInnerProductSpace](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant7719670e693daf594b061ae304b67e59a88702a92e58afc7a6eedaeb8cd2b2bc.lean/declarations/instprerhetoricalinnerproductspace--8e417514c9fc2a025e130ec8.md) | 133 | `declaration-track:8e417514c9fc2a025e130ec8f3ecc1e470ef4b741748afcd73effef368c89304` |
| 10 | `theorem` | [preRhetorical_inner_self_eq_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant7719670e693daf594b061ae304b67e59a88702a92e58afc7a6eedaeb8cd2b2bc.lean/declarations/prerhetorical-inner-self-eq-zero-iff--55a5731df289b1346cef30bc.md) | 138 | `result-track:55a5731df289b1346cef30bc876c114344fd39bbb29f6fb9fc4389c88b9c624e` |
| 11 | `theorem` | [preRhetoricalMk_eq_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant7719670e693daf594b061ae304b67e59a88702a92e58afc7a6eedaeb8cd2b2bc.lean/declarations/prerhetoricalmk-eq-zero-iff--ac308204d6d1fb8800cc7362.md) | 146 | `result-track:ac308204d6d1fb8800cc73623bc10ad492958035effbda698212cc1bd10b1892` |
| 12 | `theorem` | [preRhetoricalInner_basisVector](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant7719670e693daf594b061ae304b67e59a88702a92e58afc7a6eedaeb8cd2b2bc.lean/declarations/prerhetoricalinner-basisvector--25fe1e53f50ced75b1c4b3e8.md) | 155 | `result-track:25fe1e53f50ced75b1c4b3e8173befa136b4295e19982e8f711a1912acf72e2a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
