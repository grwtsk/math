# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.DigammaSeries.Variant5cc2726c925374f7241eed8fc8a57ceadd10c515a18e60ce7efd5c526f7a624d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a137138042801b801618e03a55b5b53cdd321ed8",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/DigammaSeries/Variant5cc2726c925374f7241eed8fc8a57ceadd10c515a18e60ce7efd5c526f7a624d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DigammaSeries/Variant5cc2726c925374f7241eed8fc8a57ceadd10c515a18e60ce7efd5c526f7a624d.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DigammaSeries/Variant5cc2726c925374f7241eed8fc8a57ceadd10c515a18e60ce7efd5c526f7a624d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a137138042801b801618e03a55b5b53cdd321ed8`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/DigammaSeries/Variant5cc2726c925374f7241eed8fc8a57ceadd10c515a18e60ce7efd5c526f7a624d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/DigammaSeries/Variant5cc2726c925374f7241eed8fc8a57ceadd10c515a18e60ce7efd5c526f7a624d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.LocallyUniformLimit` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gamma.Digamma` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gamma.Beta` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.InfiniteSum.ENNReal` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [add_nat_ne_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DigammaSeries/Variant5cc2726c925374f7241eed8fc8a57ceadd10c515a18e60ce7efd5c526f7a624d.lean/declarations/add-nat-ne-zero--dcc65013dbbb76d10a45bba4.md) | 28 | `result-track:dcc65013dbbb76d10a45bba4b81191e0b9689e8cd093f556330ec349571472c8` |
| 2 | `theorem` | [differentiableAt_gammaSeq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DigammaSeries/Variant5cc2726c925374f7241eed8fc8a57ceadd10c515a18e60ce7efd5c526f7a624d.lean/declarations/differentiableat-gammaseq--450fb4a9bff23eedace4db13.md) | 36 | `result-track:450fb4a9bff23eedace4db1336e8f8a7374343ec0b293b5ff49ef3a8e854e7cc` |
| 3 | `theorem` | [logDeriv_gammaSeq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DigammaSeries/Variant5cc2726c925374f7241eed8fc8a57ceadd10c515a18e60ce7efd5c526f7a624d.lean/declarations/logderiv-gammaseq--3829c257553118aee4230159.md) | 46 | `result-track:3829c257553118aee4230159fff1cc645f038566aa937b422ad393e487f80586` |
| 4 | `theorem` | [reciprocal_difference](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DigammaSeries/Variant5cc2726c925374f7241eed8fc8a57ceadd10c515a18e60ce7efd5c526f7a624d.lean/declarations/reciprocal-difference--0a5e03d0979c5c04abd48811.md) | 70 | `result-track:0a5e03d0979c5c04abd48811da6d6c141146e661418a7a367bbb87b0a905facb` |
| 5 | `theorem` | [gammaSeq_difference](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DigammaSeries/Variant5cc2726c925374f7241eed8fc8a57ceadd10c515a18e60ce7efd5c526f7a624d.lean/declarations/gammaseq-difference--370f96faf34b5211780a4e41.md) | 83 | `result-track:370f96faf34b5211780a4e4178f03805d0094adc0d7d0792e9b787b1c2e42183` |
| 6 | `def` | [eulerKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DigammaSeries/Variant5cc2726c925374f7241eed8fc8a57ceadd10c515a18e60ce7efd5c526f7a624d.lean/declarations/eulerkernel--036d2c1a22f3873a0cabaf95.md) | 99 | `declaration-track:036d2c1a22f3873a0cabaf95db93a5f71fe67f6caf2e573a3078e9c2e3fc7d96` |
| 7 | `theorem` | [eulerKernel_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DigammaSeries/Variant5cc2726c925374f7241eed8fc8a57ceadd10c515a18e60ce7efd5c526f7a624d.lean/declarations/eulerkernel-nonneg--83f2ed4471512e329a8723db.md) | 102 | `result-track:83f2ed4471512e329a8723db7a2bcabe03f8aa0d44096a2552ef838fbcefb2f5` |
| 8 | `theorem` | [eulerKernel_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DigammaSeries/Variant5cc2726c925374f7241eed8fc8a57ceadd10c515a18e60ce7efd5c526f7a624d.lean/declarations/eulerkernel-le--f445aff4bfb6227e301b277d.md) | 110 | `result-track:f445aff4bfb6227e301b277da3a53f64d33dba25115bcf47b63c8aa981480893` |
| 9 | `theorem` | [eulerKernel_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DigammaSeries/Variant5cc2726c925374f7241eed8fc8a57ceadd10c515a18e60ce7efd5c526f7a624d.lean/declarations/eulerkernel-tendsto--7174774e11e6ede96fa82013.md) | 119 | `result-track:7174774e11e6ede96fa82013301b8a82aeb6c0a4f441a70e28e28b3fde4bd65b` |
| 10 | `theorem` | [eulerKernel_measurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DigammaSeries/Variant5cc2726c925374f7241eed8fc8a57ceadd10c515a18e60ce7efd5c526f7a624d.lean/declarations/eulerkernel-measurable--32dbd8471ef5b278dd979547.md) | 127 | `result-track:32dbd8471ef5b278dd979547c5558f4a6ce03f7cf44bc27597c789a2e047ca78` |
| 11 | `theorem` | [euler_integrand_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DigammaSeries/Variant5cc2726c925374f7241eed8fc8a57ceadd10c515a18e60ce7efd5c526f7a624d.lean/declarations/euler-integrand-integrable--8c3aaf142ae349d7293d1dd4.md) | 130 | `result-track:8c3aaf142ae349d7293d1dd4ce4de85ede3e8605a97a6121a2bc46ff296e3859` |
| 12 | `theorem` | [gammaSeq_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DigammaSeries/Variant5cc2726c925374f7241eed8fc8a57ceadd10c515a18e60ce7efd5c526f7a624d.lean/declarations/gammaseq-integral--e7d7a8cfed6df8a0a1fa9bb5.md) | 144 | `result-track:e7d7a8cfed6df8a0a1fa9bb5bdcea426d71f21dc276a89d5e5238d5824f16014` |
| 13 | `def` | [errorEnvelope](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DigammaSeries/Variant5cc2726c925374f7241eed8fc8a57ceadd10c515a18e60ce7efd5c526f7a624d.lean/declarations/errorenvelope--2f68c01552f9712dc5f0605a.md) | 162 | `declaration-track:2f68c01552f9712dc5f0605a8a9e674ceb2e8a1f57101efae8fbf3062e827416` |
| 14 | `theorem` | [errorEnvelope_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DigammaSeries/Variant5cc2726c925374f7241eed8fc8a57ceadd10c515a18e60ce7efd5c526f7a624d.lean/declarations/errorenvelope-bound--4646443f3cd7db0fceac3670.md) | 165 | `result-track:4646443f3cd7db0fceac3670eacd64d6daa23acefaf89cf616f20d8b13e7e938` |
| 15 | `theorem` | [errorEnvelope_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DigammaSeries/Variant5cc2726c925374f7241eed8fc8a57ceadd10c515a18e60ce7efd5c526f7a624d.lean/declarations/errorenvelope-integrable--0d7621eb89242d5bc45b34a9.md) | 173 | `result-track:0d7621eb89242d5bc45b34a93ec7cb1d68b12eca3edd12b006e1d7392b19da85` |
| 16 | `theorem` | [errorEnvelope_integral_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DigammaSeries/Variant5cc2726c925374f7241eed8fc8a57ceadd10c515a18e60ce7efd5c526f7a624d.lean/declarations/errorenvelope-integral-tendsto--81ad99cdb5924b8792720d33.md) | 185 | `result-track:81ad99cdb5924b8792720d33e6bacb37eaedbd21ce5ca298d0dad7a468558ec7` |
| 17 | `theorem` | [rpow_strip_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DigammaSeries/Variant5cc2726c925374f7241eed8fc8a57ceadd10c515a18e60ce7efd5c526f7a624d.lean/declarations/rpow-strip-bound--e88fe43a1a562393446c185b.md) | 201 | `result-track:e88fe43a1a562393446c185bfb12c8b499f5e4b307794feb36f3f7b02a839f5a` |
| 18 | `theorem` | [gammaSeq_error_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DigammaSeries/Variant5cc2726c925374f7241eed8fc8a57ceadd10c515a18e60ce7efd5c526f7a624d.lean/declarations/gammaseq-error-bound--7aa40102444ee4306850f385.md) | 209 | `result-track:7aa40102444ee4306850f3855ae0f46b008757691a50634d4167cff84a067455` |
| 19 | `theorem` | [gammaSeq_uniformly_on_strip](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DigammaSeries/Variant5cc2726c925374f7241eed8fc8a57ceadd10c515a18e60ce7efd5c526f7a624d.lean/declarations/gammaseq-uniformly-on-strip--0932b02af0ae18f1986e639b.md) | 227 | `result-track:0932b02af0ae18f1986e639b4d9369aeeae79b5f243a4f9a6a773ba8100e79cf` |
| 20 | `theorem` | [gammaSeq_locally_uniform](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DigammaSeries/Variant5cc2726c925374f7241eed8fc8a57ceadd10c515a18e60ce7efd5c526f7a624d.lean/declarations/gammaseq-locally-uniform--3e0436289e07a4f243a7de58.md) | 239 | `result-track:3e0436289e07a4f243a7de587f7d89243fb09fc834593cfb1cd22aa62e348728` |
| 21 | `def` | [EulerDerivativeLimit](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DigammaSeries/Variant5cc2726c925374f7241eed8fc8a57ceadd10c515a18e60ce7efd5c526f7a624d.lean/declarations/eulerderivativelimit--b944858bfe94b59b88ead0d8.md) | 257 | `declaration-track:b944858bfe94b59b88ead0d88a687f73728684361146ea8b1fe11d930d4ecdd2` |
| 22 | `theorem` | [logDeriv_tendsto_of_derivative_limit](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DigammaSeries/Variant5cc2726c925374f7241eed8fc8a57ceadd10c515a18e60ce7efd5c526f7a624d.lean/declarations/logderiv-tendsto-of-derivative-limit--9d20c9e46887498b002fe3d1.md) | 264 | `result-track:9d20c9e46887498b002fe3d166be44d355a685c251d55a5388bbf8c70b6f04f9` |
| 23 | `theorem` | [derivative_limit_of_locally_uniform](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DigammaSeries/Variant5cc2726c925374f7241eed8fc8a57ceadd10c515a18e60ce7efd5c526f7a624d.lean/declarations/derivative-limit-of-locally-uniform--055344914a58d0c204951798.md) | 272 | `result-track:055344914a58d0c2049517983a0bbe76f84a59845537544171ee6f9227843ce0` |
| 24 | `theorem` | [hasSum_difference_of_derivative_limit](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DigammaSeries/Variant5cc2726c925374f7241eed8fc8a57ceadd10c515a18e60ce7efd5c526f7a624d.lean/declarations/hassum-difference-of-derivative-limit--e3fd531a9b876ab383816e8f.md) | 285 | `result-track:e3fd531a9b876ab383816e8f2d9995928b4532c991fe59c25c87a3854845fc2a` |
| 25 | `theorem` | [euler_derivative_limit](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DigammaSeries/Variant5cc2726c925374f7241eed8fc8a57ceadd10c515a18e60ce7efd5c526f7a624d.lean/declarations/euler-derivative-limit--9dfaa5ef19ba0522c263ee41.md) | 302 | `result-track:9dfaa5ef19ba0522c263ee414b5c4b809d0964beea1d1004cbbaa6dd4dd1cbdf` |
| 26 | `theorem` | [hasSum_difference](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DigammaSeries/Variant5cc2726c925374f7241eed8fc8a57ceadd10c515a18e60ce7efd5c526f7a624d.lean/declarations/hassum-difference--ece44aefe5a811add98edae6.md) | 306 | `result-track:ece44aefe5a811add98edae611c1d1260f94013ef31df769d6850ad728600e3c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
