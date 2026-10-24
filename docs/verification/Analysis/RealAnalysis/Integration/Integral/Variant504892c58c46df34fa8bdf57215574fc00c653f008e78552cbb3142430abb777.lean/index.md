# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Integral.Variant504892c58c46df34fa8bdf57215574fc00c653f008e78552cbb3142430abb777

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "765d096ddf5b1efff14f5c7a813bbdd0f2aff6e5",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Integral/Variant504892c58c46df34fa8bdf57215574fc00c653f008e78552cbb3142430abb777.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant504892c58c46df34fa8bdf57215574fc00c653f008e78552cbb3142430abb777.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant504892c58c46df34fa8bdf57215574fc00c653f008e78552cbb3142430abb777.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `765d096ddf5b1efff14f5c7a813bbdd0f2aff6e5`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Integral/Variant504892c58c46df34fa8bdf57215574fc00c653f008e78552cbb3142430abb777.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Integral/Variant504892c58c46df34fa8bdf57215574fc00c653f008e78552cbb3142430abb777.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Integral.Bochner.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Group.Measure` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Integrable.comp_inv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant504892c58c46df34fa8bdf57215574fc00c653f008e78552cbb3142430abb777.lean/declarations/integrable-comp-inv--43e84539e7a522b14b8420b0.md) | 39 | `result-track:43e84539e7a522b14b8420b0a25d539fa8ed79b9bf99078a5bd88c61bbdc74e2` |
| 2 | `theorem` | [integral_inv_eq_self](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant504892c58c46df34fa8bdf57215574fc00c653f008e78552cbb3142430abb777.lean/declarations/integral-inv-eq-self--7699af5ae0797275a2a4d329.md) | 44 | `result-track:7699af5ae0797275a2a4d329d8be5c0be449c46bed27ff82d4c2a089b29cacdc` |
| 3 | `theorem` | [IntegrableOn.comp_inv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant504892c58c46df34fa8bdf57215574fc00c653f008e78552cbb3142430abb777.lean/declarations/integrableon-comp-inv--f1e83b7718f969c19d2a69e7.md) | 50 | `result-track:f1e83b7718f969c19d2a69e7c726dcdbdc0dc6a181368c34eebf2390c464bbcb` |
| 4 | `theorem` | [IntegrableOn.comp_inv_Iic](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant504892c58c46df34fa8bdf57215574fc00c653f008e78552cbb3142430abb777.lean/declarations/integrableon-comp-inv-iic--3b3b7b65754502d995ad86ce.md) | 65 | `result-track:3b3b7b65754502d995ad86cee3c9644d2d855ea3948785d8da27b15989b54852` |
| 5 | `theorem` | [IntegrableOn.comp_inv_Ici](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant504892c58c46df34fa8bdf57215574fc00c653f008e78552cbb3142430abb777.lean/declarations/integrableon-comp-inv-ici--a7c2ab36f0c231379c7e5b5f.md) | 70 | `result-track:a7c2ab36f0c231379c7e5b5f00fabee694262c9570bc3015f9b9f5369aa2ee5b` |
| 6 | `theorem` | [IntegrableOn.comp_inv_Iio](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant504892c58c46df34fa8bdf57215574fc00c653f008e78552cbb3142430abb777.lean/declarations/integrableon-comp-inv-iio--21871274542f53e685c94f29.md) | 75 | `result-track:21871274542f53e685c94f29dd5413114420460d523e361fc303e997f2a36912` |
| 7 | `theorem` | [IntegrableOn.comp_inv_Ioi](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant504892c58c46df34fa8bdf57215574fc00c653f008e78552cbb3142430abb777.lean/declarations/integrableon-comp-inv-ioi--9dae62ece54c1a9c01b4b4a0.md) | 80 | `result-track:9dae62ece54c1a9c01b4b4a0b6101a2bc188cc64b4cd4df7294af36c7a26548f` |
| 8 | `theorem` | [integral_mul_left_eq_self](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant504892c58c46df34fa8bdf57215574fc00c653f008e78552cbb3142430abb777.lean/declarations/integral-mul-left-eq-self--dc06afb0a595f745d6839c54.md) | 95 | `result-track:dc06afb0a595f745d6839c5496c8bf219a377ae7ec81093e405afe9a56397eb5` |
| 9 | `theorem` | [integral_mul_right_eq_self](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant504892c58c46df34fa8bdf57215574fc00c653f008e78552cbb3142430abb777.lean/declarations/integral-mul-right-eq-self--00245621bbc29f2e0644cf85.md) | 105 | `result-track:00245621bbc29f2e0644cf853a477b21522c34d51ecf8f30bc7f6a6940d5119e` |
| 10 | `theorem` | [integral_div_right_eq_self](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant504892c58c46df34fa8bdf57215574fc00c653f008e78552cbb3142430abb777.lean/declarations/integral-div-right-eq-self--f0a7bc7f780160bab4206d7a.md) | 112 | `result-track:f0a7bc7f780160bab4206d7a7e51346835e19013938a4c12be05129a97c63e70` |
| 11 | `theorem` | [integral_eq_zero_of_mul_left_eq_neg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant504892c58c46df34fa8bdf57215574fc00c653f008e78552cbb3142430abb777.lean/declarations/integral-eq-zero-of-mul-left-eq-neg--02ea091683931dd9a74e0275.md) | 121 | `result-track:02ea091683931dd9a74e0275331f0be3cf9ba25bb1ab484e4fb4128d358e94f3` |
| 12 | `theorem` | [integral_eq_zero_of_mul_right_eq_neg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant504892c58c46df34fa8bdf57215574fc00c653f008e78552cbb3142430abb777.lean/declarations/integral-eq-zero-of-mul-right-eq-neg--dfa184bd3e0134b01e491a36.md) | 130 | `result-track:dfa184bd3e0134b01e491a36adf966223fee57bcda0084389681ce5e8d10377d` |
| 13 | `theorem` | [Integrable.comp_mul_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant504892c58c46df34fa8bdf57215574fc00c653f008e78552cbb3142430abb777.lean/declarations/integrable-comp-mul-left--8cc748106c6b6327291970f7.md) | 135 | `result-track:8cc748106c6b6327291970f7dd6ed62c70ef8b645bd2ed67ccd3d470de3ed2c0` |
| 14 | `theorem` | [Integrable.comp_mul_right](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant504892c58c46df34fa8bdf57215574fc00c653f008e78552cbb3142430abb777.lean/declarations/integrable-comp-mul-right--2595e43ede96c985e4cc95ed.md) | 140 | `result-track:2595e43ede96c985e4cc95ed1d6bd487998343d8497d9f2ca7a4764b90a12d5c` |
| 15 | `theorem` | [Integrable.comp_div_right](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant504892c58c46df34fa8bdf57215574fc00c653f008e78552cbb3142430abb777.lean/declarations/integrable-comp-div-right--861c444825d2ce8abffb8728.md) | 145 | `result-track:861c444825d2ce8abffb8728535c930029b4580c34313098b9c35dfe255cc0b6` |
| 16 | `theorem` | [Integrable.comp_div_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant504892c58c46df34fa8bdf57215574fc00c653f008e78552cbb3142430abb777.lean/declarations/integrable-comp-div-left--ff6be4b71579a113d834f848.md) | 153 | `result-track:ff6be4b71579a113d834f8483274ac468c4a378b46b1bd64175e21f573ea1a54` |
| 17 | `theorem` | [integrable_comp_div_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant504892c58c46df34fa8bdf57215574fc00c653f008e78552cbb3142430abb777.lean/declarations/integrable-comp-div-left--6d0b6638c55861b12f19e6d8.md) | 158 | `result-track:6d0b6638c55861b12f19e6d8df5e94172b3035d153cc2dedd4ee641dae097f95` |
| 18 | `theorem` | [integral_div_left_eq_self](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant504892c58c46df34fa8bdf57215574fc00c653f008e78552cbb3142430abb777.lean/declarations/integral-div-left-eq-self--8dad0752451b49d4a4e29516.md) | 165 | `result-track:8dad0752451b49d4a4e295169e1811ed2a8b2177ddaff891c8c5832a5fe89a78` |
| 19 | `theorem` | [integral_smul_eq_self](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant504892c58c46df34fa8bdf57215574fc00c653f008e78552cbb3142430abb777.lean/declarations/integral-smul-eq-self--4918f2f2cd337132f9c11d1c.md) | 177 | `result-track:4918f2f2cd337132f9c11d1cb89a1c85d7683fbbfbebe1ea3a31514092c1d602` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
