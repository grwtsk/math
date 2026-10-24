# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ExpDeriv.Variant07563147fc8933ed82002f08cc0c22e757ba04f015a9409e57a6765bf3d8f98c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c30673c67ffc7f194af40677323c5480355646d4",
  "lexical_observation_count": 49,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ExpDeriv/Variant07563147fc8933ed82002f08cc0c22e757ba04f015a9409e57a6765bf3d8f98c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ExpDeriv/Variant07563147fc8933ed82002f08cc0c22e757ba04f015a9409e57a6765bf3d8f98c.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ExpDeriv/Variant07563147fc8933ed82002f08cc0c22e757ba04f015a9409e57a6765bf3d8f98c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c30673c67ffc7f194af40677323c5480355646d4`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ExpDeriv/Variant07563147fc8933ed82002f08cc0c22e757ba04f015a9409e57a6765bf3d8f98c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/ExpDeriv/Variant07563147fc8933ed82002f08cc0c22e757ba04f015a9409e57a6765bf3d8f98c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.RealDeriv` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [hasDerivAt_exp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ExpDeriv/Variant07563147fc8933ed82002f08cc0c22e757ba04f015a9409e57a6765bf3d8f98c.lean/declarations/hasderivat-exp--88a6e07950b0336476ebf19c.md) | 40 | `result-track:88a6e07950b0336476ebf19c570b41a7a92a2cdb70fd245c720eccacb428dc9c` |
