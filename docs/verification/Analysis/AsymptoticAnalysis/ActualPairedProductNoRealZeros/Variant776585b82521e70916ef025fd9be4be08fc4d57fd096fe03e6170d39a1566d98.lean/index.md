# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.ActualPairedProductNoRealZeros.Variant776585b82521e70916ef025fd9be4be08fc4d57fd096fe03e6170d39a1566d98

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e00db4bfe96da2a5ece9381b609464cd6990c593",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/ActualPairedProductNoRealZeros/Variant776585b82521e70916ef025fd9be4be08fc4d57fd096fe03e6170d39a1566d98.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualPairedProductNoRealZeros/Variant776585b82521e70916ef025fd9be4be08fc4d57fd096fe03e6170d39a1566d98.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualPairedProductNoRealZeros/Variant776585b82521e70916ef025fd9be4be08fc4d57fd096fe03e6170d39a1566d98.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e00db4bfe96da2a5ece9381b609464cd6990c593`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/ActualPairedProductNoRealZeros/Variant776585b82521e70916ef025fd9be4be08fc4d57fd096fe03e6170d39a1566d98.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/ActualPairedProductNoRealZeros/Variant776585b82521e70916ef025fd9be4be08fc4d57fd096fe03e6170d39a1566d98.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ActualPairedProductOccurrences` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.LocallyUniformLimit` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.Convex` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Analytic.IsolatedZeros` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.MeanValue` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Deriv` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.Dirichlet` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [etaPairTerm](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualPairedProductNoRealZeros/Variant776585b82521e70916ef025fd9be4be08fc4d57fd096fe03e6170d39a1566d98.lean/declarations/etapairterm--fc7d03f2904f91312d784b63.md) | 44 | `declaration-track:fc7d03f2904f91312d784b63150392b2f315fcbd5d706eb62e1a72dbd2a7769d` |
| 2 | `def` | [realEtaPairTerm](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualPairedProductNoRealZeros/Variant776585b82521e70916ef025fd9be4be08fc4d57fd096fe03e6170d39a1566d98.lean/declarations/realetapairterm--d0f1499d7450ae829ae7dfc4.md) | 48 | `declaration-track:d0f1499d7450ae829ae7dfc47fa9028f6d993ae545280cbc675ea692bf3e7bf2` |
| 3 | `def` | [pairedEta](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualPairedProductNoRealZeros/Variant776585b82521e70916ef025fd9be4be08fc4d57fd096fe03e6170d39a1566d98.lean/declarations/pairedeta--afb36153f8b24c8b5bf1d63a.md) | 52 | `declaration-track:afb36153f8b24c8b5bf1d63acd1c056322b0e9b35ba3d422231806282169aa90` |
| 4 | `def` | [etaZetaFactor](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualPairedProductNoRealZeros/Variant776585b82521e70916ef025fd9be4be08fc4d57fd096fe03e6170d39a1566d98.lean/declarations/etazetafactor--a6076e230a8b153ac4ff9cbc.md) | 55 | `declaration-track:a6076e230a8b153ac4ff9cbc8caf75e767bcd3bdfc593b512da49d171512dfe6` |
| 5 | `theorem` | [etaPairTerm_norm_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualPairedProductNoRealZeros/Variant776585b82521e70916ef025fd9be4be08fc4d57fd096fe03e6170d39a1566d98.lean/declarations/etapairterm-norm-le--fbc687df329bd8190e9bdb93.md) | 58 | `result-track:fbc687df329bd8190e9bdb93365b265a93fe4c97ba687821be67c89be6b04f81` |
| 6 | `theorem` | [etaPairTerm_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualPairedProductNoRealZeros/Variant776585b82521e70916ef025fd9be4be08fc4d57fd096fe03e6170d39a1566d98.lean/declarations/etapairterm-summable--da85499f72a0a5066e7895bc.md) | 102 | `result-track:da85499f72a0a5066e7895bce2e8a2e4ed9d6c41df5163f3248af4cfbe03e0b2` |
| 7 | `theorem` | [differentiableOn_pairedEta](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualPairedProductNoRealZeros/Variant776585b82521e70916ef025fd9be4be08fc4d57fd096fe03e6170d39a1566d98.lean/declarations/differentiableon-pairedeta--da2d8a16f4afc48979773a3c.md) | 137 | `result-track:da2d8a16f4afc48979773a3c38247391832e0f2176b8b41df7256a0d15274128` |
| 8 | `theorem` | [pairedEta_eq_factor_of_one_lt_re](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualPairedProductNoRealZeros/Variant776585b82521e70916ef025fd9be4be08fc4d57fd096fe03e6170d39a1566d98.lean/declarations/pairedeta-eq-factor-of-one-lt-re--d787dcb10c6f7a3a48068675.md) | 201 | `result-track:d787dcb10c6f7a3a4806867581429f8930010a7da3d2383778faf01fb6b5b033` |
| 9 | `theorem` | [pairedEta_eq_factor_upper](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualPairedProductNoRealZeros/Variant776585b82521e70916ef025fd9be4be08fc4d57fd096fe03e6170d39a1566d98.lean/declarations/pairedeta-eq-factor-upper--79d171a2207e6a83a60e0e35.md) | 264 | `result-track:79d171a2207e6a83a60e0e35e94f300cbcd344d026f4960556b3474c5a841b11` |
| 10 | `theorem` | [pairedEta_eq_factor_of_real](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualPairedProductNoRealZeros/Variant776585b82521e70916ef025fd9be4be08fc4d57fd096fe03e6170d39a1566d98.lean/declarations/pairedeta-eq-factor-of-real--1170623774041b87b194dd29.md) | 305 | `result-track:1170623774041b87b194dd29b5b1ee05c62f456558bc5fc3876ba296669c3e99` |
| 11 | `theorem` | [etaPairTerm_of_real](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualPairedProductNoRealZeros/Variant776585b82521e70916ef025fd9be4be08fc4d57fd096fe03e6170d39a1566d98.lean/declarations/etapairterm-of-real--e9920c33eada60a55fc761f4.md) | 361 | `result-track:e9920c33eada60a55fc761f4df25354f315fa3d5e0c68d68dd2c2e64e6023d7a` |
| 12 | `theorem` | [realEtaPairTerm_pos](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualPairedProductNoRealZeros/Variant776585b82521e70916ef025fd9be4be08fc4d57fd096fe03e6170d39a1566d98.lean/declarations/realetapairterm-pos--d623dc0e9a35c70ddf25b8bd.md) | 370 | `result-track:d623dc0e9a35c70ddf25b8bda4ef9c77a0f4390ae64e9d536093d2329aa8b32c` |
| 13 | `theorem` | [realEtaPairTerm_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualPairedProductNoRealZeros/Variant776585b82521e70916ef025fd9be4be08fc4d57fd096fe03e6170d39a1566d98.lean/declarations/realetapairterm-summable--9ea527890795d927c47b96f4.md) | 379 | `result-track:9ea527890795d927c47b96f49dd0f32b35a806d85cebabb9c2d73dfa258f4405` |
| 14 | `theorem` | [pairedEta_of_real](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualPairedProductNoRealZeros/Variant776585b82521e70916ef025fd9be4be08fc4d57fd096fe03e6170d39a1566d98.lean/declarations/pairedeta-of-real--f282125a38808719f1aafb49.md) | 385 | `result-track:f282125a38808719f1aafb49d471ee53b229ba85d824a985cbd09fad24aedbb9` |
| 15 | `theorem` | [pairedEta_re_pos_of_real](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualPairedProductNoRealZeros/Variant776585b82521e70916ef025fd9be4be08fc4d57fd096fe03e6170d39a1566d98.lean/declarations/pairedeta-re-pos-of-real--de3cd7335383077ef38e1af7.md) | 396 | `result-track:de3cd7335383077ef38e1af7d03a3dca54cfbc45c2230e963ef4c1e2d3bc6923` |
| 16 | `theorem` | [riemannZeta_ofReal_neg](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualPairedProductNoRealZeros/Variant776585b82521e70916ef025fd9be4be08fc4d57fd096fe03e6170d39a1566d98.lean/declarations/riemannzeta-ofreal-neg--9680685807ae7741aa0db790.md) | 406 | `result-track:9680685807ae7741aa0db790fc48c8e6c68b76618e1f807b206c30e50c1cf303` |
| 17 | `theorem` | [noRealNontrivialZeros_holds](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualPairedProductNoRealZeros/Variant776585b82521e70916ef025fd9be4be08fc4d57fd096fe03e6170d39a1566d98.lean/declarations/norealnontrivialzeros-holds--4277c869692acca0837ad4a7.md) | 440 | `result-track:4277c869692acca0837ad4a75c7fc598cb5231b76d986d7349de41e868b41bd3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
