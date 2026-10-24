# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripParabolicConfinement

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b52f83f3b897a39405521edeb248312be5d6e764",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripParabolicConfinement.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripParabolicConfinement.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripParabolicConfinement.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b52f83f3b897a39405521edeb248312be5d6e764`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripParabolicConfinement.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CriticalStripParabolicConfinement.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripOneThirdSeed`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripOneThirdSeed.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [unitHomotopy](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripParabolicConfinement.lean/declarations/unithomotopy--0788ee1987397ec446635a43.md) | 30 | `declaration-track:0788ee1987397ec446635a439b52c53bb40a0a3f82bc4b3f515145cb2ea2b682` |
| 2 | `theorem` | [unitHomotopy_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripParabolicConfinement.lean/declarations/unithomotopy-zero--697c7a2615bb60aff01dcbbd.md) | 33 | `result-track:697c7a2615bb60aff01dcbbd76c445103172238219f79a1efb9957497e05684e` |
| 3 | `theorem` | [unitHomotopy_one](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripParabolicConfinement.lean/declarations/unithomotopy-one--5f825a955732d59605ffe7c2.md) | 36 | `result-track:5f825a955732d59605ffe7c23a10b831958196168e24c44c7b298080b189e2d3` |
| 4 | `theorem` | [unitHomotopy_continuous](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripParabolicConfinement.lean/declarations/unithomotopy-continuous--8eb0f1a2e8c7508d6d82da68.md) | 41 | `result-track:8eb0f1a2e8c7508d6d82da68430a103d5f536cd7209e5a439e5d86628fdc871a` |
| 5 | `theorem` | [unitHomotopy_differentiableAt](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripParabolicConfinement.lean/declarations/unithomotopy-differentiableat--c3b7b933f34e3ff101c239dd.md) | 46 | `result-track:c3b7b933f34e3ff101c239dd6784774915bd92b1758b889ec728fd774dd71eff` |
| 6 | `theorem` | [unitHomotopy_norm_lower](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripParabolicConfinement.lean/declarations/unithomotopy-norm-lower--66825763edda1388afca8a8f.md) | 56 | `result-track:66825763edda1388afca8a8fd80195c209f11f55a56670babcd7a7b1f367ed9e` |
| 7 | `theorem` | [unitHomotopy_nonzero](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripParabolicConfinement.lean/declarations/unithomotopy-nonzero--3e00b0e355b37d163957d0fd.md) | 83 | `result-track:3e00b0e355b37d163957d0fd224627e3095608fc756e6ffe9affa58858e21a35` |
| 8 | `theorem` | [poleNormalized_norm_lower_of_factor](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripParabolicConfinement.lean/declarations/polenormalized-norm-lower-of-factor--0603bf1ff261b4dfbec13461.md) | 94 | `result-track:0603bf1ff261b4dfbec134612ec53215c070189e16428f0c19470986949361ad` |
| 9 | `lemma` | [factor_norm_sq](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripParabolicConfinement.lean/declarations/factor-norm-sq--b40e1f6d11b4ea7a9b5c4d5a.md) | 111 | `result-track:b40e1f6d11b4ea7a9b5c4d5a3d1083cbb53b34f803604d871c5dc753341f1c69` |
| 10 | `theorem` | [factor_lt_re_iff](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripParabolicConfinement.lean/declarations/factor-lt-re-iff--82c867391d9d406393cd957b.md) | 118 | `result-track:82c867391d9d406393cd957b1552e095bd555d1f1bbe3f9a3d49b46d5e776d72` |
| 11 | `theorem` | [poleNormalized_nonzero_of_parabolic](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripParabolicConfinement.lean/declarations/polenormalized-nonzero-of-parabolic--05e782e3544c5c241c801c4d.md) | 124 | `result-track:05e782e3544c5c241c801c4d8010691e6ae0b582cba5df5eda10dd44da5244bf` |
| 12 | `theorem` | [inverseUnit_differentiableAt](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripParabolicConfinement.lean/declarations/inverseunit-differentiableat--b89b241fc305a91bb4dffa66.md) | 133 | `result-track:b89b241fc305a91bb4dffa66a4cb1d141724e5c680dc68d271ba5cd2a5077c40` |
| 13 | `theorem` | [target_right_parabolic](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripParabolicConfinement.lean/declarations/target-right-parabolic--74360f66e93d47d7028c92c7.md) | 141 | `result-track:74360f66e93d47d7028c92c736413ec4c5d36c1ddb7e979b6ffb136894f312da` |
| 14 | `theorem` | [target_parabolic_confinement](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripParabolicConfinement.lean/declarations/target-parabolic-confinement--6cd53443acd18890a5ba36cf.md) | 148 | `result-track:6cd53443acd18890a5ba36cf24c85d29231a04c1a39be3e74b860afd232ee93e` |
| 15 | `theorem` | [parabolic_condition_does_not_force_line](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripParabolicConfinement.lean/declarations/parabolic-condition-does-not-force-line--b0492ba603c7f46e6b7c1421.md) | 159 | `result-track:b0492ba603c7f46e6b7c14210d7a4e741581e6e897a2542a51c146ff1abe1c05` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
