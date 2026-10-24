# Verification target: GRWTSK.Analysis.FractionalLogBasis.Variant4ea2fa5d0c83c1617eaf78059f3c2580504bc1ba9231e414d72057f4446249f1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cdf7d7f0e531d7b81b80ee8a82a13a1dc79909bd",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FractionalLogBasis/Variant4ea2fa5d0c83c1617eaf78059f3c2580504bc1ba9231e414d72057f4446249f1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/FractionalLogBasis/Variant4ea2fa5d0c83c1617eaf78059f3c2580504bc1ba9231e414d72057f4446249f1.lean/index.md) · [Full source](../../../../mathematics/Analysis/FractionalLogBasis/Variant4ea2fa5d0c83c1617eaf78059f3c2580504bc1ba9231e414d72057f4446249f1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cdf7d7f0e531d7b81b80ee8a82a13a1dc79909bd`.

Source path: `GRWTSK/Analysis/FractionalLogBasis/Variant4ea2fa5d0c83c1617eaf78059f3c2580504bc1ba9231e414d72057f4446249f1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FractionalLogBasis/Variant4ea2fa5d0c83c1617eaf78059f3c2580504bc1ba9231e414d72057f4446249f1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.CoreTailSplit` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.FullLinePlancherel` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [fractionalLogFunction](../../../../mathematics/Analysis/FractionalLogBasis/Variant4ea2fa5d0c83c1617eaf78059f3c2580504bc1ba9231e414d72057f4446249f1.lean/declarations/fractionallogfunction--4a8c0d18906fab6769499404.md) | 22 | `declaration-track:4a8c0d18906fab6769499404b5b324909d76fdebff38b7e33904fd4030efdedb` |
| 2 | `theorem` | [fractionalLogFunction_measurable](../../../../mathematics/Analysis/FractionalLogBasis/Variant4ea2fa5d0c83c1617eaf78059f3c2580504bc1ba9231e414d72057f4446249f1.lean/declarations/fractionallogfunction-measurable--2e46a7daef2dbb93207b8a07.md) | 25 | `result-track:2e46a7daef2dbb93207b8a073d59d3923a89d8c75a3394658d72daa1ea63a892` |
| 3 | `theorem` | [fractionalLogFunction_sq_le_near](../../../../mathematics/Analysis/FractionalLogBasis/Variant4ea2fa5d0c83c1617eaf78059f3c2580504bc1ba9231e414d72057f4446249f1.lean/declarations/fractionallogfunction-sq-le-near--69b36a534d095fdaa7e7528e.md) | 30 | `result-track:69b36a534d095fdaa7e7528e4607e33912222ded47679d6845bdebb68fac17ae` |
| 4 | `theorem` | [fractionalLogFunction_sq_le_far](../../../../mathematics/Analysis/FractionalLogBasis/Variant4ea2fa5d0c83c1617eaf78059f3c2580504bc1ba9231e414d72057f4446249f1.lean/declarations/fractionallogfunction-sq-le-far--b49f903d41da88cc93c7f63a.md) | 48 | `result-track:b49f903d41da88cc93c7f63ae8540ae1c19db94f1b9cc957f99893fe95c61df7` |
| 5 | `theorem` | [fractionalLogFunction_memLp](../../../../mathematics/Analysis/FractionalLogBasis/Variant4ea2fa5d0c83c1617eaf78059f3c2580504bc1ba9231e414d72057f4446249f1.lean/declarations/fractionallogfunction-memlp--62669a185625015c24ebb3b1.md) | 63 | `result-track:62669a185625015c24ebb3b17d1aa554cc4acfad2513408125d53428430f414c` |
| 6 | `def` | [fractionalLogVector](../../../../mathematics/Analysis/FractionalLogBasis/Variant4ea2fa5d0c83c1617eaf78059f3c2580504bc1ba9231e414d72057f4446249f1.lean/declarations/fractionallogvector--68543a2c17feace5d065358e.md) | 83 | `declaration-track:68543a2c17feace5d065358ee4548ca29e0631dc3b3fdcdc9fee9f1ed04e41e1` |
| 7 | `theorem` | [fractionalLogVector_norm_le](../../../../mathematics/Analysis/FractionalLogBasis/Variant4ea2fa5d0c83c1617eaf78059f3c2580504bc1ba9231e414d72057f4446249f1.lean/declarations/fractionallogvector-norm-le--507f72a243b25a1a46a069c7.md) | 87 | `result-track:507f72a243b25a1a46a069c7c72d63ba6aa16eeb9343ad01e7d554a0a076a622` |
| 8 | `theorem` | [fractionalLogVector_ae](../../../../mathematics/Analysis/FractionalLogBasis/Variant4ea2fa5d0c83c1617eaf78059f3c2580504bc1ba9231e414d72057f4446249f1.lean/declarations/fractionallogvector-ae--f88fb9c1bcfe321392a93b90.md) | 116 | `result-track:f88fb9c1bcfe321392a93b903cd0ae7b9707a84c2a93ef2ce841b292c0a36734` |
| 9 | `theorem` | [sum_coe_ae](../../../../mathematics/Analysis/FractionalLogBasis/Variant4ea2fa5d0c83c1617eaf78059f3c2580504bc1ba9231e414d72057f4446249f1.lean/declarations/sum-coe-ae--43d59cd30c2b2d69ce3ccbc1.md) | 120 | `result-track:43d59cd30c2b2d69ce3ccbc173550e2a06386fdf5d129cfc232e977a857301dd` |
| 10 | `theorem` | [fullResidualVector_sub_expansion_norm](../../../../mathematics/Analysis/FractionalLogBasis/Variant4ea2fa5d0c83c1617eaf78059f3c2580504bc1ba9231e414d72057f4446249f1.lean/declarations/fullresidualvector-sub-expansion-norm--09d9c7c6ce84fda03744c14a.md) | 134 | `result-track:09d9c7c6ce84fda03744c14aad305671d643e517b49546e7fc6ba60eb2fbf345` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
