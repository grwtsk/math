# Verification target: GRWTSK.Algebra.LinearAlgebra.Sturmian

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ed1512ef9b6f4fdd081699bd3075d8fa9bd44564",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Sturmian.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/LinearAlgebra/Sturmian__SourceOccurrencec8ced9b1f0d0b8d9b69f2a91.lean/index.md) · [Full source](../../../../mathematics/Algebra/LinearAlgebra/Sturmian__SourceOccurrencec8ced9b1f0d0b8d9b69f2a91.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ed1512ef9b6f4fdd081699bd3075d8fa9bd44564`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Sturmian.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Sturmian.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Algebra.LinearAlgebra.SchrodingerTransfer`](../../../../mathematics/Algebra/LinearAlgebra/SchrodingerTransfer__SourceOccurrencec32d911d310462fbb398b4c4.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.Algebra.Order.Floor.Ring` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Trace` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [bit](../../../../mathematics/Algebra/LinearAlgebra/Sturmian__SourceOccurrencec8ced9b1f0d0b8d9b69f2a91.lean/declarations/bit--0c2a7bf5d4ee841c84e54b7e.md) | 19 | `declaration-track:0c2a7bf5d4ee841c84e54b7ee36f83830a137a20990c74bee7c330384682b1b5` |
| 2 | `def` | [potential](../../../../mathematics/Algebra/LinearAlgebra/Sturmian__SourceOccurrencec8ced9b1f0d0b8d9b69f2a91.lean/declarations/potential--4d6755299026df30d6ca799a.md) | 22 | `declaration-track:4d6755299026df30d6ca799aaa6c0b0f617e60387d883cc4e1775851976db63b` |
| 3 | `def` | [transfer](../../../../mathematics/Algebra/LinearAlgebra/Sturmian__SourceOccurrencec8ced9b1f0d0b8d9b69f2a91.lean/declarations/transfer--6f30da08ec9e2d5ad63f353d.md) | 24 | `declaration-track:6f30da08ec9e2d5ad63f353d92c7e81c665d3c3cad0ee0dbf026c0a1be5c484f` |
| 4 | `theorem` | [bit_zero_or_one](../../../../mathematics/Algebra/LinearAlgebra/Sturmian__SourceOccurrencec8ced9b1f0d0b8d9b69f2a91.lean/declarations/bit-zero-or-one--4e669ff7db1435f2f72c37bc.md) | 27 | `result-track:4e669ff7db1435f2f72c37bc475e3bea3a761ad2866cfd1da6cd3b52e7641012` |
| 5 | `theorem` | [potential_between_offsets](../../../../mathematics/Algebra/LinearAlgebra/Sturmian__SourceOccurrencec8ced9b1f0d0b8d9b69f2a91.lean/declarations/potential-between-offsets--27a2d6691b9c22abeb1c9515.md) | 31 | `result-track:27a2d6691b9c22abeb1c9515279dc8f0982e434a76dfd7a154d1ad71819d36fd` |
| 6 | `theorem` | [comparison_offset_width](../../../../mathematics/Algebra/LinearAlgebra/Sturmian__SourceOccurrencec8ced9b1f0d0b8d9b69f2a91.lean/declarations/comparison-offset-width--a19941515cb6ca39e329b00a.md) | 37 | `result-track:a19941515cb6ca39e329b00a7178d37ddd7eb053c2b9a70e843b37ea3de8822d` |
| 7 | `theorem` | [abs_potential_sub_le](../../../../mathematics/Algebra/LinearAlgebra/Sturmian__SourceOccurrencec8ced9b1f0d0b8d9b69f2a91.lean/declarations/abs-potential-sub-le--24702b4bda610a3ac12cacdb.md) | 42 | `result-track:24702b4bda610a3ac12cacdb883e3d02992e1fcdfc1145b897b2f4aeba3bc3a6` |
| 8 | `theorem` | [potential_zero](../../../../mathematics/Algebra/LinearAlgebra/Sturmian__SourceOccurrencec8ced9b1f0d0b8d9b69f2a91.lean/declarations/potential-zero--5cf42ba42bfae8fd887c3e61.md) | 46 | `result-track:5cf42ba42bfae8fd887c3e612484ebfaf3f9cee7b2fff3bf07c386900362840a` |
| 9 | `theorem` | [zero_coupling_transfer](../../../../mathematics/Algebra/LinearAlgebra/Sturmian__SourceOccurrencec8ced9b1f0d0b8d9b69f2a91.lean/declarations/zero-coupling-transfer--d7c526837430bf276bdeb3bd.md) | 49 | `result-track:d7c526837430bf276bdeb3bd9e401c405e2f6366d2b1600140ed0c934e4bb316` |
| 10 | `theorem` | [recurrence_iff_transfer](../../../../mathematics/Algebra/LinearAlgebra/Sturmian__SourceOccurrencec8ced9b1f0d0b8d9b69f2a91.lean/declarations/recurrence-iff-transfer--793c117369bd0191ff5cf08e.md) | 53 | `result-track:793c117369bd0191ff5cf08e62869bd764d3b8e1b56512f1a2fddfd10cf656d5` |
| 11 | `theorem` | [det_transfer](../../../../mathematics/Algebra/LinearAlgebra/Sturmian__SourceOccurrencec8ced9b1f0d0b8d9b69f2a91.lean/declarations/det-transfer--b0458d01d3ae343b651a8938.md) | 60 | `result-track:b0458d01d3ae343b651a8938fe1723a868b4654d02b9b6a5e53f165ebb5992d2` |
| 12 | `theorem` | [zero_coupling_trace_iff](../../../../mathematics/Algebra/LinearAlgebra/Sturmian__SourceOccurrencec8ced9b1f0d0b8d9b69f2a91.lean/declarations/zero-coupling-trace-iff--4becb1ab0515a60fde60ac36.md) | 66 | `result-track:4becb1ab0515a60fde60ac36d3e6e33f1a8b3b33a9349b6ac5381a321c997aed` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
