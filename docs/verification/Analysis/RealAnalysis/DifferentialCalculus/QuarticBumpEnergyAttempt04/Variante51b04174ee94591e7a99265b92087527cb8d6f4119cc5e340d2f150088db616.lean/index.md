# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.QuarticBumpEnergyAttempt04.Variante51b04174ee94591e7a99265b92087527cb8d6f4119cc5e340d2f150088db616

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "702140f7f263b75b4e6c284738544a617f308924",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt04/Variante51b04174ee94591e7a99265b92087527cb8d6f4119cc5e340d2f150088db616.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt04/Variante51b04174ee94591e7a99265b92087527cb8d6f4119cc5e340d2f150088db616.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt04/Variante51b04174ee94591e7a99265b92087527cb8d6f4119cc5e340d2f150088db616.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `702140f7f263b75b4e6c284738544a617f308924`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt04/Variante51b04174ee94591e7a99265b92087527cb8d6f4119cc5e340d2f150088db616.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt04/Variante51b04174ee94591e7a99265b92087527cb8d6f4119cc5e340d2f150088db616.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `QuarticBumpODE` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [rayValue](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt04/Variante51b04174ee94591e7a99265b92087527cb8d6f4119cc5e340d2f150088db616.lean/declarations/rayvalue--ac5cc979d20b5df2fc98d94c.md) | 20 | `declaration-track:ac5cc979d20b5df2fc98d94cd03cea736deb6249ea59181a300afb261499f8df` |
| 2 | `def` | [raySlope](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt04/Variante51b04174ee94591e7a99265b92087527cb8d6f4119cc5e340d2f150088db616.lean/declarations/rayslope--da272368f273cfe19286b4bd.md) | 21 | `declaration-track:da272368f273cfe19286b4bd0ac8e3f44daaca765c188f1d53efce78515a8441` |
| 3 | `def` | [weightedMass](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt04/Variante51b04174ee94591e7a99265b92087527cb8d6f4119cc5e340d2f150088db616.lean/declarations/weightedmass--0695bc84bea73a9c465539ff.md) | 22 | `declaration-track:0695bc84bea73a9c465539ff8b381566459e26d9cbd5aec020b5888304359f10` |
| 4 | `def` | [weightedEnergy](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt04/Variante51b04174ee94591e7a99265b92087527cb8d6f4119cc5e340d2f150088db616.lean/declarations/weightedenergy--28216e36185c94f41c983188.md) | 23 | `declaration-track:28216e36185c94f41c983188f17b1f05350973b85be2369fcdfa8a247db8f693` |
| 5 | `theorem` | [rayValue_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt04/Variante51b04174ee94591e7a99265b92087527cb8d6f4119cc5e340d2f150088db616.lean/declarations/rayvalue-hasderivat--de8880e997354727dd8c1e53.md) | 25 | `result-track:de8880e997354727dd8c1e531a3b3da3926a6a2ce7c2e979de985bc8846c4d2d` |
| 6 | `theorem` | [raySlope_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt04/Variante51b04174ee94591e7a99265b92087527cb8d6f4119cc5e340d2f150088db616.lean/declarations/rayslope-hasderivat--0fe3057ff45142784f34ee47.md) | 33 | `result-track:0fe3057ff45142784f34ee475be082b898c5dcd17cf6d3555981c746f11e6aff` |
| 7 | `theorem` | [rayValue_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt04/Variante51b04174ee94591e7a99265b92087527cb8d6f4119cc5e340d2f150088db616.lean/declarations/rayvalue-continuous--81f5d412350bdab0768f675c.md) | 41 | `result-track:81f5d412350bdab0768f675cc789e2ed449f783d17cc44504240cad938578ebd` |
| 8 | `theorem` | [raySlope_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt04/Variante51b04174ee94591e7a99265b92087527cb8d6f4119cc5e340d2f150088db616.lean/declarations/rayslope-continuous--f9ae9c6d762a986534980870.md) | 44 | `result-track:f9ae9c6d762a986534980870667975cf055d9dcbaf858bbea478737e734d5fcd` |
| 9 | `theorem` | [weightedRay_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt04/Variante51b04174ee94591e7a99265b92087527cb8d6f4119cc5e340d2f150088db616.lean/declarations/weightedray-hasderivat--2d9953446ced25b68d3cabb4.md) | 47 | `result-track:2d9953446ced25b68d3cabb47584e974589a6f63e1ce4c69cf0f1eb5e1516fa6` |
| 10 | `theorem` | [conjugateRay_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt04/Variante51b04174ee94591e7a99265b92087527cb8d6f4119cc5e340d2f150088db616.lean/declarations/conjugateray-hasderivat--a1947727ec16ae77c0323714.md) | 59 | `result-track:a1947727ec16ae77c0323714c023b06ba2dc630364bdcfb630d2b260cf4b64eb` |
| 11 | `theorem` | [mass_integrand_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt04/Variante51b04174ee94591e7a99265b92087527cb8d6f4119cc5e340d2f150088db616.lean/declarations/mass-integrand-continuous--6edfa6ae3da53742799b48f7.md) | 63 | `result-track:6edfa6ae3da53742799b48f7cd29aa81896950cbbea705591a82589b805d051b` |
| 12 | `theorem` | [energy_integrand_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt04/Variante51b04174ee94591e7a99265b92087527cb8d6f4119cc5e340d2f150088db616.lean/declarations/energy-integrand-continuous--14115b98d4d6e6c89373fbd4.md) | 67 | `result-track:14115b98d4d6e6c89373fbd402c192c32ec7c17dcbd2b084f034ca57e5f56c48` |
| 13 | `theorem` | [weightedEnergy_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt04/Variante51b04174ee94591e7a99265b92087527cb8d6f4119cc5e340d2f150088db616.lean/declarations/weightedenergy-nonneg--fd2e56fa58ec79b30c70b0a9.md) | 71 | `result-track:fd2e56fa58ec79b30c70b0a9af44a5ce1592a2fb4b0972f0f8b324bbccbaa556` |
| 14 | `theorem` | [rayValue_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt04/Variante51b04174ee94591e7a99265b92087527cb8d6f4119cc5e340d2f150088db616.lean/declarations/rayvalue-zero--3b56b26bb87abbadc1f653f7.md) | 75 | `result-track:3b56b26bb87abbadc1f653f7271cd21c920737d9c50335bd6727ff076abbae39` |
| 15 | `theorem` | [weightedMass_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt04/Variante51b04174ee94591e7a99265b92087527cb8d6f4119cc5e340d2f150088db616.lean/declarations/weightedmass-pos--ed2e38ec350a5e676f68f189.md) | 78 | `result-track:ed2e38ec350a5e676f68f1894ae97466787bc435175019ce47c33fe5c79d5b19` |
| 16 | `theorem` | [weighted_energy_identity](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt04/Variante51b04174ee94591e7a99265b92087527cb8d6f4119cc5e340d2f150088db616.lean/declarations/weighted-energy-identity--0919fe8684d64fb1b28c9f36.md) | 93 | `result-track:0919fe8684d64fb1b28c9f36cc96183a4cd53c28650374fbfaa7446eccf52672` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
