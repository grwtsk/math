# Verification target: GRWTSK.Algebra.LinearAlgebra.Finiteness.Variant4e9def01139765ef027a2ba81c5443658e652604c117d5ba8c2be0287dc81147

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8406daec6a6319abb9f721aef5b3dbaacaf9f484",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Finiteness/Variant4e9def01139765ef027a2ba81c5443658e652604c117d5ba8c2be0287dc81147.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variant4e9def01139765ef027a2ba81c5443658e652604c117d5ba8c2be0287dc81147.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variant4e9def01139765ef027a2ba81c5443658e652604c117d5ba8c2be0287dc81147.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8406daec6a6319abb9f721aef5b3dbaacaf9f484`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Finiteness/Variant4e9def01139765ef027a2ba81c5443658e652604c117d5ba8c2be0287dc81147.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Finiteness/Variant4e9def01139765ef027a2ba81c5443658e652604c117d5ba8c2be0287dc81147.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.RelSeries` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.AssociatedPrime.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Noetherian.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Spectrum.Prime.Defs` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Submodule.IsQuotientEquivQuotientPrime](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variant4e9def01139765ef027a2ba81c5443658e652604c117d5ba8c2be0287dc81147.lean/declarations/submodule-isquotientequivquotientprime--e1186e8e4542dd4f97942754.md) | 53 | `declaration-track:e1186e8e4542dd4f97942754470f9378fac600348ea02080a8897234dac245bb` |
| 2 | `theorem` | [Submodule.isQuotientEquivQuotientPrime_iff](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variant4e9def01139765ef027a2ba81c5443658e652604c117d5ba8c2be0287dc81147.lean/declarations/submodule-isquotientequivquotientprime-iff--4a4a8772d19375ef759dac28.md) | 57 | `result-track:4a4a8772d19375ef759dac28108b5f48e8384359e9616160a4c4f3d3505a9764` |
| 3 | `theorem` | [IsNoetherianRing.exists_relSeries_isQuotientEquivQuotientPrime](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variant4e9def01139765ef027a2ba81c5443658e652604c117d5ba8c2be0287dc81147.lean/declarations/isnoetherianring-exists-relseries-isquotientequivquotientprime--be75b117b086636f15e434da.md) | 93 | `result-track:be75b117b086636f15e434dac8e5d332e2e6c64cbca842ed77bcf0d212ea29fd` |
| 4 | `theorem` | [IsNoetherianRing.induction_on_isQuotientEquivQuotientPrime](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variant4e9def01139765ef027a2ba81c5443658e652604c117d5ba8c2be0287dc81147.lean/declarations/isnoetherianring-induction-on-isquotientequivquotientprime--a40218be702046ef284afd54.md) | 118 | `result-track:a40218be702046ef284afd54f8db73a22ab18a9f2b2435148a111e40c6ccfd82` |
| 5 | `theorem` | [associatedPrimes.finite](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variant4e9def01139765ef027a2ba81c5443658e652604c117d5ba8c2be0287dc81147.lean/declarations/associatedprimes-finite--84f9bfdbceec16eebb725087.md) | 157 | `result-track:84f9bfdbceec16eebb725087794f9080aebe5956768d7274e6563f81b8fe9762` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
