# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Transcendental.Variante4f07961e91995727023b45cb577c8908632916fb69956b1241970ac2074e5f9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "00c11673a88fd82b3a1e3761f0a7dd35fe088dc3",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Transcendental/Variante4f07961e91995727023b45cb577c8908632916fb69956b1241970ac2074e5f9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Transcendental/Variante4f07961e91995727023b45cb577c8908632916fb69956b1241970ac2074e5f9.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Transcendental/Variante4f07961e91995727023b45cb577c8908632916fb69956b1241970ac2074e5f9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `00c11673a88fd82b3a1e3761f0a7dd35fe088dc3`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Transcendental/Variante4f07961e91995727023b45cb577c8908632916fb69956b1241970ac2074e5f9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Transcendental/Variante4f07961e91995727023b45cb577c8908632916fb69956b1241970ac2074e5f9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Engine.AD.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Sqrt` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sin](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Transcendental/Variante4f07961e91995727023b45cb577c8908632916fb69956b1241970ac2074e5f9.lean/declarations/sin--f4281a89664ebd033b6c19af.md) | 42 | `declaration-track:f4281a89664ebd033b6c19af532b0b5e21b44f28dd31e80ec4ba2c24b71cf6f9` |
| 2 | `def` | [cos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Transcendental/Variante4f07961e91995727023b45cb577c8908632916fb69956b1241970ac2074e5f9.lean/declarations/cos--68ec4f2e8b8c0eedb2549ac5.md) | 47 | `declaration-track:68ec4f2e8b8c0eedb2549ac5ee79929bd78979252b1e874045d6fa9b51e80d61` |
| 3 | `def` | [exp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Transcendental/Variante4f07961e91995727023b45cb577c8908632916fb69956b1241970ac2074e5f9.lean/declarations/exp--67c6696f1543fdadb5cec2b4.md) | 52 | `declaration-track:67c6696f1543fdadb5cec2b4de1dfc5d2eb820363a1eea5e5d640465a23a68f0` |
| 4 | `def` | [unitInterval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Transcendental/Variante4f07961e91995727023b45cb577c8908632916fb69956b1241970ac2074e5f9.lean/declarations/unitinterval--cf5382d2552f9efacd0eb121.md) | 57 | `declaration-track:cf5382d2552f9efacd0eb121b503901be59a8deca770f010e385eec1e21cea76` |
| 5 | `theorem` | [arctan_deriv_factor_mem_unitInterval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Transcendental/Variante4f07961e91995727023b45cb577c8908632916fb69956b1241970ac2074e5f9.lean/declarations/arctan-deriv-factor-mem-unitinterval--fdaea0b9581106f62d205044.md) | 60 | `result-track:fdaea0b9581106f62d2050449a9dc0d48a025dc1f9ab5af422d0206374f80f53` |
| 6 | `theorem` | [arsinh_deriv_factor_mem_unitInterval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Transcendental/Variante4f07961e91995727023b45cb577c8908632916fb69956b1241970ac2074e5f9.lean/declarations/arsinh-deriv-factor-mem-unitinterval--b6e52e1a27b1780d1c79ebcc.md) | 70 | `result-track:b6e52e1a27b1780d1c79ebccd090b7329b26d2f7c5f97f2ae95fbea9dc9142b7` |
| 7 | `def` | [atan](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Transcendental/Variante4f07961e91995727023b45cb577c8908632916fb69956b1241970ac2074e5f9.lean/declarations/atan--8206d9554589a3b00bb4cda9.md) | 85 | `declaration-track:8206d9554589a3b00bb4cda9d0b49660bb1cac7509e9521c2e05e3bf828c2595` |
| 8 | `def` | [arsinh](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Transcendental/Variante4f07961e91995727023b45cb577c8908632916fb69956b1241970ac2074e5f9.lean/declarations/arsinh--5efee1a099ca0f986b9868a0.md) | 92 | `declaration-track:5efee1a099ca0f986b9868a0ddca1af1feec60ef2153a786c5723dcc7074e3b1` |
| 9 | `def` | [sinh](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Transcendental/Variante4f07961e91995727023b45cb577c8908632916fb69956b1241970ac2074e5f9.lean/declarations/sinh--eeb46a2b19bfd67eddd3115a.md) | 99 | `declaration-track:eeb46a2b19bfd67eddd3115af7221899495a96d3ea4d20b0522f474b5bfbbd25` |
| 10 | `def` | [cosh](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Transcendental/Variante4f07961e91995727023b45cb577c8908632916fb69956b1241970ac2074e5f9.lean/declarations/cosh--663246e8252324fc3685bc79.md) | 105 | `declaration-track:663246e8252324fc3685bc791624f7d5f74f4d2680a18cf3ba20e7d43652ef07` |
| 11 | `def` | [tanh](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Transcendental/Variante4f07961e91995727023b45cb577c8908632916fb69956b1241970ac2074e5f9.lean/declarations/tanh--0b3c25b53f29bcb694c354c7.md) | 112 | `declaration-track:0b3c25b53f29bcb694c354c75a5c2442c08aa133393fc1088b820e34a1a198f0` |
| 12 | `def` | [two_div_sqrt_pi](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Transcendental/Variante4f07961e91995727023b45cb577c8908632916fb69956b1241970ac2074e5f9.lean/declarations/two-div-sqrt-pi--d567aee09bbe8a6658099078.md) | 118 | `declaration-track:d567aee09bbe8a66580990782b8ac943da273969a124d6091338724d250f9c57` |
| 13 | `def` | [erf](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Transcendental/Variante4f07961e91995727023b45cb577c8908632916fb69956b1241970ac2074e5f9.lean/declarations/erf--0c9c513a8d9dd1eee7cc2f31.md) | 123 | `declaration-track:0c9c513a8d9dd1eee7cc2f3112658fe22f0157beccda57fe25fc350352bd3bbc` |
| 14 | `def` | [erfCore](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Transcendental/Variante4f07961e91995727023b45cb577c8908632916fb69956b1241970ac2074e5f9.lean/declarations/erfcore--ba127cbfadc22b7c084300ac.md) | 133 | `declaration-track:ba127cbfadc22b7c084300aceb80166d4feaee556de7c9a91acc86c3be9701c2` |
| 15 | `def` | [sqrt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Transcendental/Variante4f07961e91995727023b45cb577c8908632916fb69956b1241970ac2074e5f9.lean/declarations/sqrt--146695a3955570d9d37d88d3.md) | 146 | `declaration-track:146695a3955570d9d37d88d3e38bd862599f650b434aaf909a38c5ca6db6343f` |
| 16 | `def` | [sincDerivBound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Transcendental/Variante4f07961e91995727023b45cb577c8908632916fb69956b1241970ac2074e5f9.lean/declarations/sincderivbound--e3a91dda5c266eb24ba2b1b7.md) | 153 | `declaration-track:e3a91dda5c266eb24ba2b1b792c05d76a4c46ec672c6be1232f49e90cf51b232` |
| 17 | `def` | [sinc](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Transcendental/Variante4f07961e91995727023b45cb577c8908632916fb69956b1241970ac2074e5f9.lean/declarations/sinc--0e098afd8d5adb62e6d83301.md) | 158 | `declaration-track:0e098afd8d5adb62e6d8330175783699beab8329d8963df8967a9d95ce3706ec` |
| 18 | `def` | [atanh?](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Transcendental/Variante4f07961e91995727023b45cb577c8908632916fb69956b1241970ac2074e5f9.lean/declarations/atanh--393ef50d5414fd046256bcb5.md) | 167 | `declaration-track:393ef50d5414fd046256bcb5230aad15feb0a139f474cfc3ce2ded509200f26a` |
| 19 | `def` | [inv?](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Transcendental/Variante4f07961e91995727023b45cb577c8908632916fb69956b1241970ac2074e5f9.lean/declarations/inv--4f4769997b00cbfb4df1a2eb.md) | 188 | `declaration-track:4f4769997b00cbfb4df1a2eb57ae503cf9a7e9e84993fc6f37de7c7af5e3e8c7` |
| 20 | `def` | [log?](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Transcendental/Variante4f07961e91995727023b45cb577c8908632916fb69956b1241970ac2074e5f9.lean/declarations/log--267258c77058f752e25b01ce.md) | 200 | `declaration-track:267258c77058f752e25b01ce4111830ca45e3ac73e6fd6ea1826778ba69c854f` |
| 21 | `def` | [sqrtDerivCoefBound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Transcendental/Variante4f07961e91995727023b45cb577c8908632916fb69956b1241970ac2074e5f9.lean/declarations/sqrtderivcoefbound--83cbd9d5bbe1f08c3e49bb7a.md) | 218 | `declaration-track:83cbd9d5bbe1f08c3e49bb7a336f676854c21223fbf7052fe6b7376db4437701` |
| 22 | `theorem` | [sqrtDerivCoef_bound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Transcendental/Variante4f07961e91995727023b45cb577c8908632916fb69956b1241970ac2074e5f9.lean/declarations/sqrtderivcoef-bound--9d18bfc8a3756e7579c5fe53.md) | 227 | `result-track:9d18bfc8a3756e7579c5fe531fb22e2bf5daa5eb4f84e1c9ad612f7733e4ff33` |
| 23 | `def` | [sqrt?](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Transcendental/Variante4f07961e91995727023b45cb577c8908632916fb69956b1241970ac2074e5f9.lean/declarations/sqrt--ba5c8955961e4a9d8ebf7c5a.md) | 280 | `declaration-track:ba5c8955961e4a9d8ebf7c5ac783c78f4130162c5d796f0f0e29eead07ee874f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
