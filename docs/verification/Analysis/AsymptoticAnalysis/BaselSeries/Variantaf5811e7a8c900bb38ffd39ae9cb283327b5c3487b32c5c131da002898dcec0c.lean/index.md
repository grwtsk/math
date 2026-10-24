# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.BaselSeries.Variantaf5811e7a8c900bb38ffd39ae9cb283327b5c3487b32c5c131da002898dcec0c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2d4c888500af9ef2101af3751c7512f23c01ea58",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/BaselSeries/Variantaf5811e7a8c900bb38ffd39ae9cb283327b5c3487b32c5c131da002898dcec0c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/BaselSeries/Variantaf5811e7a8c900bb38ffd39ae9cb283327b5c3487b32c5c131da002898dcec0c.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/BaselSeries/Variantaf5811e7a8c900bb38ffd39ae9cb283327b5c3487b32c5c131da002898dcec0c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2d4c888500af9ef2101af3751c7512f23c01ea58`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/BaselSeries/Variantaf5811e7a8c900bb38ffd39ae9cb283327b5c3487b32c5c131da002898dcec0c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/BaselSeries/Variantaf5811e7a8c900bb38ffd39ae9cb283327b5c3487b32c5c131da002898dcec0c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `AnalyticNumber.Mathlib.Certificate` — import line 6; external provider; requires a separately pinned dependency.
- `AnalyticNumber.Mathlib.IntervalArithmetic` — import line 7; external provider; requires a separately pinned dependency.
- `AnalyticNumber.Zeta` — import line 8; external provider; requires a separately pinned dependency.
- `Number.NumericalEstimate` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [baselTerm](../../../../../mathematics/Analysis/AsymptoticAnalysis/BaselSeries/Variantaf5811e7a8c900bb38ffd39ae9cb283327b5c3487b32c5c131da002898dcec0c.lean/declarations/baselterm--ab9a4d181afd946fbe883abf.md) | 49 | `declaration-track:ab9a4d181afd946fbe883abf8db5888c364ea6d0d6443272ed7fe4d71d44f8d0` |
| 2 | `theorem` | [basel_term_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/BaselSeries/Variantaf5811e7a8c900bb38ffd39ae9cb283327b5c3487b32c5c131da002898dcec0c.lean/declarations/basel-term-nonneg--03bd7c42fdf78d531cf311ce.md) | 53 | `result-track:03bd7c42fdf78d531cf311ce7c96890b03b5a8ef4778ab68e02e5e22fd7bcddb` |
| 3 | `theorem` | [basel_hasSum_pi_sq_div_six](../../../../../mathematics/Analysis/AsymptoticAnalysis/BaselSeries/Variantaf5811e7a8c900bb38ffd39ae9cb283327b5c3487b32c5c131da002898dcec0c.lean/declarations/basel-hassum-pi-sq-div-six--706aba0eaa754d9b6e1f7f8f.md) | 58 | `result-track:706aba0eaa754d9b6e1f7f8fa0d847184ef3f2ee210a40e4719464d5547703bc` |
| 4 | `theorem` | [basel_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/BaselSeries/Variantaf5811e7a8c900bb38ffd39ae9cb283327b5c3487b32c5c131da002898dcec0c.lean/declarations/basel-summable--759c32cc6213aebf5b9c6770.md) | 73 | `result-track:759c32cc6213aebf5b9c6770329a4fd65c8167562f9f4acf7833ecb869a1fa85` |
| 5 | `def` | [baselPartialSum](../../../../../mathematics/Analysis/AsymptoticAnalysis/BaselSeries/Variantaf5811e7a8c900bb38ffd39ae9cb283327b5c3487b32c5c131da002898dcec0c.lean/declarations/baselpartialsum--d260c9b68f448d4d4558317e.md) | 77 | `declaration-track:d260c9b68f448d4d4558317ed646cc4cf6b9566bb59f263ef3e1b75c65e78cf7` |
| 6 | `theorem` | [basel_partial_sum_10_eq](../../../../../mathematics/Analysis/AsymptoticAnalysis/BaselSeries/Variantaf5811e7a8c900bb38ffd39ae9cb283327b5c3487b32c5c131da002898dcec0c.lean/declarations/basel-partial-sum-10-eq--fc8a267056d485465afc8203.md) | 81 | `result-track:fc8a267056d485465afc820389ec8b9d2529e8be35cf85b08460318ef6112bd0` |
| 7 | `theorem` | [basel_partial_sum_real_eq](../../../../../mathematics/Analysis/AsymptoticAnalysis/BaselSeries/Variantaf5811e7a8c900bb38ffd39ae9cb283327b5c3487b32c5c131da002898dcec0c.lean/declarations/basel-partial-sum-real-eq--6e5a75a1d5c086ddc91a0d35.md) | 86 | `result-track:6e5a75a1d5c086ddc91a0d356ccf0dad6878d721c9dd59127b613e0818dc814d` |
| 8 | `theorem` | [basel_partial_sum_10_real_eq](../../../../../mathematics/Analysis/AsymptoticAnalysis/BaselSeries/Variantaf5811e7a8c900bb38ffd39ae9cb283327b5c3487b32c5c131da002898dcec0c.lean/declarations/basel-partial-sum-10-real-eq--1fd40dc8fe8ef0e3c1e2973c.md) | 95 | `result-track:1fd40dc8fe8ef0e3c1e2973cc104e514b37f41e0b75aee12f1d8b8d51f251be1` |
| 9 | `theorem` | [basel_split_10](../../../../../mathematics/Analysis/AsymptoticAnalysis/BaselSeries/Variantaf5811e7a8c900bb38ffd39ae9cb283327b5c3487b32c5c131da002898dcec0c.lean/declarations/basel-split-10--3abc49682c2a61e3ead1aa01.md) | 101 | `result-track:3abc49682c2a61e3ead1aa01982bb618d4e38b54aab3a6f398ffe54969b6c0a8` |
| 10 | `theorem` | [basel_tail_term_le_telescoping](../../../../../mathematics/Analysis/AsymptoticAnalysis/BaselSeries/Variantaf5811e7a8c900bb38ffd39ae9cb283327b5c3487b32c5c131da002898dcec0c.lean/declarations/basel-tail-term-le-telescoping--1f8d1f599f04db3f92239f55.md) | 110 | `result-track:1f8d1f599f04db3f92239f554ab74c0292f028768c307a56074b4f31fb25b5dd` |
| 11 | `theorem` | [basel_telescoping_sum](../../../../../mathematics/Analysis/AsymptoticAnalysis/BaselSeries/Variantaf5811e7a8c900bb38ffd39ae9cb283327b5c3487b32c5c131da002898dcec0c.lean/declarations/basel-telescoping-sum--69dd06133d18c605893e4920.md) | 134 | `result-track:69dd06133d18c605893e4920108f74cd6d69ffc73db384b1e98bc674f681a5ee` |
| 12 | `theorem` | [basel_tail_bound_10_telescoping](../../../../../mathematics/Analysis/AsymptoticAnalysis/BaselSeries/Variantaf5811e7a8c900bb38ffd39ae9cb283327b5c3487b32c5c131da002898dcec0c.lean/declarations/basel-tail-bound-10-telescoping--fabc002c6b818964b685097d.md) | 148 | `result-track:fabc002c6b818964b685097d64c664e5f809c8b2ac12811fb56a4c22418cb048` |
| 13 | `theorem` | [basel_tail_bound_10](../../../../../mathematics/Analysis/AsymptoticAnalysis/BaselSeries/Variantaf5811e7a8c900bb38ffd39ae9cb283327b5c3487b32c5c131da002898dcec0c.lean/declarations/basel-tail-bound-10--2ca9baeb43c854701d34f30f.md) | 163 | `result-track:2ca9baeb43c854701d34f30f4664e9a51237029d8d7ca561caa7e29eda23ce53` |
| 14 | `theorem` | [basel_tsum_lower_bound_10](../../../../../mathematics/Analysis/AsymptoticAnalysis/BaselSeries/Variantaf5811e7a8c900bb38ffd39ae9cb283327b5c3487b32c5c131da002898dcec0c.lean/declarations/basel-tsum-lower-bound-10--8fdc1316705bf1da41b4b191.md) | 169 | `result-track:8fdc1316705bf1da41b4b19160708275dee431917c895fbac6b6df7d54608ca9` |
| 15 | `theorem` | [basel_tsum_upper_bound_10](../../../../../mathematics/Analysis/AsymptoticAnalysis/BaselSeries/Variantaf5811e7a8c900bb38ffd39ae9cb283327b5c3487b32c5c131da002898dcec0c.lean/declarations/basel-tsum-upper-bound-10--0795941ba58f1aae88ccc75e.md) | 178 | `result-track:0795941ba58f1aae88ccc75ea0328328c5a115d83838cf1ad7461783ebd6ffc3` |
| 16 | `theorem` | [basel_interval_enclosure_10](../../../../../mathematics/Analysis/AsymptoticAnalysis/BaselSeries/Variantaf5811e7a8c900bb38ffd39ae9cb283327b5c3487b32c5c131da002898dcec0c.lean/declarations/basel-interval-enclosure-10--5a712f1a103f01bd05381811.md) | 186 | `result-track:5a712f1a103f01bd05381811681db9a4f186dc7aac2e928fc5947ec7c7935856` |
| 17 | `def` | [baselEndpointLower](../../../../../mathematics/Analysis/AsymptoticAnalysis/BaselSeries/Variantaf5811e7a8c900bb38ffd39ae9cb283327b5c3487b32c5c131da002898dcec0c.lean/declarations/baselendpointlower--7792927019c87bfaa73cae9e.md) | 200 | `declaration-track:7792927019c87bfaa73cae9e1f69653dd241cfe9f5367ad86dacadaa3c6ce200` |
| 18 | `def` | [baselEndpointUpper](../../../../../mathematics/Analysis/AsymptoticAnalysis/BaselSeries/Variantaf5811e7a8c900bb38ffd39ae9cb283327b5c3487b32c5c131da002898dcec0c.lean/declarations/baselendpointupper--a83c5cc88a006ba987af0508.md) | 206 | `declaration-track:a83c5cc88a006ba987af0508ad1b19c6c9cb13f68980174306019001fdd4f4a8` |
| 19 | `def` | [baselFiniteInterval](../../../../../mathematics/Analysis/AsymptoticAnalysis/BaselSeries/Variantaf5811e7a8c900bb38ffd39ae9cb283327b5c3487b32c5c131da002898dcec0c.lean/declarations/baselfiniteinterval--68245213fafcff614512fbcd.md) | 212 | `declaration-track:68245213fafcff614512fbcda84be96e19fea35120ea7f3098af61060b54e10c` |
| 20 | `def` | [baselFiniteDomain](../../../../../mathematics/Analysis/AsymptoticAnalysis/BaselSeries/Variantaf5811e7a8c900bb38ffd39ae9cb283327b5c3487b32c5c131da002898dcec0c.lean/declarations/baselfinitedomain--41eb26430be65e94302ed14e.md) | 220 | `declaration-track:41eb26430be65e94302ed14e7526d7f94edc72867ac0e007efa0958455c1941e` |
| 21 | `def` | [baselPrecision](../../../../../mathematics/Analysis/AsymptoticAnalysis/BaselSeries/Variantaf5811e7a8c900bb38ffd39ae9cb283327b5c3487b32c5c131da002898dcec0c.lean/declarations/baselprecision--f1ed8bd2bc142d56dd6c18c7.md) | 228 | `declaration-track:f1ed8bd2bc142d56dd6c18c73bf5738abb74c31291c50e4a41dc9682bd6c8b48` |
| 22 | `def` | [baselAlgorithm](../../../../../mathematics/Analysis/AsymptoticAnalysis/BaselSeries/Variantaf5811e7a8c900bb38ffd39ae9cb283327b5c3487b32c5c131da002898dcec0c.lean/declarations/baselalgorithm--47726f4dc9ac6f86ac462934.md) | 238 | `declaration-track:47726f4dc9ac6f86ac4629342540f49c6552913f2294e3af918fba4a6fedaadf` |
| 23 | `def` | [baselErrorModel](../../../../../mathematics/Analysis/AsymptoticAnalysis/BaselSeries/Variantaf5811e7a8c900bb38ffd39ae9cb283327b5c3487b32c5c131da002898dcec0c.lean/declarations/baselerrormodel--453cbaca6f3a63164ac2624e.md) | 247 | `declaration-track:453cbaca6f3a63164ac2624e6f83cde02484ed27ed3af9010358d3e54cde8376` |
| 24 | `def` | [baselFinitePayload](../../../../../mathematics/Analysis/AsymptoticAnalysis/BaselSeries/Variantaf5811e7a8c900bb38ffd39ae9cb283327b5c3487b32c5c131da002898dcec0c.lean/declarations/baselfinitepayload--35a11363534d609cb1e0be3d.md) | 259 | `declaration-track:35a11363534d609cb1e0be3d3025519aa1b8e51906818a3387cf5a24b9a9c9e0` |
| 25 | `def` | [baselEstimateSymbol](../../../../../mathematics/Analysis/AsymptoticAnalysis/BaselSeries/Variantaf5811e7a8c900bb38ffd39ae9cb283327b5c3487b32c5c131da002898dcec0c.lean/declarations/baselestimatesymbol--eb54bce532e1752936caab42.md) | 287 | `declaration-track:eb54bce532e1752936caab423fa96b324b607029cb18816e3ae5c905b145256f` |
| 26 | `def` | [baselDomainSymbol](../../../../../mathematics/Analysis/AsymptoticAnalysis/BaselSeries/Variantaf5811e7a8c900bb38ffd39ae9cb283327b5c3487b32c5c131da002898dcec0c.lean/declarations/baseldomainsymbol--aa49c57e0a14aa9848363ec6.md) | 293 | `declaration-track:aa49c57e0a14aa9848363ec6636bbb79c892e743a387ccd00d36eb2044163500` |
| 27 | `def` | [baselPrecisionSymbol](../../../../../mathematics/Analysis/AsymptoticAnalysis/BaselSeries/Variantaf5811e7a8c900bb38ffd39ae9cb283327b5c3487b32c5c131da002898dcec0c.lean/declarations/baselprecisionsymbol--bcec2a841c4b6a0623dac8fe.md) | 298 | `declaration-track:bcec2a841c4b6a0623dac8fed65458338b1a61e3731622e638f0a05ecbf34f31` |
| 28 | `def` | [baselAlgorithmSymbol](../../../../../mathematics/Analysis/AsymptoticAnalysis/BaselSeries/Variantaf5811e7a8c900bb38ffd39ae9cb283327b5c3487b32c5c131da002898dcec0c.lean/declarations/baselalgorithmsymbol--d13f8d3ec7dfd40e948ef680.md) | 303 | `declaration-track:d13f8d3ec7dfd40e948ef680236940fc459eb5728cfd2312281fb2355afbe76e` |
| 29 | `def` | [baselErrorModelSymbol](../../../../../mathematics/Analysis/AsymptoticAnalysis/BaselSeries/Variantaf5811e7a8c900bb38ffd39ae9cb283327b5c3487b32c5c131da002898dcec0c.lean/declarations/baselerrormodelsymbol--ecca125086a84cfed875d418.md) | 308 | `declaration-track:ecca125086a84cfed875d4180c4e69cc5257ce113bc0b1f121ca71667be52cb3` |
| 30 | `def` | [baselNumericalSchema](../../../../../mathematics/Analysis/AsymptoticAnalysis/BaselSeries/Variantaf5811e7a8c900bb38ffd39ae9cb283327b5c3487b32c5c131da002898dcec0c.lean/declarations/baselnumericalschema--d3cba26264c84404add5b452.md) | 315 | `declaration-track:d3cba26264c84404add5b4529ade2f6f88c5943df81d14745e30d288fc0d0b1f` |
| 31 | `def` | [baselIntervalArithmeticAuthority](../../../../../mathematics/Analysis/AsymptoticAnalysis/BaselSeries/Variantaf5811e7a8c900bb38ffd39ae9cb283327b5c3487b32c5c131da002898dcec0c.lean/declarations/baselintervalarithmeticauthority--6ed4cc12edf0d62e0a9b8668.md) | 338 | `declaration-track:6ed4cc12edf0d62e0a9b8668a57f417c25055269710d4ce0605916bc34a8695a` |
| 32 | `def` | [baselContext](../../../../../mathematics/Analysis/AsymptoticAnalysis/BaselSeries/Variantaf5811e7a8c900bb38ffd39ae9cb283327b5c3487b32c5c131da002898dcec0c.lean/declarations/baselcontext--81553615d8d68c32d86d2d1c.md) | 349 | `declaration-track:81553615d8d68c32d86d2d1c70812052d448fd1aa283b1700ecb779e0ee410ae` |
| 33 | `def` | [baselClaim](../../../../../mathematics/Analysis/AsymptoticAnalysis/BaselSeries/Variantaf5811e7a8c900bb38ffd39ae9cb283327b5c3487b32c5c131da002898dcec0c.lean/declarations/baselclaim--d562bc7223a7218c8aad3aae.md) | 354 | `declaration-track:d562bc7223a7218c8aad3aae7f375660c6f761e303e702df7ca515f122f8187f` |
| 34 | `def` | [baselMathlibProofCertificate](../../../../../mathematics/Analysis/AsymptoticAnalysis/BaselSeries/Variantaf5811e7a8c900bb38ffd39ae9cb283327b5c3487b32c5c131da002898dcec0c.lean/declarations/baselmathlibproofcertificate--49fae86ddd8def92bf6f8429.md) | 366 | `declaration-track:49fae86ddd8def92bf6f8429015c61d87856cc95d9f5fe7cb24232cc5234e5f1` |
| 35 | `theorem` | [basel_case_study_through_boundary_calculus](../../../../../mathematics/Analysis/AsymptoticAnalysis/BaselSeries/Variantaf5811e7a8c900bb38ffd39ae9cb283327b5c3487b32c5c131da002898dcec0c.lean/declarations/basel-case-study-through-boundary-calculus--09a1d367f6cd6821a40d93ce.md) | 380 | `result-track:09a1d367f6cd6821a40d93ceff3b5275e5f8d6166d3ac7323321ba3ba3af6450` |
| 36 | `theorem` | [basel_finite_payload_not_analytic_authority](../../../../../mathematics/Analysis/AsymptoticAnalysis/BaselSeries/Variantaf5811e7a8c900bb38ffd39ae9cb283327b5c3487b32c5c131da002898dcec0c.lean/declarations/basel-finite-payload-not-analytic-authority--9edaf92ce2fd1d3de1cdd5cb.md) | 390 | `result-track:9edaf92ce2fd1d3de1cdd5cb1e3bdbd2780bd9b05f9d2b20ae95cb03e5492676` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
