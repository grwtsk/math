# Verification target: GRWTSK.Algebra.LinearAlgebra.Trace.Variant67dc5763c9f18261c8f629d68cfa3f8c7323054e0970bdcf7e358870b04d092a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d2f9f6f26aafd9154f1b0a472a34f2a9a704b831",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Trace/Variant67dc5763c9f18261c8f629d68cfa3f8c7323054e0970bdcf7e358870b04d092a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant67dc5763c9f18261c8f629d68cfa3f8c7323054e0970bdcf7e358870b04d092a.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant67dc5763c9f18261c8f629d68cfa3f8c7323054e0970bdcf7e358870b04d092a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d2f9f6f26aafd9154f1b0a472a34f2a9a704b831`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Trace/Variant67dc5763c9f18261c8f629d68cfa3f8c7323054e0970bdcf7e358870b04d092a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Trace/Variant67dc5763c9f18261c8f629d68cfa3f8c7323054e0970bdcf7e358870b04d092a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Matrix.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [trace](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant67dc5763c9f18261c8f629d68cfa3f8c7323054e0970bdcf7e358870b04d092a.lean/declarations/trace--39198271799b01673be8f6b1.md) | 49 | `declaration-track:39198271799b01673be8f6b1e78e47f71408b5d9ed12c2b609dabe698fcd6f4d` |
| 2 | `theorem` | [trace_zero](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant67dc5763c9f18261c8f629d68cfa3f8c7323054e0970bdcf7e358870b04d092a.lean/declarations/trace-zero--6a07e6aefeb37f27a6411b40.md) | 56 | `result-track:6a07e6aefeb37f27a6411b402447f2270eb7d14bb80f12f213b469673f23c036` |
| 3 | `theorem` | [trace_add](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant67dc5763c9f18261c8f629d68cfa3f8c7323054e0970bdcf7e358870b04d092a.lean/declarations/trace-add--f6e567b88a60e5e2e020ae60.md) | 63 | `result-track:f6e567b88a60e5e2e020ae609e54f3b342cd3395b82fe5df6effe197281024b1` |
| 4 | `theorem` | [trace_smul](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant67dc5763c9f18261c8f629d68cfa3f8c7323054e0970bdcf7e358870b04d092a.lean/declarations/trace-smul--80ae2893102774768fc09161.md) | 68 | `result-track:80ae2893102774768fc091619b5d5d3088888df28296e99e2e3a87aac40fb73f` |
| 5 | `theorem` | [trace_transpose](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant67dc5763c9f18261c8f629d68cfa3f8c7323054e0970bdcf7e358870b04d092a.lean/declarations/trace-transpose--0bc4b34eb3121a38b39be4f8.md) | 74 | `result-track:0bc4b34eb3121a38b39be4f8d4d1a3b9659b8800d2005a2713c28a0406ab350d` |
| 6 | `theorem` | [trace_conjTranspose](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant67dc5763c9f18261c8f629d68cfa3f8c7323054e0970bdcf7e358870b04d092a.lean/declarations/trace-conjtranspose--9de9dfcc145c1a98584017ca.md) | 79 | `result-track:9de9dfcc145c1a98584017caea54b6433fe0cfcc1434e727a300009bfc188ef8` |
| 7 | `def` | [traceAddMonoidHom](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant67dc5763c9f18261c8f629d68cfa3f8c7323054e0970bdcf7e358870b04d092a.lean/declarations/traceaddmonoidhom--f7a313958bbd67b92e765546.md) | 87 | `declaration-track:f7a313958bbd67b92e7655462a0f72b3598977ccffb76e12fc3a537063665098` |
| 8 | `def` | [traceLinearMap](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant67dc5763c9f18261c8f629d68cfa3f8c7323054e0970bdcf7e358870b04d092a.lean/declarations/tracelinearmap--d498ef3c9f1152ee1836b1e1.md) | 95 | `declaration-track:d498ef3c9f1152ee1836b1e171ea47a05c1e5d6cd623e2aeaec71446971b6633` |
| 9 | `theorem` | [trace_list_sum](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant67dc5763c9f18261c8f629d68cfa3f8c7323054e0970bdcf7e358870b04d092a.lean/declarations/trace-list-sum--2f481cffd1794506d4db168e.md) | 104 | `result-track:2f481cffd1794506d4db168e3e0c16e9f79a7e4dff8f0701502c915a1cf00ae3` |
| 10 | `theorem` | [trace_multiset_sum](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant67dc5763c9f18261c8f629d68cfa3f8c7323054e0970bdcf7e358870b04d092a.lean/declarations/trace-multiset-sum--8c25742197906abdab1b8f4c.md) | 109 | `result-track:8c25742197906abdab1b8f4cfeb19caea7a532e0c5221c0aaf135bd616f1fd7b` |
| 11 | `theorem` | [trace_sum](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant67dc5763c9f18261c8f629d68cfa3f8c7323054e0970bdcf7e358870b04d092a.lean/declarations/trace-sum--440025d7be23d4440526ec2a.md) | 114 | `result-track:440025d7be23d4440526ec2a980dcb1a5b47d1ac4f10b70f4fc9105ce0c995a3` |
| 12 | `theorem` | [_root_.GRWTSK.Algebra.LinearAlgebra.Trace.Variant297fa53558104cb1169e7a27de2f645d7fd7ac2dd0ceefb30b91cba2452a3a03.AddMonoidHom.map_trace](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant67dc5763c9f18261c8f629d68cfa3f8c7323054e0970bdcf7e358870b04d092a.lean/declarations/root-grwtsk-algebra-linearalgebra-trace-variant297fa53558104cb1169e7a27d--9163d325216035533e878105.md) | 119 | `result-track:9163d325216035533e878105de84ccf5c514b60b8d2eef632f329dab0b9035a9` |
| 13 | `theorem` | [trace_sub](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant67dc5763c9f18261c8f629d68cfa3f8c7323054e0970bdcf7e358870b04d092a.lean/declarations/trace-sub--a53798a91b1a15f8ce5d3be2.md) | 130 | `result-track:a53798a91b1a15f8ce5d3be230d567b1abc7f4e0c1d777e0e0096ac0d49c03ec` |
| 14 | `theorem` | [trace_neg](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant67dc5763c9f18261c8f629d68cfa3f8c7323054e0970bdcf7e358870b04d092a.lean/declarations/trace-neg--4d482dc55377dbf29e9a72e7.md) | 135 | `result-track:4d482dc55377dbf29e9a72e7d9b94960382338a131a8bb73537c3f6569819cb8` |
| 15 | `theorem` | [trace_one](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant67dc5763c9f18261c8f629d68cfa3f8c7323054e0970bdcf7e358870b04d092a.lean/declarations/trace-one--67147d8b7b999e90402c3feb.md) | 146 | `result-track:67147d8b7b999e90402c3febf86260f52bd023242a5dcb245b6e175a02c19cf3` |
| 16 | `theorem` | [trace_transpose_mul](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant67dc5763c9f18261c8f629d68cfa3f8c7323054e0970bdcf7e358870b04d092a.lean/declarations/trace-transpose-mul--9869295f60bfb18686985fda.md) | 155 | `result-track:9869295f60bfb18686985fdac65397771dc54b1fc665d9d81a0acbf778f8bd4d` |
| 17 | `theorem` | [trace_mul_comm](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant67dc5763c9f18261c8f629d68cfa3f8c7323054e0970bdcf7e358870b04d092a.lean/declarations/trace-mul-comm--f77d88525dd2e19b945b9696.md) | 160 | `result-track:f77d88525dd2e19b945b96962d2b5f57e39cec62bf09b07906a5b496a27481d8` |
| 18 | `theorem` | [trace_mul_cycle](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant67dc5763c9f18261c8f629d68cfa3f8c7323054e0970bdcf7e358870b04d092a.lean/declarations/trace-mul-cycle--19df2e4e5b74c6c768640b2c.md) | 164 | `result-track:19df2e4e5b74c6c768640b2cf4cf4614a59a9706c76fa9e572d9cba4cc37f65d` |
| 19 | `theorem` | [trace_mul_cycle'](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant67dc5763c9f18261c8f629d68cfa3f8c7323054e0970bdcf7e358870b04d092a.lean/declarations/trace-mul-cycle--e3073be90a954da29e193ce6.md) | 169 | `result-track:e3073be90a954da29e193ce6bee62cbf8969d41a011dee5d9e6cf87f46996e19` |
| 20 | `theorem` | [trace_col_mul_row](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant67dc5763c9f18261c8f629d68cfa3f8c7323054e0970bdcf7e358870b04d092a.lean/declarations/trace-col-mul-row--f4cda0f505db794b86ff1589.md) | 175 | `result-track:f4cda0f505db794b86ff15892a41b1400d87e4849080dba43bf476d26464ea14` |
| 21 | `theorem` | [trace_fin_zero](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant67dc5763c9f18261c8f629d68cfa3f8c7323054e0970bdcf7e358870b04d092a.lean/declarations/trace-fin-zero--3b89defaf03b8e09833bdf57.md) | 195 | `result-track:3b89defaf03b8e09833bdf57c943f9e7b8d78cefea3406ce4ebd005cb98c961b` |
| 22 | `theorem` | [trace_fin_one](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant67dc5763c9f18261c8f629d68cfa3f8c7323054e0970bdcf7e358870b04d092a.lean/declarations/trace-fin-one--9582335620b05010e9f7b2ef.md) | 199 | `result-track:9582335620b05010e9f7b2ef1d2c14b4ea90123971bd51d3875c5dcb6ea92d89` |
| 23 | `theorem` | [trace_fin_two](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant67dc5763c9f18261c8f629d68cfa3f8c7323054e0970bdcf7e358870b04d092a.lean/declarations/trace-fin-two--23ccbfa6288c84239d0fbf17.md) | 203 | `result-track:23ccbfa6288c84239d0fbf1714b26c20203e39014cf8bdb102c35775538b7156` |
| 24 | `theorem` | [trace_fin_three](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant67dc5763c9f18261c8f629d68cfa3f8c7323054e0970bdcf7e358870b04d092a.lean/declarations/trace-fin-three--afa5c1eedceae244ffb48f55.md) | 207 | `result-track:afa5c1eedceae244ffb48f55ae77c233ad9b55f04684b8db8e80a1c170fe0d6e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
