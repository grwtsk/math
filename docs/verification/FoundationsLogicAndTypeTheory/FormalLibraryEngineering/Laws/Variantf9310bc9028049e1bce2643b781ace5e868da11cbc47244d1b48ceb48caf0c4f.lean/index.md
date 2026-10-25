# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Laws.Variantf9310bc9028049e1bce2643b781ace5e868da11cbc47244d1b48ceb48caf0c4f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9e762ecf143854a45660037b5333e5e6ca1ca9c8",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variantf9310bc9028049e1bce2643b781ace5e868da11cbc47244d1b48ceb48caf0c4f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variantf9310bc9028049e1bce2643b781ace5e868da11cbc47244d1b48ceb48caf0c4f.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variantf9310bc9028049e1bce2643b781ace5e868da11cbc47244d1b48ceb48caf0c4f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9e762ecf143854a45660037b5333e5e6ca1ca9c8`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variantf9310bc9028049e1bce2643b781ace5e868da11cbc47244d1b48ceb48caf0c4f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variantf9310bc9028049e1bce2643b781ace5e868da11cbc47244d1b48ceb48caf0c4f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [entails.refl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variantf9310bc9028049e1bce2643b781ace5e868da11cbc47244d1b48ceb48caf0c4f.lean/declarations/entails-refl--c719c2428d839f70e43c0d1d.md) | 33 | `result-track:c719c2428d839f70e43c0d1d0d7365ccea4b146a6c8db003cb65388b12c8050f` |
| 2 | `theorem` | [entails.trans](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variantf9310bc9028049e1bce2643b781ace5e868da11cbc47244d1b48ceb48caf0c4f.lean/declarations/entails-trans--d2bd4f2beae5232ba8528b54.md) | 38 | `result-track:d2bd4f2beae5232ba8528b54d034459d1e6afc971256533ce19e20a0e688aa83` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variantf9310bc9028049e1bce2643b781ace5e868da11cbc47244d1b48ceb48caf0c4f.lean/declarations/instance--6659d7642613d6a6f654d162.md) | 43 | `declaration-track:6659d7642613d6a6f654d16208d4c65fcc5399874003286955e4178dacb629b9` |
| 4 | `theorem` | [bientails.iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variantf9310bc9028049e1bce2643b781ace5e868da11cbc47244d1b48ceb48caf0c4f.lean/declarations/bientails-iff--97cd198a70b7251fa6cae87b.md) | 48 | `result-track:97cd198a70b7251fa6cae87bf5d9040a52c38d61bfdf09d094e92b579311156e` |
| 5 | `theorem` | [bientails.refl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variantf9310bc9028049e1bce2643b781ace5e868da11cbc47244d1b48ceb48caf0c4f.lean/declarations/bientails-refl--d47b626b115546391dcfee70.md) | 57 | `result-track:d47b626b115546391dcfee7087a0ee7e3835dc2044e471ac087f420004b9ae82` |
| 6 | `theorem` | [bientails.trans](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variantf9310bc9028049e1bce2643b781ace5e868da11cbc47244d1b48ceb48caf0c4f.lean/declarations/bientails-trans--a60a9dd8dc1781dc543fbbbc.md) | 60 | `result-track:a60a9dd8dc1781dc543fbbbcef33f7e5645426a02857b177d7048ba9cc45530a` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variantf9310bc9028049e1bce2643b781ace5e868da11cbc47244d1b48ceb48caf0c4f.lean/declarations/instance--8a7c9a1ef05719ccc1d88b3e.md) | 65 | `declaration-track:8a7c9a1ef05719ccc1d88b3e7e5359ed096f1a6e801f6c3fc7cf5b4f48897893` |
| 8 | `theorem` | [bientails.symm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variantf9310bc9028049e1bce2643b781ace5e868da11cbc47244d1b48ceb48caf0c4f.lean/declarations/bientails-symm--510a1f3829cde4eb875990e4.md) | 68 | `result-track:510a1f3829cde4eb875990e48978def2733d5fdada0bc21c143d3ba5973a4354` |
| 9 | `theorem` | [bientails.to_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variantf9310bc9028049e1bce2643b781ace5e868da11cbc47244d1b48ceb48caf0c4f.lean/declarations/bientails-to-eq--36dddd1af0e6b2c1afcbd97f.md) | 73 | `result-track:36dddd1af0e6b2c1afcbd97f6ae54c58e21802ddc88a7886e5fbeaa56ead2108` |
| 10 | `theorem` | [down_pure](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variantf9310bc9028049e1bce2643b781ace5e868da11cbc47244d1b48ceb48caf0c4f.lean/declarations/down-pure--1b27624a22949ad2fb54b682.md) | 81 | `result-track:1b27624a22949ad2fb54b682ae6faf59f19b7ca2c1e59b7f629fc0ab3bdb6dd8` |
| 11 | `theorem` | [apply_pure](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variantf9310bc9028049e1bce2643b781ace5e868da11cbc47244d1b48ceb48caf0c4f.lean/declarations/apply-pure--1e96dbcae1894f4f432a3938.md) | 82 | `result-track:1e96dbcae1894f4f432a393881a4063874c19e69993d1e18f1612d135549c8fb` |
| 12 | `theorem` | [pure_intro](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variantf9310bc9028049e1bce2643b781ace5e868da11cbc47244d1b48ceb48caf0c4f.lean/declarations/pure-intro--36c0397dd2f9848f7eb9e598.md) | 84 | `result-track:36c0397dd2f9848f7eb9e5984cb7a7f348c7b8c239ae9d58353db852429683cd` |
| 13 | `theorem` | [pure_elim'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variantf9310bc9028049e1bce2643b781ace5e868da11cbc47244d1b48ceb48caf0c4f.lean/declarations/pure-elim--190be52c4f022a0ca781f7f0.md) | 87 | `result-track:190be52c4f022a0ca781f7f0be400838e6bae39d98858705a70d3e0e695a6b96` |
| 14 | `theorem` | [and_intro](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variantf9310bc9028049e1bce2643b781ace5e868da11cbc47244d1b48ceb48caf0c4f.lean/declarations/and-intro--c1301b100287d01b94ecb586.md) | 96 | `result-track:c1301b100287d01b94ecb586b7dbfaca66a94f5493b7efa1fb6993b048da67e2` |
| 15 | `theorem` | [and_elim_l](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variantf9310bc9028049e1bce2643b781ace5e868da11cbc47244d1b48ceb48caf0c4f.lean/declarations/and-elim-l--6a7e67da4aaee46afbf8b97e.md) | 99 | `result-track:6a7e67da4aaee46afbf8b97ef2213bd81d3536380d376c4b6116e119cc46b352` |
| 16 | `theorem` | [and_elim_r](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variantf9310bc9028049e1bce2643b781ace5e868da11cbc47244d1b48ceb48caf0c4f.lean/declarations/and-elim-r--0cd177125c9ffd027701e6e1.md) | 102 | `result-track:0cd177125c9ffd027701e6e1862cd71a016385ef64dd7a8bde25689dc8c2c080` |
| 17 | `theorem` | [or_intro_l](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variantf9310bc9028049e1bce2643b781ace5e868da11cbc47244d1b48ceb48caf0c4f.lean/declarations/or-intro-l--554df7016834d16cd07a345d.md) | 107 | `result-track:554df7016834d16cd07a345d73d5e838cb268db4c37c76df0113e2e8754cf9b5` |
| 18 | `theorem` | [or_intro_r](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variantf9310bc9028049e1bce2643b781ace5e868da11cbc47244d1b48ceb48caf0c4f.lean/declarations/or-intro-r--316780ca257ad5a32dfe2b2e.md) | 110 | `result-track:316780ca257ad5a32dfe2b2ef0a330e7fc43b8ef39a47b5d619aca4b4ee9764d` |
| 19 | `theorem` | [or_elim](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variantf9310bc9028049e1bce2643b781ace5e868da11cbc47244d1b48ceb48caf0c4f.lean/declarations/or-elim--a020267fa1f3e857f80bf0be.md) | 113 | `result-track:a020267fa1f3e857f80bf0be67eaeb60edeaff2d1901f4b816caa2b8a09f73e5` |
| 20 | `theorem` | [imp_intro](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variantf9310bc9028049e1bce2643b781ace5e868da11cbc47244d1b48ceb48caf0c4f.lean/declarations/imp-intro--aa0b6fdd4298844047408141.md) | 120 | `result-track:aa0b6fdd4298844047408141236824d8f8043b4b1a0c879899e05c9fe080b255` |
| 21 | `theorem` | [imp_elim](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variantf9310bc9028049e1bce2643b781ace5e868da11cbc47244d1b48ceb48caf0c4f.lean/declarations/imp-elim--09fb8e2675a3d23a7004233b.md) | 123 | `result-track:09fb8e2675a3d23a7004233b405313225e7e9d916c6e5fd7311cbbe8eb8754fe` |
| 22 | `theorem` | [forall_intro](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variantf9310bc9028049e1bce2643b781ace5e868da11cbc47244d1b48ceb48caf0c4f.lean/declarations/forall-intro--f2bc51cfa5ed148067c42807.md) | 128 | `result-track:f2bc51cfa5ed148067c42807a47fd74a206ab9b403a9cd374eafeeb10af48c03` |
| 23 | `theorem` | [forall_elim](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variantf9310bc9028049e1bce2643b781ace5e868da11cbc47244d1b48ceb48caf0c4f.lean/declarations/forall-elim--5df307ea3a1e0d9adb0d24d4.md) | 131 | `result-track:5df307ea3a1e0d9adb0d24d44208c5011de50258c5a9820aa392ae44d91842fc` |
| 24 | `theorem` | [exists_intro](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variantf9310bc9028049e1bce2643b781ace5e868da11cbc47244d1b48ceb48caf0c4f.lean/declarations/exists-intro--acde93cee196f3659cefba8e.md) | 134 | `result-track:acde93cee196f3659cefba8ebca6b4d98671013c2a42640ef31776997584e19b` |
| 25 | `theorem` | [exists_elim](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variantf9310bc9028049e1bce2643b781ace5e868da11cbc47244d1b48ceb48caf0c4f.lean/declarations/exists-elim--393f2deb4a4852c94e8cada5.md) | 139 | `result-track:393f2deb4a4852c94e8cada5a1b7e16e7e73ef599052f0e025d6db695216dce0` |
| 26 | `theorem` | [and_curry](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variantf9310bc9028049e1bce2643b781ace5e868da11cbc47244d1b48ceb48caf0c4f.lean/declarations/and-curry--7270accca16a465bd461c395.md) | 146 | `result-track:7270accca16a465bd461c3958d1a6ca28e16b59487fbf2edb14be3b1337e3dd6` |
| 27 | `theorem` | [or_curry](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variantf9310bc9028049e1bce2643b781ace5e868da11cbc47244d1b48ceb48caf0c4f.lean/declarations/or-curry--b2c83c09ea67378ebd023734.md) | 151 | `result-track:b2c83c09ea67378ebd023734240febdf83437e95f7bbc11e1b93215c69b3c6d2` |
| 28 | `theorem` | [imp_curry](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variantf9310bc9028049e1bce2643b781ace5e868da11cbc47244d1b48ceb48caf0c4f.lean/declarations/imp-curry--150d3845f50b755fbba1c2e9.md) | 156 | `result-track:150d3845f50b755fbba1c2e9b9fac8e0122a3c0347daed17ba2a645b7f01a0ea` |
| 29 | `def` | [evalsTo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variantf9310bc9028049e1bce2643b781ace5e868da11cbc47244d1b48ceb48caf0c4f.lean/declarations/evalsto--335a3fe502ae426843bf010f.md) | 168 | `declaration-track:335a3fe502ae426843bf010f99eb5844d2d1c41632d0ca84a1175219d960223c` |
| 30 | `theorem` | [evalsTo_nil](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variantf9310bc9028049e1bce2643b781ace5e868da11cbc47244d1b48ceb48caf0c4f.lean/declarations/evalsto-nil--ac948a880624656b58f798ad.md) | 171 | `result-track:ac948a880624656b58f798aded1df02c05c85e0154123bd5f3b1b79fc7a2d648` |
| 31 | `theorem` | [evalsTo_cons](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variantf9310bc9028049e1bce2643b781ace5e868da11cbc47244d1b48ceb48caf0c4f.lean/declarations/evalsto-cons--2a3db37ca5e95d757216c845.md) | 174 | `result-track:2a3db37ca5e95d757216c845fbff0c440c749734b97daa783bf019cb7b6f5e9b` |
| 32 | `theorem` | [evalsTo_total](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variantf9310bc9028049e1bce2643b781ace5e868da11cbc47244d1b48ceb48caf0c4f.lean/declarations/evalsto-total--76b67f0ae8601f0162e83bc8.md) | 177 | `result-track:76b67f0ae8601f0162e83bc80c75a31a55b8ad8cc7991806429610b889c97846` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
