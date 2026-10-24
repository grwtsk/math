# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.PerronLiteralCheck.Variant9e7cd8df0faf8a1e794cb3aec10492acff9dbdb20114a4465a8ee0497f6cc888

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6f3ee798d88cee5fdeaab0c98a292a6ce6ee006a",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/PerronLiteralCheck/Variant9e7cd8df0faf8a1e794cb3aec10492acff9dbdb20114a4465a8ee0497f6cc888.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PerronLiteralCheck/Variant9e7cd8df0faf8a1e794cb3aec10492acff9dbdb20114a4465a8ee0497f6cc888.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PerronLiteralCheck/Variant9e7cd8df0faf8a1e794cb3aec10492acff9dbdb20114a4465a8ee0497f6cc888.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6f3ee798d88cee5fdeaab0c98a292a6ce6ee006a`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/PerronLiteralCheck/Variant9e7cd8df0faf8a1e794cb3aec10492acff9dbdb20114a4465a8ee0497f6cc888.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/PerronLiteralCheck/Variant9e7cd8df0faf8a1e794cb3aec10492acff9dbdb20114a4465a8ee0497f6cc888.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.SourceLaplaceKernel` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Fourier.Inversion` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.MellinTransform` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [kernelIntegrand_integrable_Ioi_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PerronLiteralCheck/Variant9e7cd8df0faf8a1e794cb3aec10492acff9dbdb20114a4465a8ee0497f6cc888.lean/declarations/kernelintegrand-integrable-ioi-zero--3fc661df270c704091321d76.md) | 26 | `result-track:3fc661df270c704091321d7671088d6429e1285975202c76d109a8c0a9f838e9` |
| 2 | `theorem` | [integral_first_moment](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PerronLiteralCheck/Variant9e7cd8df0faf8a1e794cb3aec10492acff9dbdb20114a4465a8ee0497f6cc888.lean/declarations/integral-first-moment--da5e1ccf6d99eabc7dd6917c.md) | 40 | `result-track:da5e1ccf6d99eabc7dd6917c2b3836529de384bbbec24edd087ee3c442644a3c` |
| 3 | `def` | [dampedRamp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PerronLiteralCheck/Variant9e7cd8df0faf8a1e794cb3aec10492acff9dbdb20114a4465a8ee0497f6cc888.lean/declarations/dampedramp--d764f1b81a8c7b0f93efaf98.md) | 62 | `declaration-track:d764f1b81a8c7b0f93efaf989325bd3032a3820b04f687cd91a5c3fcb131a1a5` |
| 4 | `theorem` | [dampedRamp_continuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PerronLiteralCheck/Variant9e7cd8df0faf8a1e794cb3aec10492acff9dbdb20114a4465a8ee0497f6cc888.lean/declarations/dampedramp-continuous--aa660e8f6b5a49cb73716c21.md) | 66 | `result-track:aa660e8f6b5a49cb73716c21639314eeccaf29d0462d22b1651000490adca626` |
| 5 | `theorem` | [dampedRamp_eq_indicator](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PerronLiteralCheck/Variant9e7cd8df0faf8a1e794cb3aec10492acff9dbdb20114a4465a8ee0497f6cc888.lean/declarations/dampedramp-eq-indicator--cf7c3ef32e149b9bd65eb82a.md) | 71 | `result-track:cf7c3ef32e149b9bd65eb82ae6f15efa56126b8aac197add8939bff38eeb4aed` |
| 6 | `theorem` | [dampedRamp_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PerronLiteralCheck/Variant9e7cd8df0faf8a1e794cb3aec10492acff9dbdb20114a4465a8ee0497f6cc888.lean/declarations/dampedramp-integrable--fe1e355e07e5e8a74d24afbd.md) | 79 | `result-track:fe1e355e07e5e8a74d24afbd0d19456837157f948638a23a8e386313c3ba8a36` |
| 7 | `theorem` | [dampedRamp_fourier](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PerronLiteralCheck/Variant9e7cd8df0faf8a1e794cb3aec10492acff9dbdb20114a4465a8ee0497f6cc888.lean/declarations/dampedramp-fourier--958cd9f04ba7fb1b01db0aab.md) | 84 | `result-track:958cd9f04ba7fb1b01db0aabd64113eaf84a2d443a415a9a8ecea419421503e3` |
| 8 | `theorem` | [reciprocal_square_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PerronLiteralCheck/Variant9e7cd8df0faf8a1e794cb3aec10492acff9dbdb20114a4465a8ee0497f6cc888.lean/declarations/reciprocal-square-integrable--4806736897d798d5cb531544.md) | 103 | `result-track:4806736897d798d5cb531544be81f8dd6574e5ad5a2e9ac58a7eeaba9fc24a64` |
| 9 | `theorem` | [dampedRamp_fourier_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PerronLiteralCheck/Variant9e7cd8df0faf8a1e794cb3aec10492acff9dbdb20114a4465a8ee0497f6cc888.lean/declarations/dampedramp-fourier-integrable--20400f3595ea18ef34234760.md) | 117 | `result-track:20400f3595ea18ef34234760a42fb254de3c59b745b152312dff834341dd787a` |
| 10 | `def` | [perronIntegrand](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PerronLiteralCheck/Variant9e7cd8df0faf8a1e794cb3aec10492acff9dbdb20114a4465a8ee0497f6cc888.lean/declarations/perronintegrand--9d5f051570fc8bfb212304d7.md) | 129 | `declaration-track:9d5f051570fc8bfb212304d75dbabb09cb6214cb1619deeb302edb7cf7910d7a` |
| 11 | `theorem` | [perronIntegrand_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PerronLiteralCheck/Variant9e7cd8df0faf8a1e794cb3aec10492acff9dbdb20114a4465a8ee0497f6cc888.lean/declarations/perronintegrand-integrable--9bb4410410ed85077e67232f.md) | 134 | `result-track:9bb4410410ed85077e67232f739da2577c49e54bd5ad54fec40b735845756c90` |
| 12 | `theorem` | [vertical_ramp_inversion](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PerronLiteralCheck/Variant9e7cd8df0faf8a1e794cb3aec10492acff9dbdb20114a4465a8ee0497f6cc888.lean/declarations/vertical-ramp-inversion--70e0c3b0353c289ce0d0b3df.md) | 147 | `result-track:70e0c3b0353c289ce0d0b3dfd6485401aaff9c9296f5d5e9e09473c3f6af0b15` |
| 13 | `theorem` | [elementary_perron_kernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PerronLiteralCheck/Variant9e7cd8df0faf8a1e794cb3aec10492acff9dbdb20114a4465a8ee0497f6cc888.lean/declarations/elementary-perron-kernel--6bff84e26401f05795f68ce9.md) | 173 | `result-track:6bff84e26401f05795f68ce9de9938b7fa66b6512e943565d2c2c7e1a8234ea3` |
| 14 | `theorem` | [elementary_perron_endpoint](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PerronLiteralCheck/Variant9e7cd8df0faf8a1e794cb3aec10492acff9dbdb20114a4465a8ee0497f6cc888.lean/declarations/elementary-perron-endpoint--c6a1806f80041a28d83ca9bf.md) | 196 | `result-track:c6a1806f80041a28d83ca9bf81016f93539056515d6d23421fe66aff10db7523` |
| 15 | `theorem` | [elementary_perron_ratio](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PerronLiteralCheck/Variant9e7cd8df0faf8a1e794cb3aec10492acff9dbdb20114a4465a8ee0497f6cc888.lean/declarations/elementary-perron-ratio--e8ef46902caf8697cfb36ac4.md) | 201 | `result-track:e8ef46902caf8697cfb36ac471526776b29e700643ab6983625cf60f723624ac` |
| 16 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PerronLiteralCheck/Variant9e7cd8df0faf8a1e794cb3aec10492acff9dbdb20114a4465a8ee0497f6cc888.lean/declarations/example--be1dbe0eda06edf21679d48f.md) | 222 | `declaration-track:be1dbe0eda06edf21679d48f6c1bf7aedaed1b27fb63fe3de171356bfd37ff64` |
| 17 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PerronLiteralCheck/Variant9e7cd8df0faf8a1e794cb3aec10492acff9dbdb20114a4465a8ee0497f6cc888.lean/declarations/example--99f60213883f4212bf01bbdf.md) | 224 | `declaration-track:99f60213883f4212bf01bbdf2573cc45a9d1fe0af84f2205015a212c03ea3f68` |
| 18 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PerronLiteralCheck/Variant9e7cd8df0faf8a1e794cb3aec10492acff9dbdb20114a4465a8ee0497f6cc888.lean/declarations/example--70606c17ba0cd36d68f040f1.md) | 227 | `declaration-track:70606c17ba0cd36d68f040f16d2a6fd8b906f463b58f2a5a17001767cfddd158` |
| 19 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PerronLiteralCheck/Variant9e7cd8df0faf8a1e794cb3aec10492acff9dbdb20114a4465a8ee0497f6cc888.lean/declarations/example--aecdcf6f50e8cb6bc28c17ea.md) | 229 | `declaration-track:aecdcf6f50e8cb6bc28c17ea621f6e83e94912bb3a3f32a054647d56271219e8` |
| 20 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PerronLiteralCheck/Variant9e7cd8df0faf8a1e794cb3aec10492acff9dbdb20114a4465a8ee0497f6cc888.lean/declarations/example--284579d8cbf0d6b1085981e1.md) | 230 | `declaration-track:284579d8cbf0d6b1085981e11cbbab83046bd2590065702c54f4c16fff72a2b4` |
| 21 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PerronLiteralCheck/Variant9e7cd8df0faf8a1e794cb3aec10492acff9dbdb20114a4465a8ee0497f6cc888.lean/declarations/example--d9102cb721759e8984d2213f.md) | 232 | `declaration-track:d9102cb721759e8984d2213fec1d3c60d3e183651c7405dd66f0bcc43e3a8d9a` |
| 22 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PerronLiteralCheck/Variant9e7cd8df0faf8a1e794cb3aec10492acff9dbdb20114a4465a8ee0497f6cc888.lean/declarations/example--3166542fad87f25a1d81b0e9.md) | 233 | `declaration-track:3166542fad87f25a1d81b0e975e018ea6f99be58911bb9346a981e51a6850938` |
| 23 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PerronLiteralCheck/Variant9e7cd8df0faf8a1e794cb3aec10492acff9dbdb20114a4465a8ee0497f6cc888.lean/declarations/example--e7cff9d532ba2466f8e7f7de.md) | 236 | `declaration-track:e7cff9d532ba2466f8e7f7deacbb119b2b73424879a6c48b363ab3b52f96e355` |
| 24 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PerronLiteralCheck/Variant9e7cd8df0faf8a1e794cb3aec10492acff9dbdb20114a4465a8ee0497f6cc888.lean/declarations/example--69cbc5cce0ce3eceea55afb3.md) | 239 | `declaration-track:69cbc5cce0ce3eceea55afb3b2b032746208e05d5ffc2109dd388b5a7ebcc34a` |
| 25 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PerronLiteralCheck/Variant9e7cd8df0faf8a1e794cb3aec10492acff9dbdb20114a4465a8ee0497f6cc888.lean/declarations/example--53d1890de2f4eeef18020f23.md) | 241 | `declaration-track:53d1890de2f4eeef18020f236f9b9b1505519efcb7c69d57568cb6075dfb9965` |
| 26 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PerronLiteralCheck/Variant9e7cd8df0faf8a1e794cb3aec10492acff9dbdb20114a4465a8ee0497f6cc888.lean/declarations/example--dd1f97d510f66d2bfb648546.md) | 244 | `declaration-track:dd1f97d510f66d2bfb6485466f2e10491b54353400a8932bf9f4d55901cec873` |
| 27 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PerronLiteralCheck/Variant9e7cd8df0faf8a1e794cb3aec10492acff9dbdb20114a4465a8ee0497f6cc888.lean/declarations/example--920667cf97c86d40247251f2.md) | 246 | `declaration-track:920667cf97c86d40247251f22863e902bcbd9b105c4062652a8506775aee5dbd` |
| 28 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PerronLiteralCheck/Variant9e7cd8df0faf8a1e794cb3aec10492acff9dbdb20114a4465a8ee0497f6cc888.lean/declarations/example--4fa0d45c78f02479639be1e6.md) | 251 | `declaration-track:4fa0d45c78f02479639be1e6fa8b41d46e0a61e9c9b9cc50e8ef086eeef06b43` |
| 29 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PerronLiteralCheck/Variant9e7cd8df0faf8a1e794cb3aec10492acff9dbdb20114a4465a8ee0497f6cc888.lean/declarations/example--00f23240f3f24b30a5bebfdb.md) | 254 | `declaration-track:00f23240f3f24b30a5bebfdb5b4de3bc8cea13fc8313732d1231cc19cfad60b3` |
| 30 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PerronLiteralCheck/Variant9e7cd8df0faf8a1e794cb3aec10492acff9dbdb20114a4465a8ee0497f6cc888.lean/declarations/example--5c5fa2a4e4117ae3ae156d7e.md) | 257 | `declaration-track:5c5fa2a4e4117ae3ae156d7ee7b530f9fbe51df466c8b9a8cf76d1e706adfab5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
