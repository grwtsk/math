# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.TrivialZeroDebt.Variantcf1d46913b167abe4fa9cda98b24136458cbd129cefc39ce2aa2f7e17df27894

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "41c1096c2c484382fdca06df242f1901518f1803",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/TrivialZeroDebt/Variantcf1d46913b167abe4fa9cda98b24136458cbd129cefc39ce2aa2f7e17df27894.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivialZeroDebt/Variantcf1d46913b167abe4fa9cda98b24136458cbd129cefc39ce2aa2f7e17df27894.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivialZeroDebt/Variantcf1d46913b167abe4fa9cda98b24136458cbd129cefc39ce2aa2f7e17df27894.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `41c1096c2c484382fdca06df242f1901518f1803`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/TrivialZeroDebt/Variantcf1d46913b167abe4fa9cda98b24136458cbd129cefc39ce2aa2f7e17df27894.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/TrivialZeroDebt/Variantcf1d46913b167abe4fa9cda98b24136458cbd129cefc39ce2aa2f7e17df27894.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.AdmissionSource` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.RiemannZeta` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.InfiniteSum.NatInt` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Positivity` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [trivialZeroPoint](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivialZeroDebt/Variantcf1d46913b167abe4fa9cda98b24136458cbd129cefc39ce2aa2f7e17df27894.lean/declarations/trivialzeropoint--e3f63cd039f471016cab9b29.md) | 33 | `declaration-track:e3f63cd039f471016cab9b298cdd92d64a2c807acf05e3f0592bd89fd99ed4f9` |
| 2 | `theorem` | [trivialZeroPoint_is_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivialZeroDebt/Variantcf1d46913b167abe4fa9cda98b24136458cbd129cefc39ce2aa2f7e17df27894.lean/declarations/trivialzeropoint-is-zero--334f0241caa4fcfb37fdfd16.md) | 36 | `result-track:334f0241caa4fcfb37fdfd164a2d4b2c7d28dd1eab36156e333006167da9c923` |
| 3 | `theorem` | [trivialZeroPoint_re](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivialZeroDebt/Variantcf1d46913b167abe4fa9cda98b24136458cbd129cefc39ce2aa2f7e17df27894.lean/declarations/trivialzeropoint-re--b6f5810dbcf653cd01f844e9.md) | 40 | `result-track:b6f5810dbcf653cd01f844e9db2fe2a6f3d1bc4acc4d904b83610bf10af7c0b9` |
| 4 | `theorem` | [trivialZeroPoint_im](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivialZeroDebt/Variantcf1d46913b167abe4fa9cda98b24136458cbd129cefc39ce2aa2f7e17df27894.lean/declarations/trivialzeropoint-im--f619a01f99f42aa5b2b94d20.md) | 45 | `result-track:f619a01f99f42aa5b2b94d20566bf978ac705b94464c84c6421a4c0d6814555f` |
| 5 | `theorem` | [zeta_zero_not_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivialZeroDebt/Variantcf1d46913b167abe4fa9cda98b24136458cbd129cefc39ce2aa2f7e17df27894.lean/declarations/zeta-zero-not-zero--ca434c9ff3da9aa462c706a5.md) | 49 | `result-track:ca434c9ff3da9aa462c706a50f66d3f4a2bc785fb2661b82f59fe5e25da06afa` |
| 6 | `def` | [trivialDistance](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivialZeroDebt/Variantcf1d46913b167abe4fa9cda98b24136458cbd129cefc39ce2aa2f7e17df27894.lean/declarations/trivialdistance--27aa4d52a27d7db2d9ae2d2d.md) | 54 | `declaration-track:27aa4d52a27d7db2d9ae2d2d22313a3218e95e32492ca4fb196a8a0248e230f5` |
| 7 | `theorem` | [trivialDistance_eq](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivialZeroDebt/Variantcf1d46913b167abe4fa9cda98b24136458cbd129cefc39ce2aa2f7e17df27894.lean/declarations/trivialdistance-eq--1b7b6195b5c6fe7af8a26e7f.md) | 57 | `result-track:1b7b6195b5c6fe7af8a26e7f83f751b9edc43e6f91f91730ac088253226d53fd` |
| 8 | `theorem` | [trivialDistance_pos](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivialZeroDebt/Variantcf1d46913b167abe4fa9cda98b24136458cbd129cefc39ce2aa2f7e17df27894.lean/declarations/trivialdistance-pos--3b026296afd5282bfb6556e2.md) | 62 | `result-track:3b026296afd5282bfb6556e2a146aeceab1b4b2be90735b69cecde64477ba6d0` |
| 9 | `def` | [trivialContribution](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivialZeroDebt/Variantcf1d46913b167abe4fa9cda98b24136458cbd129cefc39ce2aa2f7e17df27894.lean/declarations/trivialcontribution--6320cec9af8c038cc85beb14.md) | 67 | `declaration-track:6320cec9af8c038cc85beb144f141f51389caa55968b844c11b206ba6416a963` |
| 10 | `def` | [zeroEndpoint](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivialZeroDebt/Variantcf1d46913b167abe4fa9cda98b24136458cbd129cefc39ce2aa2f7e17df27894.lean/declarations/zeroendpoint--4daf3af5df8412348277ceb4.md) | 71 | `declaration-track:4daf3af5df8412348277ceb4e39778a875a58896b013b08349422abafaca82c5` |
| 11 | `theorem` | [kernel_zeroEndpoint](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivialZeroDebt/Variantcf1d46913b167abe4fa9cda98b24136458cbd129cefc39ce2aa2f7e17df27894.lean/declarations/kernel-zeroendpoint--94e0b849b5f9afc5a11b0491.md) | 74 | `result-track:94e0b849b5f9afc5a11b0491f78cf6946f9edbbfa795c497f54168d5fcd3a163` |
| 12 | `theorem` | [trivialContribution_eq_kernel](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivialZeroDebt/Variantcf1d46913b167abe4fa9cda98b24136458cbd129cefc39ce2aa2f7e17df27894.lean/declarations/trivialcontribution-eq-kernel--047d1ddf2628d525d67f79c0.md) | 81 | `result-track:047d1ddf2628d525d67f79c0978c75ab778d0f0c39d3b6a7fe456abf2eb06f5e` |
| 13 | `theorem` | [trivialContribution_nonnegative](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivialZeroDebt/Variantcf1d46913b167abe4fa9cda98b24136458cbd129cefc39ce2aa2f7e17df27894.lean/declarations/trivialcontribution-nonnegative--14027d7895f68e382977538f.md) | 93 | `result-track:14027d7895f68e382977538fd1a119953a3ed6b64db96fc2a461f044bf707ffa` |
| 14 | `theorem` | [trivialContribution_positive](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivialZeroDebt/Variantcf1d46913b167abe4fa9cda98b24136458cbd129cefc39ce2aa2f7e17df27894.lean/declarations/trivialcontribution-positive--0adb1fa01024af533c28f4fc.md) | 99 | `result-track:0adb1fa01024af533c28f4fcec6b6317c2ec6e4d55e05f6aae2af4364ecc58f7` |
| 15 | `theorem` | [trivialContribution_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivialZeroDebt/Variantcf1d46913b167abe4fa9cda98b24136458cbd129cefc39ce2aa2f7e17df27894.lean/declarations/trivialcontribution-zero--7d41c37cc9a7f35ae27425b8.md) | 106 | `result-track:7d41c37cc9a7f35ae27425b8053ad759ff85b2494e86903d02cc854c7254d60c` |
| 16 | `theorem` | [zeroEndpoint_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivialZeroDebt/Variantcf1d46913b167abe4fa9cda98b24136458cbd129cefc39ce2aa2f7e17df27894.lean/declarations/zeroendpoint-zero--13064b7a16547029eebe0c45.md) | 110 | `result-track:13064b7a16547029eebe0c456b75b1a8b9a75e2624a37df1e7a158e19bcc71d4` |
| 17 | `theorem` | [trivialContribution_neg](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivialZeroDebt/Variantcf1d46913b167abe4fa9cda98b24136458cbd129cefc39ce2aa2f7e17df27894.lean/declarations/trivialcontribution-neg--b181c06679e2d6e681170e7e.md) | 113 | `result-track:b181c06679e2d6e681170e7e92779f41b2dd789f22325294102265c34e6d351f` |
| 18 | `theorem` | [hasSum_trivialContribution](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivialZeroDebt/Variantcf1d46913b167abe4fa9cda98b24136458cbd129cefc39ce2aa2f7e17df27894.lean/declarations/hassum-trivialcontribution--52dabe679702fd95df6623cb.md) | 118 | `result-track:52dabe679702fd95df6623cbb16a738098d3c33beeac708e086e8ad4a2f149f3` |
| 19 | `theorem` | [trivialContribution_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivialZeroDebt/Variantcf1d46913b167abe4fa9cda98b24136458cbd129cefc39ce2aa2f7e17df27894.lean/declarations/trivialcontribution-summable--ddd7acd0b1c9c35508fdbdb2.md) | 129 | `result-track:ddd7acd0b1c9c35508fdbdb233ab7257eaf4c662f34cf466715773c5f7a9f450` |
| 20 | `theorem` | [archimedean_eq_endpoint_add_trivial](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivialZeroDebt/Variantcf1d46913b167abe4fa9cda98b24136458cbd129cefc39ce2aa2f7e17df27894.lean/declarations/archimedean-eq-endpoint-add-trivial--624880d0b6799e6c295ce8ae.md) | 133 | `result-track:624880d0b6799e6c295ce8ae94afd993ad1bddc3ccd3a486fef8061672c0f7cf` |
| 21 | `theorem` | [source_minus_endpoint_nonnegative](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivialZeroDebt/Variantcf1d46913b167abe4fa9cda98b24136458cbd129cefc39ce2aa2f7e17df27894.lean/declarations/source-minus-endpoint-nonnegative--82a59a2fe73436611093b34f.md) | 140 | `result-track:82a59a2fe73436611093b34f461cd003bc2221ff50a061f96e471ffa840bfdb3` |
| 22 | `theorem` | [source_minus_endpoint_positive](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivialZeroDebt/Variantcf1d46913b167abe4fa9cda98b24136458cbd129cefc39ce2aa2f7e17df27894.lean/declarations/source-minus-endpoint-positive--d4d26ff42f8d0bdc802ae97a.md) | 146 | `result-track:d4d26ff42f8d0bdc802ae97aef8e2d167f027527f07c78d7c723c3e7ca975c6d` |
| 23 | `theorem` | [source_prefix_tail](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivialZeroDebt/Variantcf1d46913b167abe4fa9cda98b24136458cbd129cefc39ce2aa2f7e17df27894.lean/declarations/source-prefix-tail--095d0dbfb39f638f1de6b5f7.md) | 156 | `result-track:095d0dbfb39f638f1de6b5f703b0eb10ecc251d5c6cf5c588c4357c67054950c` |
| 24 | `theorem` | [trivialContribution_tail_bounds](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivialZeroDebt/Variantcf1d46913b167abe4fa9cda98b24136458cbd129cefc39ce2aa2f7e17df27894.lean/declarations/trivialcontribution-tail-bounds--9c00168d4b1106557fca8c48.md) | 165 | `result-track:9c00168d4b1106557fca8c488ae88a0ddbbe2dc23c3ab76b7decd5a8d1171afe` |
| 25 | `theorem` | [trivialContribution_tail_distance_bounds](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivialZeroDebt/Variantcf1d46913b167abe4fa9cda98b24136458cbd129cefc39ce2aa2f7e17df27894.lean/declarations/trivialcontribution-tail-distance-bounds--464520362e6d2d2170ccfc2a.md) | 183 | `result-track:464520362e6d2d2170ccfc2acc7e9e897339a1c198e15515924730861b20650a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
