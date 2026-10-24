# Verification target: GRWTSK.Algebra.PrimeIdeal.Variant8f1c5ba454c6daee27d015d076ec67811bf4157704598b360cc4df1e59705ecc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "17c0afb78df5be1ac721241c329edfe2e66ef434",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/PrimeIdeal/Variant8f1c5ba454c6daee27d015d076ec67811bf4157704598b360cc4df1e59705ecc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/PrimeIdeal/Variant8f1c5ba454c6daee27d015d076ec67811bf4157704598b360cc4df1e59705ecc.lean/index.md) · [Full source](../../../../mathematics/Algebra/PrimeIdeal/Variant8f1c5ba454c6daee27d015d076ec67811bf4157704598b360cc4df1e59705ecc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `17c0afb78df5be1ac721241c329edfe2e66ef434`.

Source path: `GRWTSK/Algebra/PrimeIdeal/Variant8f1c5ba454c6daee27d015d076ec67811bf4157704598b360cc4df1e59705ecc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/PrimeIdeal/Variant8f1c5ba454c6daee27d015d076ec67811bf4157704598b360cc4df1e59705ecc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Ideal` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.PFilter` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PrimePair](../../../../mathematics/Algebra/PrimeIdeal/Variant8f1c5ba454c6daee27d015d076ec67811bf4157704598b360cc4df1e59705ecc.lean/declarations/primepair--2af803e058486b25efc524b9.md) | 55 | `declaration-track:2af803e058486b25efc524b9a0653f2521bdfcd3d575b1080be1f4d77f24862e` |
| 2 | `theorem` | [compl_I_eq_F](../../../../mathematics/Algebra/PrimeIdeal/Variant8f1c5ba454c6daee27d015d076ec67811bf4157704598b360cc4df1e59705ecc.lean/declarations/compl-i-eq-f--6eab02a3b624cc5c8d5c0b8a.md) | 65 | `result-track:6eab02a3b624cc5c8d5c0b8adbeea00649efa22298b66f6e7181467d741b818c` |
| 3 | `theorem` | [compl_F_eq_I](../../../../mathematics/Algebra/PrimeIdeal/Variant8f1c5ba454c6daee27d015d076ec67811bf4157704598b360cc4df1e59705ecc.lean/declarations/compl-f-eq-i--87d27e7ec44122d0dfc8a6fb.md) | 70 | `result-track:87d27e7ec44122d0dfc8a6fbef176e1a4159dfea5e1598f5529e20b535ad5dd8` |
| 4 | `theorem` | [I_isProper](../../../../mathematics/Algebra/PrimeIdeal/Variant8f1c5ba454c6daee27d015d076ec67811bf4157704598b360cc4df1e59705ecc.lean/declarations/i-isproper--bce85b9d005b56f4debc43ab.md) | 75 | `result-track:bce85b9d005b56f4debc43ab064b05448dfb7e05199c87129632db20472ab2aa` |
| 5 | `theorem` | [disjoint](../../../../mathematics/Algebra/PrimeIdeal/Variant8f1c5ba454c6daee27d015d076ec67811bf4157704598b360cc4df1e59705ecc.lean/declarations/disjoint--2db9583609a035eba9a67c9f.md) | 82 | `result-track:2db9583609a035eba9a67c9f75870dc88ea0cf0987451168dea1184bc003b0bd` |
| 6 | `theorem` | [I_union_F](../../../../mathematics/Algebra/PrimeIdeal/Variant8f1c5ba454c6daee27d015d076ec67811bf4157704598b360cc4df1e59705ecc.lean/declarations/i-union-f--0a026234e3c9194447bcc631.md) | 86 | `result-track:0a026234e3c9194447bcc631b0f8c825dbc52c4e9f32f4d3dc459249aa7dd9bb` |
| 7 | `theorem` | [F_union_I](../../../../mathematics/Algebra/PrimeIdeal/Variant8f1c5ba454c6daee27d015d076ec67811bf4157704598b360cc4df1e59705ecc.lean/declarations/f-union-i--839c2982b39c590325337615.md) | 91 | `result-track:839c2982b39c590325337615ba5d62fe3fb666595a55c5b58bcc12b2cb555fff` |
| 8 | `class` | [IsPrime](../../../../mathematics/Algebra/PrimeIdeal/Variant8f1c5ba454c6daee27d015d076ec67811bf4157704598b360cc4df1e59705ecc.lean/declarations/isprime--738ca4fa04f96156f9f046e6.md) | 101 | `declaration-track:738ca4fa04f96156f9f046e64935e560d47694136b6e1eb1bee688f2b1c70094` |
| 9 | `def` | [IsPrime.toPrimePair](../../../../mathematics/Algebra/PrimeIdeal/Variant8f1c5ba454c6daee27d015d076ec67811bf4157704598b360cc4df1e59705ecc.lean/declarations/isprime-toprimepair--0df73af2289c7dd2983b5244.md) | 111 | `declaration-track:0df73af2289c7dd2983b52448b1c9bc8d5053dd438b8c5af10841ccfd82d398b` |
| 10 | `theorem` | [PrimePair.I_isPrime](../../../../mathematics/Algebra/PrimeIdeal/Variant8f1c5ba454c6daee27d015d076ec67811bf4157704598b360cc4df1e59705ecc.lean/declarations/primepair-i-isprime--bc291eee024bf94fdbb13cfc.md) | 117 | `result-track:bc291eee024bf94fdbb13cfc47a93f0d11053abbf4b8abb8f835fb0534d57d5c` |
| 11 | `theorem` | [IsPrime.mem_or_mem](../../../../mathematics/Algebra/PrimeIdeal/Variant8f1c5ba454c6daee27d015d076ec67811bf4157704598b360cc4df1e59705ecc.lean/declarations/isprime-mem-or-mem--0133e0f4ca564a22aabdf277.md) | 131 | `result-track:0133e0f4ca564a22aabdf27748fc73742388f973c21af9f8e9dbd6fc7b3eda00` |
| 12 | `theorem` | [IsPrime.of_mem_or_mem](../../../../mathematics/Algebra/PrimeIdeal/Variant8f1c5ba454c6daee27d015d076ec67811bf4157704598b360cc4df1e59705ecc.lean/declarations/isprime-of-mem-or-mem--3775d66f7a2d4b36e3edda1e.md) | 138 | `result-track:3775d66f7a2d4b36e3edda1ebbf0c7811cc5acbc87be884dc425c691383a0b6e` |
| 13 | `theorem` | [isPrime_iff_mem_or_mem](../../../../mathematics/Algebra/PrimeIdeal/Variant8f1c5ba454c6daee27d015d076ec67811bf4157704598b360cc4df1e59705ecc.lean/declarations/isprime-iff-mem-or-mem--a8e1f40353d020d16453256a.md) | 149 | `result-track:a8e1f40353d020d16453256ade7282cf332ca363590d0d2ca3789fbf73f99f62` |
| 14 | `instance` | [(anonymous)](../../../../mathematics/Algebra/PrimeIdeal/Variant8f1c5ba454c6daee27d015d076ec67811bf4157704598b360cc4df1e59705ecc.lean/declarations/instance--752aa63b6ee91be65d913961.md) | 159 | `declaration-track:752aa63b6ee91be65d913961451923baee09b8f7a32d0d3b3aaa0e501567c317` |
| 15 | `theorem` | [IsPrime.mem_or_compl_mem](../../../../mathematics/Algebra/PrimeIdeal/Variant8f1c5ba454c6daee27d015d076ec67811bf4157704598b360cc4df1e59705ecc.lean/declarations/isprime-mem-or-compl-mem--56463c40c9fe8c7ee8c7ea66.md) | 183 | `result-track:56463c40c9fe8c7ee8c7ea66f9c5ea232f529aa880b9abe43763a9fbac8a1a28` |
| 16 | `theorem` | [IsPrime.mem_compl_of_not_mem](../../../../mathematics/Algebra/PrimeIdeal/Variant8f1c5ba454c6daee27d015d076ec67811bf4157704598b360cc4df1e59705ecc.lean/declarations/isprime-mem-compl-of-not-mem--74f916d2d1bb363bf971ab11.md) | 189 | `result-track:74f916d2d1bb363bf971ab11aa654702ceaced0cace577f510cbaa80f649bf16` |
| 17 | `theorem` | [isPrime_of_mem_or_compl_mem](../../../../mathematics/Algebra/PrimeIdeal/Variant8f1c5ba454c6daee27d015d076ec67811bf4157704598b360cc4df1e59705ecc.lean/declarations/isprime-of-mem-or-compl-mem--d0ae66d269ae6d25366f79b6.md) | 193 | `result-track:d0ae66d269ae6d25366f79b63a8b2ae1ab7c465f83a23d15458e5b1b39675309` |
| 18 | `theorem` | [isPrime_iff_mem_or_compl_mem](../../../../mathematics/Algebra/PrimeIdeal/Variant8f1c5ba454c6daee27d015d076ec67811bf4157704598b360cc4df1e59705ecc.lean/declarations/isprime-iff-mem-or-compl-mem--7d69dea14b469fbf6f73b1f6.md) | 201 | `result-track:7d69dea14b469fbf6f73b1f6174ac22a612b9ac83b18c6838985efefba708081` |
| 19 | `instance` | [(anonymous)](../../../../mathematics/Algebra/PrimeIdeal/Variant8f1c5ba454c6daee27d015d076ec67811bf4157704598b360cc4df1e59705ecc.lean/declarations/instance--799b84f3c3b8482fcc2d9efe.md) | 205 | `declaration-track:799b84f3c3b8482fcc2d9efe9bdefbbe30f5639240f106916ad121e53b1264c7` |
| 20 | `class` | [IsPrime](../../../../mathematics/Algebra/PrimeIdeal/Variant8f1c5ba454c6daee27d015d076ec67811bf4157704598b360cc4df1e59705ecc.lean/declarations/isprime--f56751a0a39c01a199fd1356.md) | 227 | `declaration-track:f56751a0a39c01a199fd13566a7ff5f806cb7fb17174b256daca7ac8686b2a5a` |
| 21 | `def` | [IsPrime.toPrimePair](../../../../mathematics/Algebra/PrimeIdeal/Variant8f1c5ba454c6daee27d015d076ec67811bf4157704598b360cc4df1e59705ecc.lean/declarations/isprime-toprimepair--8e468e9d26e272b02d234c7f.md) | 233 | `declaration-track:8e468e9d26e272b02d234c7f1050925c2c74cdab9db79812b54999e3331bc524` |
| 22 | `theorem` | [_root_.GRWTSK.Algebra.PrimePair.Variantf7346ffb2df6fdbf19231a4ba252f297885f796752eae3ea722bcc389d9a76b2.Order.Ideal.PrimePair.F_isPrime](../../../../mathematics/Algebra/PrimeIdeal/Variant8f1c5ba454c6daee27d015d076ec67811bf4157704598b360cc4df1e59705ecc.lean/declarations/root-grwtsk-algebra-primepair-variantf7346ffb2df6fdbf19231a4ba252f297885--2d596d144f8f201c75c7c885.md) | 239 | `result-track:2d596d144f8f201c75c7c885ad5ddadd417401177c20678b5c0777fa6d043cd7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
