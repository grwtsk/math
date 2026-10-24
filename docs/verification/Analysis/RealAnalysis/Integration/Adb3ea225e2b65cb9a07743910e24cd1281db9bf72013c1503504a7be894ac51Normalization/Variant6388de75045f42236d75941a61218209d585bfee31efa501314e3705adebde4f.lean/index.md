# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Adb3ea225e2b65cb9a07743910e24cd1281db9bf72013c1503504a7be894ac51Normalization.Variant6388de75045f42236d75941a61218209d585bfee31efa501314e3705adebde4f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fdb91dcd5e5c0a443c53317664e7d1cb81838dfa",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Adb3ea225e2b65cb9a07743910e24cd1281db9bf72013c1503504a7be894ac51Normalization/Variant6388de75045f42236d75941a61218209d585bfee31efa501314e3705adebde4f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Adb3ea225e2b65cb9a07743910e24cd1281db9bf72013c1503504a7be894ac51Normalization/Variant6388de75045f42236d75941a61218209d585bfee31efa501314e3705adebde4f.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Adb3ea225e2b65cb9a07743910e24cd1281db9bf72013c1503504a7be894ac51Normalization/Variant6388de75045f42236d75941a61218209d585bfee31efa501314e3705adebde4f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fdb91dcd5e5c0a443c53317664e7d1cb81838dfa`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Adb3ea225e2b65cb9a07743910e24cd1281db9bf72013c1503504a7be894ac51Normalization/Variant6388de75045f42236d75941a61218209d585bfee31efa501314e3705adebde4f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Adb3ea225e2b65cb9a07743910e24cd1281db9bf72013c1503504a7be894ac51Normalization/Variant6388de75045f42236d75941a61218209d585bfee31efa501314e3705adebde4f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ThetaTailCalculus` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner.ContinuousLinearMap` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [thetaPhi_complex_even_moment_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Adb3ea225e2b65cb9a07743910e24cd1281db9bf72013c1503504a7be894ac51Normalization/Variant6388de75045f42236d75941a61218209d585bfee31efa501314e3705adebde4f.lean/declarations/thetaphi-complex-even-moment-eq--22f60b1c91de66d07422bdc3.md) | 19 | `result-track:22f60b1c91de66d07422bdc378877339760c770a91586043a8c388a8112afbb1` |
| 2 | `theorem` | [thetaPhi_evenBasis_integral_Ici_eq_Ioi](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Adb3ea225e2b65cb9a07743910e24cd1281db9bf72013c1503504a7be894ac51Normalization/Variant6388de75045f42236d75941a61218209d585bfee31efa501314e3705adebde4f.lean/declarations/thetaphi-evenbasis-integral-ici-eq-ioi--e44a725289ba960dd9be4446.md) | 26 | `result-track:e44a725289ba960dd9be44462211dd55172d1719fc0eb13c631692164612eb0d` |
| 3 | `theorem` | [coefficient_eq_thetaPhi_Ioi_of_even_derivative](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Adb3ea225e2b65cb9a07743910e24cd1281db9bf72013c1503504a7be894ac51Normalization/Variant6388de75045f42236d75941a61218209d585bfee31efa501314e3705adebde4f.lean/declarations/coefficient-eq-thetaphi-ioi-of-even-derivative--4a0118aac12e7cc01e47414d.md) | 33 | `result-track:4a0118aac12e7cc01e47414d11fc889f2cab2b79433af9e89a671f46f6318508` |
| 4 | `theorem` | [coefficient_eq_thetaPhi_Ici_of_even_derivative](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Adb3ea225e2b65cb9a07743910e24cd1281db9bf72013c1503504a7be894ac51Normalization/Variant6388de75045f42236d75941a61218209d585bfee31efa501314e3705adebde4f.lean/declarations/coefficient-eq-thetaphi-ici-of-even-derivative--fc37258e5d3ae51cc3b6d77f.md) | 51 | `result-track:fc37258e5d3ae51cc3b6d77fbc791db5e0cae4e604bc1cfe5e9d09b579e6a9b2` |
| 5 | `theorem` | [thetaCoefficientFormula_of_even_derivatives](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Adb3ea225e2b65cb9a07743910e24cd1281db9bf72013c1503504a7be894ac51Normalization/Variant6388de75045f42236d75941a61218209d585bfee31efa501314e3705adebde4f.lean/declarations/thetacoefficientformula-of-even-derivatives--ddaf549d0e42b838451f3695.md) | 62 | `result-track:ddaf549d0e42b838451f36955d72f7e377f875a8d15f63b726362dd2e47c3aec` |
| 6 | `theorem` | [coefficient_zero_eq_eight_integral_of_formula](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Adb3ea225e2b65cb9a07743910e24cd1281db9bf72013c1503504a7be894ac51Normalization/Variant6388de75045f42236d75941a61218209d585bfee31efa501314e3705adebde4f.lean/declarations/coefficient-zero-eq-eight-integral-of-formula--e7e13329e724828ce867a0c5.md) | 70 | `result-track:e7e13329e724828ce867a0c562a61b376bf8e3c61720b9e4f1860f9f4b835dca` |
| 7 | `theorem` | [coefficient_one_eq_sixteen_integral_of_formula](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Adb3ea225e2b65cb9a07743910e24cd1281db9bf72013c1503504a7be894ac51Normalization/Variant6388de75045f42236d75941a61218209d585bfee31efa501314e3705adebde4f.lean/declarations/coefficient-one-eq-sixteen-integral-of-formula--14464a637b8a71720ef0b1ae.md) | 77 | `result-track:14464a637b8a71720ef0b1ae26bd4515af7fad992234799d2f3762364abd5fb7` |
| 8 | `theorem` | [coefficient_zero_pos_of_formula](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Adb3ea225e2b65cb9a07743910e24cd1281db9bf72013c1503504a7be894ac51Normalization/Variant6388de75045f42236d75941a61218209d585bfee31efa501314e3705adebde4f.lean/declarations/coefficient-zero-pos-of-formula--7dbebd5e1a1f831f11d49c74.md) | 90 | `result-track:7dbebd5e1a1f831f11d49c7493cfaf026eb9cef6f198784f551c4751d22895e8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
