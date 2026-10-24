# Verification target: GRWTSK.Algebra.LinearAlgebra.Quotient.Variant445f0c3d812a03ac2b2a4ce05c2991e70c05a2380cf765f6aac1a58ccced51c0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d89557a8f308c99a1d8257a53a6ba59b645b6cea",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Quotient/Variant445f0c3d812a03ac2b2a4ce05c2991e70c05a2380cf765f6aac1a58ccced51c0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant445f0c3d812a03ac2b2a4ce05c2991e70c05a2380cf765f6aac1a58ccced51c0.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant445f0c3d812a03ac2b2a4ce05c2991e70c05a2380cf765f6aac1a58ccced51c0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d89557a8f308c99a1d8257a53a6ba59b645b6cea`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Quotient/Variant445f0c3d812a03ac2b2a4ce05c2991e70c05a2380cf765f6aac1a58ccced51c0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Quotient/Variant445f0c3d812a03ac2b2a4ce05c2991e70c05a2380cf765f6aac1a58ccced51c0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Dimension.DivisionRing` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeModule.PID` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeModule.StrongRankCondition` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Artinian.Ring` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Over` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Quotient.Index` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.LocalRing.ResidueField.Defs` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.LocalRing.RingHom.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Nakayama` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [quotient_span_eq_top_iff_span_eq_top](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant445f0c3d812a03ac2b2a4ce05c2991e70c05a2380cf765f6aac1a58ccced51c0.lean/declarations/quotient-span-eq-top-iff-span-eq-top--7665d5739e106e9c048fd268.md) | 32 | `result-track:7665d5739e106e9c048fd268d5a5df239939bfd8e60a99b72249f4ee902459f2` |
| 2 | `theorem` | [finrank_quotient_map](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant445f0c3d812a03ac2b2a4ce05c2991e70c05a2380cf765f6aac1a58ccced51c0.lean/declarations/finrank-quotient-map--ce488898dd4a1093f86e6780.md) | 61 | `result-track:ce488898dd4a1093f86e67803fdacba46e58b4d9d0efaab3945a09e2bd0bec1b` |
| 3 | `def` | [basisQuotient](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant445f0c3d812a03ac2b2a4ce05c2991e70c05a2380cf765f6aac1a58ccced51c0.lean/declarations/basisquotient--a23944dee68b0095a3d10a24.md) | 83 | `declaration-track:a23944dee68b0095a3d10a249acfcfd16d564648bd4512e21011faa008a01fae` |
| 4 | `lemma` | [basisQuotient_apply](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant445f0c3d812a03ac2b2a4ce05c2991e70c05a2380cf765f6aac1a58ccced51c0.lean/declarations/basisquotient-apply--3bb8abfa626cd2d634c4f340.md) | 90 | `result-track:3bb8abfa626cd2d634c4f340cd37f3306d9c588b993a59ce7345d9988f4a47f0` |
| 5 | `lemma` | [basisQuotient_repr](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant445f0c3d812a03ac2b2a4ce05c2991e70c05a2380cf765f6aac1a58ccced51c0.lean/declarations/basisquotient-repr--2b483e83d96a4f4d566d83fd.md) | 95 | `result-track:2b483e83d96a4f4d566d83fd60e396b7233f1e0aa543a0c4b920612e5ae0524b` |
| 6 | `lemma` | [exists_maximalIdeal_pow_le_of_finite_quotient](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant445f0c3d812a03ac2b2a4ce05c2991e70c05a2380cf765f6aac1a58ccced51c0.lean/declarations/exists-maximalideal-pow-le-of-finite-quotient--431a91a65980c070ea668374.md) | 109 | `result-track:431a91a65980c070ea668374c3fa6163d6cbd8712b359a5a7da8cb24b55268e1` |
| 7 | `lemma` | [finite_quotient_iff](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant445f0c3d812a03ac2b2a4ce05c2991e70c05a2380cf765f6aac1a58ccced51c0.lean/declarations/finite-quotient-iff--12175657c271a9dbba4c4303.md) | 125 | `result-track:12175657c271a9dbba4c4303d5c5bd0023a29f1cc001529f21e826b5370f800d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
