# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.PrimeHarmonicRemainder.Variant43398942648f157fc6d40040a489c7dc5fd56b099016fe46c679f93327be5a44

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cb640a6949c9973fac4c121febfe0fc3fd72d834",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainder/Variant43398942648f157fc6d40040a489c7dc5fd56b099016fe46c679f93327be5a44.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainder/Variant43398942648f157fc6d40040a489c7dc5fd56b099016fe46c679f93327be5a44.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainder/Variant43398942648f157fc6d40040a489c7dc5fd56b099016fe46c679f93327be5a44.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cb640a6949c9973fac4c121febfe0fc3fd72d834`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainder/Variant43398942648f157fc6d40040a489c7dc5fd56b099016fe46c679f93327be5a44.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainder/Variant43398942648f157fc6d40040a489c7dc5fd56b099016fe46c679f93327be5a44.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.ThetaErrorMoments` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Prod` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Integrals.Basic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [thetaConstant](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainder/Variant43398942648f157fc6d40040a489c7dc5fd56b099016fe46c679f93327be5a44.lean/declarations/thetaconstant--b0dfacf5058349177b2b5f62.md) | 19 | `declaration-track:b0dfacf5058349177b2b5f62a97411a6ded968f00e38bcffb95b089cde6cf450` |
| 2 | `def` | [thetaTail](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainder/Variant43398942648f157fc6d40040a489c7dc5fd56b099016fe46c679f93327be5a44.lean/declarations/thetatail--825a0c98a33c24afadf7c3f5.md) | 21 | `declaration-track:825a0c98a33c24afadf7c3f5f39aa1c30eb8048c662af98cd211304901faa60d` |
| 3 | `def` | [thetaRemainder](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainder/Variant43398942648f157fc6d40040a489c7dc5fd56b099016fe46c679f93327be5a44.lean/declarations/thetaremainder--2c616e4248cfefdd7e7eafff.md) | 23 | `declaration-track:2c616e4248cfefdd7e7eafffb8b98fa63daf5977b67f6c764aef30f0a390a27f` |
| 4 | `theorem` | [thetaLogError_signed_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainder/Variant43398942648f157fc6d40040a489c7dc5fd56b099016fe46c679f93327be5a44.lean/declarations/thetalogerror-signed-integrable--aa05c9b060478989ef04d19c.md) | 25 | `result-track:aa05c9b060478989ef04d19c50b49635540bf1ba38fced7af26af6254d68103d` |
| 5 | `theorem` | [thetaTail_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainder/Variant43398942648f157fc6d40040a489c7dc5fd56b099016fe46c679f93327be5a44.lean/declarations/thetatail-integrable--319e8fc83e659d9cbdd356c7.md) | 29 | `result-track:319e8fc83e659d9cbdd356c71a22b6582b7237deb9e15926ccf57bcc259946f5` |
| 6 | `theorem` | [prefix_add_tail](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainder/Variant43398942648f157fc6d40040a489c7dc5fd56b099016fe46c679f93327be5a44.lean/declarations/prefix-add-tail--a0c7baa9c181b17528aea2e1.md) | 33 | `result-track:a0c7baa9c181b17528aea2e1969007328fbc966b8f28059529c06f4320c91d3e` |
| 7 | `theorem` | [centered_prefix_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainder/Variant43398942648f157fc6d40040a489c7dc5fd56b099016fe46c679f93327be5a44.lean/declarations/centered-prefix-eq--84b5244f06290c7de56136ca.md) | 38 | `result-track:84b5244f06290c7de56136cad6b0e2dd5b319f0534a77d203a063676e15da7ef` |
| 8 | `theorem` | [thetaTail_measurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainder/Variant43398942648f157fc6d40040a489c7dc5fd56b099016fe46c679f93327be5a44.lean/declarations/thetatail-measurable--6d3f51391a8d74b9b03305fe.md) | 45 | `result-track:6d3f51391a8d74b9b03305fed0d8559f6c8257553ef9ce927ded9b77b29c636b` |
| 9 | `theorem` | [thetaRemainder_measurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainder/Variant43398942648f157fc6d40040a489c7dc5fd56b099016fe46c679f93327be5a44.lean/declarations/thetaremainder-measurable--f68366776f0e060f5ecab25b.md) | 57 | `result-track:f68366776f0e060f5ecab25be5db0b6540103c94029d454f95f5d4d217e6df2f` |
| 10 | `def` | [tailKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainder/Variant43398942648f157fc6d40040a489c7dc5fd56b099016fe46c679f93327be5a44.lean/declarations/tailkernel--e6d7bb3d7c07dbebe8f778fa.md) | 60 | `declaration-track:e6d7bb3d7c07dbebe8f778fad12f7eae116ab84c4eaa9598005d3dc675049b5f` |
| 11 | `theorem` | [tailKernel_measurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainder/Variant43398942648f157fc6d40040a489c7dc5fd56b099016fe46c679f93327be5a44.lean/declarations/tailkernel-measurable--6fda962019c74258d0b370fd.md) | 63 | `result-track:6fda962019c74258d0b370fdb776e940ea857bfc1b998763fd835be4e13ff17e` |
| 12 | `theorem` | [tailKernel_fiber_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainder/Variant43398942648f157fc6d40040a489c7dc5fd56b099016fe46c679f93327be5a44.lean/declarations/tailkernel-fiber-integrable--a81ee22706a63bcb58f04dec.md) | 67 | `result-track:a81ee22706a63bcb58f04dec5ddbe8b00db6cc01853af38908f6150c8dea2088` |
| 13 | `theorem` | [tailKernel_fiber_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainder/Variant43398942648f157fc6d40040a489c7dc5fd56b099016fe46c679f93327be5a44.lean/declarations/tailkernel-fiber-integral--5f8e8824170340d2d00bcfac.md) | 76 | `result-track:5f8e8824170340d2d00bcfac0de53de64ca59df4d15c0975a93ce69f963baabd` |
| 14 | `theorem` | [tailKernel_fiber_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainder/Variant43398942648f157fc6d40040a489c7dc5fd56b099016fe46c679f93327be5a44.lean/declarations/tailkernel-fiber-norm--7408a5d2ecf2dbd73040970f.md) | 85 | `result-track:7408a5d2ecf2dbd73040970fac858481eadc0c7d37590e11ac9b2433903c1f64` |
| 15 | `theorem` | [tailKernel_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainder/Variant43398942648f157fc6d40040a489c7dc5fd56b099016fe46c679f93327be5a44.lean/declarations/tailkernel-integrable--fe190b97b2c9953e501075a5.md) | 95 | `result-track:fe190b97b2c9953e501075a53a4b3054813129e3625554f44c183bf19a43218f` |
| 16 | `theorem` | [tailKernel_outer](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainder/Variant43398942648f157fc6d40040a489c7dc5fd56b099016fe46c679f93327be5a44.lean/declarations/tailkernel-outer--d720570f9e624d0ade935d56.md) | 104 | `result-track:d720570f9e624d0ade935d56be6cd75d1559fb9712f1d9c62443de70579b29f7` |
| 17 | `theorem` | [absolute_tail_first_moment_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainder/Variant43398942648f157fc6d40040a489c7dc5fd56b099016fe46c679f93327be5a44.lean/declarations/absolute-tail-first-moment-integrable--064b576fb3c1324e06224f7b.md) | 110 | `result-track:064b576fb3c1324e06224f7b0049731d593df6fd4a1abf70292047b92c835dc5` |
| 18 | `theorem` | [absolute_tail_first_moment](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainder/Variant43398942648f157fc6d40040a489c7dc5fd56b099016fe46c679f93327be5a44.lean/declarations/absolute-tail-first-moment--8a2485e7bc13ec1ccdd6b45f.md) | 116 | `result-track:8a2485e7bc13ec1ccdd6b45f9f467136e89b9126c795c6b46501d3d42b4ba335` |
| 19 | `theorem` | [thetaRemainder_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainder/Variant43398942648f157fc6d40040a489c7dc5fd56b099016fe46c679f93327be5a44.lean/declarations/thetaremainder-abs-le--66c864c205a00c2ea2036849.md) | 132 | `result-track:66c864c205a00c2ea20368495fde45e91fd7357e93af637349869c5adbcaf321` |
| 20 | `theorem` | [thetaRemainder_first_moment_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainder/Variant43398942648f157fc6d40040a489c7dc5fd56b099016fe46c679f93327be5a44.lean/declarations/thetaremainder-first-moment-integrable--637b87eed15160306c6d400d.md) | 139 | `result-track:637b87eed15160306c6d400d59ab6435b6e4ceead8814470d41003513e576e4c` |
| 21 | `theorem` | [thetaRemainder_first_moment_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainder/Variant43398942648f157fc6d40040a489c7dc5fd56b099016fe46c679f93327be5a44.lean/declarations/thetaremainder-first-moment-bound--43310c349c9aca3aaf6aedf6.md) | 153 | `result-track:43310c349c9aca3aaf6aedf6cd2fb4dc51b98fe36f13722815d1f4cfd1c8e2a5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
