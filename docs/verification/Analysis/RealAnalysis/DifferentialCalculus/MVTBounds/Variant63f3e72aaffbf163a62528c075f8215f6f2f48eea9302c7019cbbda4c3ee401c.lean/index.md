# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.MVTBounds.Variant63f3e72aaffbf163a62528c075f8215f6f2f48eea9302c7019cbbda4c3ee401c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4f461942b8537f8587853799e1a35b9e2c60784b",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MVTBounds/Variant63f3e72aaffbf163a62528c075f8215f6f2f48eea9302c7019cbbda4c3ee401c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MVTBounds/Variant63f3e72aaffbf163a62528c075f8215f6f2f48eea9302c7019cbbda4c3ee401c.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MVTBounds/Variant63f3e72aaffbf163a62528c075f8215f6f2f48eea9302c7019cbbda4c3ee401c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4f461942b8537f8587853799e1a35b9e2c60784b`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MVTBounds/Variant63f3e72aaffbf163a62528c075f8215f6f2f48eea9302c7019cbbda4c3ee401c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/MVTBounds/Variant63f3e72aaffbf163a62528c075f8215f6f2f48eea9302c7019cbbda4c3ee401c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Engine.RootFinding.Newton` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [mvt_lower_bound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MVTBounds/Variant63f3e72aaffbf163a62528c075f8215f6f2f48eea9302c7019cbbda4c3ee401c.lean/declarations/mvt-lower-bound--8173aab59e55034f1473dbe6.md) | 35 | `result-track:8173aab59e55034f1473dbe60076d1ff9428501d2d3221d6e93bf4352db5eaad` |
| 2 | `lemma` | [mvt_upper_bound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MVTBounds/Variant63f3e72aaffbf163a62528c075f8215f6f2f48eea9302c7019cbbda4c3ee401c.lean/declarations/mvt-upper-bound--59dcf9550f294f6a600a60a6.md) | 65 | `result-track:59dcf9550f294f6a600a60a61617666f671a86b40aa9b5b8363f34dad5eef63c` |
| 3 | `lemma` | [newton_positive_increasing_contradicts_contraction](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MVTBounds/Variant63f3e72aaffbf163a62528c075f8215f6f2f48eea9302c7019cbbda4c3ee401c.lean/declarations/newton-positive-increasing-contradicts-contraction--c04659953b3f6fe29dfeb4a5.md) | 103 | `result-track:c04659953b3f6fe29dfeb4a5634f1e6f8aab150f981717900399dc1c668fde7f` |
| 4 | `lemma` | [newton_negative_increasing_contradicts_contraction](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MVTBounds/Variant63f3e72aaffbf163a62528c075f8215f6f2f48eea9302c7019cbbda4c3ee401c.lean/declarations/newton-negative-increasing-contradicts-contraction--eba2910a732bdc438868e374.md) | 178 | `result-track:eba2910a732bdc438868e3744486cca9fbc5b6ece98c6d7ed5893b9b7bcec6e4` |
| 5 | `lemma` | [quotient_hi_lower_bound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MVTBounds/Variant63f3e72aaffbf163a62528c075f8215f6f2f48eea9302c7019cbbda4c3ee401c.lean/declarations/quotient-hi-lower-bound--51ba37de6be0b9d66e4e1f70.md) | 243 | `result-track:51ba37de6be0b9d66e4e1f70a98df78713fe130acc3ad4ec70e1e8a400dab76a` |
| 6 | `lemma` | [quotient_lo_upper_bound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MVTBounds/Variant63f3e72aaffbf163a62528c075f8215f6f2f48eea9302c7019cbbda4c3ee401c.lean/declarations/quotient-lo-upper-bound--92940d8519281c73d52af8da.md) | 265 | `result-track:92940d8519281c73d52af8dae731f7f75c239906a4f9bf45f620022ff1e5475f` |
| 7 | `lemma` | [quotient_hi_ge_neg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MVTBounds/Variant63f3e72aaffbf163a62528c075f8215f6f2f48eea9302c7019cbbda4c3ee401c.lean/declarations/quotient-hi-ge-neg--02640747957f125becbb3b30.md) | 287 | `result-track:02640747957f125becbb3b308cd424f61f1040eb4a1c3764abee8062554c72fd` |
| 8 | `lemma` | [quotient_lo_le_neg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MVTBounds/Variant63f3e72aaffbf163a62528c075f8215f6f2f48eea9302c7019cbbda4c3ee401c.lean/declarations/quotient-lo-le-neg--d1742e1d33fa9709ba09aba2.md) | 312 | `result-track:d1742e1d33fa9709ba09aba25da645c01ade244c715d51c97246c8cb566f46b2` |
| 9 | `lemma` | [generic_contraction_absurd_hi](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MVTBounds/Variant63f3e72aaffbf163a62528c075f8215f6f2f48eea9302c7019cbbda4c3ee401c.lean/declarations/generic-contraction-absurd-hi--41130aae9d7b19e64394a1db.md) | 348 | `result-track:41130aae9d7b19e64394a1dbc1a65c808d424a9d5cbc7a746ca82e0e122f7bd7` |
| 10 | `lemma` | [generic_contraction_absurd_lo](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MVTBounds/Variant63f3e72aaffbf163a62528c075f8215f6f2f48eea9302c7019cbbda4c3ee401c.lean/declarations/generic-contraction-absurd-lo--6425fc6d9391bd4adbbc986f.md) | 387 | `result-track:6425fc6d9391bd4adbbc986fbcc83ce90d6a39d251cb535f9fd56c098a5e0c18` |
| 11 | `lemma` | [generic_contraction_absurd_hi_neg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MVTBounds/Variant63f3e72aaffbf163a62528c075f8215f6f2f48eea9302c7019cbbda4c3ee401c.lean/declarations/generic-contraction-absurd-hi-neg--b6fe9619631c367835c3f6e3.md) | 426 | `result-track:b6fe9619631c367835c3f6e372a6e7fb94a9049cf4d493634ab7d8d0bc016ed9` |
| 12 | `lemma` | [generic_contraction_absurd_lo_neg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MVTBounds/Variant63f3e72aaffbf163a62528c075f8215f6f2f48eea9302c7019cbbda4c3ee401c.lean/declarations/generic-contraction-absurd-lo-neg--aadb4a513b437859b4ff59de.md) | 469 | `result-track:aadb4a513b437859b4ff59de945c5d527a5678acf912fc8f53d06455d963a026` |
| 13 | `lemma` | [newtonStepSimple_contraction_absurd_hi](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MVTBounds/Variant63f3e72aaffbf163a62528c075f8215f6f2f48eea9302c7019cbbda4c3ee401c.lean/declarations/newtonstepsimple-contraction-absurd-hi--f75b3177d8335fbfbc7dd2da.md) | 514 | `result-track:f75b3177d8335fbfbc7dd2da623ebc4dbdff6814c89e746dfbb44281563a2843` |
| 14 | `lemma` | [newtonStepSimple_contraction_absurd_lo](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MVTBounds/Variant63f3e72aaffbf163a62528c075f8215f6f2f48eea9302c7019cbbda4c3ee401c.lean/declarations/newtonstepsimple-contraction-absurd-lo--117eee3303abed4472faa0e3.md) | 554 | `result-track:117eee3303abed4472faa0e346e25f40387ba8c50031f24cb854c21a7ff1de41` |
| 15 | `lemma` | [newton_positive_decreasing_contradicts_contraction](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MVTBounds/Variant63f3e72aaffbf163a62528c075f8215f6f2f48eea9302c7019cbbda4c3ee401c.lean/declarations/newton-positive-decreasing-contradicts-contraction--bcf3174b3ff7875d278375a2.md) | 597 | `result-track:bcf3174b3ff7875d278375a23c834e7116ffaa1e796d74cd27758f4f16864afd` |
| 16 | `lemma` | [newton_negative_decreasing_contradicts_contraction](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MVTBounds/Variant63f3e72aaffbf163a62528c075f8215f6f2f48eea9302c7019cbbda4c3ee401c.lean/declarations/newton-negative-decreasing-contradicts-contraction--32d75f8104891ebee0ea95b3.md) | 660 | `result-track:32d75f8104891ebee0ea95b3b973f176bd502082879467a4be34bf2c3ccccb7a` |
| 17 | `lemma` | [mvt_fc_lower_bound_pos_increasing](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MVTBounds/Variant63f3e72aaffbf163a62528c075f8215f6f2f48eea9302c7019cbbda4c3ee401c.lean/declarations/mvt-fc-lower-bound-pos-increasing--c221e29223bba1b0f2ce4e21.md) | 733 | `result-track:c221e29223bba1b0f2ce4e21abe7612baa44d2ea6c3bc809462f4bad378095d2` |
| 18 | `lemma` | [mvt_fc_upper_bound_pos_increasing](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MVTBounds/Variant63f3e72aaffbf163a62528c075f8215f6f2f48eea9302c7019cbbda4c3ee401c.lean/declarations/mvt-fc-upper-bound-pos-increasing--6e36e081d1e74dc4f1dc8d5a.md) | 773 | `result-track:6e36e081d1e74dc4f1dc8d5ae6ca105b6a10327950308fbe183a87c7ddda14e2` |
| 19 | `lemma` | [mvt_fc_upper_bound_neg_decreasing](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MVTBounds/Variant63f3e72aaffbf163a62528c075f8215f6f2f48eea9302c7019cbbda4c3ee401c.lean/declarations/mvt-fc-upper-bound-neg-decreasing--000d63a87e8598ca8c9fcab1.md) | 814 | `result-track:000d63a87e8598ca8c9fcab1ae5d80802bd820441628ffcd0cd083085a3e4139` |
| 20 | `lemma` | [mvt_fc_lower_bound_neg_decreasing](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MVTBounds/Variant63f3e72aaffbf163a62528c075f8215f6f2f48eea9302c7019cbbda4c3ee401c.lean/declarations/mvt-fc-lower-bound-neg-decreasing--7bbe6a51a16723f1a75a62ee.md) | 856 | `result-track:7bbe6a51a16723f1a75a62eed93d012564f2de3be57ef26e9e80ce17f51db176` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
