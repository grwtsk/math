# Verification target: GRWTSK.Algebra.LinearAlgebra.Trace.Variant297fa53558104cb1169e7a27de2f645d7fd7ac2dd0ceefb30b91cba2452a3a03

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c182864091c6b4f95b45428ccaa4fb252479174e",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Trace/Variant297fa53558104cb1169e7a27de2f645d7fd7ac2dd0ceefb30b91cba2452a3a03.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant297fa53558104cb1169e7a27de2f645d7fd7ac2dd0ceefb30b91cba2452a3a03.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant297fa53558104cb1169e7a27de2f645d7fd7ac2dd0ceefb30b91cba2452a3a03.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c182864091c6b4f95b45428ccaa4fb252479174e`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Trace/Variant297fa53558104cb1169e7a27de2f645d7fd7ac2dd0ceefb30b91cba2452a3a03.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Trace/Variant297fa53558104cb1169e7a27de2f645d7fd7ac2dd0ceefb30b91cba2452a3a03.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Matrix.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [trace](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant297fa53558104cb1169e7a27de2f645d7fd7ac2dd0ceefb30b91cba2452a3a03.lean/declarations/trace--e71044d81f0f5185c290c77a.md) | 41 | `declaration-track:e71044d81f0f5185c290c77a27aa5b49c725dff1b00a5701e4f0ff2a2165798d` |
| 2 | `theorem` | [trace_zero](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant297fa53558104cb1169e7a27de2f645d7fd7ac2dd0ceefb30b91cba2452a3a03.lean/declarations/trace-zero--5e50922ce0e9a23545159ff3.md) | 48 | `result-track:5e50922ce0e9a23545159ff3a0b8f4c20d712fc4ab3ee8d08b3cfb0b4e0196be` |
| 3 | `theorem` | [trace_add](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant297fa53558104cb1169e7a27de2f645d7fd7ac2dd0ceefb30b91cba2452a3a03.lean/declarations/trace-add--a93241c84f745027cabc1cf7.md) | 55 | `result-track:a93241c84f745027cabc1cf7447fcc0d93e0e028bd03524ce1ed2ecfe2deb6fe` |
| 4 | `theorem` | [trace_smul](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant297fa53558104cb1169e7a27de2f645d7fd7ac2dd0ceefb30b91cba2452a3a03.lean/declarations/trace-smul--bf3cb36074f0afa7448cc090.md) | 60 | `result-track:bf3cb36074f0afa7448cc090be8e85bea1368d8ce96bf7578b2a5de8ba975f25` |
| 5 | `theorem` | [trace_transpose](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant297fa53558104cb1169e7a27de2f645d7fd7ac2dd0ceefb30b91cba2452a3a03.lean/declarations/trace-transpose--9cfaa3eeee4e64cb9ac4b6dd.md) | 66 | `result-track:9cfaa3eeee4e64cb9ac4b6ddf184819cdcab1cd334ee7e250161780e0bce1a31` |
| 6 | `theorem` | [trace_conjTranspose](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant297fa53558104cb1169e7a27de2f645d7fd7ac2dd0ceefb30b91cba2452a3a03.lean/declarations/trace-conjtranspose--d0cdb1179dbb07cd1c9dc6dd.md) | 71 | `result-track:d0cdb1179dbb07cd1c9dc6dd69c8ab8af6993d3fef2ad8275f8cd23462dad2fd` |
| 7 | `def` | [traceAddMonoidHom](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant297fa53558104cb1169e7a27de2f645d7fd7ac2dd0ceefb30b91cba2452a3a03.lean/declarations/traceaddmonoidhom--c3cb389420177e1d99733d5c.md) | 79 | `declaration-track:c3cb389420177e1d99733d5cd3c9cd6457ab4d536d0c5e7e6c253e1078e81920` |
| 8 | `def` | [traceLinearMap](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant297fa53558104cb1169e7a27de2f645d7fd7ac2dd0ceefb30b91cba2452a3a03.lean/declarations/tracelinearmap--23fdddfe967cb56532cc0c29.md) | 87 | `declaration-track:23fdddfe967cb56532cc0c29970f6d0d810de83584ffaf28812395584ca0261a` |
| 9 | `theorem` | [trace_list_sum](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant297fa53558104cb1169e7a27de2f645d7fd7ac2dd0ceefb30b91cba2452a3a03.lean/declarations/trace-list-sum--5d39fbc9e15ba19937ca8954.md) | 96 | `result-track:5d39fbc9e15ba19937ca89547508a52dea3afa7ca8b321cbbcc5108720201966` |
| 10 | `theorem` | [trace_multiset_sum](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant297fa53558104cb1169e7a27de2f645d7fd7ac2dd0ceefb30b91cba2452a3a03.lean/declarations/trace-multiset-sum--41a25d2f48a7a435364a1c3b.md) | 101 | `result-track:41a25d2f48a7a435364a1c3b22eb656d84f98ff938554bac0c5db821a7b970cf` |
| 11 | `theorem` | [trace_sum](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant297fa53558104cb1169e7a27de2f645d7fd7ac2dd0ceefb30b91cba2452a3a03.lean/declarations/trace-sum--1e89c2031937a5ff03bc304b.md) | 106 | `result-track:1e89c2031937a5ff03bc304bd5afe4fd77fe878efcf90256bed4d09c44811dcd` |
| 12 | `theorem` | [_root_.AddMonoidHom.map_trace](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant297fa53558104cb1169e7a27de2f645d7fd7ac2dd0ceefb30b91cba2452a3a03.lean/declarations/root-addmonoidhom-map-trace--1a6b212f8f42c6d7ffba7adc.md) | 111 | `result-track:1a6b212f8f42c6d7ffba7adc0b7ec00b127bc686418ae7bc31f2b8850bef11d0` |
| 13 | `theorem` | [trace_sub](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant297fa53558104cb1169e7a27de2f645d7fd7ac2dd0ceefb30b91cba2452a3a03.lean/declarations/trace-sub--41a285d7a25d0f10fad78bd5.md) | 122 | `result-track:41a285d7a25d0f10fad78bd5a1e0075aadc6459e8e3ccf041ef017cdcaf10796` |
| 14 | `theorem` | [trace_neg](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant297fa53558104cb1169e7a27de2f645d7fd7ac2dd0ceefb30b91cba2452a3a03.lean/declarations/trace-neg--fb1159fce3f824348e7beb14.md) | 127 | `result-track:fb1159fce3f824348e7beb14700de8e471ecb35d7d899ea51c0e5ae2e8808097` |
| 15 | `theorem` | [trace_one](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant297fa53558104cb1169e7a27de2f645d7fd7ac2dd0ceefb30b91cba2452a3a03.lean/declarations/trace-one--3ecd1a75b74a57a3f5032d57.md) | 138 | `result-track:3ecd1a75b74a57a3f5032d57b24d6f55884e1e1bf97662c80803758ff23e507a` |
| 16 | `theorem` | [trace_transpose_mul](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant297fa53558104cb1169e7a27de2f645d7fd7ac2dd0ceefb30b91cba2452a3a03.lean/declarations/trace-transpose-mul--a90278d34127329393f9750c.md) | 147 | `result-track:a90278d34127329393f9750cf0704008b2df31e0d009a433ff7bcb4d05c09eb6` |
| 17 | `theorem` | [trace_mul_comm](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant297fa53558104cb1169e7a27de2f645d7fd7ac2dd0ceefb30b91cba2452a3a03.lean/declarations/trace-mul-comm--49983a8c0950750421f3a08d.md) | 152 | `result-track:49983a8c0950750421f3a08d52ad55c2bc5dc0bd81041e1a7fc0893c39cfb49f` |
| 18 | `theorem` | [trace_mul_cycle](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant297fa53558104cb1169e7a27de2f645d7fd7ac2dd0ceefb30b91cba2452a3a03.lean/declarations/trace-mul-cycle--e5df41dfc05c68221bfc5547.md) | 156 | `result-track:e5df41dfc05c68221bfc5547ebc621cecd9bdb7ff9589f3b47e5463bd94a87fa` |
| 19 | `theorem` | [trace_mul_cycle'](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant297fa53558104cb1169e7a27de2f645d7fd7ac2dd0ceefb30b91cba2452a3a03.lean/declarations/trace-mul-cycle--5e0b26384fc1c5ddf27ea896.md) | 161 | `result-track:5e0b26384fc1c5ddf27ea896a9226cb5e6087e5c44023d2fbab42329664da460` |
| 20 | `theorem` | [trace_col_mul_row](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant297fa53558104cb1169e7a27de2f645d7fd7ac2dd0ceefb30b91cba2452a3a03.lean/declarations/trace-col-mul-row--2c6e06d785c629c9580ba1cb.md) | 167 | `result-track:2c6e06d785c629c9580ba1cbbf2b3f0d6aa040b9d3ebac80de30f992236184ed` |
| 21 | `theorem` | [trace_fin_zero](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant297fa53558104cb1169e7a27de2f645d7fd7ac2dd0ceefb30b91cba2452a3a03.lean/declarations/trace-fin-zero--9ce0be050d56e78f03129516.md) | 187 | `result-track:9ce0be050d56e78f03129516b1cd15d34ae99a6ebfd74d671a9a798b8b0f833d` |
| 22 | `theorem` | [trace_fin_one](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant297fa53558104cb1169e7a27de2f645d7fd7ac2dd0ceefb30b91cba2452a3a03.lean/declarations/trace-fin-one--ed937fb163eaa4cc6d1de63c.md) | 191 | `result-track:ed937fb163eaa4cc6d1de63c4e92bdfb88f4603efdbe888196e60476dc6816d5` |
| 23 | `theorem` | [trace_fin_two](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant297fa53558104cb1169e7a27de2f645d7fd7ac2dd0ceefb30b91cba2452a3a03.lean/declarations/trace-fin-two--c715a93cc7beba3c5ebd0392.md) | 195 | `result-track:c715a93cc7beba3c5ebd039281a02860695a2ff9d5eac20b4c6d74105b170da6` |
| 24 | `theorem` | [trace_fin_three](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant297fa53558104cb1169e7a27de2f645d7fd7ac2dd0ceefb30b91cba2452a3a03.lean/declarations/trace-fin-three--6f4bff690452ca39970ce1f7.md) | 199 | `result-track:6f4bff690452ca39970ce1f780933fb99a6b784470f99bfe579f5670a43dab75` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
