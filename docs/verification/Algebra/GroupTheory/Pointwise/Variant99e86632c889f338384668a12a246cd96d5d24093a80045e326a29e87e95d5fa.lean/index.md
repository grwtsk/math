# Verification target: GRWTSK.Algebra.GroupTheory.Pointwise.Variant99e86632c889f338384668a12a246cd96d5d24093a80045e326a29e87e95d5fa

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5475eb3ee89f7844ad7b3025c6c737c8561e9544",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Pointwise/Variant99e86632c889f338384668a12a246cd96d5d24093a80045e326a29e87e95d5fa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant99e86632c889f338384668a12a246cd96d5d24093a80045e326a29e87e95d5fa.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant99e86632c889f338384668a12a246cd96d5d24093a80045e326a29e87e95d5fa.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5475eb3ee89f7844ad7b3025c6c737c8561e9544`.

Source path: `GRWTSK/Algebra/GroupTheory/Pointwise/Variant99e86632c889f338384668a12a246cd96d5d24093a80045e326a29e87e95d5fa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Pointwise/Variant99e86632c889f338384668a12a246cd96d5d24093a80045e326a29e87e95d5fa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Submonoid.Pointwise` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Action.Pointwise.Set` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [smul_mem_pointwise_smul_iff₀](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant99e86632c889f338384668a12a246cd96d5d24093a80045e326a29e87e95d5fa.lean/declarations/smul-mem-pointwise-smul-iff--7297b5be010f02fb9f410517.md) | 25 | `result-track:7297b5be010f02fb9f4105170ad460a827a34839d0bafa426db2eeb3a8f721a7` |
| 2 | `lemma` | [mem_pointwise_smul_iff_inv_smul_mem₀](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant99e86632c889f338384668a12a246cd96d5d24093a80045e326a29e87e95d5fa.lean/declarations/mem-pointwise-smul-iff-inv-smul-mem--9a84bdf89f02d258db0936eb.md) | 29 | `result-track:9a84bdf89f02d258db0936eba9b0e4a544c0b8c55ebb8f047dd624965880fe24` |
| 3 | `lemma` | [mem_inv_pointwise_smul_iff₀](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant99e86632c889f338384668a12a246cd96d5d24093a80045e326a29e87e95d5fa.lean/declarations/mem-inv-pointwise-smul-iff--167ac627c3f54b9eb0d06201.md) | 33 | `result-track:167ac627c3f54b9eb0d06201b9af80b38d01368358418e5b4d755c6299ae9ea4` |
| 4 | `lemma` | [pointwise_smul_le_pointwise_smul_iff₀](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant99e86632c889f338384668a12a246cd96d5d24093a80045e326a29e87e95d5fa.lean/declarations/pointwise-smul-le-pointwise-smul-iff--54649dc8dd9d950282c3f29b.md) | 38 | `result-track:54649dc8dd9d950282c3f29b563680ab24b0aa8479a5b0090e92e6b8a22b8d40` |
| 5 | `lemma` | [pointwise_smul_le_iff₀](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant99e86632c889f338384668a12a246cd96d5d24093a80045e326a29e87e95d5fa.lean/declarations/pointwise-smul-le-iff--be3401489eb903c8f8264a8e.md) | 42 | `result-track:be3401489eb903c8f8264a8e3624d47907f52407938fa8c5b218cbad50af21ae` |
| 6 | `lemma` | [le_pointwise_smul_iff₀](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant99e86632c889f338384668a12a246cd96d5d24093a80045e326a29e87e95d5fa.lean/declarations/le-pointwise-smul-iff--613e8d4c54249e85a9fddb94.md) | 45 | `result-track:613e8d4c54249e85a9fddb94cb43f44401fbbf104d3d0ae16004109806b327d0` |
| 7 | `def` | [pointwiseMulAction](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant99e86632c889f338384668a12a246cd96d5d24093a80045e326a29e87e95d5fa.lean/declarations/pointwisemulaction--02ed89bc2fa9a919623d9751.md) | 58 | `declaration-track:02ed89bc2fa9a919623d975116d09b604a7e53eccf8eacd564ed454e4e1c77b0` |
| 8 | `lemma` | [coe_pointwise_smul](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant99e86632c889f338384668a12a246cd96d5d24093a80045e326a29e87e95d5fa.lean/declarations/coe-pointwise-smul--4a09b72b3618c457fb71c0ee.md) | 69 | `result-track:4a09b72b3618c457fb71c0eef69dfd8fa9d282ed7dfe1d1ace99b792594b1367` |
| 9 | `lemma` | [smul_mem_pointwise_smul](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant99e86632c889f338384668a12a246cd96d5d24093a80045e326a29e87e95d5fa.lean/declarations/smul-mem-pointwise-smul--152a3a515dec4bd8f4082027.md) | 71 | `result-track:152a3a515dec4bd8f40820273930885e85cc5e7e381f99e88dff22d45c3fe529` |
| 10 | `lemma` | [mem_smul_pointwise_iff_exists](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant99e86632c889f338384668a12a246cd96d5d24093a80045e326a29e87e95d5fa.lean/declarations/mem-smul-pointwise-iff-exists--ec8323e4bb8a7f36c16e833a.md) | 74 | `result-track:ec8323e4bb8a7f36c16e833ab1d5a368dc9c16220a9913ce9ec5a7e1e2bf93c8` |
| 11 | `lemma` | [smul_bot](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant99e86632c889f338384668a12a246cd96d5d24093a80045e326a29e87e95d5fa.lean/declarations/smul-bot--38d5e65caf4a7fb7ff0ca0ff.md) | 79 | `result-track:38d5e65caf4a7fb7ff0ca0fffa64f58fb801799888c7e536f3d5df8ea5f0a75d` |
| 12 | `lemma` | [smul_sup](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant99e86632c889f338384668a12a246cd96d5d24093a80045e326a29e87e95d5fa.lean/declarations/smul-sup--c97fdfc3b6cebb3f37fa74c1.md) | 81 | `result-track:c97fdfc3b6cebb3f37fa74c1bcaa5a0ceafe664c02e3cfac88b96bfcc0055e5f` |
| 13 | `lemma` | [smul_closure](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant99e86632c889f338384668a12a246cd96d5d24093a80045e326a29e87e95d5fa.lean/declarations/smul-closure--81172390cd65df86c0166965.md) | 85 | `result-track:81172390cd65df86c0166965efa832b5eafeba791b3ecc7b535e4654ea15e618` |
| 14 | `lemma` | [pointwise_isCentralScalar](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant99e86632c889f338384668a12a246cd96d5d24093a80045e326a29e87e95d5fa.lean/declarations/pointwise-iscentralscalar--89278ed333e87746300877fb.md) | 88 | `result-track:89278ed333e87746300877fb275e2accad16b12c1628d12788530e4fa97e7582` |
| 15 | `lemma` | [smul_mem_pointwise_smul_iff](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant99e86632c889f338384668a12a246cd96d5d24093a80045e326a29e87e95d5fa.lean/declarations/smul-mem-pointwise-smul-iff--f957082e3746670d67b95a6d.md) | 101 | `result-track:f957082e3746670d67b95a6de7f48a6dd22a6e402303ce25351a0b78690688f7` |
| 16 | `lemma` | [mem_pointwise_smul_iff_inv_smul_mem](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant99e86632c889f338384668a12a246cd96d5d24093a80045e326a29e87e95d5fa.lean/declarations/mem-pointwise-smul-iff-inv-smul-mem--1822f555fe2cde7722b84d4e.md) | 104 | `result-track:1822f555fe2cde7722b84d4ee0a88ccf5f85ae514ccfe30d06a0c07f0b28bd56` |
| 17 | `lemma` | [mem_inv_pointwise_smul_iff](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant99e86632c889f338384668a12a246cd96d5d24093a80045e326a29e87e95d5fa.lean/declarations/mem-inv-pointwise-smul-iff--7c71e1948eb9e1b170d50d99.md) | 108 | `result-track:7c71e1948eb9e1b170d50d991c9a963a7d9df890636afa15d32a1de700160d53` |
| 18 | `lemma` | [pointwise_smul_le_pointwise_smul_iff](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant99e86632c889f338384668a12a246cd96d5d24093a80045e326a29e87e95d5fa.lean/declarations/pointwise-smul-le-pointwise-smul-iff--6044a8153e8649c04d8b9f03.md) | 112 | `result-track:6044a8153e8649c04d8b9f039bcb48d4b10aa4f34bc920c5aa518b70bfe2a58c` |
| 19 | `lemma` | [pointwise_smul_le_iff](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant99e86632c889f338384668a12a246cd96d5d24093a80045e326a29e87e95d5fa.lean/declarations/pointwise-smul-le-iff--01b7a27c20a3ffe9ba157565.md) | 116 | `result-track:01b7a27c20a3ffe9ba157565c65a06fc1de6ffc58cdf399a725c0582b0fe7b69` |
| 20 | `lemma` | [le_pointwise_smul_iff](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant99e86632c889f338384668a12a246cd96d5d24093a80045e326a29e87e95d5fa.lean/declarations/le-pointwise-smul-iff--67b4567032c38babe27158ed.md) | 119 | `result-track:67b4567032c38babe27158ed08aa729b61fcd83614ca66407a64a572dce1dbad` |
| 21 | `lemma` | [smul_mem_pointwise_smul_iff₀](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant99e86632c889f338384668a12a246cd96d5d24093a80045e326a29e87e95d5fa.lean/declarations/smul-mem-pointwise-smul-iff--571447baa0f623a53864cc8f.md) | 128 | `result-track:571447baa0f623a53864cc8f1c13419ef6b53076faeda264dc57908c2dd58069` |
| 22 | `lemma` | [mem_pointwise_smul_iff_inv_smul_mem₀](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant99e86632c889f338384668a12a246cd96d5d24093a80045e326a29e87e95d5fa.lean/declarations/mem-pointwise-smul-iff-inv-smul-mem--255c1d1f38a5e16f4d098897.md) | 132 | `result-track:255c1d1f38a5e16f4d09889778a15add4ef26b1963715e9296938fbd3873efca` |
| 23 | `lemma` | [mem_inv_pointwise_smul_iff₀](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant99e86632c889f338384668a12a246cd96d5d24093a80045e326a29e87e95d5fa.lean/declarations/mem-inv-pointwise-smul-iff--ba94bb5ddae4526763ce4663.md) | 136 | `result-track:ba94bb5ddae4526763ce4663c193ea8dbe374f964fd3ed17d6353b5277ad7863` |
| 24 | `lemma` | [pointwise_smul_le_pointwise_smul_iff₀](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant99e86632c889f338384668a12a246cd96d5d24093a80045e326a29e87e95d5fa.lean/declarations/pointwise-smul-le-pointwise-smul-iff--597bf2f516d79476e3321284.md) | 141 | `result-track:597bf2f516d79476e33212844b45ab25f66d5140477c856bc214acc14ae65ca7` |
| 25 | `lemma` | [pointwise_smul_le_iff₀](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant99e86632c889f338384668a12a246cd96d5d24093a80045e326a29e87e95d5fa.lean/declarations/pointwise-smul-le-iff--3b33c1dce8c6497c0d7d0a19.md) | 144 | `result-track:3b33c1dce8c6497c0d7d0a1920db794880034f1bed08473a6a048f0511068ede` |
| 26 | `lemma` | [le_pointwise_smul_iff₀](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant99e86632c889f338384668a12a246cd96d5d24093a80045e326a29e87e95d5fa.lean/declarations/le-pointwise-smul-iff--a1f5bbd80fd32d2c8b1c86e3.md) | 145 | `result-track:a1f5bbd80fd32d2c8b1c86e33c1c0f1d60e8131772787c910369893d3d0c7e2a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
