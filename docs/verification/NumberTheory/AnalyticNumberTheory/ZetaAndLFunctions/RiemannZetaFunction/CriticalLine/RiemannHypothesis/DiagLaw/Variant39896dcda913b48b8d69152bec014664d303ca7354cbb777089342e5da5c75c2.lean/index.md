# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.DiagLaw.Variant39896dcda913b48b8d69152bec014664d303ca7354cbb777089342e5da5c75c2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5a1ead751faa8933ff3be87e4e7713190b476296",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DiagLaw/Variant39896dcda913b48b8d69152bec014664d303ca7354cbb777089342e5da5c75c2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DiagLaw/Variant39896dcda913b48b8d69152bec014664d303ca7354cbb777089342e5da5c75c2.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DiagLaw/Variant39896dcda913b48b8d69152bec014664d303ca7354cbb777089342e5da5c75c2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5a1ead751faa8933ff3be87e4e7713190b476296`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DiagLaw/Variant39896dcda913b48b8d69152bec014664d303ca7354cbb777089342e5da5c75c2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DiagLaw/Variant39896dcda913b48b8d69152bec014664d303ca7354cbb777089342e5da5c75c2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.XiPrime.Coeff.Upper` — import line 16; external provider; requires a separately pinned dependency.
- `Zeta23.XiPrime.Coeff.MainTerm.Squarefree` — import line 17; external provider; requires a separately pinned dependency.
- `Zeta23.XiPrime.Coeff.MainTerm.Asymp` — import line 18; external provider; requires a separately pinned dependency.
- `Zeta23.XiPrime.Coeff.NonSquarefree` — import line 19; external provider; requires a separately pinned dependency.
- `Zeta23.XiPrime.Coeff.PrimeSums` — import line 20; external provider; requires a separately pinned dependency.
- `Zeta23.XiPrime.Coeff.Param` — import line 21; external provider; requires a separately pinned dependency.
- `Zeta23.XiPrime.Coeff.Tail` — import line 22; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sfPart](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DiagLaw/Variant39896dcda913b48b8d69152bec014664d303ca7354cbb777089342e5da5c75c2.lean/declarations/sfpart--b1547d7130233b9dac312156.md) | 35 | `declaration-track:b1547d7130233b9dac3121564358f79a2b2cd8a75951d1d7214f01ae1883b41a` |
| 2 | `def` | [bPart](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DiagLaw/Variant39896dcda913b48b8d69152bec014664d303ca7354cbb777089342e5da5c75c2.lean/declarations/bpart--33ac5d60383a1aab02824207.md) | 39 | `declaration-track:33ac5d60383a1aab028242076f6e8a573fd15634055e00f43faf7899a44c4082` |
| 3 | `lemma` | [sfPart_nonneg](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DiagLaw/Variant39896dcda913b48b8d69152bec014664d303ca7354cbb777089342e5da5c75c2.lean/declarations/sfpart-nonneg--dd130a4cbbc2f6b7921705e0.md) | 42 | `result-track:dd130a4cbbc2f6b7921705e0eb0a43a8baddf000d10205ad372dce95bb920004` |
| 4 | `lemma` | [bPart_nonneg](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DiagLaw/Variant39896dcda913b48b8d69152bec014664d303ca7354cbb777089342e5da5c75c2.lean/declarations/bpart-nonneg--81e56eecf0ff908b6a2e3471.md) | 45 | `result-track:81e56eecf0ff908b6a2e3471c392344165b74db604d1e056600628caf1319e65` |
| 5 | `lemma` | [diag_split](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DiagLaw/Variant39896dcda913b48b8d69152bec014664d303ca7354cbb777089342e5da5c75c2.lean/declarations/diag-split--c0ea552d37717d0f6e14f966.md) | 49 | `result-track:c0ea552d37717d0f6e14f966ef342395c762909cad04c8f06e07a24871b01c94` |
| 6 | `lemma` | [sfPart_zero](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DiagLaw/Variant39896dcda913b48b8d69152bec014664d303ca7354cbb777089342e5da5c75c2.lean/declarations/sfpart-zero--8c5bf12f26a2aebf4ba9353c.md) | 68 | `result-track:8c5bf12f26a2aebf4ba9353cd06850cae4149b192d66919b837943971393e58a` |
| 7 | `lemma` | [not_squarefree_of_bLayer](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DiagLaw/Variant39896dcda913b48b8d69152bec014664d303ca7354cbb777089342e5da5c75c2.lean/declarations/not-squarefree-of-blayer--aaea09cac9cd1660b05bb7e0.md) | 81 | `result-track:aaea09cac9cd1660b05bb7e07753d11e46747b333302e9b5c3f0148182ca2c4c` |
| 8 | `lemma` | [not_squarefree_of_bLayer_lam](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DiagLaw/Variant39896dcda913b48b8d69152bec014664d303ca7354cbb777089342e5da5c75c2.lean/declarations/not-squarefree-of-blayer-lam--4445cf746a34d28a7706d373.md) | 91 | `result-track:4445cf746a34d28a7706d37398ad424883c4f803a8dca4445dec2412babf9172` |
| 9 | `theorem` | [bPart_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DiagLaw/Variant39896dcda913b48b8d69152bec014664d303ca7354cbb777089342e5da5c75c2.lean/declarations/bpart-le--c26ca6974e0e96e8474bf1be.md) | 98 | `result-track:c26ca6974e0e96e8474bf1bef74fd0de174c75a7b0a700ecb5f7d8dcf344465f` |
| 10 | `lemma` | [abs_sub_le_of_three](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DiagLaw/Variant39896dcda913b48b8d69152bec014664d303ca7354cbb777089342e5da5c75c2.lean/declarations/abs-sub-le-of-three--00e4295115c1ed99f4c0cee5.md) | 219 | `result-track:00e4295115c1ed99f4c0cee5a34647cc2b0eebf99567638c3e1b26cee0ddc47c` |
| 11 | `def` | [dcoef](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DiagLaw/Variant39896dcda913b48b8d69152bec014664d303ca7354cbb777089342e5da5c75c2.lean/declarations/dcoef--c537b6d7a09df3a0028c8af3.md) | 226 | `declaration-track:c537b6d7a09df3a0028c8af3bd8fad795781e82bd72826ad2dfdc31eb0aacec1` |
| 12 | `lemma` | [pow_scaling_identity](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DiagLaw/Variant39896dcda913b48b8d69152bec014664d303ca7354cbb777089342e5da5c75c2.lean/declarations/pow-scaling-identity--17cf30a09ab410a72c90c67e.md) | 229 | `result-track:17cf30a09ab410a72c90c67e260dac9dd5dd5ec676debd15c8d0e9241bb145e1` |
| 13 | `lemma` | [squarefree_and_omega_one_iff](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DiagLaw/Variant39896dcda913b48b8d69152bec014664d303ca7354cbb777089342e5da5c75c2.lean/declarations/squarefree-and-omega-one-iff--102aa39be38e3a73bef7a4ad.md) | 237 | `result-track:102aa39be38e3a73bef7a4ad3e612fb6f733594a504676f09783d4803a084b60` |
| 14 | `lemma` | [lamLogPow_offlayer_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DiagLaw/Variant39896dcda913b48b8d69152bec014664d303ca7354cbb777089342e5da5c75c2.lean/declarations/lamlogpow-offlayer-le--874f7cdfd995fda30ccab518.md) | 252 | `result-track:874f7cdfd995fda30ccab518a0884212adadfce1e3e3b5cc3e814c8742cb3729` |
| 15 | `theorem` | [sfPart_asymp](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DiagLaw/Variant39896dcda913b48b8d69152bec014664d303ca7354cbb777089342e5da5c75c2.lean/declarations/sfpart-asymp--e9470ba8d47202b369a57a3b.md) | 296 | `result-track:e9470ba8d47202b369a57a3bae1ae5006f74721b91be41601046fc2fe669559f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
