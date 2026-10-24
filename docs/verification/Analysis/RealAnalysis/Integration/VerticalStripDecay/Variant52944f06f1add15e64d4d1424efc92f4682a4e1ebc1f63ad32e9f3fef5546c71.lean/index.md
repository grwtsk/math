# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.VerticalStripDecay.Variant52944f06f1add15e64d4d1424efc92f4682a4e1ebc1f63ad32e9f3fef5546c71

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d3962dde4483a2918717b0ecc4424aa8dde52a03",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/VerticalStripDecay/Variant52944f06f1add15e64d4d1424efc92f4682a4e1ebc1f63ad32e9f3fef5546c71.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/VerticalStripDecay/Variant52944f06f1add15e64d4d1424efc92f4682a4e1ebc1f63ad32e9f3fef5546c71.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/VerticalStripDecay/Variant52944f06f1add15e64d4d1424efc92f4682a4e1ebc1f63ad32e9f3fef5546c71.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d3962dde4483a2918717b0ecc4424aa8dde52a03`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/VerticalStripDecay/Variant52944f06f1add15e64d4d1424efc92f4682a4e1ebc1f63ad32e9f3fef5546c71.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/VerticalStripDecay/Variant52944f06f1add15e64d4d1424efc92f4682a4e1ebc1f63ad32e9f3fef5546c71.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [iteratedDeriv_cexp_real_const_mul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/VerticalStripDecay/Variant52944f06f1add15e64d4d1424efc92f4682a4e1ebc1f63ad32e9f3fef5546c71.lean/declarations/iteratedderiv-cexp-real-const-mul--2abde8ed1f8f73a9b1bfad6e.md) | 41 | `result-track:2abde8ed1f8f73a9b1bfad6e0e0e15755fb77081dd4b9fcfcac5ddb26b34b786` |
| 2 | `lemma` | [iteratedDeriv_laplaceSliceSchwartz](../../../../../../mathematics/Analysis/RealAnalysis/Integration/VerticalStripDecay/Variant52944f06f1add15e64d4d1424efc92f4682a4e1ebc1f63ad32e9f3fef5546c71.lean/declarations/iteratedderiv-laplacesliceschwartz--69900dfdfad544a00109646c.md) | 62 | `result-track:69900dfdfad544a00109646cca761312da7772b6b21d3f669b6e294ffcd1dcde` |
| 3 | `def` | [laplaceSliceDerivativeFormula](../../../../../../mathematics/Analysis/RealAnalysis/Integration/VerticalStripDecay/Variant52944f06f1add15e64d4d1424efc92f4682a4e1ebc1f63ad32e9f3fef5546c71.lean/declarations/laplaceslicederivativeformula--193d2764cb85a856eec7a226.md) | 84 | `declaration-track:193d2764cb85a856eec7a22653727ec1e0fe768776c27eca0a9d05555eff03ed` |
| 4 | `lemma` | [continuous_laplaceSliceDerivativeFormula](../../../../../../mathematics/Analysis/RealAnalysis/Integration/VerticalStripDecay/Variant52944f06f1add15e64d4d1424efc92f4682a4e1ebc1f63ad32e9f3fef5546c71.lean/declarations/continuous-laplaceslicederivativeformula--34a72c61b73caf2f007990df.md) | 91 | `result-track:34a72c61b73caf2f007990dfa40446cf35a10cb0f417de1a565b807a8828f684` |
| 5 | `lemma` | [iteratedDeriv_eq_zero_of_notMem_tsupport](../../../../../../mathematics/Analysis/RealAnalysis/Integration/VerticalStripDecay/Variant52944f06f1add15e64d4d1424efc92f4682a4e1ebc1f63ad32e9f3fef5546c71.lean/declarations/iteratedderiv-eq-zero-of-notmem-tsupport--b4ab722807a0c539ca290080.md) | 101 | `result-track:b4ab722807a0c539ca2900801d148c6dbad05e96a9dcaf3becc060561c23d436` |
| 6 | `lemma` | [support_iteratedDeriv_laplaceSlice_subset](../../../../../../mathematics/Analysis/RealAnalysis/Integration/VerticalStripDecay/Variant52944f06f1add15e64d4d1424efc92f4682a4e1ebc1f63ad32e9f3fef5546c71.lean/declarations/support-iteratedderiv-laplaceslice-subset--bee0902fff3f043110f52fe5.md) | 111 | `result-track:bee0902fff3f043110f52fe519dfa012fd251d9360874270ed02d2089bfb841a` |
| 7 | `theorem` | [laplaceSlice_iteratedDeriv_l1_uniform](../../../../../../mathematics/Analysis/RealAnalysis/Integration/VerticalStripDecay/Variant52944f06f1add15e64d4d1424efc92f4682a4e1ebc1f63ad32e9f3fef5546c71.lean/declarations/laplaceslice-iteratedderiv-l1-uniform--8afb2706e99fe80b2a59ef2c.md) | 129 | `result-track:8afb2706e99fe80b2a59ef2cf06d3c14aa25b5af2295e2b517c9471853f492b7` |
| 8 | `def` | [verticalOscillation](../../../../../../mathematics/Analysis/RealAnalysis/Integration/VerticalStripDecay/Variant52944f06f1add15e64d4d1424efc92f4682a4e1ebc1f63ad32e9f3fef5546c71.lean/declarations/verticaloscillation--71196a3e5dd47bd5576b59f6.md) | 202 | `declaration-track:71196a3e5dd47bd5576b59f6eff9d0d3344ecc6631deb8235309cb588a088d7e` |
| 9 | `lemma` | [hasDerivAt_verticalOscillation](../../../../../../mathematics/Analysis/RealAnalysis/Integration/VerticalStripDecay/Variant52944f06f1add15e64d4d1424efc92f4682a4e1ebc1f63ad32e9f3fef5546c71.lean/declarations/hasderivat-verticaloscillation--b71e3443514fb76d4cadd973.md) | 205 | `result-track:b71e3443514fb76d4cadd9730e44f903175faeab07b51dea6a57ca90753abbca` |
| 10 | `lemma` | [primitiveWeilLaplace_vertical_eq_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/VerticalStripDecay/Variant52944f06f1add15e64d4d1424efc92f4682a4e1ebc1f63ad32e9f3fef5546c71.lean/declarations/primitiveweillaplace-vertical-eq-integral--69a0eb7417d76df5d45d5d10.md) | 222 | `result-track:69a0eb7417d76df5d45d5d10c9ecc933ca48a3766c018153dd814117ce38c49b` |
| 11 | `lemma` | [integrable_iteratedDeriv_mul_verticalOscillation](../../../../../../mathematics/Analysis/RealAnalysis/Integration/VerticalStripDecay/Variant52944f06f1add15e64d4d1424efc92f4682a4e1ebc1f63ad32e9f3fef5546c71.lean/declarations/integrable-iteratedderiv-mul-verticaloscillation--0dd99988bcc0a53914ad8f71.md) | 241 | `result-track:0dd99988bcc0a53914ad8f71cbbec2006e541dfa627bcdd81d7ca78a70d83751` |
| 12 | `lemma` | [verticalOscillation_mul_iteratedDeriv_integral_succ](../../../../../../mathematics/Analysis/RealAnalysis/Integration/VerticalStripDecay/Variant52944f06f1add15e64d4d1424efc92f4682a4e1ebc1f63ad32e9f3fef5546c71.lean/declarations/verticaloscillation-mul-iteratedderiv-integral-succ--4fd043339b77d35978dbbd12.md) | 268 | `result-track:4fd043339b77d35978dbbd1212664025cfeda0022e189eac0c1d6f027d3c62f2` |
| 13 | `lemma` | [primitiveWeilLaplace_vertical_moment_identity](../../../../../../mathematics/Analysis/RealAnalysis/Integration/VerticalStripDecay/Variant52944f06f1add15e64d4d1424efc92f4682a4e1ebc1f63ad32e9f3fef5546c71.lean/declarations/primitiveweillaplace-vertical-moment-identity--967cd817dbf3ec11ed7b29d3.md) | 338 | `result-track:967cd817dbf3ec11ed7b29d3d2842cb9a90cfaf693ae6c049badafb06556bb24` |
| 14 | `theorem` | [primitiveWeilLaplace_vertical_pow_bound_uniform](../../../../../../mathematics/Analysis/RealAnalysis/Integration/VerticalStripDecay/Variant52944f06f1add15e64d4d1424efc92f4682a4e1ebc1f63ad32e9f3fef5546c71.lean/declarations/primitiveweillaplace-vertical-pow-bound-uniform--2527f025adb3ae48e6306569.md) | 387 | `result-track:2527f025adb3ae48e6306569af4039532ecbd3d70754549515e3d0d25ca5209e` |
| 15 | `theorem` | [primitiveWeilLaplace_decay_realStrip](../../../../../../mathematics/Analysis/RealAnalysis/Integration/VerticalStripDecay/Variant52944f06f1add15e64d4d1424efc92f4682a4e1ebc1f63ad32e9f3fef5546c71.lean/declarations/primitiveweillaplace-decay-realstrip--ca5ed2dc626a9d73ae6601aa.md) | 441 | `result-track:ca5ed2dc626a9d73ae6601aa0ce17e80e0bbf72c5780e8af21ba92cea5469deb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
