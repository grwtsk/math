# Verification target: GRWTSK.Algebra.LinearAlgebra.NetEntropy.Variant0fc9b6a2d55f93760214526536adb6179961ab9634a78dcb36ff76310841fa3b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3e997501722ff7ab3a7da9284655694fda3bfaab",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/NetEntropy/Variant0fc9b6a2d55f93760214526536adb6179961ab9634a78dcb36ff76310841fa3b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/NetEntropy/Variant0fc9b6a2d55f93760214526536adb6179961ab9634a78dcb36ff76310841fa3b.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/NetEntropy/Variant0fc9b6a2d55f93760214526536adb6179961ab9634a78dcb36ff76310841fa3b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3e997501722ff7ab3a7da9284655694fda3bfaab`.

Source path: `GRWTSK/Algebra/LinearAlgebra/NetEntropy/Variant0fc9b6a2d55f93760214526536adb6179961ab9634a78dcb36ff76310841fa3b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/NetEntropy/Variant0fc9b6a2d55f93760214526536adb6179961ab9634a78dcb36ff76310841fa3b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Dynamics.TopologicalEntropy.CoverEntropy` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsDynNetIn](../../../../../mathematics/Algebra/LinearAlgebra/NetEntropy/Variant0fc9b6a2d55f93760214526536adb6179961ab9634a78dcb36ff76310841fa3b.lean/declarations/isdynnetin--698b231b1368481ddd4602a0.md) | 70 | `declaration-track:698b231b1368481ddd4602a0102f0f50dfed0d2b03aee02a8439ec79c386ef77` |
| 2 | `lemma` | [IsDynNetIn.of_le](../../../../../mathematics/Algebra/LinearAlgebra/NetEntropy/Variant0fc9b6a2d55f93760214526536adb6179961ab9634a78dcb36ff76310841fa3b.lean/declarations/isdynnetin-of-le--472d6b506a3f76db0d55da7e.md) | 73 | `result-track:472d6b506a3f76db0d55da7efdfedd2eb65ee4c304bc846350fc0915565a8cad` |
| 3 | `lemma` | [IsDynNetIn.of_entourage_subset](../../../../../mathematics/Algebra/LinearAlgebra/NetEntropy/Variant0fc9b6a2d55f93760214526536adb6179961ab9634a78dcb36ff76310841fa3b.lean/declarations/isdynnetin-of-entourage-subset--bf4db2e79c2e5a0f6e075422.md) | 78 | `result-track:bf4db2e79c2e5a0f6e07542210ba7266133c10890ce3c68ca513f369703a5a40` |
| 4 | `lemma` | [isDynNetIn_empty](../../../../../mathematics/Algebra/LinearAlgebra/NetEntropy/Variant0fc9b6a2d55f93760214526536adb6179961ab9634a78dcb36ff76310841fa3b.lean/declarations/isdynnetin-empty--e88d4a5f19d3fde04f34fab5.md) | 83 | `result-track:e88d4a5f19d3fde04f34fab5cbf8388e0db703a6e81f872310e9b114edc1f815` |
| 5 | `lemma` | [isDynNetIn_singleton](../../../../../mathematics/Algebra/LinearAlgebra/NetEntropy/Variant0fc9b6a2d55f93760214526536adb6179961ab9634a78dcb36ff76310841fa3b.lean/declarations/isdynnetin-singleton--7a35393d67c66abbea41d42a.md) | 87 | `result-track:7a35393d67c66abbea41d42ae653a613e5c1fe96d43f321e9f1634b3cdf5f937` |
| 6 | `lemma` | [IsDynNetIn.card_le_card_of_isDynCoverOf](../../../../../mathematics/Algebra/LinearAlgebra/NetEntropy/Variant0fc9b6a2d55f93760214526536adb6179961ab9634a78dcb36ff76310841fa3b.lean/declarations/isdynnetin-card-le-card-of-isdyncoverof--cf61f1bb0a013f594eb0902d.md) | 94 | `result-track:cf61f1bb0a013f594eb0902d1fee0432873fc4fb224deb58ad709709f5f28d3a` |
| 7 | `def` | [netMaxcard](../../../../../mathematics/Algebra/LinearAlgebra/NetEntropy/Variant0fc9b6a2d55f93760214526536adb6179961ab9634a78dcb36ff76310841fa3b.lean/declarations/netmaxcard--840e7399cd7861e0be309c94.md) | 112 | `declaration-track:840e7399cd7861e0be309c944fb6f6a4b4603c2f8c872ca2652a45d5caf2abdf` |
| 8 | `lemma` | [IsDynNetIn.card_le_netMaxcard](../../../../../mathematics/Algebra/LinearAlgebra/NetEntropy/Variant0fc9b6a2d55f93760214526536adb6179961ab9634a78dcb36ff76310841fa3b.lean/declarations/isdynnetin-card-le-netmaxcard--91c8278752a9c9a518ebb31c.md) | 115 | `result-track:91c8278752a9c9a518ebb31c791aef35d3d056e8f4828690fb29a02996c4db04` |
| 9 | `lemma` | [netMaxcard_monotone_time](../../../../../mathematics/Algebra/LinearAlgebra/NetEntropy/Variant0fc9b6a2d55f93760214526536adb6179961ab9634a78dcb36ff76310841fa3b.lean/declarations/netmaxcard-monotone-time--572049d9c4cb532541b07ac8.md) | 120 | `result-track:572049d9c4cb532541b07ac87e8a6792d3cf056c161dff1d71cdfa8e9af82e0b` |
| 10 | `lemma` | [netMaxcard_antitone](../../../../../mathematics/Algebra/LinearAlgebra/NetEntropy/Variant0fc9b6a2d55f93760214526536adb6179961ab9634a78dcb36ff76310841fa3b.lean/declarations/netmaxcard-antitone--7153f4fb69ce5e9726f901e8.md) | 124 | `result-track:7153f4fb69ce5e9726f901e8f439f326d879ef588482eb13eed3761106c46bb0` |
| 11 | `lemma` | [netMaxcard_finite_iff](../../../../../mathematics/Algebra/LinearAlgebra/NetEntropy/Variant0fc9b6a2d55f93760214526536adb6179961ab9634a78dcb36ff76310841fa3b.lean/declarations/netmaxcard-finite-iff--f9733dc9e076aedfccec1269.md) | 128 | `result-track:f9733dc9e076aedfccec12698b747026dd7eafb366fb26201cf5da779b8b7f94` |
| 12 | `lemma` | [netMaxcard_empty](../../../../../mathematics/Algebra/LinearAlgebra/NetEntropy/Variant0fc9b6a2d55f93760214526536adb6179961ab9634a78dcb36ff76310841fa3b.lean/declarations/netmaxcard-empty--e5d2a354910415c7278ad3ec.md) | 164 | `result-track:e5d2a354910415c7278ad3ec071e9158ce126a8e3e8fc95119668fe43f3c97c5` |
| 13 | `lemma` | [netMaxcard_eq_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/NetEntropy/Variant0fc9b6a2d55f93760214526536adb6179961ab9634a78dcb36ff76310841fa3b.lean/declarations/netmaxcard-eq-zero-iff--5d413733866021fe16fa3b68.md) | 171 | `result-track:5d413733866021fe16fa3b68c4122eff154b6e64047e8c5ba5db1f7d7395ba09` |
| 14 | `lemma` | [one_le_netMaxcard_iff](../../../../../mathematics/Algebra/LinearAlgebra/NetEntropy/Variant0fc9b6a2d55f93760214526536adb6179961ab9634a78dcb36ff76310841fa3b.lean/declarations/one-le-netmaxcard-iff--4a99955a084365882476c60e.md) | 182 | `result-track:4a99955a084365882476c60e04bf45ffeb6bbf669d83994d8c7eede4a365a549` |
| 15 | `lemma` | [netMaxcard_zero](../../../../../mathematics/Algebra/LinearAlgebra/NetEntropy/Variant0fc9b6a2d55f93760214526536adb6179961ab9634a78dcb36ff76310841fa3b.lean/declarations/netmaxcard-zero--f21f1164136d03ce72d28ded.md) | 187 | `result-track:f21f1164136d03ce72d28ded277f6add632c4f7b3569d8aea6edb65f05a0e2b9` |
| 16 | `lemma` | [netMaxcard_univ](../../../../../mathematics/Algebra/LinearAlgebra/NetEntropy/Variant0fc9b6a2d55f93760214526536adb6179961ab9634a78dcb36ff76310841fa3b.lean/declarations/netmaxcard-univ--c698a3bfc35c64c62e9fdfa9.md) | 196 | `result-track:c698a3bfc35c64c62e9fdfa92839d0f2660214a310506e05b6acf24c6746741a` |
| 17 | `lemma` | [netMaxcard_infinite_iff](../../../../../mathematics/Algebra/LinearAlgebra/NetEntropy/Variant0fc9b6a2d55f93760214526536adb6179961ab9634a78dcb36ff76310841fa3b.lean/declarations/netmaxcard-infinite-iff--1a64966a27de2a48afa6bc15.md) | 205 | `result-track:1a64966a27de2a48afa6bc158c04f46d3f5cd431731e2459cb053612c2a52461` |
| 18 | `lemma` | [netMaxcard_le_coverMincard](../../../../../mathematics/Algebra/LinearAlgebra/NetEntropy/Variant0fc9b6a2d55f93760214526536adb6179961ab9634a78dcb36ff76310841fa3b.lean/declarations/netmaxcard-le-covermincard--8cf1d5bd15627bbded90bc9d.md) | 221 | `result-track:8cf1d5bd15627bbded90bc9da9fa5bdd51505d7e15d444671f479ff84e089dfa` |
| 19 | `lemma` | [coverMincard_le_netMaxcard](../../../../../mathematics/Algebra/LinearAlgebra/NetEntropy/Variant0fc9b6a2d55f93760214526536adb6179961ab9634a78dcb36ff76310841fa3b.lean/declarations/covermincard-le-netmaxcard--122f0acf43c2ee0862ab5d34.md) | 233 | `result-track:122f0acf43c2ee0862ab5d34b221df1590c7f501bbc22d5e259c79259f25bb3c` |
| 20 | `def` | [netEntropyEntourage](../../../../../mathematics/Algebra/LinearAlgebra/NetEntropy/Variant0fc9b6a2d55f93760214526536adb6179961ab9634a78dcb36ff76310841fa3b.lean/declarations/netentropyentourage--7ff95f5547c5c3145d397132.md) | 268 | `declaration-track:7ff95f5547c5c3145d397132eaef5f461647a97bbe43a83f540c302599d1d4a4` |
| 21 | `def` | [netEntropyInfEntourage](../../../../../mathematics/Algebra/LinearAlgebra/NetEntropy/Variant0fc9b6a2d55f93760214526536adb6179961ab9634a78dcb36ff76310841fa3b.lean/declarations/netentropyinfentourage--2f75d5ce255fc28c8d8b699f.md) | 274 | `declaration-track:2f75d5ce255fc28c8d8b699fcd804022014c7ab6d3de8f6418e04ffa127de5eb` |
| 22 | `lemma` | [netEntropyInfEntourage_antitone](../../../../../mathematics/Algebra/LinearAlgebra/NetEntropy/Variant0fc9b6a2d55f93760214526536adb6179961ab9634a78dcb36ff76310841fa3b.lean/declarations/netentropyinfentourage-antitone--4b0c5c21bcfcbd69f50cb2a4.md) | 277 | `result-track:4b0c5c21bcfcbd69f50cb2a47ac9e42bea493d6a6a9bc4e25e2fa556810c14d2` |
| 23 | `lemma` | [netEntropyEntourage_antitone](../../../../../mathematics/Algebra/LinearAlgebra/NetEntropy/Variant0fc9b6a2d55f93760214526536adb6179961ab9634a78dcb36ff76310841fa3b.lean/declarations/netentropyentourage-antitone--c49dd629e092abca05502d74.md) | 281 | `result-track:c49dd629e092abca05502d74aa38821ceee89a9fb38f0531aa3a1677262eed81` |
| 24 | `lemma` | [netEntropyInfEntourage_le_netEntropyEntourage](../../../../../mathematics/Algebra/LinearAlgebra/NetEntropy/Variant0fc9b6a2d55f93760214526536adb6179961ab9634a78dcb36ff76310841fa3b.lean/declarations/netentropyinfentourage-le-netentropyentourage--2d20b34b1106c57be69ead9d.md) | 285 | `result-track:2d20b34b1106c57be69ead9df8d43bfd53ef3b6428eacdb40de91c925b4123f5` |
| 25 | `lemma` | [netEntropyEntourage_empty](../../../../../mathematics/Algebra/LinearAlgebra/NetEntropy/Variant0fc9b6a2d55f93760214526536adb6179961ab9634a78dcb36ff76310841fa3b.lean/declarations/netentropyentourage-empty--a3fa767d4c3125ba765d5da4.md) | 290 | `result-track:a3fa767d4c3125ba765d5da47f96e4de51e101a563920e598d41edabfb260eb2` |
| 26 | `lemma` | [netEntropyInfEntourage_empty](../../../../../mathematics/Algebra/LinearAlgebra/NetEntropy/Variant0fc9b6a2d55f93760214526536adb6179961ab9634a78dcb36ff76310841fa3b.lean/declarations/netentropyinfentourage-empty--5b26e838e61ae6157eb64a36.md) | 297 | `result-track:5b26e838e61ae6157eb64a366a0e9b10cb27a70753a7d294cb89a79c1ccf3989` |
| 27 | `lemma` | [netEntropyInfEntourage_nonneg](../../../../../mathematics/Algebra/LinearAlgebra/NetEntropy/Variant0fc9b6a2d55f93760214526536adb6179961ab9634a78dcb36ff76310841fa3b.lean/declarations/netentropyinfentourage-nonneg--aee830d4cc692986606eac0d.md) | 301 | `result-track:aee830d4cc692986606eac0d138fb0c2af25d95181155c223632607ae196eb1d` |
| 28 | `lemma` | [netEntropyEntourage_nonneg](../../../../../mathematics/Algebra/LinearAlgebra/NetEntropy/Variant0fc9b6a2d55f93760214526536adb6179961ab9634a78dcb36ff76310841fa3b.lean/declarations/netentropyentourage-nonneg--a75b2b290a03b809915a8356.md) | 310 | `result-track:a75b2b290a03b809915a83562f9e3b726cd66cc516df72231cc66758668ef735` |
| 29 | `lemma` | [netEntropyInfEntourage_univ](../../../../../mathematics/Algebra/LinearAlgebra/NetEntropy/Variant0fc9b6a2d55f93760214526536adb6179961ab9634a78dcb36ff76310841fa3b.lean/declarations/netentropyinfentourage-univ--1de9948421750cf444c97d1e.md) | 314 | `result-track:1de9948421750cf444c97d1e4da89971262403b229a823c0004deb26bd5ca17b` |
| 30 | `lemma` | [netEntropyEntourage_univ](../../../../../mathematics/Algebra/LinearAlgebra/NetEntropy/Variant0fc9b6a2d55f93760214526536adb6179961ab9634a78dcb36ff76310841fa3b.lean/declarations/netentropyentourage-univ--fe371053f17c39ea1cf41f45.md) | 319 | `result-track:fe371053f17c39ea1cf41f45197a09057745c62901bac2c11821a29f9d2fe085` |
| 31 | `lemma` | [netEntropyInfEntourage_le_coverEntropyInfEntourage](../../../../../mathematics/Algebra/LinearAlgebra/NetEntropy/Variant0fc9b6a2d55f93760214526536adb6179961ab9634a78dcb36ff76310841fa3b.lean/declarations/netentropyinfentourage-le-coverentropyinfentourage--75821f787efb5b34e15c0e41.md) | 324 | `result-track:75821f787efb5b34e15c0e41f469408a0560de22e0d7f13e798d252e482f0110` |
| 32 | `lemma` | [coverEntropyInfEntourage_le_netEntropyInfEntourage](../../../../../mathematics/Algebra/LinearAlgebra/NetEntropy/Variant0fc9b6a2d55f93760214526536adb6179961ab9634a78dcb36ff76310841fa3b.lean/declarations/coverentropyinfentourage-le-netentropyinfentourage--a165921edbaf63f4ca0609e6.md) | 329 | `result-track:a165921edbaf63f4ca0609e6a88a46cf20d2b865c645cf9a6fe904dea44f1491` |
| 33 | `lemma` | [netEntropyEntourage_le_coverEntropyEntourage](../../../../../mathematics/Algebra/LinearAlgebra/NetEntropy/Variant0fc9b6a2d55f93760214526536adb6179961ab9634a78dcb36ff76310841fa3b.lean/declarations/netentropyentourage-le-coverentropyentourage--90708814286851d8c4066db0.md) | 334 | `result-track:90708814286851d8c4066db0e93bf39495b44bfa83f88d44d2b9465827614ba2` |
| 34 | `lemma` | [coverEntropyEntourage_le_netEntropyEntourage](../../../../../mathematics/Algebra/LinearAlgebra/NetEntropy/Variant0fc9b6a2d55f93760214526536adb6179961ab9634a78dcb36ff76310841fa3b.lean/declarations/coverentropyentourage-le-netentropyentourage--85e048f6d4c425db93e2fd85.md) | 339 | `result-track:85e048f6d4c425db93e2fd8566dca69f1ef23a562754872a161e0ac55fd18cde` |
| 35 | `theorem` | [coverEntropyInf_eq_iSup_netEntropyInfEntourage](../../../../../mathematics/Algebra/LinearAlgebra/NetEntropy/Variant0fc9b6a2d55f93760214526536adb6179961ab9634a78dcb36ff76310841fa3b.lean/declarations/coverentropyinf-eq-isup-netentropyinfentourage--27fc222c57fb5f66d58708c4.md) | 352 | `result-track:27fc222c57fb5f66d58708c48721bac284202eb2c11fa80cb01aa04f36a8ddc0` |
| 36 | `theorem` | [coverEntropy_eq_iSup_netEntropyEntourage](../../../../../mathematics/Algebra/LinearAlgebra/NetEntropy/Variant0fc9b6a2d55f93760214526536adb6179961ab9634a78dcb36ff76310841fa3b.lean/declarations/coverentropy-eq-isup-netentropyentourage--de3a7e0f93bf26f2f67785de.md) | 366 | `result-track:de3a7e0f93bf26f2f67785de52150c20ad21331f8db68082a4825f974a3331b6` |
| 37 | `lemma` | [coverEntropyInf_eq_iSup_basis_netEntropyInfEntourage](../../../../../mathematics/Algebra/LinearAlgebra/NetEntropy/Variant0fc9b6a2d55f93760214526536adb6179961ab9634a78dcb36ff76310841fa3b.lean/declarations/coverentropyinf-eq-isup-basis-netentropyinfentourage--706529bed78f29f0c6895642.md) | 376 | `result-track:706529bed78f29f0c6895642a9fd5f4f17de0abe0b9bb3bb0fe0e00a9524cfd9` |
| 38 | `lemma` | [coverEntropy_eq_iSup_basis_netEntropyEntourage](../../../../../mathematics/Algebra/LinearAlgebra/NetEntropy/Variant0fc9b6a2d55f93760214526536adb6179961ab9634a78dcb36ff76310841fa3b.lean/declarations/coverentropy-eq-isup-basis-netentropyentourage--53065d0bc35ea80a58892951.md) | 386 | `result-track:53065d0bc35ea80a58892951d4b312db7683c09ee9c7af00e771c2ee9075c802` |
| 39 | `lemma` | [netEntropyInfEntourage_le_coverEntropyInf](../../../../../mathematics/Algebra/LinearAlgebra/NetEntropy/Variant0fc9b6a2d55f93760214526536adb6179961ab9634a78dcb36ff76310841fa3b.lean/declarations/netentropyinfentourage-le-coverentropyinf--21f58610e568aa8dd67b39c2.md) | 396 | `result-track:21f58610e568aa8dd67b39c2fa7cf9e7079f4569bddb1b8ca108e046fe035c2f` |
| 40 | `lemma` | [netEntropyEntourage_le_coverEntropy](../../../../../mathematics/Algebra/LinearAlgebra/NetEntropy/Variant0fc9b6a2d55f93760214526536adb6179961ab9634a78dcb36ff76310841fa3b.lean/declarations/netentropyentourage-le-coverentropy--46d08ffe1d9a6a9d73fb3d56.md) | 401 | `result-track:46d08ffe1d9a6a9d73fb3d565868dbf337596109c8014d1a1f9cde3d193bed3d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
