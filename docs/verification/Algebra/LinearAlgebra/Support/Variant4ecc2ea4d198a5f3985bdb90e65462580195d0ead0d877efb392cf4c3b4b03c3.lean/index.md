# Verification target: GRWTSK.Algebra.LinearAlgebra.Support.Variant4ecc2ea4d198a5f3985bdb90e65462580195d0ead0d877efb392cf4c3b4b03c3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d0548ef864cf81a5d1a26127852a37b693c94658",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Support/Variant4ecc2ea4d198a5f3985bdb90e65462580195d0ead0d877efb392cf4c3b4b03c3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Support/Variant4ecc2ea4d198a5f3985bdb90e65462580195d0ead0d877efb392cf4c3b4b03c3.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Support/Variant4ecc2ea4d198a5f3985bdb90e65462580195d0ead0d877efb392cf4c3b4b03c3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d0548ef864cf81a5d1a26127852a37b693c94658`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Support/Variant4ecc2ea4d198a5f3985bdb90e65462580195d0ead0d877efb392cf4c3b4b03c3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Support/Variant4ecc2ea4d198a5f3985bdb90e65462580195d0ead0d877efb392cf4c3b4b03c3.lean.json)

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
| 1 | `def` | [Module.support](../../../../../mathematics/Algebra/LinearAlgebra/Support/Variant4ecc2ea4d198a5f3985bdb90e65462580195d0ead0d877efb392cf4c3b4b03c3.lean/declarations/module-support--4fba6ce46fddd17afeba9da2.md) | 49 | `declaration-track:4fba6ce46fddd17afeba9da2ccfdb64d6f813863955d91441da1e99841f1df08` |
| 2 | `lemma` | [Module.mem_support_iff](../../../../../mathematics/Algebra/LinearAlgebra/Support/Variant4ecc2ea4d198a5f3985bdb90e65462580195d0ead0d877efb392cf4c3b4b03c3.lean/declarations/module-mem-support-iff--628c3c3d711fc6a4df88f877.md) | 52 | `result-track:628c3c3d711fc6a4df88f877e8a4e0b06fd6c5678ba21f800fa7c6ebaad5de9d` |
| 3 | `lemma` | [Module.notMem_support_iff](../../../../../mathematics/Algebra/LinearAlgebra/Support/Variant4ecc2ea4d198a5f3985bdb90e65462580195d0ead0d877efb392cf4c3b4b03c3.lean/declarations/module-notmem-support-iff--7cd60bd1f31a72ef7b0ae1c7.md) | 55 | `result-track:7cd60bd1f31a72ef7b0ae1c7da5236045b9dde325521782f3ec5ab17b5ab7e8d` |
| 4 | `lemma` | [Module.notMem_support_iff'](../../../../../mathematics/Algebra/LinearAlgebra/Support/Variant4ecc2ea4d198a5f3985bdb90e65462580195d0ead0d877efb392cf4c3b4b03c3.lean/declarations/module-notmem-support-iff--fd469b7adaf739d6f752b60c.md) | 59 | `result-track:fd469b7adaf739d6f752b60c815bfef2de67ed1bc5e5b46bbc94907f7d919365` |
| 5 | `lemma` | [Module.mem_support_iff'](../../../../../mathematics/Algebra/LinearAlgebra/Support/Variant4ecc2ea4d198a5f3985bdb90e65462580195d0ead0d877efb392cf4c3b4b03c3.lean/declarations/module-mem-support-iff--a0f0c5c6acd1eef5009e0ec1.md) | 64 | `result-track:a0f0c5c6acd1eef5009e0ec1fcb0c948da66bc4754758fe735d6f6b54b37aa2b` |
| 6 | `lemma` | [Module.mem_support_iff_exists_annihilator](../../../../../mathematics/Algebra/LinearAlgebra/Support/Variant4ecc2ea4d198a5f3985bdb90e65462580195d0ead0d877efb392cf4c3b4b03c3.lean/declarations/module-mem-support-iff-exists-annihilator--a3b67636c89cd1ad5909f5ca.md) | 70 | `result-track:a3b67636c89cd1ad5909f5cadd04de585ebe33ca89211cb34380f6e8a210ec2a` |
| 7 | `lemma` | [Module.mem_support_mono](../../../../../mathematics/Algebra/LinearAlgebra/Support/Variant4ecc2ea4d198a5f3985bdb90e65462580195d0ead0d877efb392cf4c3b4b03c3.lean/declarations/module-mem-support-mono--b24a06d3f2e6d4f612154e12.md) | 75 | `result-track:b24a06d3f2e6d4f612154e12b71cba71a281087fc3e0e28c7df0c061754e49de` |
| 8 | `lemma` | [Module.mem_support_iff_of_span_eq_top](../../../../../mathematics/Algebra/LinearAlgebra/Support/Variant4ecc2ea4d198a5f3985bdb90e65462580195d0ead0d877efb392cf4c3b4b03c3.lean/declarations/module-mem-support-iff-of-span-eq-top--3b6c0dcfcfe9009f3b9fbafe.md) | 80 | `result-track:3b6c0dcfcfe9009f3b9fbafe3bd11d3d2dd0d5649ae92ea01c17c7a34ab7aa26` |
| 9 | `lemma` | [Module.annihilator_le_of_mem_support](../../../../../mathematics/Algebra/LinearAlgebra/Support/Variant4ecc2ea4d198a5f3985bdb90e65462580195d0ead0d877efb392cf4c3b4b03c3.lean/declarations/module-annihilator-le-of-mem-support--1ef5f3271cf575910948ef0e.md) | 94 | `result-track:1ef5f3271cf575910948ef0e044f1493fed1b25d6b3b03c3887fd05f672c91f5` |
| 10 | `lemma` | [LocalizedModule.subsingleton_iff_support_subset](../../../../../mathematics/Algebra/LinearAlgebra/Support/Variant4ecc2ea4d198a5f3985bdb90e65462580195d0ead0d877efb392cf4c3b4b03c3.lean/declarations/localizedmodule-subsingleton-iff-support-subset--99186665a0fd1a9cfecb4cf1.md) | 99 | `result-track:99186665a0fd1a9cfecb4cf1b73a8e8d0e838c0984261a6e022fc6d190dd0ee9` |
| 11 | `lemma` | [Module.support_eq_empty_iff](../../../../../mathematics/Algebra/LinearAlgebra/Support/Variant4ecc2ea4d198a5f3985bdb90e65462580195d0ead0d877efb392cf4c3b4b03c3.lean/declarations/module-support-eq-empty-iff--056e6a1429b1f5a021e25e2e.md) | 119 | `result-track:056e6a1429b1f5a021e25e2ea7cab84f24b0550c972c34861a2827430e5a5870` |
| 12 | `lemma` | [Module.nonempty_support_iff](../../../../../mathematics/Algebra/LinearAlgebra/Support/Variant4ecc2ea4d198a5f3985bdb90e65462580195d0ead0d877efb392cf4c3b4b03c3.lean/declarations/module-nonempty-support-iff--c56c8c4ee997a51f1045e612.md) | 126 | `result-track:c56c8c4ee997a51f1045e612288f2731eefba152c2b953d95c52e6fc32f92030` |
| 13 | `lemma` | [Module.nonempty_support_of_nontrivial](../../../../../mathematics/Algebra/LinearAlgebra/Support/Variant4ecc2ea4d198a5f3985bdb90e65462580195d0ead0d877efb392cf4c3b4b03c3.lean/declarations/module-nonempty-support-of-nontrivial--172b26d53957c4b76832db81.md) | 131 | `result-track:172b26d53957c4b76832db81da79834aaec9c29da8061b9b30949f7945a6c935` |
| 14 | `lemma` | [Module.support_eq_empty](../../../../../mathematics/Algebra/LinearAlgebra/Support/Variant4ecc2ea4d198a5f3985bdb90e65462580195d0ead0d877efb392cf4c3b4b03c3.lean/declarations/module-support-eq-empty--e461c1a3c487120cffdce896.md) | 134 | `result-track:e461c1a3c487120cffdce8964857440be2e973e05ba9888544d3c751c90da85c` |
| 15 | `lemma` | [Module.support_of_algebra](../../../../../mathematics/Algebra/LinearAlgebra/Support/Variant4ecc2ea4d198a5f3985bdb90e65462580195d0ead0d877efb392cf4c3b4b03c3.lean/declarations/module-support-of-algebra--544d5d9a87f55d42178c7c59.md) | 138 | `result-track:544d5d9a87f55d42178c7c59ac75beab0d9c575c7261d5f2eb8f78a6d9593115` |
| 16 | `lemma` | [Module.support_of_isTorsionFree](../../../../../mathematics/Algebra/LinearAlgebra/Support/Variant4ecc2ea4d198a5f3985bdb90e65462580195d0ead0d877efb392cf4c3b4b03c3.lean/declarations/module-support-of-istorsionfree--c7f250bf8f9be7599058fb76.md) | 146 | `result-track:c7f250bf8f9be7599058fb766acfe2b58fc4932aa0d027db5f2546366f2544b7` |
| 17 | `lemma` | [Module.support_subset_of_injective](../../../../../mathematics/Algebra/LinearAlgebra/Support/Variant4ecc2ea4d198a5f3985bdb90e65462580195d0ead0d877efb392cf4c3b4b03c3.lean/declarations/module-support-subset-of-injective--c9e9c9dcd079f4252f119d5f.md) | 159 | `result-track:c9e9c9dcd079f4252f119d5f24fb0460674bfe7e3adf0b64ee3cc10b74098b71` |
| 18 | `lemma` | [Module.support_subset_of_surjective](../../../../../mathematics/Algebra/LinearAlgebra/Support/Variant4ecc2ea4d198a5f3985bdb90e65462580195d0ead0d877efb392cf4c3b4b03c3.lean/declarations/module-support-subset-of-surjective--b69466e0ef23cace35282ac2.md) | 166 | `result-track:b69466e0ef23cace35282ac23803333ac960a0381d72264af5f280eacb66e2f5` |
| 19 | `lemma` | [Module.support_of_exact](../../../../../mathematics/Algebra/LinearAlgebra/Support/Variant4ecc2ea4d198a5f3985bdb90e65462580195d0ead0d877efb392cf4c3b4b03c3.lean/declarations/module-support-of-exact--6a3629d63c52df1b06d173e4.md) | 176 | `result-track:6a3629d63c52df1b06d173e441890e3611ccf988b9937ce01902095e991548c2` |
| 20 | `lemma` | [LinearEquiv.support_eq](../../../../../mathematics/Algebra/LinearAlgebra/Support/Variant4ecc2ea4d198a5f3985bdb90e65462580195d0ead0d877efb392cf4c3b4b03c3.lean/declarations/linearequiv-support-eq--d8d57dcd94da9491af609d22.md) | 191 | `result-track:d8d57dcd94da9491af609d2297f3312b74ed50194253b32edfa1f741eb9455a5` |
| 21 | `lemma` | [Module.mem_support_iff_of_finite](../../../../../mathematics/Algebra/LinearAlgebra/Support/Variant4ecc2ea4d198a5f3985bdb90e65462580195d0ead0d877efb392cf4c3b4b03c3.lean/declarations/module-mem-support-iff-of-finite--03e81dc32d826e9121fabd15.md) | 202 | `result-track:03e81dc32d826e9121fabd158ed790aefd14ba44411be904fd8bc8fb0eae9ff8` |
| 22 | `lemma` | [Module.support_eq_zeroLocus](../../../../../mathematics/Algebra/LinearAlgebra/Support/Variant4ecc2ea4d198a5f3985bdb90e65462580195d0ead0d877efb392cf4c3b4b03c3.lean/declarations/module-support-eq-zerolocus--bb58a9a39074700cf03c3afc.md) | 218 | `result-track:bb58a9a39074700cf03c3afcfa798fe509bcb4e1deb5758f354cf9710af221ae` |
| 23 | `lemma` | [LocalizedModule.exists_subsingleton_away](../../../../../mathematics/Algebra/LinearAlgebra/Support/Variant4ecc2ea4d198a5f3985bdb90e65462580195d0ead0d877efb392cf4c3b4b03c3.lean/declarations/localizedmodule-exists-subsingleton-away--d353e0068cc34106daa86f97.md) | 224 | `result-track:d353e0068cc34106daa86f97a7809a02752b1a0017fbfd4b7eb858ef7eef644a` |
| 24 | `lemma` | [IsLocalizedModule.exists_subsingleton_away](../../../../../mathematics/Algebra/LinearAlgebra/Support/Variant4ecc2ea4d198a5f3985bdb90e65462580195d0ead0d877efb392cf4c3b4b03c3.lean/declarations/islocalizedmodule-exists-subsingleton-away--a8961c353fcbe6028e043f29.md) | 235 | `result-track:a8961c353fcbe6028e043f295ef0066eb60fa8c0458c4c3748d7770c8e16a9e9` |
| 25 | `lemma` | [Module.exists_localizedMap_away_surjective_of_localizedMap_atPrime_surjective](../../../../../mathematics/Algebra/LinearAlgebra/Support/Variant4ecc2ea4d198a5f3985bdb90e65462580195d0ead0d877efb392cf4c3b4b03c3.lean/declarations/module-exists-localizedmap-away-surjective-of-localizedmap-atprime-surje--97b27f33d56654fc7c6bbcca.md) | 243 | `result-track:97b27f33d56654fc7c6bbccacd2a7038f526e80985469104e56b313385de80cd` |
| 26 | `theorem` | [Module.support_quotient](../../../../../mathematics/Algebra/LinearAlgebra/Support/Variant4ecc2ea4d198a5f3985bdb90e65462580195d0ead0d877efb392cf4c3b4b03c3.lean/declarations/module-support-quotient--9f060ad53de12bbf246b442d.md) | 251 | `result-track:9f060ad53de12bbf246b442d8bf6aba94d2250ad037564fa684bf88d54eff870` |
| 27 | `theorem` | [Module.support_quotSMulTop](../../../../../mathematics/Algebra/LinearAlgebra/Support/Variant4ecc2ea4d198a5f3985bdb90e65462580195d0ead0d877efb392cf4c3b4b03c3.lean/declarations/module-support-quotsmultop--d318369d0567746eea6e55ba.md) | 279 | `result-track:d318369d0567746eea6e55ba527d506b55ce0d18e03de2b881de846fa58e65e6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
