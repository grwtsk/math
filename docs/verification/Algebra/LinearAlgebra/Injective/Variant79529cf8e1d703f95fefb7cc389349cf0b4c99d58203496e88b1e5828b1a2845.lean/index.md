# Verification target: GRWTSK.Algebra.LinearAlgebra.Injective.Variant79529cf8e1d703f95fefb7cc389349cf0b4c99d58203496e88b1e5828b1a2845

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3943d6270547bd31383d57006031212950940e70",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Injective/Variant79529cf8e1d703f95fefb7cc389349cf0b4c99d58203496e88b1e5828b1a2845.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variant79529cf8e1d703f95fefb7cc389349cf0b4c99d58203496e88b1e5828b1a2845.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variant79529cf8e1d703f95fefb7cc389349cf0b4c99d58203496e88b1e5828b1a2845.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3943d6270547bd31383d57006031212950940e70`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Injective/Variant79529cf8e1d703f95fefb7cc389349cf0b4c99d58203496e88b1e5828b1a2845.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Injective/Variant79529cf8e1d703f95fefb7cc389349cf0b4c99d58203496e88b1e5828b1a2845.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.LinearPMap` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Equiv.TransferInstance` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Small.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Defs` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Module.Injective](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variant79529cf8e1d703f95fefb7cc389349cf0b4c99d58203496e88b1e5828b1a2845.lean/declarations/module-injective--9693874c52bc7f296d96fa1c.md) | 63 | `declaration-track:9693874c52bc7f296d96fa1c4d7988c1da7191554eb173732c8555485ab823fb` |
| 2 | `def` | [Module.Baer](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variant79529cf8e1d703f95fefb7cc389349cf0b4c99d58203496e88b1e5828b1a2845.lean/declarations/module-baer--d6f15c02c706efdaf5ab5311.md) | 70 | `declaration-track:d6f15c02c706efdaf5ab531151d17ddad5495b9a88c79f3f7092161c25395fc4` |
| 3 | `lemma` | [of_equiv](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variant79529cf8e1d703f95fefb7cc389349cf0b4c99d58203496e88b1e5828b1a2845.lean/declarations/of-equiv--9266adae06e35f9efe464e75.md) | 78 | `result-track:9266adae06e35f9efe464e759c778572a9ed8dd54c3c07f6b02cea7e1048d39e` |
| 4 | `lemma` | [congr](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variant79529cf8e1d703f95fefb7cc389349cf0b4c99d58203496e88b1e5828b1a2845.lean/declarations/congr--d65f603fc5ca8eb2bc5841f2.md) | 82 | `result-track:d65f603fc5ca8eb2bc5841f2165b15ea68797a34e5718626040f5e4a1ea11f31` |
| 5 | `structure` | [ExtensionOf](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variant79529cf8e1d703f95fefb7cc389349cf0b4c99d58203496e88b1e5828b1a2845.lean/declarations/extensionof--7235e39bd4869b4e592b8d54.md) | 87 | `declaration-track:7235e39bd4869b4e592b8d542eb6dc5f134fad9690dc11617b412faea4d1b581` |
| 6 | `theorem` | [ExtensionOf.ext](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variant79529cf8e1d703f95fefb7cc389349cf0b4c99d58203496e88b1e5828b1a2845.lean/declarations/extensionof-ext--dca4ce6814d7697b13c214e6.md) | 96 | `result-track:dca4ce6814d7697b13c214e621070d82d9fc415cb2b2181de6ec221800e83776` |
| 7 | `theorem` | [ExtensionOf.dExt](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variant79529cf8e1d703f95fefb7cc389349cf0b4c99d58203496e88b1e5828b1a2845.lean/declarations/extensionof-dext--3eae2d12edc3db91e4afff5b.md) | 106 | `result-track:3eae2d12edc3db91e4afff5b0c27d4b30cf559bc439a638b4002b6273b0b5c73` |
| 8 | `theorem` | [ExtensionOf.dExt_iff](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variant79529cf8e1d703f95fefb7cc389349cf0b4c99d58203496e88b1e5828b1a2845.lean/declarations/extensionof-dext-iff--255259ff5c0f961309c427d0.md) | 112 | `result-track:255259ff5c0f961309c427d005d2f6b97cb75d2f18af0be9963aed5d4b6a0231` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variant79529cf8e1d703f95fefb7cc389349cf0b4c99d58203496e88b1e5828b1a2845.lean/declarations/instance--b4e12d47fee4f507805e665d.md) | 120 | `declaration-track:b4e12d47fee4f507805e665d2d571f70de54a7e1bcab08155f33017afccad311` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variant79529cf8e1d703f95fefb7cc389349cf0b4c99d58203496e88b1e5828b1a2845.lean/declarations/instance--c4dff536a3d14ac41790b7a2.md) | 131 | `declaration-track:c4dff536a3d14ac41790b7a211600233789cfda2e1a6f66659cfe39e64c10e1e` |
| 11 | `theorem` | [chain_linearPMap_of_chain_extensionOf](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variant79529cf8e1d703f95fefb7cc389349cf0b4c99d58203496e88b1e5828b1a2845.lean/declarations/chain-linearpmap-of-chain-extensionof--0dd7ae5af3bc091236d19c93.md) | 142 | `result-track:0dd7ae5af3bc091236d19c932935b567b448c081dacde6370c4426f725e92b8b` |
| 12 | `def` | [ExtensionOf.max](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variant79529cf8e1d703f95fefb7cc389349cf0b4c99d58203496e88b1e5828b1a2845.lean/declarations/extensionof-max--ed4a16ba69d4f1f77751dcfd.md) | 149 | `declaration-track:ed4a16ba69d4f1f77751dcfdf0bf85f90ae4d00e9aadc7ee5587a066dccfb499` |
| 13 | `theorem` | [ExtensionOf.le_max](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variant79529cf8e1d703f95fefb7cc389349cf0b4c99d58203496e88b1e5828b1a2845.lean/declarations/extensionof-le-max--4d095fdce60a63dc4523a0f6.md) | 165 | `result-track:4d095fdce60a63dc4523a0f6a61f2eea8de9e59999fcf5035d6a555f1c17c5da` |
| 14 | `instance` | [ExtensionOf.inhabited](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variant79529cf8e1d703f95fefb7cc389349cf0b4c99d58203496e88b1e5828b1a2845.lean/declarations/extensionof-inhabited--556b76803740fda73bee2946.md) | 173 | `declaration-track:556b76803740fda73bee29462abb2695eb5d279d2bbe5aecd17bc949501045a9` |
| 15 | `def` | [extensionOfMax](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variant79529cf8e1d703f95fefb7cc389349cf0b4c99d58203496e88b1e5828b1a2845.lean/declarations/extensionofmax--28abddeedea7962e1d317ed9.md) | 198 | `declaration-track:28abddeedea7962e1d317ed9d41f83f2ef79b6f0e070732a84911ab107ba6886` |
| 16 | `theorem` | [extensionOfMax_is_max](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variant79529cf8e1d703f95fefb7cc389349cf0b4c99d58203496e88b1e5828b1a2845.lean/declarations/extensionofmax-is-max--1c137625888a21b7944d3843.md) | 202 | `result-track:1c137625888a21b7944d38430e2185ff97f84f28ac85b378694d4fbcad4ebd51` |
| 17 | `abbrev` | [supExtensionOfMaxSingleton](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variant79529cf8e1d703f95fefb7cc389349cf0b4c99d58203496e88b1e5828b1a2845.lean/declarations/supextensionofmaxsingleton--50ec92084837be179ba9a0a9.md) | 209 | `declaration-track:50ec92084837be179ba9a0a9896f618e7ee72eb8214f209cfa68ac2ef44c6b72` |
| 18 | `theorem` | [extensionOfMax_adjoin.aux1](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variant79529cf8e1d703f95fefb7cc389349cf0b4c99d58203496e88b1e5828b1a2845.lean/declarations/extensionofmax-adjoin-aux1--db033351064731413b3db09c.md) | 214 | `result-track:db033351064731413b3db09c79f33e9f62fec7b3a8aae71c21da02f8f3bced14` |
| 19 | `def` | [ExtensionOfMaxAdjoin.fst](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variant79529cf8e1d703f95fefb7cc389349cf0b4c99d58203496e88b1e5828b1a2845.lean/declarations/extensionofmaxadjoin-fst--90b8a057300472e6495ba941.md) | 224 | `declaration-track:90b8a057300472e6495ba9411b99d899dfaba4e65c7c26309daf0bfe8fe0b28a` |
| 20 | `def` | [ExtensionOfMaxAdjoin.snd](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variant79529cf8e1d703f95fefb7cc389349cf0b4c99d58203496e88b1e5828b1a2845.lean/declarations/extensionofmaxadjoin-snd--4bc5678aeb49ec075da4544d.md) | 229 | `declaration-track:4bc5678aeb49ec075da4544d65cdf59309aea8e3c00bb406be4c287fede6684e` |
| 21 | `theorem` | [ExtensionOfMaxAdjoin.eqn](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variant79529cf8e1d703f95fefb7cc389349cf0b4c99d58203496e88b1e5828b1a2845.lean/declarations/extensionofmaxadjoin-eqn--d3ae4d93905dbc03e0b28fe7.md) | 232 | `result-track:d3ae4d93905dbc03e0b28fe739d4dda5e1dab2b0a93714020a08e5e6b91ebf42` |
| 22 | `def` | [ExtensionOfMaxAdjoin.ideal](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variant79529cf8e1d703f95fefb7cc389349cf0b4c99d58203496e88b1e5828b1a2845.lean/declarations/extensionofmaxadjoin-ideal--46956477c611952278efd77d.md) | 240 | `declaration-track:46956477c611952278efd77dbe3a7b32df6d5b9fb37ad94cc446dab953dcbc62` |
| 23 | `def` | [ExtensionOfMaxAdjoin.idealTo](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variant79529cf8e1d703f95fefb7cc389349cf0b4c99d58203496e88b1e5828b1a2845.lean/declarations/extensionofmaxadjoin-idealto--7ab1531b44923d67e527867b.md) | 244 | `declaration-track:7ab1531b44923d67e527867b9da4f8c220b69f51f416aadf19c624ff365e71a6` |
| 24 | `def` | [ExtensionOfMaxAdjoin.extendIdealTo](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variant79529cf8e1d703f95fefb7cc389349cf0b4c99d58203496e88b1e5828b1a2845.lean/declarations/extensionofmaxadjoin-extendidealto--beb2fc2408c693a4087bd974.md) | 257 | `declaration-track:beb2fc2408c693a4087bd974634c248cfb11632bc051d2baa9f09644ecfc1b16` |
| 25 | `theorem` | [ExtensionOfMaxAdjoin.extendIdealTo_is_extension](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variant79529cf8e1d703f95fefb7cc389349cf0b4c99d58203496e88b1e5828b1a2845.lean/declarations/extensionofmaxadjoin-extendidealto-is-extension--2b817f2b9bdf1fe9474f4925.md) | 260 | `result-track:2b817f2b9bdf1fe9474f4925327c12d85c729dba78422fd30a7b7775893ab135` |
| 26 | `theorem` | [ExtensionOfMaxAdjoin.extendIdealTo_wd'](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variant79529cf8e1d703f95fefb7cc389349cf0b4c99d58203496e88b1e5828b1a2845.lean/declarations/extensionofmaxadjoin-extendidealto-wd--bf89abf29e4ec1b7ca760b30.md) | 265 | `result-track:bf89abf29e4ec1b7ca760b303133fa9ea29a55338e76c018e97419e1332bf15a` |
| 27 | `theorem` | [ExtensionOfMaxAdjoin.extendIdealTo_wd](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variant79529cf8e1d703f95fefb7cc389349cf0b4c99d58203496e88b1e5828b1a2845.lean/declarations/extensionofmaxadjoin-extendidealto-wd--90caf78516f4f4a901d79fad.md) | 276 | `result-track:90caf78516f4f4a901d79fad83384f18fd675bdaed5ded0cd03161083e9e9209` |
| 28 | `theorem` | [ExtensionOfMaxAdjoin.extendIdealTo_eq](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variant79529cf8e1d703f95fefb7cc389349cf0b4c99d58203496e88b1e5828b1a2845.lean/declarations/extensionofmaxadjoin-extendidealto-eq--76edf73d2db22469f68609e0.md) | 283 | `result-track:76edf73d2db22469f68609e0c109c446d9f49c40549c6424e92f776b2cc77040` |
| 29 | `def` | [ExtensionOfMaxAdjoin.extensionToFun](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variant79529cf8e1d703f95fefb7cc389349cf0b4c99d58203496e88b1e5828b1a2845.lean/declarations/extensionofmaxadjoin-extensiontofun--9ab1a8267ef66632bbdf344d.md) | 291 | `declaration-track:9ab1a8267ef66632bbdf344d2ae839c9fc2fdb745a40391e982b24899cbbddf0` |
| 30 | `theorem` | [ExtensionOfMaxAdjoin.extensionToFun_wd](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variant79529cf8e1d703f95fefb7cc389349cf0b4c99d58203496e88b1e5828b1a2845.lean/declarations/extensionofmaxadjoin-extensiontofun-wd--0738e8e5ac20fe2648aca492.md) | 296 | `result-track:0738e8e5ac20fe2648aca49296217ddabeeb6b6ad27794c31efe7f88bf569518` |
| 31 | `def` | [extensionOfMaxAdjoin](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variant79529cf8e1d703f95fefb7cc389349cf0b4c99d58203496e88b1e5828b1a2845.lean/declarations/extensionofmaxadjoin--8b66ec30b58f53b39ef7b36d.md) | 320 | `declaration-track:8b66ec30b58f53b39ef7b36de03d75b5abbd2f1ea3f66e17a1b2ba75304714d4` |
| 32 | `theorem` | [extensionOfMax_le](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variant79529cf8e1d703f95fefb7cc389349cf0b4c99d58203496e88b1e5828b1a2845.lean/declarations/extensionofmax-le--09b9f1edc5557db274331521.md) | 352 | `result-track:09b9f1edc5557db2743315218bef73fc79208179f29b8ff13898b2f4ed2abe5d` |
| 33 | `theorem` | [extensionOfMax_to_submodule_eq_top](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variant79529cf8e1d703f95fefb7cc389349cf0b4c99d58203496e88b1e5828b1a2845.lean/declarations/extensionofmax-to-submodule-eq-top--5da77d8915d78e5e43475e29.md) | 360 | `result-track:5da77d8915d78e5e43475e2922893975f25cbdc86ee4472093b6befdd298e925` |
| 34 | `theorem` | [extension_property](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variant79529cf8e1d703f95fefb7cc389349cf0b4c99d58203496e88b1e5828b1a2845.lean/declarations/extension-property--5309902f5ad390f377f77cf5.md) | 368 | `result-track:5309902f5ad390f377f77cf58c9e4c245f7d8ec92005274b89c836c5682824d7` |
| 35 | `theorem` | [extension_property_addMonoidHom](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variant79529cf8e1d703f95fefb7cc389349cf0b4c99d58203496e88b1e5828b1a2845.lean/declarations/extension-property-addmonoidhom--5be60e6162472ace890e5f14.md) | 378 | `result-track:5be60e6162472ace890e5f14fb0a349d1210d8b4d0af306fcfb034e8896658d6` |
| 36 | `theorem` | [injective](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variant79529cf8e1d703f95fefb7cc389349cf0b4c99d58203496e88b1e5828b1a2845.lean/declarations/injective--be24cfbff77642049b9f46d1.md) | 385 | `result-track:be24cfbff77642049b9f46d13d32269652fa5e369548310c3f71cfdf2c583aa6` |
| 37 | `theorem` | [of_injective](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variant79529cf8e1d703f95fefb7cc389349cf0b4c99d58203496e88b1e5828b1a2845.lean/declarations/of-injective--c1c8ceda4d30ff07a6d166da.md) | 390 | `result-track:c1c8ceda4d30ff07a6d166da5e92b1fc8f2032bd06bdbd5ee82e565ff9143f51` |
| 38 | `theorem` | [iff_injective](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variant79529cf8e1d703f95fefb7cc389349cf0b4c99d58203496e88b1e5828b1a2845.lean/declarations/iff-injective--b82b2e5eafe9d478b825f586.md) | 398 | `result-track:b82b2e5eafe9d478b825f586b236abb927bcb075963a8f55cc29d2f9f3737d88` |
| 39 | `lemma` | [Module.ulift_injective_of_injective](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variant79529cf8e1d703f95fefb7cc389349cf0b4c99d58203496e88b1e5828b1a2845.lean/declarations/module-ulift-injective-of-injective--52b54b130570bf2fb6adadca.md) | 407 | `result-track:52b54b130570bf2fb6adadca14ba1b7dbfbe8501cd8b241eff35470e78a8ceb2` |
| 40 | `lemma` | [Module.injective_of_ulift_injective](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variant79529cf8e1d703f95fefb7cc389349cf0b4c99d58203496e88b1e5828b1a2845.lean/declarations/module-injective-of-ulift-injective--87063ca9d6a9a61ff8c455e8.md) | 413 | `result-track:87063ca9d6a9a61ff8c455e82d30e0ef13af00cc068c26bdfa93ffeb08f76d4b` |
| 41 | `lemma` | [Module.injective_iff_ulift_injective](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variant79529cf8e1d703f95fefb7cc389349cf0b4c99d58203496e88b1e5828b1a2845.lean/declarations/module-injective-iff-ulift-injective--24df414ab790ae2e59e86e6a.md) | 426 | `result-track:24df414ab790ae2e59e86e6aa042d69f9811558433269ac8ef46d26b34009b0d` |
| 42 | `lemma` | [Module.Injective.extension_property](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variant79529cf8e1d703f95fefb7cc389349cf0b4c99d58203496e88b1e5828b1a2845.lean/declarations/module-injective-extension-property--898689bec40d46221fc6b0d7.md) | 442 | `result-track:898689bec40d46221fc6b0d7c19ee51bd8085d874b9b6f8d41bc0238ecc04145` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
