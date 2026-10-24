# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.ThetaPositiveLift.Variant53e870963e1e1015af307c18a0bd838cc3ae38cc19bb5509ea70c19e6cac634f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "85acd9d7614dc4e41554850f09947393bc166351",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant53e870963e1e1015af307c18a0bd838cc3ae38cc19bb5509ea70c19e6cac634f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant53e870963e1e1015af307c18a0bd838cc3ae38cc19bb5509ea70c19e6cac634f.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant53e870963e1e1015af307c18a0bd838cc3ae38cc19bb5509ea70c19e6cac634f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `85acd9d7614dc4e41554850f09947393bc166351`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant53e870963e1e1015af307c18a0bd838cc3ae38cc19bb5509ea70c19e6cac634f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant53e870963e1e1015af307c18a0bd838cc3ae38cc19bb5509ea70c19e6cac634f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ThetaKernel` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner.Set` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Prod` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [stronglyMeasurable_thetaTail](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant53e870963e1e1015af307c18a0bd838cc3ae38cc19bb5509ea70c19e6cac634f.lean/declarations/stronglymeasurable-thetatail--51dd83f5facd071b7417d487.md) | 22 | `result-track:51dd83f5facd071b7417d487e48a6e9a0e42402d3cbab64581bb136c4318ba89` |
| 2 | `theorem` | [thetaTail_integrand_nonnegative](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant53e870963e1e1015af307c18a0bd838cc3ae38cc19bb5509ea70c19e6cac634f.lean/declarations/thetatail-integrand-nonnegative--1d7da921a7155bd74623f4a8.md) | 40 | `result-track:1d7da921a7155bd74623f4a89436db135d39ed0a20aec2f157fc9a7c3c2a8370` |
| 3 | `theorem` | [thetaTail_nonnegative](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant53e870963e1e1015af307c18a0bd838cc3ae38cc19bb5509ea70c19e6cac634f.lean/declarations/thetatail-nonnegative--2364e88d60f01ecd809f571b.md) | 48 | `result-track:2364e88d60f01ecd809f571bdddb7408cc83d5ec5ac60a7221f9f864313365cf` |
| 4 | `theorem` | [thetaTail_integrand_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant53e870963e1e1015af307c18a0bd838cc3ae38cc19bb5509ea70c19e6cac634f.lean/declarations/thetatail-integrand-le--4a3f30390a09df90ff1744b6.md) | 57 | `result-track:4a3f30390a09df90ff1744b664c66a9d566f13f53c67b50afe96278f2025b7f7` |
| 5 | `theorem` | [thetaTail_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant53e870963e1e1015af307c18a0bd838cc3ae38cc19bb5509ea70c19e6cac634f.lean/declarations/thetatail-integrable--8c22859bdecf3e585d4b591b.md) | 74 | `result-track:8c22859bdecf3e585d4b591b14adaa754b30ea9a61d6ec37fbbc6b91e88887c4` |
| 6 | `theorem` | [thetaTail_positive](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant53e870963e1e1015af307c18a0bd838cc3ae38cc19bb5509ea70c19e6cac634f.lean/declarations/thetatail-positive--5e7d643d2cae3caab34ef9f1.md) | 88 | `result-track:5e7d643d2cae3caab34ef9f1b61c0d55c366d76514813dab9bf2444813f016a5` |
| 7 | `theorem` | [thetaTail_le_exp_neg_three_mul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant53e870963e1e1015af307c18a0bd838cc3ae38cc19bb5509ea70c19e6cac634f.lean/declarations/thetatail-le-exp-neg-three-mul--1e26a27f7c3b57dab069dbcf.md) | 105 | `result-track:1e26a27f7c3b57dab069dbcf4e498064d5bedb7b32876a6f48b0a21b8c857aff` |
| 8 | `theorem` | [thetaTail_tendsto_atTop](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant53e870963e1e1015af307c18a0bd838cc3ae38cc19bb5509ea70c19e6cac634f.lean/declarations/thetatail-tendsto-attop--e00c69c0f163d7d68918e8fd.md) | 126 | `result-track:e00c69c0f163d7d68918e8fd31cce4ce3b90419c63bf9877d1843c8f7e58f27c` |
| 9 | `theorem` | [thetaTail_integrableOn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant53e870963e1e1015af307c18a0bd838cc3ae38cc19bb5509ea70c19e6cac634f.lean/declarations/thetatail-integrableon--4a24fe6a991cae57c0a04d3b.md) | 139 | `result-track:4a24fe6a991cae57c0a04d3b24d33aa64b42b7a640e23da1887134c2456192bb` |
| 10 | `theorem` | [thetaTail_mul_evenBasis_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant53e870963e1e1015af307c18a0bd838cc3ae38cc19bb5509ea70c19e6cac634f.lean/declarations/thetatail-mul-evenbasis-le--4cd44990ab62982572348814.md) | 149 | `result-track:4cd44990ab62982572348814af99817396ce2183bf09c194017566410aa269cc` |
| 11 | `theorem` | [thetaTail_mul_evenBasis_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant53e870963e1e1015af307c18a0bd838cc3ae38cc19bb5509ea70c19e6cac634f.lean/declarations/thetatail-mul-evenbasis-integrable--9753d186b4e97b48a15ca6ba.md) | 160 | `result-track:9753d186b4e97b48a15ca6ba413467ad3cb250fa98914ab90b1c5da1e2c1936c` |
| 12 | `theorem` | [thetaTail_mul_evenBasis_tendsto_atTop](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant53e870963e1e1015af307c18a0bd838cc3ae38cc19bb5509ea70c19e6cac634f.lean/declarations/thetatail-mul-evenbasis-tendsto-attop--347cdbf83be66af76b392edd.md) | 174 | `result-track:347cdbf83be66af76b392eddf95ed8c4b8b3389a11bc28128b8dbabf63a06248` |
| 13 | `theorem` | [thetaPhi_integrableOn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant53e870963e1e1015af307c18a0bd838cc3ae38cc19bb5509ea70c19e6cac634f.lean/declarations/thetaphi-integrableon--f14ac26e4f32424116dcc581.md) | 185 | `result-track:f14ac26e4f32424116dcc58169b73005da8b639b4beaf1eaa13ede377b2a00d3` |
| 14 | `theorem` | [thetaPhi_integrableOn_Ici](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant53e870963e1e1015af307c18a0bd838cc3ae38cc19bb5509ea70c19e6cac634f.lean/declarations/thetaphi-integrableon-ici--d46c15e55959ed55a1a0a4a9.md) | 189 | `result-track:d46c15e55959ed55a1a0a4a973cfbcfa3a2b1cdfc4c0b09ba7a9d0c232da9eed` |
| 15 | `theorem` | [thetaPhi_mul_evenBasis_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant53e870963e1e1015af307c18a0bd838cc3ae38cc19bb5509ea70c19e6cac634f.lean/declarations/thetaphi-mul-evenbasis-integrable--b97e0c0a48fa54dc070da7a2.md) | 200 | `result-track:b97e0c0a48fa54dc070da7a253fd1dfda4aa0d29de56d7e7694dc68750326fce` |
| 16 | `theorem` | [thetaPhi_mul_evenBasis_integral_positive](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant53e870963e1e1015af307c18a0bd838cc3ae38cc19bb5509ea70c19e6cac634f.lean/declarations/thetaphi-mul-evenbasis-integral-positive--4647de2ba21a5f864e5cf8e6.md) | 219 | `result-track:4647de2ba21a5f864e5cf8e617db95c6d74efb5d02387eb2f24198a42168cf3e` |
| 17 | `theorem` | [coefficient_positive_of_thetaCoefficientFormula](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant53e870963e1e1015af307c18a0bd838cc3ae38cc19bb5509ea70c19e6cac634f.lean/declarations/coefficient-positive-of-thetacoefficientformula--1bd00d37544f0942c98f520b.md) | 237 | `result-track:1bd00d37544f0942c98f520b799a38a6ddc5abd447293b3ec2b7a99709449c6e` |
| 18 | `theorem` | [thetaTail_one_eq_sub](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant53e870963e1e1015af307c18a0bd838cc3ae38cc19bb5509ea70c19e6cac634f.lean/declarations/thetatail-one-eq-sub--8bb1ad9ca4421ce9a044f895.md) | 243 | `result-track:8bb1ad9ca4421ce9a044f895de381aaa4729136722c4e8dc2b8208dc0481f469` |
| 19 | `theorem` | [hasDerivAt_thetaTail_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant53e870963e1e1015af307c18a0bd838cc3ae38cc19bb5509ea70c19e6cac634f.lean/declarations/hasderivat-thetatail-one--49792ab90d6ce121119b66eb.md) | 251 | `result-track:49792ab90d6ce121119b66eb9caec4e3a03c02095832affd69364b0661c1d2e9` |
| 20 | `theorem` | [thetaTail_one_tendsto_atTop](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant53e870963e1e1015af307c18a0bd838cc3ae38cc19bb5509ea70c19e6cac634f.lean/declarations/thetatail-one-tendsto-attop--ed8f032cfb0339a3bea18700.md) | 262 | `result-track:ed8f032cfb0339a3bea18700cb163b7735e2a03090180cc89fde5ff14b7f118e` |
| 21 | `theorem` | [thetaTailSignRegular_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant53e870963e1e1015af307c18a0bd838cc3ae38cc19bb5509ea70c19e6cac634f.lean/declarations/thetatailsignregular-zero--6ad5900bce21b8b427ebdbe5.md) | 268 | `result-track:6ad5900bce21b8b427ebdbe539a3085350e6d9a7032dcb4222591237cc81a861` |
| 22 | `theorem` | [thetaTailSignRegular_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant53e870963e1e1015af307c18a0bd838cc3ae38cc19bb5509ea70c19e6cac634f.lean/declarations/thetatailsignregular-one--87dc816c66319662c1a2bcd3.md) | 275 | `result-track:87dc816c66319662c1a2bcd34f9bee4a9e729b43bc964c6fb01036818cf8f78c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
