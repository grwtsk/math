# Verification target: GRWTSK.Algebra.Basic.Variant591738d3c5f835ec6fabf379141ce7112521772cc5110539f8c0365bae4390e5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c7e42dea82999e243b3cb83b29d69aa44a1cdab2",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variant591738d3c5f835ec6fabf379141ce7112521772cc5110539f8c0365bae4390e5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variant591738d3c5f835ec6fabf379141ce7112521772cc5110539f8c0365bae4390e5.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variant591738d3c5f835ec6fabf379141ce7112521772cc5110539f8c0365bae4390e5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c7e42dea82999e243b3cb83b29d69aa44a1cdab2`.

Source path: `GRWTSK/Algebra/Basic/Variant591738d3c5f835ec6fabf379141ce7112521772cc5110539f8c0365bae4390e5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variant591738d3c5f835ec6fabf379141ce7112521772cc5110539f8c0365bae4390e5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mem_maximalIdeal](../../../../mathematics/Algebra/Basic/Variant591738d3c5f835ec6fabf379141ce7112521772cc5110539f8c0365bae4390e5.lean/declarations/mem-maximalideal--f79628651a5befb74bc0d7a3.md) | 39 | `result-track:f79628651a5befb74bc0d7a32ea701619d945c3cc9b3e73305e76842f3f567ad` |
| 2 | `instance` | [maximalIdeal.isMaximal](../../../../mathematics/Algebra/Basic/Variant591738d3c5f835ec6fabf379141ce7112521772cc5110539f8c0365bae4390e5.lean/declarations/maximalideal-ismaximal--0903f7a335ef38a26c03fcc1.md) | 44 | `declaration-track:0903f7a335ef38a26c03fcc15173b61e0fb2d343ffd49bd6aa55fd86b902971d` |
| 3 | `theorem` | [isMaximal_iff](../../../../mathematics/Algebra/Basic/Variant591738d3c5f835ec6fabf379141ce7112521772cc5110539f8c0365bae4390e5.lean/declarations/ismaximal-iff--7a65c982ac66ea9fa4e9f59b.md) | 55 | `result-track:7a65c982ac66ea9fa4e9f59b6c8a8bf4ab01c9c5bf7c30809de3ffe70db39059` |
| 4 | `theorem` | [maximal_ideal_unique](../../../../mathematics/Algebra/Basic/Variant591738d3c5f835ec6fabf379141ce7112521772cc5110539f8c0365bae4390e5.lean/declarations/maximal-ideal-unique--4e23f9bd49b720dc704927f0.md) | 59 | `result-track:4e23f9bd49b720dc704927f0b95fd2341a593bdc143c9f148bc6d21812a55c47` |
| 5 | `theorem` | [eq_maximalIdeal](../../../../mathematics/Algebra/Basic/Variant591738d3c5f835ec6fabf379141ce7112521772cc5110539f8c0365bae4390e5.lean/declarations/eq-maximalideal--b4de3286d96d428a1d52324d.md) | 64 | `result-track:b4de3286d96d428a1d52324d48e7b4d5076bba0ede67b2204a68825e375f189d` |
| 6 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant591738d3c5f835ec6fabf379141ce7112521772cc5110539f8c0365bae4390e5.lean/declarations/instance--2aa047b17a6744cfc6c42394.md) | 68 | `declaration-track:2aa047b17a6744cfc6c42394ec07083bf0d0c2fb583f140e7710a836d8b656e7` |
| 7 | `theorem` | [of_singleton_maximalSpectrum](../../../../mathematics/Algebra/Basic/Variant591738d3c5f835ec6fabf379141ce7112521772cc5110539f8c0365bae4390e5.lean/declarations/of-singleton-maximalspectrum--5ab0f2044d2c62471d2125dd.md) | 74 | `result-track:5ab0f2044d2c62471d2125dd0a39fb5dd579a36ea1bdfa1797a48ff71c7de044` |
| 8 | `theorem` | [le_maximalIdeal](../../../../mathematics/Algebra/Basic/Variant591738d3c5f835ec6fabf379141ce7112521772cc5110539f8c0365bae4390e5.lean/declarations/le-maximalideal--52e23def9cab923c2b803251.md) | 80 | `result-track:52e23def9cab923c2b8032519f0995d375c5df778461e73f0e8c04474e56c42a` |
| 9 | `theorem` | [le_maximalIdeal_of_isPrime](../../../../mathematics/Algebra/Basic/Variant591738d3c5f835ec6fabf379141ce7112521772cc5110539f8c0365bae4390e5.lean/declarations/le-maximalideal-of-isprime--90d683dfacc189e26caae3f4.md) | 84 | `result-track:90d683dfacc189e26caae3f4c7358c67dd9084d16615215d79ca0de7a230859a` |
| 10 | `theorem` | [notMem_maximalIdeal](../../../../mathematics/Algebra/Basic/Variant591738d3c5f835ec6fabf379141ce7112521772cc5110539f8c0365bae4390e5.lean/declarations/notmem-maximalideal--326a8ee869b1c34c0ff06176.md) | 91 | `result-track:326a8ee869b1c34c0ff06176df05c46a4a4d038cc607730f11c9266e408f2acd` |
| 11 | `theorem` | [isField_iff_maximalIdeal_eq](../../../../mathematics/Algebra/Basic/Variant591738d3c5f835ec6fabf379141ce7112521772cc5110539f8c0365bae4390e5.lean/declarations/isfield-iff-maximalideal-eq--4ea53c26369ff64cc1dcc4f3.md) | 94 | `result-track:4ea53c26369ff64cc1dcc4f390dfe75d5fcc5ea4fb6d4717fb00b4d905d4b863` |
| 12 | `theorem` | [maximalIdeal_le_jacobson](../../../../mathematics/Algebra/Basic/Variant591738d3c5f835ec6fabf379141ce7112521772cc5110539f8c0365bae4390e5.lean/declarations/maximalideal-le-jacobson--aabb473b034b9233ed1cfb2d.md) | 105 | `result-track:aabb473b034b9233ed1cfb2d0ecf25135d93ae65d8bdfab2b6405baef6102afe` |
| 13 | `theorem` | [jacobson_eq_maximalIdeal](../../../../mathematics/Algebra/Basic/Variant591738d3c5f835ec6fabf379141ce7112521772cc5110539f8c0365bae4390e5.lean/declarations/jacobson-eq-maximalideal--d2f035588c2132b50f15af51.md) | 109 | `result-track:d2f035588c2132b50f15af511aa995ead57359c7bcd7981432ed9014c6c909de` |
| 14 | `theorem` | [ringJacobson_eq_maximalIdeal](../../../../mathematics/Algebra/Basic/Variant591738d3c5f835ec6fabf379141ce7112521772cc5110539f8c0365bae4390e5.lean/declarations/ringjacobson-eq-maximalideal--51b2f53becff7720bf26430f.md) | 115 | `result-track:51b2f53becff7720bf26430f24e4cf18e4a8cb8942b071c5d777c545a5d050af` |
| 15 | `theorem` | [ker_eq_maximalIdeal](../../../../mathematics/Algebra/Basic/Variant591738d3c5f835ec6fabf379141ce7112521772cc5110539f8c0365bae4390e5.lean/declarations/ker-eq-maximalideal--05e0c133dd284cdf6d527a29.md) | 124 | `result-track:05e0c133dd284cdf6d527a29e9e35965511b3568e14f42edf860f62a04a5b05b` |
| 16 | `theorem` | [maximalIdeal_eq_bot](../../../../mathematics/Algebra/Basic/Variant591738d3c5f835ec6fabf379141ce7112521772cc5110539f8c0365bae4390e5.lean/declarations/maximalideal-eq-bot--5d602b073f4b0f1491f6ce18.md) | 130 | `result-track:5d602b073f4b0f1491f6ce18dc67bf050a593d4b293ab892eb63665ca691eb13` |
| 17 | `lemma` | [Subsemiring.isLocalRing_of_unit](../../../../mathematics/Algebra/Basic/Variant591738d3c5f835ec6fabf379141ce7112521772cc5110539f8c0365bae4390e5.lean/declarations/subsemiring-islocalring-of-unit--b12d02f440b797aac560e756.md) | 135 | `result-track:b12d02f440b797aac560e756331b75cc6fa22a70bde234db95f29b2684e77b90` |
| 18 | `lemma` | [Subring.isLocalRing_of_unit](../../../../mathematics/Algebra/Basic/Variant591738d3c5f835ec6fabf379141ce7112521772cc5110539f8c0365bae4390e5.lean/declarations/subring-islocalring-of-unit--99c0a7fff1e7305e06df4dc7.md) | 142 | `result-track:99c0a7fff1e7305e06df4dc781be70d8dbfb357609fedb23386a2d6372bed292` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
