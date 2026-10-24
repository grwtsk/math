# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.LocalCount.Variantf23b7b226a62a7622e09bd867136faf00567e2c14a1fc697cf83b5aa5f065b45

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "42f9e1e712587991f2b9ea6e8edf074c9055375c",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LocalCount/Variantf23b7b226a62a7622e09bd867136faf00567e2c14a1fc697cf83b5aa5f065b45.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LocalCount/Variantf23b7b226a62a7622e09bd867136faf00567e2c14a1fc697cf83b5aa5f065b45.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LocalCount/Variantf23b7b226a62a7622e09bd867136faf00567e2c14a1fc697cf83b5aa5f065b45.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `42f9e1e712587991f2b9ea6e8edf074c9055375c`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LocalCount/Variantf23b7b226a62a7622e09bd867136faf00567e2c14a1fc697cf83b5aa5f065b45.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LocalCount/Variantf23b7b226a62a7622e09bd867136faf00567e2c14a1fc697cf83b5aa5f065b45.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.Prelude.InstancePriorities` — import line 23; external provider; requires a separately pinned dependency.
- `Zeta23.Statement.SeamClosed` — import line 24; external provider; requires a separately pinned dependency.
- `Zeta23.Defs.Counting` — import line 25; external provider; requires a separately pinned dependency.
- `Zeta23.FromPNTPlus.StrongPNTPrefix` — import line 26; external provider; requires a separately pinned dependency.
- `Zeta23.RvM.ZetaGrowth` — import line 27; external provider; requires a separately pinned dependency.
- `Zeta23.RvM.Halving` — import line 28; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [riemannZeta_zeros_finite_of_isCompact](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LocalCount/Variantf23b7b226a62a7622e09bd867136faf00567e2c14a1fc697cf83b5aa5f065b45.lean/declarations/riemannzeta-zeros-finite-of-iscompact--984a1647cd93f9618cfd7697.md) | 38 | `result-track:984a1647cd93f9618cfd7697c0a46cedc1ea2497f485b9d5423bf490a795eeae` |
| 2 | `def` | [gfun](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LocalCount/Variantf23b7b226a62a7622e09bd867136faf00567e2c14a1fc697cf83b5aa5f065b45.lean/declarations/gfun--695876602357ef5bde0ab04c.md) | 48 | `declaration-track:695876602357ef5bde0ab04cc9f757d187fd983fccbe0ae4fbd474a3b4e1585e` |
| 3 | `lemma` | [comp_affine_analyticAt](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LocalCount/Variantf23b7b226a62a7622e09bd867136faf00567e2c14a1fc697cf83b5aa5f065b45.lean/declarations/comp-affine-analyticat--70e7da7e0c9e006eace0284d.md) | 50 | `result-track:70e7da7e0c9e006eace0284dc4702a4a351a2ea357b7f02467a0b8c12c8660da` |
| 4 | `lemma` | [gfun_analyticAt](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LocalCount/Variantf23b7b226a62a7622e09bd867136faf00567e2c14a1fc697cf83b5aa5f065b45.lean/declarations/gfun-analyticat--9ddc01f624e9c3ba865fe0bd.md) | 56 | `result-track:9ddc01f624e9c3ba865fe0bdcd2cfae7f8667a589e783670cc2f2e708cf1d018` |
| 5 | `lemma` | [analyticOrderNatAt_gfun](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LocalCount/Variantf23b7b226a62a7622e09bd867136faf00567e2c14a1fc697cf83b5aa5f065b45.lean/declarations/analyticordernatat-gfun--a353c181f541b590d8c9464e.md) | 63 | `result-track:a353c181f541b590d8c9464e08bfc3a740245d8021fd6a7aadedc336a4f82f6d` |
| 6 | `lemma` | [norm_sub_center_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LocalCount/Variantf23b7b226a62a7622e09bd867136faf00567e2c14a1fc697cf83b5aa5f065b45.lean/declarations/norm-sub-center-le--d145aec13827a591d135fb2b.md) | 82 | `result-track:d145aec13827a591d135fb2b0a50f2f32c688e3bd1416eb6210d36021669f9bd` |
| 7 | `def` | [NhalfR](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LocalCount/Variantf23b7b226a62a7622e09bd867136faf00567e2c14a1fc697cf83b5aa5f065b45.lean/declarations/nhalfr--5284c8d04f6ee4de15dc00f4.md) | 93 | `declaration-track:5284c8d04f6ee4de15dc00f450ea044dd62c457b1bf8b022e5da2cd363c74c06` |
| 8 | `theorem` | [half_count_large](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LocalCount/Variantf23b7b226a62a7622e09bd867136faf00567e2c14a1fc697cf83b5aa5f065b45.lean/declarations/half-count-large--798af9089cdb28402de1ef06.md) | 96 | `result-track:798af9089cdb28402de1ef064844cedca646a3aead140a0b8ae4accb1aec9ee6` |
| 9 | `theorem` | [count_small](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LocalCount/Variantf23b7b226a62a7622e09bd867136faf00567e2c14a1fc697cf83b5aa5f065b45.lean/declarations/count-small--17b7c6e3ed426429e9790435.md) | 255 | `result-track:17b7c6e3ed426429e97904353a776b00d57f118490275570f7f800b835c6c287` |
| 10 | `theorem` | [zeta_local_zero_count](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LocalCount/Variantf23b7b226a62a7622e09bd867136faf00567e2c14a1fc697cf83b5aa5f065b45.lean/declarations/zeta-local-zero-count--12d49602b5cb75b93107e238.md) | 266 | `result-track:12d49602b5cb75b93107e2380695d9a685050ef8e24fd02257a578f87a741e92` |
| 11 | `theorem` | [zetaZeroConfig_local_count](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LocalCount/Variantf23b7b226a62a7622e09bd867136faf00567e2c14a1fc697cf83b5aa5f065b45.lean/declarations/zetazeroconfig-local-count--50a2912ceb38d391776d1bf1.md) | 294 | `result-track:50a2912ceb38d391776d1bf13cff6ba11280de8e0a11e18f0d36fd5bab4a9325` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
