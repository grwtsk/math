# Verification target: GRWTSK.Algebra.LinearAlgebra.ArbitraryHankelPrefix.Variant18c810416e5dbece6698fe9b9ef1f3bd8391e3155dbadd4e86229eca49544d0b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "53d6284b7a18af2d7b6743e7947fae334b0eb993",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/ArbitraryHankelPrefix/Variant18c810416e5dbece6698fe9b9ef1f3bd8391e3155dbadd4e86229eca49544d0b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/ArbitraryHankelPrefix/Variant18c810416e5dbece6698fe9b9ef1f3bd8391e3155dbadd4e86229eca49544d0b.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/ArbitraryHankelPrefix/Variant18c810416e5dbece6698fe9b9ef1f3bd8391e3155dbadd4e86229eca49544d0b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `53d6284b7a18af2d7b6743e7947fae334b0eb993`.

Source path: `GRWTSK/Algebra/LinearAlgebra/ArbitraryHankelPrefix/Variant18c810416e5dbece6698fe9b9ef1f3bd8391e3155dbadd4e86229eca49544d0b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/ArbitraryHankelPrefix/Variant18c810416e5dbece6698fe9b9ef1f3bd8391e3155dbadd4e86229eca49544d0b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Matrix.PosDef` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Star.Real` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [changeDiagonal](../../../../../mathematics/Algebra/LinearAlgebra/ArbitraryHankelPrefix/Variant18c810416e5dbece6698fe9b9ef1f3bd8391e3155dbadd4e86229eca49544d0b.lean/declarations/changediagonal--da827787934283123ecc638e.md) | 13 | `declaration-track:da827787934283123ecc638e700421c5f88f9eb2fc35e8fbf0867d15191f2fab` |
| 2 | `theorem` | [other_moments_unchanged](../../../../../mathematics/Algebra/LinearAlgebra/ArbitraryHankelPrefix/Variant18c810416e5dbece6698fe9b9ef1f3bd8391e3155dbadd4e86229eca49544d0b.lean/declarations/other-moments-unchanged--b63906c852f636cebdd6850d.md) | 16 | `result-track:b63906c852f636cebdd6850db0972d7ebdcf7cec73c2fcf44dd1c699c2a63cff` |
| 3 | `theorem` | [complete_prefix_unchanged](../../../../../mathematics/Algebra/LinearAlgebra/ArbitraryHankelPrefix/Variant18c810416e5dbece6698fe9b9ef1f3bd8391e3155dbadd4e86229eca49544d0b.lean/declarations/complete-prefix-unchanged--2fc5d54d41222b56a8e7067f.md) | 20 | `result-track:2fc5d54d41222b56a8e7067fd2a354d6a3f515c705dad1bfe204d1d02ee5380e` |
| 4 | `theorem` | [tower_unchanged](../../../../../mathematics/Algebra/LinearAlgebra/ArbitraryHankelPrefix/Variant18c810416e5dbece6698fe9b9ef1f3bd8391e3155dbadd4e86229eca49544d0b.lean/declarations/tower-unchanged--344bfb5a85acf3db8806e755.md) | 25 | `result-track:344bfb5a85acf3db8806e7553f9a3a1ca2a64975f942a3e4db10f2d1bdd354ca` |
| 5 | `theorem` | [both_towers_unchanged](../../../../../mathematics/Algebra/LinearAlgebra/ArbitraryHankelPrefix/Variant18c810416e5dbece6698fe9b9ef1f3bd8391e3155dbadd4e86229eca49544d0b.lean/declarations/both-towers-unchanged--9b80c2d16ec33ca47f658967.md) | 32 | `result-track:9b80c2d16ec33ca47f6589671da8bcc8a84f6da3c7d8c29714afae539f430d78` |
| 6 | `theorem` | [next_order_last_basis_value](../../../../../mathematics/Algebra/LinearAlgebra/ArbitraryHankelPrefix/Variant18c810416e5dbece6698fe9b9ef1f3bd8391e3155dbadd4e86229eca49544d0b.lean/declarations/next-order-last-basis-value--1a50e27d7fe5d5fcd99f68bf.md) | 40 | `result-track:1a50e27d7fe5d5fcd99f68bf4814ac520481714e9eb08c3845a74ac1a3fd2bbe` |
| 7 | `theorem` | [next_order_fails](../../../../../mathematics/Algebra/LinearAlgebra/ArbitraryHankelPrefix/Variant18c810416e5dbece6698fe9b9ef1f3bd8391e3155dbadd4e86229eca49544d0b.lean/declarations/next-order-fails--6644e094ea5c3c5a5cd31ad5.md) | 47 | `result-track:6644e094ea5c3c5a5cd31ad51e0efd52213196ef005178591d488fb918af0db7` |
| 8 | `theorem` | [next_order_other_entries_unchanged](../../../../../mathematics/Algebra/LinearAlgebra/ArbitraryHankelPrefix/Variant18c810416e5dbece6698fe9b9ef1f3bd8391e3155dbadd4e86229eca49544d0b.lean/declarations/next-order-other-entries-unchanged--ff35e5a0e4f868a2f4d07f43.md) | 57 | `result-track:ff35e5a0e4f868a2f4d07f43e6b57dddbbaf971db9add50cee865e1b880d9f59` |
| 9 | `theorem` | [psd_prefix_has_failing_extension](../../../../../mathematics/Algebra/LinearAlgebra/ArbitraryHankelPrefix/Variant18c810416e5dbece6698fe9b9ef1f3bd8391e3155dbadd4e86229eca49544d0b.lean/declarations/psd-prefix-has-failing-extension--86bacab28795444e8eb4991f.md) | 70 | `result-track:86bacab28795444e8eb4991f5b1ab55a61129a84695cc959890f5b417df6cca4` |
| 10 | `theorem` | [pd_prefix_has_failing_extension](../../../../../mathematics/Algebra/LinearAlgebra/ArbitraryHankelPrefix/Variant18c810416e5dbece6698fe9b9ef1f3bd8391e3155dbadd4e86229eca49544d0b.lean/declarations/pd-prefix-has-failing-extension--aea47c92efb8ac1742ca784f.md) | 86 | `result-track:aea47c92efb8ac1742ca784fec39bdbfcde93e466677bf59f8c7ebd40a828204` |
| 11 | `theorem` | [smaller_order_posDef](../../../../../mathematics/Algebra/LinearAlgebra/ArbitraryHankelPrefix/Variant18c810416e5dbece6698fe9b9ef1f3bd8391e3155dbadd4e86229eca49544d0b.lean/declarations/smaller-order-posdef--352a9ecfbd2926a825b14c11.md) | 102 | `result-track:352a9ecfbd2926a825b14c11f10db225c9ada4f056a27fbb01fd9446a45f57ba` |
| 12 | `theorem` | [largest_pd_blocks_have_failing_extension](../../../../../mathematics/Algebra/LinearAlgebra/ArbitraryHankelPrefix/Variant18c810416e5dbece6698fe9b9ef1f3bd8391e3155dbadd4e86229eca49544d0b.lean/declarations/largest-pd-blocks-have-failing-extension--8049d4a0fe1dae6d696db922.md) | 109 | `result-track:8049d4a0fe1dae6d696db92278a8dd05eeb7d7594f55b9becaa8e19604ada2cb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
