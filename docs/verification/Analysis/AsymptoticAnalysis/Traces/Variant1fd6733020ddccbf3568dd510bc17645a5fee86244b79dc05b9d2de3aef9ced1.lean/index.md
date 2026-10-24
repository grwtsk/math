# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.Traces.Variant1fd6733020ddccbf3568dd510bc17645a5fee86244b79dc05b9d2de3aef9ced1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2fcd6f6db026d97bd8254fdc7c05b9871d8c0b29",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Traces/Variant1fd6733020ddccbf3568dd510bc17645a5fee86244b79dc05b9d2de3aef9ced1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/Traces/Variant1fd6733020ddccbf3568dd510bc17645a5fee86244b79dc05b9d2de3aef9ced1.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/Traces/Variant1fd6733020ddccbf3568dd510bc17645a5fee86244b79dc05b9d2de3aef9ced1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2fcd6f6db026d97bd8254fdc7c05b9871d8c0b29`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Traces/Variant1fd6733020ddccbf3568dd510bc17645a5fee86244b79dc05b9d2de3aef9ced1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Traces/Variant1fd6733020ddccbf3568dd510bc17645a5fee86244b79dc05b9d2de3aef9ced1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.ThmD.AssemblyD` — import line 29; external provider; requires a separately pinned dependency.
- `Zeta23.PrimeSideB` — import line 30; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Asymptotics.AsymptoticEquivalent` — import line 31; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics` — import line 32; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Asymptotics.SpecificAsymptotics` — import line 33; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [JD](../../../../../mathematics/Analysis/AsymptoticAnalysis/Traces/Variant1fd6733020ddccbf3568dd510bc17645a5fee86244b79dc05b9d2de3aef9ced1.lean/declarations/jd--02a189e3a18be7d43b7e202e.md) | 52 | `declaration-track:02a189e3a18be7d43b7e202ef9ee060ee4080ad56824fe8542a08428fae4f0ca` |
| 2 | `def` | [mainTr2Xi](../../../../../mathematics/Analysis/AsymptoticAnalysis/Traces/Variant1fd6733020ddccbf3568dd510bc17645a5fee86244b79dc05b9d2de3aef9ced1.lean/declarations/maintr2xi--a9a617b30b4e1f0c86822e2a.md) | 55 | `declaration-track:a9a617b30b4e1f0c86822e2a1a55ad30ba35e80e440d5dc313f7a0036a9a905c` |
| 3 | `structure` | [TracesBoundsXi](../../../../../mathematics/Analysis/AsymptoticAnalysis/Traces/Variant1fd6733020ddccbf3568dd510bc17645a5fee86244b79dc05b9d2de3aef9ced1.lean/declarations/tracesboundsxi--a842a631c5051b4421143a1a.md) | 61 | `declaration-track:a842a631c5051b4421143a1acf1848ad7aaeceec7521c8e404fb1679bb97d6a3` |
| 4 | `lemma` | [isLittleO_of_le_mul](../../../../../mathematics/Analysis/AsymptoticAnalysis/Traces/Variant1fd6733020ddccbf3568dd510bc17645a5fee86244b79dc05b9d2de3aef9ced1.lean/declarations/islittleo-of-le-mul--c11c86df4b0b9d55897f2796.md) | 77 | `result-track:c11c86df4b0b9d55897f2796e3a040197f0295a766299944e23e966706f85fc5` |
| 5 | `lemma` | [evBound_isLittleO_of_le_mul](../../../../../mathematics/Analysis/AsymptoticAnalysis/Traces/Variant1fd6733020ddccbf3568dd510bc17645a5fee86244b79dc05b9d2de3aef9ced1.lean/declarations/evbound-islittleo-of-le-mul--b6adcdc5608c6d210b80a6c0.md) | 90 | `result-track:b6adcdc5608c6d210b80a6c0703556c5d953244ab66576eff8293a7ef0ca25d8` |
| 6 | `lemma` | [eventually_abs_sub_le_of_isEquivalent](../../../../../mathematics/Analysis/AsymptoticAnalysis/Traces/Variant1fd6733020ddccbf3568dd510bc17645a5fee86244b79dc05b9d2de3aef9ced1.lean/declarations/eventually-abs-sub-le-of-isequivalent--a1cdfcc3319356bba2bed9e9.md) | 100 | `result-track:a1cdfcc3319356bba2bed9e96faeac91700d64e96783498b7828ee2e61e4f3bf` |
| 7 | `lemma` | [tendsto_l_sq_mul_X_div](../../../../../mathematics/Analysis/AsymptoticAnalysis/Traces/Variant1fd6733020ddccbf3568dd510bc17645a5fee86244b79dc05b9d2de3aef9ced1.lean/declarations/tendsto-l-sq-mul-x-div--ddca29012b226ed0703f233e.md) | 113 | `result-track:ddca29012b226ed0703f233e70a077dafb3618f8ec0ecfebf333f05c93f3e4b4` |
| 8 | `lemma` | [tendsto_rpow_half_lam_sub_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/Traces/Variant1fd6733020ddccbf3568dd510bc17645a5fee86244b79dc05b9d2de3aef9ced1.lean/declarations/tendsto-rpow-half-lam-sub-one--727537cc70afac9ea5c182a6.md) | 150 | `result-track:727537cc70afac9ea5c182a68be3d2812ef3a4daf953080f8be86817e6fdc711` |
| 9 | `lemma` | [tendsto_inv_l_sq](../../../../../mathematics/Analysis/AsymptoticAnalysis/Traces/Variant1fd6733020ddccbf3568dd510bc17645a5fee86244b79dc05b9d2de3aef9ced1.lean/declarations/tendsto-inv-l-sq--8f4b2b0364bc89721d4bba7f.md) | 156 | `result-track:8f4b2b0364bc89721d4bba7f8a816894144992741c0be07e52efe7081f003b3d` |
| 10 | `lemma` | [tendsto_inv_T](../../../../../mathematics/Analysis/AsymptoticAnalysis/Traces/Variant1fd6733020ddccbf3568dd510bc17645a5fee86244b79dc05b9d2de3aef9ced1.lean/declarations/tendsto-inv-t--2e29f1ee7b5ce760a5a6f634.md) | 160 | `result-track:2e29f1ee7b5ce760a5a6f634df3a31a50662a54f0740f896341d5b09a2208c45` |
| 11 | `structure` | [DataXi](../../../../../mathematics/Analysis/AsymptoticAnalysis/Traces/Variant1fd6733020ddccbf3568dd510bc17645a5fee86244b79dc05b9d2de3aef9ced1.lean/declarations/dataxi--d5e0c3250bed59709292b1e0.md) | 168 | `declaration-track:d5e0c3250bed59709292b1e0e6917e3ecb12f4bf07c4b6be8b5367a8ba383d14` |
| 12 | `def` | [Rxi](../../../../../mathematics/Analysis/AsymptoticAnalysis/Traces/Variant1fd6733020ddccbf3568dd510bc17645a5fee86244b79dc05b9d2de3aef9ced1.lean/declarations/rxi--b6ad27dfa76f9eaf21d44043.md) | 203 | `declaration-track:b6ad27dfa76f9eaf21d44043d5dc3654abf41ab244798620831991af2db80921` |
| 13 | `def` | [Mstar](../../../../../mathematics/Analysis/AsymptoticAnalysis/Traces/Variant1fd6733020ddccbf3568dd510bc17645a5fee86244b79dc05b9d2de3aef9ced1.lean/declarations/mstar--3b55e75e5a4072ba50c61577.md) | 206 | `declaration-track:3b55e75e5a4072ba50c615773859b675912d1bf671a1288a3f161cdb24225348` |
| 14 | `structure` | [FactsXi](../../../../../mathematics/Analysis/AsymptoticAnalysis/Traces/Variant1fd6733020ddccbf3568dd510bc17645a5fee86244b79dc05b9d2de3aef9ced1.lean/declarations/factsxi--470ec69a05e87c53dcb18026.md) | 211 | `declaration-track:470ec69a05e87c53dcb18026ad791610bfc7cd9aca6b8a6558d81366a3428073` |
| 15 | `lemma` | [ratio_identity](../../../../../mathematics/Analysis/AsymptoticAnalysis/Traces/Variant1fd6733020ddccbf3568dd510bc17645a5fee86244b79dc05b9d2de3aef9ced1.lean/declarations/ratio-identity--a0cd4115e4d7de5b7b53f664.md) | 251 | `result-track:a0cd4115e4d7de5b7b53f6649e8af3f3dc6598ce5422df9f92223dda893068fd` |
| 16 | `lemma` | [frhat_identity](../../../../../mathematics/Analysis/AsymptoticAnalysis/Traces/Variant1fd6733020ddccbf3568dd510bc17645a5fee86244b79dc05b9d2de3aef9ced1.lean/declarations/frhat-identity--1f7c8757a60032d1238184b1.md) | 266 | `result-track:1f7c8757a60032d1238184b1d898899e1c1e35a76f48183d56780c3d60c8b36c` |
| 17 | `lemma` | [regime](../../../../../mathematics/Analysis/AsymptoticAnalysis/Traces/Variant1fd6733020ddccbf3568dd510bc17645a5fee86244b79dc05b9d2de3aef9ced1.lean/declarations/regime--9eda6a65ae83ca30aa3cc6a7.md) | 280 | `result-track:9eda6a65ae83ca30aa3cc6a707b488aa4b26e51e3b5e7acf88610e0989604334` |
| 18 | `lemma` | [Ncnt_lower](../../../../../mathematics/Analysis/AsymptoticAnalysis/Traces/Variant1fd6733020ddccbf3568dd510bc17645a5fee86244b79dc05b9d2de3aef9ced1.lean/declarations/ncnt-lower--5ddfe87e7d4f6eaef114d24e.md) | 288 | `result-track:5ddfe87e7d4f6eaef114d24e4fb7d80432fa31d0d14ae27ab3575938675071ae` |
| 19 | `lemma` | [Ncnt_pos](../../../../../mathematics/Analysis/AsymptoticAnalysis/Traces/Variant1fd6733020ddccbf3568dd510bc17645a5fee86244b79dc05b9d2de3aef9ced1.lean/declarations/ncnt-pos--a1764b305e2f2577b2dce9cc.md) | 301 | `result-track:a1764b305e2f2577b2dce9ccd445a92783a7f3ad4e2715ec26c29efb7be957ee` |
| 20 | `lemma` | [isEquivalent_Ncnt](../../../../../mathematics/Analysis/AsymptoticAnalysis/Traces/Variant1fd6733020ddccbf3568dd510bc17645a5fee86244b79dc05b9d2de3aef9ced1.lean/declarations/isequivalent-ncnt--cdb6fbc8af80c5287ecccdf5.md) | 308 | `result-track:cdb6fbc8af80c5287ecccdf5c319425491d7ae9b31ef5ff92c84c22ff1d06877` |
| 21 | `theorem` | [tr1'](../../../../../mathematics/Analysis/AsymptoticAnalysis/Traces/Variant1fd6733020ddccbf3568dd510bc17645a5fee86244b79dc05b9d2de3aef9ced1.lean/declarations/tr1--6b522dabadf29602691cc81a.md) | 319 | `result-track:6b522dabadf29602691cc81a57eb27c7111bade0bbd920f97ab637869a032b7c` |
| 22 | `lemma` | [tr2_first](../../../../../mathematics/Analysis/AsymptoticAnalysis/Traces/Variant1fd6733020ddccbf3568dd510bc17645a5fee86244b79dc05b9d2de3aef9ced1.lean/declarations/tr2-first--6b6df2e073ad8c59603116bb.md) | 344 | `result-track:6b6df2e073ad8c59603116bbbd9798e87cc892fd8928714bb91e8ca274b1f3e8` |
| 23 | `lemma` | [Mstar_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/Traces/Variant1fd6733020ddccbf3568dd510bc17645a5fee86244b79dc05b9d2de3aef9ced1.lean/declarations/mstar-le--a770eeb5e4d4113e6620a1ed.md) | 394 | `result-track:a770eeb5e4d4113e6620a1edb775916f7441b4b09f7fbe6fcb8062dfbc646834` |
| 24 | `theorem` | [tr2](../../../../../mathematics/Analysis/AsymptoticAnalysis/Traces/Variant1fd6733020ddccbf3568dd510bc17645a5fee86244b79dc05b9d2de3aef9ced1.lean/declarations/tr2--dcc82ec008c7abf6b6a426ef.md) | 413 | `result-track:dcc82ec008c7abf6b6a426efc9e38f83cfc311454113b744d07b45fd7ae840da` |
| 25 | `lemma` | [nonzeros](../../../../../mathematics/Analysis/AsymptoticAnalysis/Traces/Variant1fd6733020ddccbf3568dd510bc17645a5fee86244b79dc05b9d2de3aef9ced1.lean/declarations/nonzeros--84439534f4d11be9a24c8bb1.md) | 474 | `result-track:84439534f4d11be9a24c8bb1e40ffb09bd00ca0806f8c18ffeebb42dffab22fc` |
| 26 | `theorem` | [ratio](../../../../../mathematics/Analysis/AsymptoticAnalysis/Traces/Variant1fd6733020ddccbf3568dd510bc17645a5fee86244b79dc05b9d2de3aef9ced1.lean/declarations/ratio--f5d8a28e03fee6ea05581223.md) | 485 | `result-track:f5d8a28e03fee6ea05581223e359af194255dbae6f559792b10d21b9bcca320f` |
| 27 | `theorem` | [frhat](../../../../../mathematics/Analysis/AsymptoticAnalysis/Traces/Variant1fd6733020ddccbf3568dd510bc17645a5fee86244b79dc05b9d2de3aef9ced1.lean/declarations/frhat--1ee88b74d81dacb46af17dad.md) | 512 | `result-track:1ee88b74d81dacb46af17dad70466eb3f79a020ae3e23b42f1eb0cdc27eb6096` |
| 28 | `theorem` | [tracesBoundsXi_of_factsXi](../../../../../mathematics/Analysis/AsymptoticAnalysis/Traces/Variant1fd6733020ddccbf3568dd510bc17645a5fee86244b79dc05b9d2de3aef9ced1.lean/declarations/tracesboundsxi-of-factsxi--c1135b3d158832b2481e60f3.md) | 532 | `result-track:c1135b3d158832b2481e60f305ae5a8248de06eba7efa1b7a83af576603f2325` |
| 29 | `theorem` | [moments_trace](../../../../../mathematics/Analysis/AsymptoticAnalysis/Traces/Variant1fd6733020ddccbf3568dd510bc17645a5fee86244b79dc05b9d2de3aef9ced1.lean/declarations/moments-trace--b9f4baa4c709e7bb5818a100.md) | 549 | `result-track:b9f4baa4c709e7bb5818a100b67035ecb70161edd730fce4b646eb6ee659cf64` |
| 30 | `theorem` | [moments_frob](../../../../../mathematics/Analysis/AsymptoticAnalysis/Traces/Variant1fd6733020ddccbf3568dd510bc17645a5fee86244b79dc05b9d2de3aef9ced1.lean/declarations/moments-frob--eec14e339246677b0cba9fab.md) | 563 | `result-track:eec14e339246677b0cba9fab734de0e2732d518d6020aaef3012ac3bf3915dfc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
