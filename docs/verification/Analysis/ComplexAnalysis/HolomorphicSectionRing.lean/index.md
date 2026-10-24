# Verification target: GRWTSK.Analysis.Complex.HolomorphicSectionRing

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "978c064e334ef390fbbede8235495d0aed266828",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Complex/HolomorphicSectionRing.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicSectionRing.lean/index.md) · [Full source](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicSectionRing.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `978c064e334ef390fbbede8235495d0aed266828`.

Source path: `GRWTSK/Analysis/Complex/HolomorphicSectionRing.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Complex/HolomorphicSectionRing.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.HolomorphicRestriction`](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicRestriction.lean/index.md) — import line 1; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [holomorphicSubring](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicSectionRing.lean/declarations/holomorphicsubring--a3f0ec019b5b6850adb42bbe.md) | 10 | `declaration-track:a3f0ec019b5b6850adb42bbe604495f0408e245dca49188714c392ec0b2d7114` |
| 2 | `abbrev` | [HolomorphicSection](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicSectionRing.lean/declarations/holomorphicsection--dac2dfa5aadecb18d4dd7645.md) | 42 | `declaration-track:dac2dfa5aadecb18d4dd7645348561bba3a720ee9de191fc857bbf77f3e548c9` |
| 3 | `def` | [restrict](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicSectionRing.lean/declarations/restrict--4d1d909480182f23d9643166.md) | 45 | `declaration-track:4d1d909480182f23d964316622ce1bfa83ecb42f9afbab95fd878eb4b8833afa` |
| 4 | `def` | [restrictionRingHom](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicSectionRing.lean/declarations/restrictionringhom--245363573a42ef9560feb71b.md) | 53 | `declaration-track:245363573a42ef9560feb71b7066780638b8f58096c0a76996793d260ad68222` |
| 5 | `def` | [system](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicSectionRing.lean/declarations/system--72b477a7ec1306cef1c23289.md) | 72 | `declaration-track:72b477a7ec1306cef1c232891f61cc27ecbc56359fc706468d1a8fe0e4c21d9f` |
| 6 | `def` | [ringCertificate](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicSectionRing.lean/declarations/ringcertificate--39d4acf0cdebd5ae6b209218.md) | 91 | `declaration-track:39d4acf0cdebd5ae6b209218a7baae49dac63abfcffc0e69ce03029a0a4e4eb0` |
| 7 | `theorem` | [restrict_continuous](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicSectionRing.lean/declarations/restrict-continuous--6a0a349419646eeb1fc6dac5.md) | 97 | `result-track:6a0a349419646eeb1fc6dac5406e9bc44c5918b1409da56f82e2e928d4a40b84` |
| 8 | `def` | [topologicalRingCertificate](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicSectionRing.lean/declarations/topologicalringcertificate--31cc04520cff09765414fb60.md) | 104 | `declaration-track:31cc04520cff09765414fb604067a5858a27a2742cce73e198ca9a1dcc509075` |
| 9 | `structure` | [HolomorphicFiberCertificate](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicSectionRing.lean/declarations/holomorphicfibercertificate--8c25b06acc967d1ff47ad906.md) | 110 | `declaration-track:8c25b06acc967d1ff47ad9061753a8ceeb30685996f130aac020bd0c0c2c4be4` |
| 10 | `def` | [canonical](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicSectionRing.lean/declarations/canonical--9ae6ca73d6dae7bd18b04234.md) | 118 | `declaration-track:9ae6ca73d6dae7bd18b042344524939190aacfd660ea335f5c0c9271997405d3` |
| 11 | `def` | [composableProperty](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicSectionRing.lean/declarations/composableproperty--d62e3a18f9ef8f54e4f63c12.md) | 123 | `declaration-track:d62e3a18f9ef8f54e4f63c12f0c722f8581124817e46b15a1b2152696dd4216a` |
| 12 | `inductive` | [LawIndex](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicSectionRing.lean/declarations/lawindex--2ffe211cfe9ef861df47ec5f.md) | 134 | `declaration-track:2ffe211cfe9ef861df47ec5fddebe48999241bd63de1bc11b0597100ed0c16e8` |
| 13 | `def` | [law](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicSectionRing.lean/declarations/law--394896cda7f1a60f74268692.md) | 140 | `declaration-track:394896cda7f1a60f742686923937faaa8155b7d3a6119b2f08a4a93affc164d1` |
| 14 | `def` | [simultaneousProperty](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicSectionRing.lean/declarations/simultaneousproperty--6b18a37b74f490417d09becb.md) | 146 | `declaration-track:6b18a37b74f490417d09becb3ddc2aead88e3fa7f2a7711a53975d83106ff2bf` |
| 15 | `def` | [simultaneousCertificate](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicSectionRing.lean/declarations/simultaneouscertificate--b0dbeba211de2bf30fa03739.md) | 151 | `declaration-track:b0dbeba211de2bf30fa03739abf8a4e040463634f6e1b03d85073de1d3429235` |
| 16 | `def` | [forget](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicSectionRing.lean/declarations/forget--e23d932a156b9c3c9d37073d.md) | 159 | `declaration-track:e23d932a156b9c3c9d37073d7a8af9ba6cc32782eb5808c306656c0e4acf701e` |
| 17 | `theorem` | [forget_restrict](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicSectionRing.lean/declarations/forget-restrict--06e572a7d67773fad44e9fcb.md) | 163 | `result-track:06e572a7d67773fad44e9fcb214e3351e96e6ba9233b35747950e510e2319287` |
| 18 | `def` | [restrictionPath](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicSectionRing.lean/declarations/restrictionpath--450c4a45061eb6fd5053327f.md) | 172 | `declaration-track:450c4a45061eb6fd5053327feadd198b065da7211fbed47f609cae1dfaf9e9ef` |
| 19 | `theorem` | [restrictionPath_holomorphicFiber](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicSectionRing.lean/declarations/restrictionpath-holomorphicfiber--6f775899ea6c9af3e422cff2.md) | 185 | `result-track:6f775899ea6c9af3e422cff25a71e3bdf6b8483cc678d83c9be38d53c3192c71` |
| 20 | `theorem` | [restrictionPath_topologicalRing](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicSectionRing.lean/declarations/restrictionpath-topologicalring--0d6f360db8cd370d0817f315.md) | 190 | `result-track:0d6f360db8cd370d0817f3151141f485c1edd023a57846eda226fc6985d62e1a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
