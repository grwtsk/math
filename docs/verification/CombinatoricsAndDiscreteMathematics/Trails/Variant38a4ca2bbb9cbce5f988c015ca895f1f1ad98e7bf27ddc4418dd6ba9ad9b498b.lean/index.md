# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Trails.Variant38a4ca2bbb9cbce5f988c015ca895f1f1ad98e7bf27ddc4418dd6ba9ad9b498b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b0d7bac26e26355b7a68533de634e66c707d5c9f",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Trails/Variant38a4ca2bbb9cbce5f988c015ca895f1f1ad98e7bf27ddc4418dd6ba9ad9b498b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Trails/Variant38a4ca2bbb9cbce5f988c015ca895f1f1ad98e7bf27ddc4418dd6ba9ad9b498b.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Trails/Variant38a4ca2bbb9cbce5f988c015ca895f1f1ad98e7bf27ddc4418dd6ba9ad9b498b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b0d7bac26e26355b7a68533de634e66c707d5c9f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Trails/Variant38a4ca2bbb9cbce5f988c015ca895f1f1ad98e7bf27ddc4418dd6ba9ad9b498b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Trails/Variant38a4ca2bbb9cbce5f988c015ca895f1f1ad98e7bf27ddc4418dd6ba9ad9b498b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Ring.Parity` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.SimpleGraph.Path` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [IsTrail.edgesFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Trails/Variant38a4ca2bbb9cbce5f988c015ca895f1f1ad98e7bf27ddc4418dd6ba9ad9b498b.lean/declarations/istrail-edgesfinset--241ebc8f4717fe06324b587e.md) | 53 | `declaration-track:241ebc8f4717fe06324b587eb4853a20a08ca2b97d2552bea852d7dc322a0be1` |
| 2 | `theorem` | [IsTrail.even_countP_edges_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Trails/Variant38a4ca2bbb9cbce5f988c015ca895f1f1ad98e7bf27ddc4418dd6ba9ad9b498b.lean/declarations/istrail-even-countp-edges-iff--9b2374229991b28cc7ead5e7.md) | 58 | `result-track:9b2374229991b28cc7ead5e70ccb57185af520da2c58124e7410074fb3b81692` |
| 3 | `def` | [IsEulerian](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Trails/Variant38a4ca2bbb9cbce5f988c015ca895f1f1ad98e7bf27ddc4418dd6ba9ad9b498b.lean/declarations/iseulerian--211309544e746e6655c558fd.md) | 94 | `declaration-track:211309544e746e6655c558fd03200d410bf2e483f042c9ff87aa68edb8439d63` |
| 4 | `theorem` | [IsEulerian.isTrail](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Trails/Variant38a4ca2bbb9cbce5f988c015ca895f1f1ad98e7bf27ddc4418dd6ba9ad9b498b.lean/declarations/iseulerian-istrail--bb59de3fa6d25a11257d7ae4.md) | 97 | `result-track:bb59de3fa6d25a11257d7ae4406d1dc5138449788d07dc180152ff2038a5256c` |
| 5 | `theorem` | [IsEulerian.mem_edges_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Trails/Variant38a4ca2bbb9cbce5f988c015ca895f1f1ad98e7bf27ddc4418dd6ba9ad9b498b.lean/declarations/iseulerian-mem-edges-iff--6cbe21a4b2c117ed28b8e06b.md) | 104 | `result-track:6cbe21a4b2c117ed28b8e06b7d08a1097fce71911770987786e243343e4b74ad` |
| 6 | `def` | [IsEulerian.fintypeEdgeSet](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Trails/Variant38a4ca2bbb9cbce5f988c015ca895f1f1ad98e7bf27ddc4418dd6ba9ad9b498b.lean/declarations/iseulerian-fintypeedgeset--d34fccb9f786f3887cb92954.md) | 110 | `declaration-track:d34fccb9f786f3887cb9295412821a569bddc6a6b59dd25e431dfdd3c3faa5a7` |
| 7 | `theorem` | [IsTrail.isEulerian_of_forall_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Trails/Variant38a4ca2bbb9cbce5f988c015ca895f1f1ad98e7bf27ddc4418dd6ba9ad9b498b.lean/declarations/istrail-iseulerian-of-forall-mem--d58185d66447e994d6a51324.md) | 115 | `result-track:d58185d66447e994d6a513245eceba6fdfa00e5c20c0a5379175be1c535bcd44` |
| 8 | `theorem` | [isEulerian_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Trails/Variant38a4ca2bbb9cbce5f988c015ca895f1f1ad98e7bf27ddc4418dd6ba9ad9b498b.lean/declarations/iseulerian-iff--c65bef413bf409e0837348c7.md) | 119 | `result-track:c65bef413bf409e0837348c752cd8035e1d0da51c7f2297231552ce828df1b2d` |
| 9 | `theorem` | [IsEulerian.edgesFinset_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Trails/Variant38a4ca2bbb9cbce5f988c015ca895f1f1ad98e7bf27ddc4418dd6ba9ad9b498b.lean/declarations/iseulerian-edgesfinset-eq--a2193be2a9392a25bc43eeaf.md) | 127 | `result-track:a2193be2a9392a25bc43eeafde110de125606e88a2c35a80e4fcee3011019c90` |
| 10 | `theorem` | [IsEulerian.even_degree_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Trails/Variant38a4ca2bbb9cbce5f988c015ca895f1f1ad98e7bf27ddc4418dd6ba9ad9b498b.lean/declarations/iseulerian-even-degree-iff--2ad38c85abcca1a387f9cb98.md) | 132 | `result-track:2ad38c85abcca1a387f9cb987b579c894396725c1e2daddcb33a3d8c15e49811` |
| 11 | `theorem` | [IsEulerian.card_filter_odd_degree](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Trails/Variant38a4ca2bbb9cbce5f988c015ca895f1f1ad98e7bf27ddc4418dd6ba9ad9b498b.lean/declarations/iseulerian-card-filter-odd-degree--909cb9b4313d7dddfcdabd5d.md) | 142 | `result-track:909cb9b4313d7dddfcdabd5dd65eb95ccbb01e575d19abe6ce9a96deb059f8ae` |
| 12 | `theorem` | [IsEulerian.card_odd_degree](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Trails/Variant38a4ca2bbb9cbce5f988c015ca895f1f1ad98e7bf27ddc4418dd6ba9ad9b498b.lean/declarations/iseulerian-card-odd-degree--6699d2eb5948af4df781d820.md) | 159 | `result-track:6699d2eb5948af4df781d8208192d539f9d6e8b9e068f5058551acc5a55c2c11` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
