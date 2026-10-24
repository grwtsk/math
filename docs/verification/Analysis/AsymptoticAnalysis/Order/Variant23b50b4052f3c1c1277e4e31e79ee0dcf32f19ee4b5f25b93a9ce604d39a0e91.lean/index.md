# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.Order.Variant23b50b4052f3c1c1277e4e31e79ee0dcf32f19ee4b5f25b93a9ce604d39a0e91

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2f605d29771de7d413b680255fc3b8d13a1904c9",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Order/Variant23b50b4052f3c1c1277e4e31e79ee0dcf32f19ee4b5f25b93a9ce604d39a0e91.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variant23b50b4052f3c1c1277e4e31e79ee0dcf32f19ee4b5f25b93a9ce604d39a0e91.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variant23b50b4052f3c1c1277e4e31e79ee0dcf32f19ee4b5f25b93a9ce604d39a0e91.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2f605d29771de7d413b680255fc3b8d13a1904c9`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Order/Variant23b50b4052f3c1c1277e4e31e79ee0dcf32f19ee4b5f25b93a9ce604d39a0e91.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Order/Variant23b50b4052f3c1c1277e4e31e79ee0dcf32f19ee4b5f25b93a9ce604d39a0e91.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Archimedean.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.BigOperators.Ring.Finset` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.InfiniteSum.NatInt` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Order.Field` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.MonotoneConvergence` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [hasProd_le_of_prod_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variant23b50b4052f3c1c1277e4e31e79ee0dcf32f19ee4b5f25b93a9ce604d39a0e91.lean/declarations/hasprod-le-of-prod-le--c5020a2cb2e6a8d191edc5a4.md) | 35 | `result-track:c5020a2cb2e6a8d191edc5a4f80b7949ba10e3d196b7a20e1d36533479d78bfd` |
| 2 | `theorem` | [le_hasProd_of_le_prod](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variant23b50b4052f3c1c1277e4e31e79ee0dcf32f19ee4b5f25b93a9ce604d39a0e91.lean/declarations/le-hasprod-of-le-prod--4bec4ae206b1300c1321a1da.md) | 40 | `result-track:4bec4ae206b1300c1321a1dac67d6161d9c694fd95cac583f4d5d4c1ef592dd7` |
| 3 | `theorem` | [Multipliable.tprod_le_of_prod_range_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variant23b50b4052f3c1c1277e4e31e79ee0dcf32f19ee4b5f25b93a9ce604d39a0e91.lean/declarations/multipliable-tprod-le-of-prod-range-le--2d6f5134ebbafa40b174bf7e.md) | 45 | `result-track:2d6f5134ebbafa40b174bf7e4eb944df5d002f0602b66368e7728bf760cf3a1b` |
| 4 | `theorem` | [hasProd_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variant23b50b4052f3c1c1277e4e31e79ee0dcf32f19ee4b5f25b93a9ce604d39a0e91.lean/declarations/hasprod-le--e3eaa6b04a0b41385f788d69.md) | 63 | `result-track:e3eaa6b04a0b41385f788d69ac28ea5e18281aed4a3580d2ac6463b4d14401ae` |
| 5 | `theorem` | [hasProd_mono](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variant23b50b4052f3c1c1277e4e31e79ee0dcf32f19ee4b5f25b93a9ce604d39a0e91.lean/declarations/hasprod-mono--9cb79a0f57af73dcb55ec269.md) | 67 | `result-track:9cb79a0f57af73dcb55ec269a8dd412d16fe446ffcfff2b955821cbed691f380` |
| 6 | `theorem` | [hasProd_le_inj](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variant23b50b4052f3c1c1277e4e31e79ee0dcf32f19ee4b5f25b93a9ce604d39a0e91.lean/declarations/hasprod-le-inj--55ffed16aaeeed6cef855c61.md) | 71 | `result-track:55ffed16aaeeed6cef855c6176ce17dfc2b4962a8aa863516b32f335be8d83f3` |
| 7 | `theorem` | [Multipliable.tprod_le_tprod_of_inj](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variant23b50b4052f3c1c1277e4e31e79ee0dcf32f19ee4b5f25b93a9ce604d39a0e91.lean/declarations/multipliable-tprod-le-tprod-of-inj--619371313bf4003238622de9.md) | 83 | `result-track:619371313bf4003238622de90b3c59777bd820c1a3de6f252de9319e4a114082` |
| 8 | `lemma` | [Multipliable.tprod_subtype_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variant23b50b4052f3c1c1277e4e31e79ee0dcf32f19ee4b5f25b93a9ce604d39a0e91.lean/declarations/multipliable-tprod-subtype-le--11435858717383c49a3e0afe.md) | 93 | `result-track:11435858717383c49a3e0afe29aa849fa0778b21c1a0c7a8587c58b42625a509` |
| 9 | `theorem` | [prod_le_hasProd](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variant23b50b4052f3c1c1277e4e31e79ee0dcf32f19ee4b5f25b93a9ce604d39a0e91.lean/declarations/prod-le-hasprod--fcc66a19847e2e44496f0c9b.md) | 109 | `result-track:fcc66a19847e2e44496f0c9b35155ab2d596f1f31374836ed9f7c2380898ce65` |
| 10 | `theorem` | [isLUB_hasProd](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variant23b50b4052f3c1c1277e4e31e79ee0dcf32f19ee4b5f25b93a9ce604d39a0e91.lean/declarations/islub-hasprod--c9e5428d9a6374922de930a9.md) | 115 | `result-track:c9e5428d9a6374922de930a9fa0c53eecb7e921d93d388adf3f21853f3e68ddf` |
| 11 | `theorem` | [le_hasProd](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variant23b50b4052f3c1c1277e4e31e79ee0dcf32f19ee4b5f25b93a9ce604d39a0e91.lean/declarations/le-hasprod--1eafc4d91b3ed66eac1932c2.md) | 121 | `result-track:1eafc4d91b3ed66eac1932c2d6703d22a9e422d7cc739f7fe484f939b27e840a` |
| 12 | `theorem` | [lt_hasProd](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variant23b50b4052f3c1c1277e4e31e79ee0dcf32f19ee4b5f25b93a9ce604d39a0e91.lean/declarations/lt-hasprod--34ac8e858c23fa8bbc9a3797.md) | 127 | `result-track:34ac8e858c23fa8bbc9a3797b0ae5c95ef628899e67b0a981dad5b06dc4d2d7c` |
| 13 | `theorem` | [Multipliable.prod_le_tprod](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variant23b50b4052f3c1c1277e4e31e79ee0dcf32f19ee4b5f25b93a9ce604d39a0e91.lean/declarations/multipliable-prod-le-tprod--78b9017ae2a4a974fb3edd40.md) | 137 | `result-track:78b9017ae2a4a974fb3edd407c3642e8e61637ee0ab27688cd5f9ecaad390b87` |
| 14 | `theorem` | [Multipliable.le_tprod](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variant23b50b4052f3c1c1277e4e31e79ee0dcf32f19ee4b5f25b93a9ce604d39a0e91.lean/declarations/multipliable-le-tprod--e201d22d0cc22d1aeed5723b.md) | 146 | `result-track:e201d22d0cc22d1aeed5723b9d196976b9023bd9a57eb48323bca085fb442748` |
| 15 | `theorem` | [Multipliable.tprod_le_tprod](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variant23b50b4052f3c1c1277e4e31e79ee0dcf32f19ee4b5f25b93a9ce604d39a0e91.lean/declarations/multipliable-tprod-le-tprod--9e5c6c5bae505cb755845f32.md) | 154 | `result-track:9e5c6c5bae505cb755845f326425b6113758f8cb88560fe00f87f1501dda5025` |
| 16 | `theorem` | [Multipliable.tprod_mono](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variant23b50b4052f3c1c1277e4e31e79ee0dcf32f19ee4b5f25b93a9ce604d39a0e91.lean/declarations/multipliable-tprod-mono--b829ebdc0995eb653903f239.md) | 163 | `result-track:b829ebdc0995eb653903f239b8b1553d9cf079f9586a999d12daa2fd1abb3b47` |
| 17 | `theorem` | [Multipliable.tprod_le_of_prod_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variant23b50b4052f3c1c1277e4e31e79ee0dcf32f19ee4b5f25b93a9ce604d39a0e91.lean/declarations/multipliable-tprod-le-of-prod-le--edfe46a663cfd8583eb30099.md) | 173 | `result-track:edfe46a663cfd8583eb3009941a4df6c64b212ad51e4a8e968446283cf0163ac` |
| 18 | `theorem` | [tprod_le_of_prod_le'](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variant23b50b4052f3c1c1277e4e31e79ee0dcf32f19ee4b5f25b93a9ce604d39a0e91.lean/declarations/tprod-le-of-prod-le--cee6aba048cf412ce7c9fcc8.md) | 183 | `result-track:cee6aba048cf412ce7c9fcc8d66d5ceaafe62968cce4c6773adc65981da6a65d` |
| 19 | `theorem` | [HasProd.one_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variant23b50b4052f3c1c1277e4e31e79ee0dcf32f19ee4b5f25b93a9ce604d39a0e91.lean/declarations/hasprod-one-le--9409a0fdf7afce5e2a138742.md) | 190 | `result-track:9409a0fdf7afce5e2a138742cb604c0f58bbe3fec5a97b3da963039c5cc0821e` |
| 20 | `theorem` | [HasProd.le_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variant23b50b4052f3c1c1277e4e31e79ee0dcf32f19ee4b5f25b93a9ce604d39a0e91.lean/declarations/hasprod-le-one--1bd4e77e7a90ea67c7f909b6.md) | 194 | `result-track:1bd4e77e7a90ea67c7f909b69ac27a24d5552197cbb69e77717f08bb96bee2e0` |
| 21 | `theorem` | [one_le_tprod](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variant23b50b4052f3c1c1277e4e31e79ee0dcf32f19ee4b5f25b93a9ce604d39a0e91.lean/declarations/one-le-tprod--966eb13f1b6308af69319f7c.md) | 198 | `result-track:966eb13f1b6308af69319f7c77008ab6259594d6f92782c32e9bfc9c4e4b2e47` |
| 22 | `theorem` | [tprod_le_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variant23b50b4052f3c1c1277e4e31e79ee0dcf32f19ee4b5f25b93a9ce604d39a0e91.lean/declarations/tprod-le-one--2b7b2ef616dfe6134d3e77eb.md) | 204 | `result-track:2b7b2ef616dfe6134d3e77eb585ba8aa67c2c989a9d52a285d90fe8dac7ed34a` |
| 23 | `theorem` | [hasProd_one_iff_of_one_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variant23b50b4052f3c1c1277e4e31e79ee0dcf32f19ee4b5f25b93a9ce604d39a0e91.lean/declarations/hasprod-one-iff-of-one-le--b995310e9455a47a6c7267e1.md) | 210 | `result-track:b995310e9455a47a6c7267e18859c90108022b6c7c19c3925138ffce3e40efc1` |
| 24 | `theorem` | [hasProd_lt](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variant23b50b4052f3c1c1277e4e31e79ee0dcf32f19ee4b5f25b93a9ce604d39a0e91.lean/declarations/hasprod-lt--bac12d8e2acc93242d94ed79.md) | 226 | `result-track:bac12d8e2acc93242d94ed79533b18cc979a668bd313ab3656185a7880ff21d9` |
| 25 | `theorem` | [hasProd_strict_mono](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variant23b50b4052f3c1c1277e4e31e79ee0dcf32f19ee4b5f25b93a9ce604d39a0e91.lean/declarations/hasprod-strict-mono--9e4cb5fcf5b0ec639f8c1cb9.md) | 234 | `result-track:9e4cb5fcf5b0ec639f8c1cb9d86a03cd7ac4f9833caea402f70605bf5a0b6684` |
| 26 | `theorem` | [Multipliable.tprod_lt_tprod](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variant23b50b4052f3c1c1277e4e31e79ee0dcf32f19ee4b5f25b93a9ce604d39a0e91.lean/declarations/multipliable-tprod-lt-tprod--604bd873b3ea26dc1d75ed1c.md) | 239 | `result-track:604bd873b3ea26dc1d75ed1c203444a9bb7c96101e1996608676965dab629319` |
| 27 | `theorem` | [Multipliable.tprod_strict_mono](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variant23b50b4052f3c1c1277e4e31e79ee0dcf32f19ee4b5f25b93a9ce604d39a0e91.lean/declarations/multipliable-tprod-strict-mono--e0bdccae35c90cebee65d331.md) | 248 | `result-track:e0bdccae35c90cebee65d331960c2c6bb7f587edb04263d122cdf5d3a2cae198` |
| 28 | `theorem` | [Multipliable.one_lt_tprod](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variant23b50b4052f3c1c1277e4e31e79ee0dcf32f19ee4b5f25b93a9ce604d39a0e91.lean/declarations/multipliable-one-lt-tprod--76a6d7d387d8713149a5c138.md) | 258 | `result-track:76a6d7d387d8713149a5c1382a039b737d10b3a47fecd89c135dd9ffb6088b59` |
| 29 | `theorem` | [le_hasProd'](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variant23b50b4052f3c1c1277e4e31e79ee0dcf32f19ee4b5f25b93a9ce604d39a0e91.lean/declarations/le-hasprod--a1d4d03001082ebe98731715.md) | 276 | `result-track:a1d4d03001082ebe987317153aa4a98c43a85c5a0f7c49cf37e0f31001f06856` |
| 30 | `theorem` | [Multipliable.le_tprod'](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variant23b50b4052f3c1c1277e4e31e79ee0dcf32f19ee4b5f25b93a9ce604d39a0e91.lean/declarations/multipliable-le-tprod--661e0af85e3396bc5b718f69.md) | 280 | `result-track:661e0af85e3396bc5b718f69eeaaec301ab07e6674546dcac834b423d6b568d2` |
| 31 | `theorem` | [hasProd_one_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variant23b50b4052f3c1c1277e4e31e79ee0dcf32f19ee4b5f25b93a9ce604d39a0e91.lean/declarations/hasprod-one-iff--9b870869d7a481a88cfd9348.md) | 288 | `result-track:9b870869d7a481a88cfd9348f088d43881407dad00784324b873c0d736a0f84d` |
| 32 | `theorem` | [Multipliable.tprod_eq_one_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variant23b50b4052f3c1c1277e4e31e79ee0dcf32f19ee4b5f25b93a9ce604d39a0e91.lean/declarations/multipliable-tprod-eq-one-iff--8b2413d06df2d4978aa44d43.md) | 292 | `result-track:8b2413d06df2d4978aa44d4304dc7193fabe252c3d4f3173046b287aaf74a5c3` |
| 33 | `theorem` | [Multipliable.tprod_ne_one_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variant23b50b4052f3c1c1277e4e31e79ee0dcf32f19ee4b5f25b93a9ce604d39a0e91.lean/declarations/multipliable-tprod-ne-one-iff--54b014565031ba0f948f6519.md) | 301 | `result-track:54b014565031ba0f948f6519065a9db9ecd3e396414a2da2bfdcb2d96a7184b3` |
| 34 | `theorem` | [isLUB_hasProd'](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variant23b50b4052f3c1c1277e4e31e79ee0dcf32f19ee4b5f25b93a9ce604d39a0e91.lean/declarations/islub-hasprod--5c43959781267fdda9244991.md) | 310 | `result-track:5c43959781267fdda9244991b51ff99f675e2fd349bc96695659a9e8f9cbcbe2` |
| 35 | `theorem` | [hasProd_of_isLUB_of_one_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variant23b50b4052f3c1c1277e4e31e79ee0dcf32f19ee4b5f25b93a9ce604d39a0e91.lean/declarations/hasprod-of-islub-of-one-le--77a739d26ed88a8168c08649.md) | 328 | `result-track:77a739d26ed88a8168c08649f4eb93cb16baabba22fff1b017f530d5a2caa562` |
| 36 | `theorem` | [hasProd_of_isLUB](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variant23b50b4052f3c1c1277e4e31e79ee0dcf32f19ee4b5f25b93a9ce604d39a0e91.lean/declarations/hasprod-of-islub--829b52d78c0c2d6450be11a8.md) | 335 | `result-track:829b52d78c0c2d6450be11a8dfa4fa365bda9aa4f60ace9c7e0bf7b058fe2a99` |
| 37 | `theorem` | [multipliable_mabs_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variant23b50b4052f3c1c1277e4e31e79ee0dcf32f19ee4b5f25b93a9ce604d39a0e91.lean/declarations/multipliable-mabs-iff--75a900673317929b242ef149.md) | 342 | `result-track:75a900673317929b242ef1490f2878dac1ea1c13a693175505492bfe2aec6189` |
| 38 | `theorem` | [Finite.of_summable_const](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variant23b50b4052f3c1c1277e4e31e79ee0dcf32f19ee4b5f25b93a9ce604d39a0e91.lean/declarations/finite-of-summable-const--080e699351e00f83a0983a90.md) | 356 | `result-track:080e699351e00f83a0983a9054134816da1573fe5df3ba59309b4b1cec59357f` |
| 39 | `theorem` | [Set.Finite.of_summable_const](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variant23b50b4052f3c1c1277e4e31e79ee0dcf32f19ee4b5f25b93a9ce604d39a0e91.lean/declarations/set-finite-of-summable-const--65078d3d437da9bc39577a81.md) | 368 | `result-track:65078d3d437da9bc39577a81f1568fd7de36401ebe3f07103b6c6044e2b3e5ec` |
| 40 | `theorem` | [HasProd.abs](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variant23b50b4052f3c1c1277e4e31e79ee0dcf32f19ee4b5f25b93a9ce604d39a0e91.lean/declarations/hasprod-abs--59a72ef788d5d289081188c9.md) | 381 | `result-track:59a72ef788d5d289081188c91e5695f86b5fd3d9d39d63b948556e0a9375b663` |
| 41 | `theorem` | [Multipliable.abs](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variant23b50b4052f3c1c1277e4e31e79ee0dcf32f19ee4b5f25b93a9ce604d39a0e91.lean/declarations/multipliable-abs--0ea9070416c34ca8f75e3099.md) | 384 | `result-track:0ea9070416c34ca8f75e30992004c19bc5ab7b22d0cdb0083dbbcfaf61b48f2d` |
| 42 | `theorem` | [Multipliable.abs_tprod](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variant23b50b4052f3c1c1277e4e31e79ee0dcf32f19ee4b5f25b93a9ce604d39a0e91.lean/declarations/multipliable-abs-tprod--ed74de9852469d3e382e1556.md) | 387 | `result-track:ed74de9852469d3e382e15569d0d0a03725ff1bc110532a168f392958d00c89b` |
| 43 | `theorem` | [Summable.tendsto_atTop_of_pos](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variant23b50b4052f3c1c1277e4e31e79ee0dcf32f19ee4b5f25b93a9ce604d39a0e91.lean/declarations/summable-tendsto-attop-of-pos--ce4fd0cc6bc3ab12067a5264.md) | 394 | `result-track:ce4fd0cc6bc3ab12067a5264982925c2b1ba947edac70fd856a7c5e399f70c32` |
| 44 | `def` | [evalTsum](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variant23b50b4052f3c1c1277e4e31e79ee0dcf32f19ee4b5f25b93a9ce604d39a0e91.lean/declarations/evaltsum--0bb1279dc441585d1b5d30a7.md) | 411 | `declaration-track:0bb1279dc441585d1b5d30a764df913ff366d2b2cde91b800ac1a2134330c387` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
