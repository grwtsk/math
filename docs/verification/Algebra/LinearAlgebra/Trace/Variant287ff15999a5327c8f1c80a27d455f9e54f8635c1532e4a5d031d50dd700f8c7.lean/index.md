# Verification target: GRWTSK.Algebra.LinearAlgebra.Trace.Variant287ff15999a5327c8f1c80a27d455f9e54f8635c1532e4a5d031d50dd700f8c7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7e6b915f6122e959c3c65bd911c3ad347d125d44",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Trace/Variant287ff15999a5327c8f1c80a27d455f9e54f8635c1532e4a5d031d50dd700f8c7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant287ff15999a5327c8f1c80a27d455f9e54f8635c1532e4a5d031d50dd700f8c7.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant287ff15999a5327c8f1c80a27d455f9e54f8635c1532e4a5d031d50dd700f8c7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7e6b915f6122e959c3c65bd911c3ad347d125d44`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Trace/Variant287ff15999a5327c8f1c80a27d455f9e54f8635c1532e4a5d031d50dd700f8c7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Trace/Variant287ff15999a5327c8f1c80a27d455f9e54f8635c1532e4a5d031d50dd700f8c7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Matrix.Basis` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Matrix.Block` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Matrix.RowCol` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Matrix.Notation` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [trace](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant287ff15999a5327c8f1c80a27d455f9e54f8635c1532e4a5d031d50dd700f8c7.lean/declarations/trace--366c191d20d01d0b1baa6ee7.md) | 41 | `declaration-track:366c191d20d01d0b1baa6ee76c35292fee7a81887cf530601e554e319951fde4` |
| 2 | `lemma` | [trace_diagonal](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant287ff15999a5327c8f1c80a27d455f9e54f8635c1532e4a5d031d50dd700f8c7.lean/declarations/trace-diagonal--c80b67ba829523f879cd13c9.md) | 44 | `result-track:c80b67ba829523f879cd13c974d6859419b1a7ff26544e75f396410d1909cadf` |
| 3 | `theorem` | [trace_zero](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant287ff15999a5327c8f1c80a27d455f9e54f8635c1532e4a5d031d50dd700f8c7.lean/declarations/trace-zero--06ce2ef48c4658ab5c6e7e44.md) | 51 | `result-track:06ce2ef48c4658ab5c6e7e4458a07544382a9f90ea7748d8da14cee62cceb58f` |
| 4 | `lemma` | [trace_eq_zero_of_isEmpty](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant287ff15999a5327c8f1c80a27d455f9e54f8635c1532e4a5d031d50dd700f8c7.lean/declarations/trace-eq-zero-of-isempty--e533393a9fe0a1a0f2f6a8ab.md) | 57 | `result-track:e533393a9fe0a1a0f2f6a8ab20623ef6c5ba4a92839869b64c181c4cf4b75b8c` |
| 5 | `theorem` | [trace_add](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant287ff15999a5327c8f1c80a27d455f9e54f8635c1532e4a5d031d50dd700f8c7.lean/declarations/trace-add--99cfbe7efacbe2da0a79098f.md) | 60 | `result-track:99cfbe7efacbe2da0a79098f7b12404aa19b9034bc843c1c24537c4e51d57aaa` |
| 6 | `theorem` | [trace_smul](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant287ff15999a5327c8f1c80a27d455f9e54f8635c1532e4a5d031d50dd700f8c7.lean/declarations/trace-smul--57bf36fd7c58f015d069f209.md) | 64 | `result-track:57bf36fd7c58f015d069f209ed791a9f789329dd54d204f1f139f66bae9e9158` |
| 7 | `theorem` | [trace_transpose](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant287ff15999a5327c8f1c80a27d455f9e54f8635c1532e4a5d031d50dd700f8c7.lean/declarations/trace-transpose--c4b795d9bc3f6d0fc4ffcda3.md) | 69 | `result-track:c4b795d9bc3f6d0fc4ffcda36871846263ce0264c5c1b2eb42422544622da365` |
| 8 | `theorem` | [trace_conjTranspose](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant287ff15999a5327c8f1c80a27d455f9e54f8635c1532e4a5d031d50dd700f8c7.lean/declarations/trace-conjtranspose--b4f8e99ea69c69d2a68b96f2.md) | 73 | `result-track:b4f8e99ea69c69d2a68b96f2337a66f6dbd88c1b1e2a3e6087c9912568cf7328` |
| 9 | `def` | [traceAddMonoidHom](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant287ff15999a5327c8f1c80a27d455f9e54f8635c1532e4a5d031d50dd700f8c7.lean/declarations/traceaddmonoidhom--d9dcc901ff42326af3733c88.md) | 80 | `declaration-track:d9dcc901ff42326af3733c889f17572101d6d69325e2c57b3a36246f281c0b0c` |
| 10 | `def` | [traceLinearMap](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant287ff15999a5327c8f1c80a27d455f9e54f8635c1532e4a5d031d50dd700f8c7.lean/declarations/tracelinearmap--eb0f3c8df26b5212c40be25a.md) | 87 | `declaration-track:eb0f3c8df26b5212c40be25a1a519683e7db665b0a6981712df85ce2bc7b48bc` |
| 11 | `theorem` | [trace_list_sum](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant287ff15999a5327c8f1c80a27d455f9e54f8635c1532e4a5d031d50dd700f8c7.lean/declarations/trace-list-sum--8d9d7d9975ddc35fc6815191.md) | 95 | `result-track:8d9d7d9975ddc35fc68151919e575497e46e1b52fceb0bb5e30ebb9642f04b96` |
| 12 | `theorem` | [trace_multiset_sum](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant287ff15999a5327c8f1c80a27d455f9e54f8635c1532e4a5d031d50dd700f8c7.lean/declarations/trace-multiset-sum--5eb74849747e9c71a32c425b.md) | 99 | `result-track:5eb74849747e9c71a32c425b33da0986a555956137f19eca0c876a2c742b6c33` |
| 13 | `theorem` | [trace_sum](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant287ff15999a5327c8f1c80a27d455f9e54f8635c1532e4a5d031d50dd700f8c7.lean/declarations/trace-sum--4c9f3f2db0010081d1a07573.md) | 103 | `result-track:4c9f3f2db0010081d1a07573383b02fc19b2aacf10dba2b0de38cfa4bf307f92` |
| 14 | `theorem` | [_root_.AddMonoidHom.map_trace](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant287ff15999a5327c8f1c80a27d455f9e54f8635c1532e4a5d031d50dd700f8c7.lean/declarations/root-addmonoidhom-map-trace--6572fb91280226bf2043bdf2.md) | 107 | `result-track:6572fb91280226bf2043bdf24197bb8a1d1a7f327722a72b7d6d4416543b552c` |
| 15 | `lemma` | [trace_blockDiagonal](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant287ff15999a5327c8f1c80a27d455f9e54f8635c1532e4a5d031d50dd700f8c7.lean/declarations/trace-blockdiagonal--c3f6d82c725476ac2a464b0b.md) | 112 | `result-track:c3f6d82c725476ac2a464b0bbe593f0f66ed9ccd04eebb0d3555708cc43d7dbf` |
| 16 | `lemma` | [trace_blockDiagonal'](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant287ff15999a5327c8f1c80a27d455f9e54f8635c1532e4a5d031d50dd700f8c7.lean/declarations/trace-blockdiagonal--54625d9aa52081a3afd8484f.md) | 116 | `result-track:54625d9aa52081a3afd8484f2d7d61970cda57ddb0e78d2b1de4304d953e2f16` |
| 17 | `theorem` | [trace_sub](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant287ff15999a5327c8f1c80a27d455f9e54f8635c1532e4a5d031d50dd700f8c7.lean/declarations/trace-sub--9ba1d248a01cd2916add2365.md) | 128 | `result-track:9ba1d248a01cd2916add2365467785616cf07fd6f9536ddb51ddbbf9dc5ffae7` |
| 18 | `theorem` | [trace_neg](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant287ff15999a5327c8f1c80a27d455f9e54f8635c1532e4a5d031d50dd700f8c7.lean/declarations/trace-neg--cbad654a662062205023a93b.md) | 132 | `result-track:cbad654a662062205023a93bfe7c2c4a5aa947013c013f804385ba1717b35302` |
| 19 | `theorem` | [trace_one](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant287ff15999a5327c8f1c80a27d455f9e54f8635c1532e4a5d031d50dd700f8c7.lean/declarations/trace-one--becc96073e02343ab54cd47d.md) | 142 | `result-track:becc96073e02343ab54cd47dc54155897a1c925a1be1c7b0bd50fad7a309861a` |
| 20 | `theorem` | [trace_transpose_mul](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant287ff15999a5327c8f1c80a27d455f9e54f8635c1532e4a5d031d50dd700f8c7.lean/declarations/trace-transpose-mul--6d0f0996beeeb8dfd7e405c1.md) | 150 | `result-track:6d0f0996beeeb8dfd7e405c19d2418da8b4da20d217399cafabd4ce1355535a6` |
| 21 | `theorem` | [trace_mul_comm](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant287ff15999a5327c8f1c80a27d455f9e54f8635c1532e4a5d031d50dd700f8c7.lean/declarations/trace-mul-comm--56afd6daa32ded618450d38a.md) | 154 | `result-track:56afd6daa32ded618450d38add4870b0c1ae781bdbab4f36b470103087a4e2b3` |
| 22 | `theorem` | [trace_mul_cycle](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant287ff15999a5327c8f1c80a27d455f9e54f8635c1532e4a5d031d50dd700f8c7.lean/declarations/trace-mul-cycle--1ae12cb79ce223feab5edbc8.md) | 157 | `result-track:1ae12cb79ce223feab5edbc8703f1c58468ab303f280da51942ad9bfff9e0478` |
| 23 | `theorem` | [trace_mul_cycle'](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant287ff15999a5327c8f1c80a27d455f9e54f8635c1532e4a5d031d50dd700f8c7.lean/declarations/trace-mul-cycle--958985ede7d0dfe5e9a5af38.md) | 161 | `result-track:958985ede7d0dfe5e9a5af383dba3fba0a90c1bd1f115f5c775e9cb2990fd32a` |
| 24 | `theorem` | [trace_replicateCol_mul_replicateRow](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant287ff15999a5327c8f1c80a27d455f9e54f8635c1532e4a5d031d50dd700f8c7.lean/declarations/trace-replicatecol-mul-replicaterow--3f35fa99d7233448d1fed149.md) | 166 | `result-track:3f35fa99d7233448d1fed1490593e87b5325825bd2fa02db38bdb4a5df430ec4` |
| 25 | `lemma` | [trace_submatrix_succ](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant287ff15999a5327c8f1c80a27d455f9e54f8635c1532e4a5d031d50dd700f8c7.lean/declarations/trace-submatrix-succ--752b174e40d6f2280a7f8c57.md) | 175 | `result-track:752b174e40d6f2280a7f8c57bd073e0456d58c7f9ba768c0a246e1e87e1e2b74` |
| 26 | `theorem` | [trace_units_conj](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant287ff15999a5327c8f1c80a27d455f9e54f8635c1532e4a5d031d50dd700f8c7.lean/declarations/trace-units-conj--118057749fd7045a7d37d00e.md) | 187 | `result-track:118057749fd7045a7d37d00e08753d3879b5520f79a911a516c6f32609df91ff` |
| 27 | `theorem` | [trace_units_conj'](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant287ff15999a5327c8f1c80a27d455f9e54f8635c1532e4a5d031d50dd700f8c7.lean/declarations/trace-units-conj--0bef055ee024b962fda00627.md) | 193 | `result-track:0bef055ee024b962fda006272e4d4707a9ce8adcf4bee7bc69e93ea338fd3f08` |
| 28 | `theorem` | [trace_fin_zero](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant287ff15999a5327c8f1c80a27d455f9e54f8635c1532e4a5d031d50dd700f8c7.lean/declarations/trace-fin-zero--6d6af6b14860a5066ca2c12e.md) | 207 | `result-track:6d6af6b14860a5066ca2c12ec93f67fd5f9efe625ac9ce0262d1d715aadcfeaa` |
| 29 | `theorem` | [trace_fin_one](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant287ff15999a5327c8f1c80a27d455f9e54f8635c1532e4a5d031d50dd700f8c7.lean/declarations/trace-fin-one--a37829f4e10b700b82f0725b.md) | 210 | `result-track:a37829f4e10b700b82f0725b7d75134f023e324c9518ba104117a357b1182b3d` |
| 30 | `theorem` | [trace_fin_two](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant287ff15999a5327c8f1c80a27d455f9e54f8635c1532e4a5d031d50dd700f8c7.lean/declarations/trace-fin-two--5e17aa666f40a7643a98c56f.md) | 213 | `result-track:5e17aa666f40a7643a98c56f11c0b2af16e5ef2b9e396e45f2039ff84dc22cc2` |
| 31 | `theorem` | [trace_fin_three](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant287ff15999a5327c8f1c80a27d455f9e54f8635c1532e4a5d031d50dd700f8c7.lean/declarations/trace-fin-three--100c9729b175e0da1970c894.md) | 216 | `result-track:100c9729b175e0da1970c89410e3bc69645d39d51c3d1939166cc4154700d441` |
| 32 | `theorem` | [trace_fin_one_of](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant287ff15999a5327c8f1c80a27d455f9e54f8635c1532e4a5d031d50dd700f8c7.lean/declarations/trace-fin-one-of--cf134c2a10119e59a675a9d5.md) | 221 | `result-track:cf134c2a10119e59a675a9d54b71ba072ba3c5b8145b429f42b043cb39d52293` |
| 33 | `theorem` | [trace_fin_two_of](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant287ff15999a5327c8f1c80a27d455f9e54f8635c1532e4a5d031d50dd700f8c7.lean/declarations/trace-fin-two-of--a26409f014286586e9bdc842.md) | 225 | `result-track:a26409f014286586e9bdc8427aa4f14a93ffe5801772c521a3cb21e5600e68f6` |
| 34 | `theorem` | [trace_fin_three_of](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant287ff15999a5327c8f1c80a27d455f9e54f8635c1532e4a5d031d50dd700f8c7.lean/declarations/trace-fin-three-of--5c7dc0a18b98a0572513642a.md) | 229 | `result-track:5c7dc0a18b98a0572513642afffa8aebcc23ecaa6a303759b0f43d1283afed45` |
| 35 | `theorem` | [trace_single_eq_of_ne](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant287ff15999a5327c8f1c80a27d455f9e54f8635c1532e4a5d031d50dd700f8c7.lean/declarations/trace-single-eq-of-ne--795f63bb075023be183c1664.md) | 241 | `result-track:795f63bb075023be183c166467cc25a6a3cdf9e9afba68f1f7eeb285c18aeb27` |
| 36 | `theorem` | [trace_single_eq_same](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant287ff15999a5327c8f1c80a27d455f9e54f8635c1532e4a5d031d50dd700f8c7.lean/declarations/trace-single-eq-same--07d0db5d80972708571e6034.md) | 249 | `result-track:07d0db5d80972708571e6034489c9189f676ae1dc596b8c8ca4f4b0bfcd91636` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
