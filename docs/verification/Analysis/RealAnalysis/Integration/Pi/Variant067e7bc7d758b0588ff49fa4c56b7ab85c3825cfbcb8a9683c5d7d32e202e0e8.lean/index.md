# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Pi.Variant067e7bc7d758b0588ff49fa4c56b7ab85c3825cfbcb8a9683c5d7d32e202e0e8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "701f9e22728e3252fe29584de3629f0b55db66fc",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Pi/Variant067e7bc7d758b0588ff49fa4c56b7ab85c3825cfbcb8a9683c5d7d32e202e0e8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Pi/Variant067e7bc7d758b0588ff49fa4c56b7ab85c3825cfbcb8a9683c5d7d32e202e0e8.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Pi/Variant067e7bc7d758b0588ff49fa4c56b7ab85c3825cfbcb8a9683c5d7d32e202e0e8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `701f9e22728e3252fe29584de3629f0b55db66fc`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Pi/Variant067e7bc7d758b0588ff49fa4c56b7ab85c3825cfbcb8a9683c5d7d32e202e0e8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Pi/Variant067e7bc7d758b0588ff49fa4c56b7ab85c3825cfbcb8a9683c5d7d32e202e0e8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [memLp_pi_iff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Pi/Variant067e7bc7d758b0588ff49fa4c56b7ab85c3825cfbcb8a9683c5d7d32e202e0e8.lean/declarations/memlp-pi-iff--74ff9c2d6736b5bbdd535997.md) | 30 | `result-track:74ff9c2d6736b5bbdd53599738a3522992590b26d4837d483621072d962adf98` |
| 2 | `lemma` | [integrable_pi_iff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Pi/Variant067e7bc7d758b0588ff49fa4c56b7ab85c3825cfbcb8a9683c5d7d32e202e0e8.lean/declarations/integrable-pi-iff--9dedecd4113aadac381969b4.md) | 41 | `result-track:9dedecd4113aadac381969b4984c7261343a478d310215ed45ca432a93ee399a` |
| 3 | `lemma` | [eval_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Pi/Variant067e7bc7d758b0588ff49fa4c56b7ab85c3825cfbcb8a9683c5d7d32e202e0e8.lean/declarations/eval-integral--442ed37783eddd649039f2b7.md) | 48 | `result-track:442ed37783eddd649039f2b727c30f46e536d584e3ab98158603f2b14702e2d4` |
| 4 | `lemma` | [memLp_prod_iff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Pi/Variant067e7bc7d758b0588ff49fa4c56b7ab85c3825cfbcb8a9683c5d7d32e202e0e8.lean/declarations/memlp-prod-iff--44e611479eaa57bfa03a297b.md) | 59 | `result-track:44e611479eaa57bfa03a297ba00d96dbdc1597c238f204a09fbeea3d169a3fd6` |
| 5 | `lemma` | [MemLp.fst](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Pi/Variant067e7bc7d758b0588ff49fa4c56b7ab85c3825cfbcb8a9683c5d7d32e202e0e8.lean/declarations/memlp-fst--7c4255b7c501c6beb40fe4ee.md) | 71 | `result-track:7c4255b7c501c6beb40fe4ee55edbf9918377aa382f58ea259689755dc215c37` |
| 6 | `lemma` | [MemLp.snd](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Pi/Variant067e7bc7d758b0588ff49fa4c56b7ab85c3825cfbcb8a9683c5d7d32e202e0e8.lean/declarations/memlp-snd--36015e30b44485db62ec4918.md) | 74 | `result-track:36015e30b44485db62ec4918becdcb848b8487ea4771016fbafac3f64d90415c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