| 2 | `theorem` | [differentiable_exp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ExpDeriv/Variant07563147fc8933ed82002f08cc0c22e757ba04f015a9409e57a6765bf3d8f98c.lean/declarations/differentiable-exp--dd7cb31d4470bfc26dea5bed.md) | 49 | `result-track:dd7cb31d4470bfc26dea5bed41ee40ae8591f96e2662b32ca421cd1b570cb1df` |
| 3 | `theorem` | [differentiableAt_exp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ExpDeriv/Variant07563147fc8933ed82002f08cc0c22e757ba04f015a9409e57a6765bf3d8f98c.lean/declarations/differentiableat-exp--5b1c1506bd127e9334ac050f.md) | 53 | `result-track:5b1c1506bd127e9334ac050f892b18f9392aee8afdd1643c9abc54ba78e18b3e` |
| 4 | `theorem` | [deriv_exp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ExpDeriv/Variant07563147fc8933ed82002f08cc0c22e757ba04f015a9409e57a6765bf3d8f98c.lean/declarations/deriv-exp--bd5182e909cbf90e9a77a948.md) | 58 | `result-track:bd5182e909cbf90e9a77a948c1c5db8d4efb1324faa7579e648266b8db7524b3` |
| 5 | `theorem` | [iter_deriv_exp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ExpDeriv/Variant07563147fc8933ed82002f08cc0c22e757ba04f015a9409e57a6765bf3d8f98c.lean/declarations/iter-deriv-exp--67915a0728ac32f0bae6fbb2.md) | 63 | `result-track:67915a0728ac32f0bae6fbb2b1a34c6aeebf4c137f8463749182a32ea0bd7bd3` |
| 6 | `theorem` | [contDiff_exp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ExpDeriv/Variant07563147fc8933ed82002f08cc0c22e757ba04f015a9409e57a6765bf3d8f98c.lean/declarations/contdiff-exp--0c464eb4bc5aa249044499dc.md) | 68 | `result-track:0c464eb4bc5aa249044499dc1091740ee817dd4bcb34f05c5250925b2deb90bf` |
| 7 | `theorem` | [hasStrictDerivAt_exp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ExpDeriv/Variant07563147fc8933ed82002f08cc0c22e757ba04f015a9409e57a6765bf3d8f98c.lean/declarations/hasstrictderivat-exp--3139607a3e26549a014ac757.md) | 80 | `result-track:3139607a3e26549a014ac757dd415eb4330950c3918bb23b6402f5b33cb27d65` |
| 8 | `theorem` | [hasStrictFDerivAt_exp_real](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ExpDeriv/Variant07563147fc8933ed82002f08cc0c22e757ba04f015a9409e57a6765bf3d8f98c.lean/declarations/hasstrictfderivat-exp-real--2ed87c6b1c4b70a3080d58a7.md) | 84 | `result-track:2ed87c6b1c4b70a3080d58a725fede02249c0b6df1b45651bd35b0ed2ffca56b` |
| 9 | `theorem` | [HasStrictDerivAt.cexp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ExpDeriv/Variant07563147fc8933ed82002f08cc0c22e757ba04f015a9409e57a6765bf3d8f98c.lean/declarations/hasstrictderivat-cexp--4ba98411c60643ded9792162.md) | 95 | `result-track:4ba98411c60643ded9792162f3113eb5b5b4cadb808ea74ff0e982d2e5aa9ef2` |
| 10 | `theorem` | [HasDerivAt.cexp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ExpDeriv/Variant07563147fc8933ed82002f08cc0c22e757ba04f015a9409e57a6765bf3d8f98c.lean/declarations/hasderivat-cexp--e861c0b9fa834b8c353144c4.md) | 100 | `result-track:e861c0b9fa834b8c353144c4127c541eb01ff3d10be2d8c277652f8b3a34de96` |
| 11 | `theorem` | [HasDerivWithinAt.cexp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ExpDeriv/Variant07563147fc8933ed82002f08cc0c22e757ba04f015a9409e57a6765bf3d8f98c.lean/declarations/hasderivwithinat-cexp--be4098456ddb36b84e99ab56.md) | 105 | `result-track:be4098456ddb36b84e99ab569500957610943b862833381aac67349f6ab754da` |
| 12 | `theorem` | [derivWithin_cexp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ExpDeriv/Variant07563147fc8933ed82002f08cc0c22e757ba04f015a9409e57a6765bf3d8f98c.lean/declarations/derivwithin-cexp--3f838ee2bf003d513f89e551.md) | 110 | `result-track:3f838ee2bf003d513f89e5512a3eedca3ce70e3abafb51322a63e77d8727adee` |
| 13 | `theorem` | [deriv_cexp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ExpDeriv/Variant07563147fc8933ed82002f08cc0c22e757ba04f015a9409e57a6765bf3d8f98c.lean/declarations/deriv-cexp--47d3b7e708e2a8362b48326f.md) | 116 | `result-track:47d3b7e708e2a8362b48326fa6e7825bf8aa8ff2d50df9848695aabe347c7c83` |
| 14 | `theorem` | [HasStrictFDerivAt.cexp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ExpDeriv/Variant07563147fc8933ed82002f08cc0c22e757ba04f015a9409e57a6765bf3d8f98c.lean/declarations/hasstrictfderivat-cexp--cea0843ded63e1896f858bfb.md) | 128 | `result-track:cea0843ded63e1896f858bfb0d0a19ae8255c89d53878395a5491196b3c41289` |
| 15 | `theorem` | [HasFDerivWithinAt.cexp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ExpDeriv/Variant07563147fc8933ed82002f08cc0c22e757ba04f015a9409e57a6765bf3d8f98c.lean/declarations/hasfderivwithinat-cexp--61bf750e3a9775a5be1636ef.md) | 133 | `result-track:61bf750e3a9775a5be1636efd8ea64d77bc9d82c42001154fc5a8ad558a3b9b0` |
| 16 | `theorem` | [HasFDerivAt.cexp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ExpDeriv/Variant07563147fc8933ed82002f08cc0c22e757ba04f015a9409e57a6765bf3d8f98c.lean/declarations/hasfderivat-cexp--92208d46cd8e11e269c8b8f1.md) | 138 | `result-track:92208d46cd8e11e269c8b8f1a7f4b7405722731f30c50d38348917dee90886b3` |
| 17 | `theorem` | [DifferentiableWithinAt.cexp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ExpDeriv/Variant07563147fc8933ed82002f08cc0c22e757ba04f015a9409e57a6765bf3d8f98c.lean/declarations/differentiablewithinat-cexp--613ef0d410f6eb8e400b10fe.md) | 143 | `result-track:613ef0d410f6eb8e400b10fe3b20ddcc1ff208a2cbb9f16915b2d2fa4c943404` |
| 18 | `theorem` | [DifferentiableAt.cexp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ExpDeriv/Variant07563147fc8933ed82002f08cc0c22e757ba04f015a9409e57a6765bf3d8f98c.lean/declarations/differentiableat-cexp--858923fdac33c669bd601b38.md) | 149 | `result-track:858923fdac33c669bd601b38de69d2aa0780e196917a7313f224c38227633475` |
| 19 | `theorem` | [DifferentiableOn.cexp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ExpDeriv/Variant07563147fc8933ed82002f08cc0c22e757ba04f015a9409e57a6765bf3d8f98c.lean/declarations/differentiableon-cexp--d51c8118567479d73b56f6b6.md) | 154 | `result-track:d51c8118567479d73b56f6b62a8260d8c6b0b10dd76eccf9ae5fb2a3a37b7b6d` |
| 20 | `theorem` | [Differentiable.cexp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ExpDeriv/Variant07563147fc8933ed82002f08cc0c22e757ba04f015a9409e57a6765bf3d8f98c.lean/declarations/differentiable-cexp--8e85550ad7803361fc90b185.md) | 159 | `result-track:8e85550ad7803361fc90b185991de1298ea9feead96320af6d09d082ddbdb556` |
| 21 | `theorem` | [ContDiff.cexp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ExpDeriv/Variant07563147fc8933ed82002f08cc0c22e757ba04f015a9409e57a6765bf3d8f98c.lean/declarations/contdiff-cexp--18ba9de4209eecc31b73ba1b.md) | 163 | `result-track:18ba9de4209eecc31b73ba1b20564b27f8b9c45bc73522b231cbe8aedb77efcd` |
| 22 | `theorem` | [ContDiffAt.cexp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ExpDeriv/Variant07563147fc8933ed82002f08cc0c22e757ba04f015a9409e57a6765bf3d8f98c.lean/declarations/contdiffat-cexp--2babce9fa475e8d35662d4d2.md) | 167 | `result-track:2babce9fa475e8d35662d4d2d98425dd668233a7d9047676e1a9379e0303a02b` |
| 23 | `theorem` | [ContDiffOn.cexp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ExpDeriv/Variant07563147fc8933ed82002f08cc0c22e757ba04f015a9409e57a6765bf3d8f98c.lean/declarations/contdiffon-cexp--6a6181de9e56e8b6f361a358.md) | 172 | `result-track:6a6181de9e56e8b6f361a358d4b3f5438c829560fe3a4c79fe5fa7c907b32d38` |
| 24 | `theorem` | [ContDiffWithinAt.cexp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ExpDeriv/Variant07563147fc8933ed82002f08cc0c22e757ba04f015a9409e57a6765bf3d8f98c.lean/declarations/contdiffwithinat-cexp--c043d043322b0c479f41f6f5.md) | 177 | `result-track:c043d043322b0c479f41f6f57b70182fc89c44f9c2e94e8c21cb8ac5a6e540d6` |
| 25 | `theorem` | [hasStrictDerivAt_exp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ExpDeriv/Variant07563147fc8933ed82002f08cc0c22e757ba04f015a9409e57a6765bf3d8f98c.lean/declarations/hasstrictderivat-exp--f0b96e523c1cf3d5b7b3d234.md) | 188 | `result-track:f0b96e523c1cf3d5b7b3d234ddc6a89649ee674f472de5b35e5695b28c9d8236` |
| 26 | `theorem` | [hasDerivAt_exp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ExpDeriv/Variant07563147fc8933ed82002f08cc0c22e757ba04f015a9409e57a6765bf3d8f98c.lean/declarations/hasderivat-exp--4e64a0a61386e8ded6d9dd33.md) | 192 | `result-track:4e64a0a61386e8ded6d9dd338dbdbed2871435824f59b879d877455de55ec2e6` |
| 27 | `theorem` | [contDiff_exp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ExpDeriv/Variant07563147fc8933ed82002f08cc0c22e757ba04f015a9409e57a6765bf3d8f98c.lean/declarations/contdiff-exp--30c4260fda58638390e320ed.md) | 196 | `result-track:30c4260fda58638390e320ed57ba6a7f254635a78006b2c069d9e3136a1a9d62` |
| 28 | `theorem` | [differentiable_exp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ExpDeriv/Variant07563147fc8933ed82002f08cc0c22e757ba04f015a9409e57a6765bf3d8f98c.lean/declarations/differentiable-exp--18f8bdd1d8f8af2464f4e984.md) | 200 | `result-track:18f8bdd1d8f8af2464f4e984f90ec7a77b00b9d6c61ecb52ad51744c6b87a9c7` |
| 29 | `theorem` | [differentiableAt_exp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ExpDeriv/Variant07563147fc8933ed82002f08cc0c22e757ba04f015a9409e57a6765bf3d8f98c.lean/declarations/differentiableat-exp--e561be2005c420509ef6197c.md) | 203 | `result-track:e561be2005c420509ef6197c03736da929bb854f4ca0390a9ceffaa07f5f74f2` |
| 30 | `theorem` | [deriv_exp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ExpDeriv/Variant07563147fc8933ed82002f08cc0c22e757ba04f015a9409e57a6765bf3d8f98c.lean/declarations/deriv-exp--d2bdc77993b38d595ca7c267.md) | 208 | `result-track:d2bdc77993b38d595ca7c2677714f9d81ccc2273a3e196f20d69f3f8657016f8` |
| 31 | `theorem` | [iter_deriv_exp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ExpDeriv/Variant07563147fc8933ed82002f08cc0c22e757ba04f015a9409e57a6765bf3d8f98c.lean/declarations/iter-deriv-exp--1f714d3b803a741845a9e762.md) | 213 | `result-track:1f714d3b803a741845a9e762bfb660706c2434f8656831b82b9834e472f454c9` |
| 32 | `theorem` | [HasStrictDerivAt.exp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ExpDeriv/Variant07563147fc8933ed82002f08cc0c22e757ba04f015a9409e57a6765bf3d8f98c.lean/declarations/hasstrictderivat-exp--3e8399267024960a6fa3c9b8.md) | 228 | `result-track:3e8399267024960a6fa3c9b89149151936cafedcc3ead8c5ae6edd5927c9421f` |
| 33 | `theorem` | [HasDerivAt.exp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ExpDeriv/Variant07563147fc8933ed82002f08cc0c22e757ba04f015a9409e57a6765bf3d8f98c.lean/declarations/hasderivat-exp--7377fec63c56dff47880e48f.md) | 233 | `result-track:7377fec63c56dff47880e48fb53158282bcd5b20e5c41bd960d212176f3d0cf9` |
| 34 | `theorem` | [HasDerivWithinAt.exp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ExpDeriv/Variant07563147fc8933ed82002f08cc0c22e757ba04f015a9409e57a6765bf3d8f98c.lean/declarations/hasderivwithinat-exp--2d390deed014e97cd2351292.md) | 238 | `result-track:2d390deed014e97cd23512921b861dd854153b3b7eb65baa9733ffd959d42b6f` |
| 35 | `theorem` | [derivWithin_exp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ExpDeriv/Variant07563147fc8933ed82002f08cc0c22e757ba04f015a9409e57a6765bf3d8f98c.lean/declarations/derivwithin-exp--8d08ad3ab9c6803f5c268b86.md) | 243 | `result-track:8d08ad3ab9c6803f5c268b86551ba85e2b417a0911204d76db5142b8acb3f6fc` |
| 36 | `theorem` | [deriv_exp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ExpDeriv/Variant07563147fc8933ed82002f08cc0c22e757ba04f015a9409e57a6765bf3d8f98c.lean/declarations/deriv-exp--1560d33ad8f2e50a5038d74b.md) | 249 | `result-track:1560d33ad8f2e50a5038d74bbe70c45e4e883bdc25509a7d479d4d2dc3164f6b` |
| 37 | `theorem` | [ContDiff.exp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ExpDeriv/Variant07563147fc8933ed82002f08cc0c22e757ba04f015a9409e57a6765bf3d8f98c.lean/declarations/contdiff-exp--b4dd280754c2310ba53c0d53.md) | 265 | `result-track:b4dd280754c2310ba53c0d537c056a65e05f3ca4246dcf07eb436a4dced7aed5` |
| 38 | `theorem` | [ContDiffAt.exp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ExpDeriv/Variant07563147fc8933ed82002f08cc0c22e757ba04f015a9409e57a6765bf3d8f98c.lean/declarations/contdiffat-exp--606c67718c548aa2cbfbc000.md) | 269 | `result-track:606c67718c548aa2cbfbc000bb4474e56f67f902e17e33466d6d708791b64296` |
| 39 | `theorem` | [ContDiffOn.exp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ExpDeriv/Variant07563147fc8933ed82002f08cc0c22e757ba04f015a9409e57a6765bf3d8f98c.lean/declarations/contdiffon-exp--a421770d00b27f4b20e8d64a.md) | 273 | `result-track:a421770d00b27f4b20e8d64a5c33562d5d08c38338aa7f7fa6984b42e8364305` |
| 40 | `theorem` | [ContDiffWithinAt.exp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ExpDeriv/Variant07563147fc8933ed82002f08cc0c22e757ba04f015a9409e57a6765bf3d8f98c.lean/declarations/contdiffwithinat-exp--efd6dea42a263cd93d6ba42c.md) | 277 | `result-track:efd6dea42a263cd93d6ba42c01ff5a23678aa746314c13d1b7e92642f50b3e20` |
| 41 | `theorem` | [HasFDerivWithinAt.exp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ExpDeriv/Variant07563147fc8933ed82002f08cc0c22e757ba04f015a9409e57a6765bf3d8f98c.lean/declarations/hasfderivwithinat-exp--2af6409a50a48c853e9c6f36.md) | 282 | `result-track:2af6409a50a48c853e9c6f366247c335f196afd26e9aa1979f66985fb09a0dfc` |
| 42 | `theorem` | [HasFDerivAt.exp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ExpDeriv/Variant07563147fc8933ed82002f08cc0c22e757ba04f015a9409e57a6765bf3d8f98c.lean/declarations/hasfderivat-exp--c49f8eec5023dfe531eb49a5.md) | 287 | `result-track:c49f8eec5023dfe531eb49a57458285e97a715330b9158d3cf95661214f5e0d4` |
| 43 | `theorem` | [HasStrictFDerivAt.exp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ExpDeriv/Variant07563147fc8933ed82002f08cc0c22e757ba04f015a9409e57a6765bf3d8f98c.lean/declarations/hasstrictfderivat-exp--a877dcc22e07233e5f806011.md) | 292 | `result-track:a877dcc22e07233e5f806011ef47daca482352caa71de2f2cbb34a040b145da4` |
| 44 | `theorem` | [DifferentiableWithinAt.exp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ExpDeriv/Variant07563147fc8933ed82002f08cc0c22e757ba04f015a9409e57a6765bf3d8f98c.lean/declarations/differentiablewithinat-exp--244fdef74a719621efcb19cd.md) | 297 | `result-track:244fdef74a719621efcb19cda6ff90d80ae1644b9379240240688bd267ad07b0` |
| 45 | `theorem` | [DifferentiableAt.exp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ExpDeriv/Variant07563147fc8933ed82002f08cc0c22e757ba04f015a9409e57a6765bf3d8f98c.lean/declarations/differentiableat-exp--4d95bfe0652f909bacb97f61.md) | 303 | `result-track:4d95bfe0652f909bacb97f61c5771c308bc95556a6563a15c003f2a68922d0a1` |
| 46 | `theorem` | [DifferentiableOn.exp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ExpDeriv/Variant07563147fc8933ed82002f08cc0c22e757ba04f015a9409e57a6765bf3d8f98c.lean/declarations/differentiableon-exp--4ec94aca43ab65304c19b54a.md) | 308 | `result-track:4ec94aca43ab65304c19b54a0eb390d433c7c1c80b2d5b7b04ab5512d35194c6` |
| 47 | `theorem` | [Differentiable.exp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ExpDeriv/Variant07563147fc8933ed82002f08cc0c22e757ba04f015a9409e57a6765bf3d8f98c.lean/declarations/differentiable-exp--8656367e7ee737c47702fad7.md) | 313 | `result-track:8656367e7ee737c47702fad7b733dc49f7c7b300c850984699a7045487798565` |
| 48 | `theorem` | [fderivWithin_exp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ExpDeriv/Variant07563147fc8933ed82002f08cc0c22e757ba04f015a9409e57a6765bf3d8f98c.lean/declarations/fderivwithin-exp--4e830fb4a46033eb119784c2.md) | 317 | `result-track:4e830fb4a46033eb119784c288cebbb4fc109ab425868bc1187039008abcfb33` |
| 49 | `theorem` | [fderiv_exp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ExpDeriv/Variant07563147fc8933ed82002f08cc0c22e757ba04f015a9409e57a6765bf3d8f98c.lean/declarations/fderiv-exp--952843958bf0de9f18e07948.md) | 323 | `result-track:952843958bf0de9f18e0794800b38387891b88243013013d71b29ea20dba28d6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
