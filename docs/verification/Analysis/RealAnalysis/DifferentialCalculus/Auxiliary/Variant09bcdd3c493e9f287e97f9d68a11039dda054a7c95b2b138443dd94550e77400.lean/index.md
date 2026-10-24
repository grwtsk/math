# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Auxiliary.Variant09bcdd3c493e9f287e97f9d68a11039dda054a7c95b2b138443dd94550e77400

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a75bcbf132df4da7f86b5567f9b1b076db54551d",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Auxiliary/Variant09bcdd3c493e9f287e97f9d68a11039dda054a7c95b2b138443dd94550e77400.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Auxiliary/Variant09bcdd3c493e9f287e97f9d68a11039dda054a7c95b2b138443dd94550e77400.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Auxiliary/Variant09bcdd3c493e9f287e97f9d68a11039dda054a7c95b2b138443dd94550e77400.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a75bcbf132df4da7f86b5567f9b1b076db54551d`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Auxiliary/Variant09bcdd3c493e9f287e97f9d68a11039dda054a7c95b2b138443dd94550e77400.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Auxiliary/Variant09bcdd3c493e9f287e97f9d68a11039dda054a7c95b2b138443dd94550e77400.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.RealDeriv` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [hasDerivAt_ofReal](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Auxiliary/Variant09bcdd3c493e9f287e97f9d68a11039dda054a7c95b2b138443dd94550e77400.lean/declarations/hasderivat-ofreal--22e99755f700275d766ede5a.md) | 16 | `result-track:22e99755f700275d766ede5adbd833d00d754c9be09353b18c6faae0c83bc88b` |
| 2 | `lemma` | [deriv_ofReal](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Auxiliary/Variant09bcdd3c493e9f287e97f9d68a11039dda054a7c95b2b138443dd94550e77400.lean/declarations/deriv-ofreal--81e7af141ac1936dad916e7f.md) | 19 | `result-track:81e7af141ac1936dad916e7ff85f6ce1398b6d852f3617045ca954123aecd8e0` |
| 3 | `lemma` | [differentiableAt_ofReal](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Auxiliary/Variant09bcdd3c493e9f287e97f9d68a11039dda054a7c95b2b138443dd94550e77400.lean/declarations/differentiableat-ofreal--dc0eedbc067f619d3b18364e.md) | 22 | `result-track:dc0eedbc067f619d3b18364e3b7d9d30554c96ebd6b9033a7fb40fb0a3031eb9` |
| 4 | `lemma` | [differentiable_ofReal](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Auxiliary/Variant09bcdd3c493e9f287e97f9d68a11039dda054a7c95b2b138443dd94550e77400.lean/declarations/differentiable-ofreal--e3f2c0f2143c8b84c60ffbea.md) | 25 | `result-track:e3f2c0f2143c8b84c60ffbea6d3bd04597cde250ced28053f1710c5262da52dd` |
| 5 | `lemma` | [DifferentiableAt.comp_ofReal](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Auxiliary/Variant09bcdd3c493e9f287e97f9d68a11039dda054a7c95b2b138443dd94550e77400.lean/declarations/differentiableat-comp-ofreal--70a4d71ffbd1e334f4949d45.md) | 30 | `result-track:70a4d71ffbd1e334f4949d45da940b0ce23783a99c7f9b90be132a948e80e0cf` |
| 6 | `lemma` | [deriv.comp_ofReal](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Auxiliary/Variant09bcdd3c493e9f287e97f9d68a11039dda054a7c95b2b138443dd94550e77400.lean/declarations/deriv-comp-ofreal--b00faac78f895288d3400bcb.md) | 34 | `result-track:b00faac78f895288d3400bcbdc855a7af7ff065f7f59c91486e44b112b428576` |
| 7 | `lemma` | [Differentiable.comp_ofReal](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Auxiliary/Variant09bcdd3c493e9f287e97f9d68a11039dda054a7c95b2b138443dd94550e77400.lean/declarations/differentiable-comp-ofreal--8f263b93495efcd3582bd264.md) | 38 | `result-track:8f263b93495efcd3582bd2641d8472d4670787561ea418b4244a04615eb0c381` |
| 8 | `lemma` | [DifferentiableAt.ofReal_comp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Auxiliary/Variant09bcdd3c493e9f287e97f9d68a11039dda054a7c95b2b138443dd94550e77400.lean/declarations/differentiableat-ofreal-comp--cd69422d375d71e82e93fcc9.md) | 42 | `result-track:cd69422d375d71e82e93fcc926358d92f5796fa9eecc8e3ac234e405619f6cbb` |
| 9 | `lemma` | [Differentiable.ofReal_comp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Auxiliary/Variant09bcdd3c493e9f287e97f9d68a11039dda054a7c95b2b138443dd94550e77400.lean/declarations/differentiable-ofreal-comp--1a274682d5427ede3ecdf31d.md) | 46 | `result-track:1a274682d5427ede3ecdf31d7d36ea5ae7e32d1a590dc90692c38a9149f8f915` |
| 10 | `lemma` | [HasDerivAt.of_hasDerivAt_ofReal_comp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Auxiliary/Variant09bcdd3c493e9f287e97f9d68a11039dda054a7c95b2b138443dd94550e77400.lean/declarations/hasderivat-of-hasderivat-ofreal-comp--733319b886adc04da10be303.md) | 51 | `result-track:733319b886adc04da10be30337f72c974dc84f753c98cab6ae1dd2d286383431` |
| 11 | `lemma` | [DifferentiableAt.ofReal_comp_iff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Auxiliary/Variant09bcdd3c493e9f287e97f9d68a11039dda054a7c95b2b138443dd94550e77400.lean/declarations/differentiableat-ofreal-comp-iff--a3e3c8de1256920626bd6be1.md) | 62 | `result-track:a3e3c8de1256920626bd6be1f5264a8553e0c4f20e75d63caa9f551c9f2b49c5` |
| 12 | `lemma` | [Differentiable.ofReal_comp_iff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Auxiliary/Variant09bcdd3c493e9f287e97f9d68a11039dda054a7c95b2b138443dd94550e77400.lean/declarations/differentiable-ofreal-comp-iff--811cff291744d405798fe19a.md) | 68 | `result-track:811cff291744d405798fe19a98ccc1db177ff2ef4565758302e168b3e1c448c3` |
| 13 | `lemma` | [deriv.ofReal_comp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Auxiliary/Variant09bcdd3c493e9f287e97f9d68a11039dda054a7c95b2b138443dd94550e77400.lean/declarations/deriv-ofreal-comp--cc4bbd65ea6ab6cf489ca7af.md) | 72 | `result-track:cc4bbd65ea6ab6cf489ca7afc829df194d87142906fc977506338cf6d1fd6982` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
