# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Basic.Variant761ae3acd37c04a6fe9c94d2069daf415a32361e84d83e3e3978bb912027a946

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0aa633b1e5dd2fcbbe7953e5874ace7be49c7354",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Basic/Variant761ae3acd37c04a6fe9c94d2069daf415a32361e84d83e3e3978bb912027a946.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Basic/Variant761ae3acd37c04a6fe9c94d2069daf415a32361e84d83e3e3978bb912027a946.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Basic/Variant761ae3acd37c04a6fe9c94d2069daf415a32361e84d83e3e3978bb912027a946.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0aa633b1e5dd2fcbbe7953e5874ace7be49c7354`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Basic/Variant761ae3acd37c04a6fe9c94d2069daf415a32361e84d83e3e3978bb912027a946.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Basic/Variant761ae3acd37c04a6fe9c94d2069daf415a32361e84d83e3e3978bb912027a946.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.SmoothTransition` — import line 25; external provider; requires a separately pinned dependency.
- `Zeta23.Defs` — import line 26; external provider; requires a separately pinned dependency.
- `Zeta23.Poisson.PaperFT` — import line 27; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [TaperProfile.nonneg](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Basic/Variant761ae3acd37c04a6fe9c94d2069daf415a32361e84d83e3e3978bb912027a946.lean/declarations/taperprofile-nonneg--eb6ebaa8bee036a2e920099d.md) | 37 | `result-track:eb6ebaa8bee036a2e920099d42ef7bed8413ea2dc2a9815c2dce1f756c68ebf6` |
| 2 | `theorem` | [TaperProfile.le_one](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Basic/Variant761ae3acd37c04a6fe9c94d2069daf415a32361e84d83e3e3978bb912027a946.lean/declarations/taperprofile-le-one--81a2b60b9d1dc2229648eb12.md) | 43 | `result-track:81a2b60b9d1dc2229648eb12f318fef5a54235251ad3ad65415187c02a3536de` |
| 3 | `theorem` | [TaperProfile.continuous](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Basic/Variant761ae3acd37c04a6fe9c94d2069daf415a32361e84d83e3e3978bb912027a946.lean/declarations/taperprofile-continuous--8b9eed8a5dc9bd2df4ec5fec.md) | 49 | `result-track:8b9eed8a5dc9bd2df4ec5fecb49d712d6d37239ad827f9c578720bab64734062` |
| 4 | `def` | [supDeriv](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Basic/Variant761ae3acd37c04a6fe9c94d2069daf415a32361e84d83e3e3978bb912027a946.lean/declarations/supderiv--78aa5d76c7f0901c148c6c79.md) | 57 | `declaration-track:78aa5d76c7f0901c148c6c7977e48a5aa56e88b5c39132c9016bf819ac8e7302` |
| 5 | `def` | [l1Deriv2](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Basic/Variant761ae3acd37c04a6fe9c94d2069daf415a32361e84d83e3e3978bb912027a946.lean/declarations/l1deriv2--4a67058899cd5a315974d63e.md) | 60 | `declaration-track:4a67058899cd5a315974d63eb807b0a768a79f50c13a77dcdd69073b92a900a6` |
| 6 | `def` | [cRho](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Basic/Variant761ae3acd37c04a6fe9c94d2069daf415a32361e84d83e3e3978bb912027a946.lean/declarations/crho--7cc583bc0c060c7e281c7424.md) | 63 | `declaration-track:7cc583bc0c060c7e281c74247eaac847f5bbfcbaeb8e2231b89ade76a3647dc8` |
| 7 | `theorem` | [cRho_eq](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Basic/Variant761ae3acd37c04a6fe9c94d2069daf415a32361e84d83e3e3978bb912027a946.lean/declarations/crho-eq--1e714c83c807d65adac5d6e3.md) | 66 | `result-track:1e714c83c807d65adac5d6e303207291bd217b4163ad2507c26da15dd2f87124` |
| 8 | `def` | [smoothstep](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Basic/Variant761ae3acd37c04a6fe9c94d2069daf415a32361e84d83e3e3978bb912027a946.lean/declarations/smoothstep--7868793b1aa7e936379c1617.md) | 73 | `declaration-track:7868793b1aa7e936379c1617740fee6b92c3e00c5ac04664667a9175ab225152` |
| 9 | `def` | [phi](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Basic/Variant761ae3acd37c04a6fe9c94d2069daf415a32361e84d83e3e3978bb912027a946.lean/declarations/phi--22db5d089667a0e79974206a.md) | 80 | `declaration-track:22db5d089667a0e79974206a73330b81f8b7e430b3f5e5985841f9eb35bad1a1` |
| 10 | `def` | [aConst](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Basic/Variant761ae3acd37c04a6fe9c94d2069daf415a32361e84d83e3e3978bb912027a946.lean/declarations/aconst--39156154b885a957c69f8760.md) | 83 | `declaration-track:39156154b885a957c69f8760dd01d2458c340cd35d9d62d84818bc00cf8107d4` |
| 11 | `def` | [bConst](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Basic/Variant761ae3acd37c04a6fe9c94d2069daf415a32361e84d83e3e3978bb912027a946.lean/declarations/bconst--1cf16d9c5d7bd28c90a814f8.md) | 86 | `declaration-track:1cf16d9c5d7bd28c90a814f888cd7bc899769b6b01e3eec198e5cbd9fa53217c` |
| 12 | `def` | [phiHat](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Basic/Variant761ae3acd37c04a6fe9c94d2069daf415a32361e84d83e3e3978bb912027a946.lean/declarations/phihat--8d4f8284ccb793032af2599c.md) | 89 | `declaration-track:8d4f8284ccb793032af2599c27f542bbdb6eb0b3f4e9cb8a8228a5b956c8dbe9` |
| 13 | `def` | [phiHatR](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Basic/Variant761ae3acd37c04a6fe9c94d2069daf415a32361e84d83e3e3978bb912027a946.lean/declarations/phihatr--e99e9a606ed4cdffa762b96c.md) | 92 | `declaration-track:e99e9a606ed4cdffa762b96cfd4cfbaf97db32c4cfea337f65a57e128926b375` |
| 14 | `def` | [Phi](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Basic/Variant761ae3acd37c04a6fe9c94d2069daf415a32361e84d83e3e3978bb912027a946.lean/declarations/phi--e35103454f23ae7e69d0fee1.md) | 95 | `declaration-track:e35103454f23ae7e69d0fee1adfecc7dc940e4ec9fd8c1c8ff5bfd7a02df9187` |
| 15 | `def` | [PhiR](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Basic/Variant761ae3acd37c04a6fe9c94d2069daf415a32361e84d83e3e3978bb912027a946.lean/declarations/phir--3ebc1a31b5898f631d14ea2e.md) | 98 | `declaration-track:3ebc1a31b5898f631d14ea2eae71519ebad50b4e71cc60faa9670e449571648f` |
| 16 | `def` | [g](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Basic/Variant761ae3acd37c04a6fe9c94d2069daf415a32361e84d83e3e3978bb912027a946.lean/declarations/g--72c96195574c2af70274244b.md) | 101 | `declaration-track:72c96195574c2af70274244b4ea5775f0ea3fb791a62127b75b28faba0fb42b5` |
| 17 | `def` | [Aphi](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Basic/Variant761ae3acd37c04a6fe9c94d2069daf415a32361e84d83e3e3978bb912027a946.lean/declarations/aphi--a4662b8cdac56bf218fd3c38.md) | 104 | `declaration-track:a4662b8cdac56bf218fd3c388644c652529ff769862121437765b10994faaeca` |
| 18 | `def` | [psi](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Basic/Variant761ae3acd37c04a6fe9c94d2069daf415a32361e84d83e3e3978bb912027a946.lean/declarations/psi--dbe3da2fdf75ea7a20c03a3b.md) | 109 | `declaration-track:dbe3da2fdf75ea7a20c03a3b375341cc3ce04fe3588305b3b54517cc6b14a1d9` |
| 19 | `theorem` | [phi_even](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Basic/Variant761ae3acd37c04a6fe9c94d2069daf415a32361e84d83e3e3978bb912027a946.lean/declarations/phi-even--8ff6a124e602ab21f11a58cb.md) | 118 | `result-track:8ff6a124e602ab21f11a58cb566a52f073053b23237954e3718109751a2b8040` |
| 20 | `theorem` | [phi_nonneg](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Basic/Variant761ae3acd37c04a6fe9c94d2069daf415a32361e84d83e3e3978bb912027a946.lean/declarations/phi-nonneg--e747581c0aa81eedc76c2d26.md) | 121 | `result-track:e747581c0aa81eedc76c2d269a5493022e89cebde2514f96bbab861ca9f6cff1` |
| 21 | `theorem` | [phi_le_one](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Basic/Variant761ae3acd37c04a6fe9c94d2069daf415a32361e84d83e3e3978bb912027a946.lean/declarations/phi-le-one--c3f87e3e7926e321da42af3e.md) | 123 | `result-track:c3f87e3e7926e321da42af3e12483680d28777fc0ece7f4e1d4ca022c694f88f` |
| 22 | `theorem` | [phi_eq_zero](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Basic/Variant761ae3acd37c04a6fe9c94d2069daf415a32361e84d83e3e3978bb912027a946.lean/declarations/phi-eq-zero--2bb3814a450cd6238ea71141.md) | 126 | `result-track:2bb3814a450cd6238ea71141e5d03fd9093dcfc89de433db29816ce4f43a3013` |
| 23 | `theorem` | [phi_eq_one](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Basic/Variant761ae3acd37c04a6fe9c94d2069daf415a32361e84d83e3e3978bb912027a946.lean/declarations/phi-eq-one--4ba75e749a0c0f974d9a16e3.md) | 133 | `result-track:4ba75e749a0c0f974d9a16e33aac367da03c82d49c4ca7f313d8afb42b804087` |
| 24 | `theorem` | [phi_support_subset](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Basic/Variant761ae3acd37c04a6fe9c94d2069daf415a32361e84d83e3e3978bb912027a946.lean/declarations/phi-support-subset--97a70e31f15c4f1177801c52.md) | 140 | `result-track:97a70e31f15c4f1177801c5223aebfc3aa8f27f0c4d9289c2a52dc842c77b8c4` |
| 25 | `theorem` | [phi_hasCompactSupport](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Basic/Variant761ae3acd37c04a6fe9c94d2069daf415a32361e84d83e3e3978bb912027a946.lean/declarations/phi-hascompactsupport--b8368ad2b05aed4af9125f41.md) | 151 | `result-track:b8368ad2b05aed4af9125f41addb22471915a0ca37976333c660eacfcb27054c` |
| 26 | `theorem` | [phi_eq_mul](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Basic/Variant761ae3acd37c04a6fe9c94d2069daf415a32361e84d83e3e3978bb912027a946.lean/declarations/phi-eq-mul--4fa2fd28d85ea452e79acb0e.md) | 158 | `result-track:4fa2fd28d85ea452e79acb0e443d90f896b3f17da18f512c5fb4c5db0e25c281` |
| 27 | `theorem` | [phi_contDiff](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Basic/Variant761ae3acd37c04a6fe9c94d2069daf415a32361e84d83e3e3978bb912027a946.lean/declarations/phi-contdiff--cfbae9cd9358582a4cf05d86.md) | 169 | `result-track:cfbae9cd9358582a4cf05d86cc05966dbf65cab56c676246a84d998150420cb9` |
| 28 | `theorem` | [phi_continuous](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Basic/Variant761ae3acd37c04a6fe9c94d2069daf415a32361e84d83e3e3978bb912027a946.lean/declarations/phi-continuous--6b85a9fd5c55ba8ede1a64d9.md) | 178 | `result-track:6b85a9fd5c55ba8ede1a64d98a0ade52cc300df1a547b20b57cb8a288d94acb9` |
| 29 | `theorem` | [phi_integrable](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Basic/Variant761ae3acd37c04a6fe9c94d2069daf415a32361e84d83e3e3978bb912027a946.lean/declarations/phi-integrable--a93aed45852fe35979f8d8a4.md) | 182 | `result-track:a93aed45852fe35979f8d8a4de2530ceca3c4507f9b1b5f7e379eaa0def04afc` |
| 30 | `def` | [C1](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Basic/Variant761ae3acd37c04a6fe9c94d2069daf415a32361e84d83e3e3978bb912027a946.lean/declarations/c1--632d3be783630133f0bf5f9c.md) | 190 | `declaration-track:632d3be783630133f0bf5f9c0c9b3c9c211c8dec09ec7a4ced157e453f3666f2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
