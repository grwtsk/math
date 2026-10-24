# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.TaylorSeries.Variant6f9df937b3a5258e466995ab06b87f30387b80c8a65162ae741b22f8ebe96b39

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8d1e87cd1b6e0e269111d43a19624d1c253253cd",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/TaylorSeries/Variant6f9df937b3a5258e466995ab06b87f30387b80c8a65162ae741b22f8ebe96b39.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/TaylorSeries/Variant6f9df937b3a5258e466995ab06b87f30387b80c8a65162ae741b22f8ebe96b39.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/TaylorSeries/Variant6f9df937b3a5258e466995ab06b87f30387b80c8a65162ae741b22f8ebe96b39.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8d1e87cd1b6e0e269111d43a19624d1c253253cd`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/TaylorSeries/Variant6f9df937b3a5258e466995ab06b87f30387b80c8a65162ae741b22f8ebe96b39.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/TaylorSeries/Variant6f9df937b3a5258e466995ab06b87f30387b80c8a65162ae741b22f8ebe96b39.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.CauchyIntegral` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [hasSum_taylorSeries_on_ball](../../../../../mathematics/Analysis/AsymptoticAnalysis/TaylorSeries/Variant6f9df937b3a5258e466995ab06b87f30387b80c8a65162ae741b22f8ebe96b39.lean/declarations/hassum-taylorseries-on-ball--8bb6274be5b67880dc977d0f.md) | 56 | `result-track:8bb6274be5b67880dc977d0fd9be23784e34e033da44a4c6c99640ef5d46df5f` |
| 2 | `lemma` | [taylorSeries_eq_on_ball](../../../../../mathematics/Analysis/AsymptoticAnalysis/TaylorSeries/Variant6f9df937b3a5258e466995ab06b87f30387b80c8a65162ae741b22f8ebe96b39.lean/declarations/taylorseries-eq-on-ball--12b0979c927877f8ea2c7d01.md) | 76 | `result-track:12b0979c927877f8ea2c7d01f69a63f9b98d6f3f1e278894f15b31312d0669e3` |
| 3 | `lemma` | [taylorSeries_eq_on_ball'](../../../../../mathematics/Analysis/AsymptoticAnalysis/TaylorSeries/Variant6f9df937b3a5258e466995ab06b87f30387b80c8a65162ae741b22f8ebe96b39.lean/declarations/taylorseries-eq-on-ball--c3dea15bc8e11400adc53905.md) | 83 | `result-track:c3dea15bc8e11400adc539059736a6c0ce78ce3c1fe339f25fad41f76b3d2009` |
| 4 | `lemma` | [hasSum_taylorSeries_on_emetric_ball](../../../../../mathematics/Analysis/AsymptoticAnalysis/TaylorSeries/Variant6f9df937b3a5258e466995ab06b87f30387b80c8a65162ae741b22f8ebe96b39.lean/declarations/hassum-taylorseries-on-emetric-ball--48a2bc290439935e8002724d.md) | 98 | `result-track:48a2bc290439935e8002724dbc3b42767c53f26f0ca1edd886dc93eb93041735` |
| 5 | `lemma` | [taylorSeries_eq_on_emetric_ball](../../../../../mathematics/Analysis/AsymptoticAnalysis/TaylorSeries/Variant6f9df937b3a5258e466995ab06b87f30387b80c8a65162ae741b22f8ebe96b39.lean/declarations/taylorseries-eq-on-emetric-ball--23ee8649bc81f3dc2da45718.md) | 110 | `result-track:23ee8649bc81f3dc2da45718901a75309661c3ec8938f5d2f44cb56d300ad8f7` |
| 6 | `lemma` | [taylorSeries_eq_on_emetric_ball'](../../../../../mathematics/Analysis/AsymptoticAnalysis/TaylorSeries/Variant6f9df937b3a5258e466995ab06b87f30387b80c8a65162ae741b22f8ebe96b39.lean/declarations/taylorseries-eq-on-emetric-ball--2c2c9bd36593a628cbea7c9e.md) | 117 | `result-track:2c2c9bd36593a628cbea7c9e664104d4d65f735e3d8beea9546eab40a59fd2a2` |
| 7 | `lemma` | [hasSum_taylorSeries_of_entire](../../../../../mathematics/Analysis/AsymptoticAnalysis/TaylorSeries/Variant6f9df937b3a5258e466995ab06b87f30387b80c8a65162ae741b22f8ebe96b39.lean/declarations/hassum-taylorseries-of-entire--9a8facc5e3891f47111aef7f.md) | 131 | `result-track:9a8facc5e3891f47111aef7fd7ccb07bf65b7e67f6f1f0ce7dae5c95986d8593` |
| 8 | `lemma` | [taylorSeries_eq_of_entire](../../../../../mathematics/Analysis/AsymptoticAnalysis/TaylorSeries/Variant6f9df937b3a5258e466995ab06b87f30387b80c8a65162ae741b22f8ebe96b39.lean/declarations/taylorseries-eq-of-entire--21e1c1ffd17f74697e7018bb.md) | 139 | `result-track:21e1c1ffd17f74697e7018bb72369a2669c101a2e44bfd4047ea532da2e39654` |
| 9 | `lemma` | [taylorSeries_eq_of_entire'](../../../../../mathematics/Analysis/AsymptoticAnalysis/TaylorSeries/Variant6f9df937b3a5258e466995ab06b87f30387b80c8a65162ae741b22f8ebe96b39.lean/declarations/taylorseries-eq-of-entire--cb82b7913ea4c4974d7ff29c.md) | 145 | `result-track:cb82b7913ea4c4974d7ff29c448b66cea3029ea3d2978d68e2a8df698fcc6d4b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
