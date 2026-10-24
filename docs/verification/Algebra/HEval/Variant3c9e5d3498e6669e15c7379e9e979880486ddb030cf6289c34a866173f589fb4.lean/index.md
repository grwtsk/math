# Verification target: GRWTSK.Algebra.HEval.Variant3c9e5d3498e6669e15c7379e9e979880486ddb030cf6289c34a866173f589fb4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8ca337ab2aa97e61be5f6470d260aa35012df22c",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/HEval/Variant3c9e5d3498e6669e15c7379e9e979880486ddb030cf6289c34a866173f589fb4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/HEval/Variant3c9e5d3498e6669e15c7379e9e979880486ddb030cf6289c34a866173f589fb4.lean/index.md) · [Full source](../../../../mathematics/Algebra/HEval/Variant3c9e5d3498e6669e15c7379e9e979880486ddb030cf6289c34a866173f589fb4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8ca337ab2aa97e61be5f6470d260aa35012df22c`.

Source path: `GRWTSK/Algebra/HEval/Variant3c9e5d3498e6669e15c7379e9e979880486ddb030cf6289c34a866173f589fb4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/HEval/Variant3c9e5d3498e6669e15c7379e9e979880486ddb030cf6289c34a866173f589fb4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.HahnSeries.Summable` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.PowerSeries.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [powerSeriesFamily](../../../../mathematics/Algebra/HEval/Variant3c9e5d3498e6669e15c7379e9e979880486ddb030cf6289c34a866173f589fb4.lean/declarations/powerseriesfamily--635e69fcfceb56141740526b.md) | 44 | `declaration-track:635e69fcfceb56141740526b7d905fe0d089e84e96bd06a6a725db2427a2b8e7` |
| 2 | `theorem` | [powerSeriesFamily_of_not_orderTop_pos](../../../../mathematics/Algebra/HEval/Variant3c9e5d3498e6669e15c7379e9e979880486ddb030cf6289c34a866173f589fb4.lean/declarations/powerseriesfamily-of-not-ordertop-pos--8de38b58786eeea4e595acae.md) | 47 | `result-track:8de38b58786eeea4e595acae9c942f23493bcf21d96d3e8635f023e603aa82f1` |
| 3 | `theorem` | [powerSeriesFamily_of_orderTop_pos](../../../../mathematics/Algebra/HEval/Variant3c9e5d3498e6669e15c7379e9e979880486ddb030cf6289c34a866173f589fb4.lean/declarations/powerseriesfamily-of-ordertop-pos--b3137406202aea52869e8304.md) | 53 | `result-track:b3137406202aea52869e8304e15d1f8d71169ded01445938c4433bccb57fefe2` |
| 4 | `theorem` | [powerSeriesFamily_hsum_zero](../../../../mathematics/Algebra/HEval/Variant3c9e5d3498e6669e15c7379e9e979880486ddb030cf6289c34a866173f589fb4.lean/declarations/powerseriesfamily-hsum-zero--77cedd00c92a4389fee248be.md) | 58 | `result-track:77cedd00c92a4389fee248bea6b27a72f145a882ca97811d98a621912bf4f7fc` |
| 5 | `theorem` | [powerSeriesFamily_add](../../../../mathematics/Algebra/HEval/Variant3c9e5d3498e6669e15c7379e9e979880486ddb030cf6289c34a866173f589fb4.lean/declarations/powerseriesfamily-add--c1b10b8bab8c5da41d6bd61e.md) | 69 | `result-track:c1b10b8bab8c5da41d6bd61e470ac9d72fb77b6e86ae75054ab60323160f67b1` |
| 6 | `theorem` | [powerSeriesFamily_smul](../../../../mathematics/Algebra/HEval/Variant3c9e5d3498e6669e15c7379e9e979880486ddb030cf6289c34a866173f589fb4.lean/declarations/powerseriesfamily-smul--1cb02aec334dd9b41f426fd8.md) | 74 | `result-track:1cb02aec334dd9b41f426fd82f4d17de3c5c38e803df1fe9937d5d22b020a85c` |
| 7 | `theorem` | [support_powerSeriesFamily_subset](../../../../mathematics/Algebra/HEval/Variant3c9e5d3498e6669e15c7379e9e979880486ddb030cf6289c34a866173f589fb4.lean/declarations/support-powerseriesfamily-subset--304501588b3c812af94ff820.md) | 79 | `result-track:304501588b3c812af94ff82026070d1601fb7acf0e080e46cb5f6d7f775b4f31` |
| 8 | `theorem` | [hsum_powerSeriesFamily_mul](../../../../mathematics/Algebra/HEval/Variant3c9e5d3498e6669e15c7379e9e979880486ddb030cf6289c34a866173f589fb4.lean/declarations/hsum-powerseriesfamily-mul--d2168e55d00ab5fa8a6ddcd9.md) | 109 | `result-track:d2168e55d00ab5fa8a6ddcd9996925445c21a38f666b0141e4e3c0f25651cc77` |
| 9 | `def` | [heval](../../../../mathematics/Algebra/HEval/Variant3c9e5d3498e6669e15c7379e9e979880486ddb030cf6289c34a866173f589fb4.lean/declarations/heval--cc93f2874ae51203eba73444.md) | 161 | `declaration-track:cc93f2874ae51203eba73444e0386d785a3f7fdbfb715440d7e19c4b97203407` |
| 10 | `theorem` | [heval_mul](../../../../mathematics/Algebra/HEval/Variant3c9e5d3498e6669e15c7379e9e979880486ddb030cf6289c34a866173f589fb4.lean/declarations/heval-mul--ffdcb5de162d755f84e1a147.md) | 185 | `result-track:ffdcb5de162d755f84e1a14746be130665d130a08cae349801f412aef7e737a6` |
| 11 | `theorem` | [heval_unit](../../../../mathematics/Algebra/HEval/Variant3c9e5d3498e6669e15c7379e9e979880486ddb030cf6289c34a866173f589fb4.lean/declarations/heval-unit--a9f075d3b6e72883243da0e4.md) | 189 | `result-track:a9f075d3b6e72883243da0e4665bd9fd7291e30d84205b72f03e23dd53f8ce2a` |
| 12 | `theorem` | [coeff_heval](../../../../mathematics/Algebra/HEval/Variant3c9e5d3498e6669e15c7379e9e979880486ddb030cf6289c34a866173f589fb4.lean/declarations/coeff-heval--33fb48ad5c6b639912acd605.md) | 194 | `result-track:33fb48ad5c6b639912acd6059905955806ca9f9827f15896934d3158ea01a477` |
| 13 | `theorem` | [coeff_heval_zero](../../../../mathematics/Algebra/HEval/Variant3c9e5d3498e6669e15c7379e9e979880486ddb030cf6289c34a866173f589fb4.lean/declarations/coeff-heval-zero--f362fe7210cb05a1a7f4c15a.md) | 199 | `result-track:f362fe7210cb05a1a7f4c15ac9890873ac820aa34770340624760f41f4236225` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
