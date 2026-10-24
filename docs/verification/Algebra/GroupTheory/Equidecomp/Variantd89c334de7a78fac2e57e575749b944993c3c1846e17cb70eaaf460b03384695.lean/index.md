# Verification target: GRWTSK.Algebra.GroupTheory.Equidecomp.Variantd89c334de7a78fac2e57e575749b944993c3c1846e17cb70eaaf460b03384695

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "28024419b43b883f76c1bbc2a8551ba10e36036d",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Equidecomp/Variantd89c334de7a78fac2e57e575749b944993c3c1846e17cb70eaaf460b03384695.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Equidecomp/Variantd89c334de7a78fac2e57e575749b944993c3c1846e17cb70eaaf460b03384695.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Equidecomp/Variantd89c334de7a78fac2e57e575749b944993c3c1846e17cb70eaaf460b03384695.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `28024419b43b883f76c1bbc2a8551ba10e36036d`.

Source path: `GRWTSK/Algebra/GroupTheory/Equidecomp/Variantd89c334de7a78fac2e57e575749b944993c3c1846e17cb70eaaf460b03384695.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Equidecomp/Variantd89c334de7a78fac2e57e575749b944993c3c1846e17cb70eaaf460b03384695.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Action.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.PartialEquiv` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Pointwise.Finset.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsDecompOn](../../../../../mathematics/Algebra/GroupTheory/Equidecomp/Variantd89c334de7a78fac2e57e575749b944993c3c1846e17cb70eaaf460b03384695.lean/declarations/isdecompon--3cde7558aece8b1a3261fc1c.md) | 77 | `declaration-track:3cde7558aece8b1a3261fc1cb46f0cb635498e55a4fcf21ab3200c94d5c5b3a0` |
| 2 | `structure` | [_root_.GRWTSK.Algebra.GroupTheory.RootEquidecomp.Variantd0568e55972f716c6c7c162160d72ff22a0d9e8161fa150e491d971e1931d6b9.Equidecomp](../../../../../mathematics/Algebra/GroupTheory/Equidecomp/Variantd89c334de7a78fac2e57e575749b944993c3c1846e17cb70eaaf460b03384695.lean/declarations/root-grwtsk-algebra-grouptheory-rootequidecomp-variantd0568e55972f716c6c--8d9d7ece65975c4d85561d7b.md) | 89 | `declaration-track:8d9d7ece65975c4d85561d7b874a43845f63f63328b2173df70462214fe7af0a` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Equidecomp/Variantd89c334de7a78fac2e57e575749b944993c3c1846e17cb70eaaf460b03384695.lean/declarations/instance--84f22a44d728d0a27b8b1e01.md) | 95 | `declaration-track:84f22a44d728d0a27b8b1e012c860781fbd80a79918011acd2d24f5cbd39ff9a` |
| 4 | `def` | [witness](../../../../../mathematics/Algebra/GroupTheory/Equidecomp/Variantd89c334de7a78fac2e57e575749b944993c3c1846e17cb70eaaf460b03384695.lean/declarations/witness--c9a876ae86848754221045c2.md) | 99 | `declaration-track:c9a876ae86848754221045c291ea9b6827f35a430554b912395c26be91a25ba5` |
| 5 | `theorem` | [isDecompOn](../../../../../mathematics/Algebra/GroupTheory/Equidecomp/Variantd89c334de7a78fac2e57e575749b944993c3c1846e17cb70eaaf460b03384695.lean/declarations/isdecompon--b85874d9a8e937c642ea5de5.md) | 101 | `result-track:b85874d9a8e937c642ea5de51d248d6569fd4530aeb7acc03651ff4f97f6af09` |
| 6 | `theorem` | [apply_mem_target](../../../../../mathematics/Algebra/GroupTheory/Equidecomp/Variantd89c334de7a78fac2e57e575749b944993c3c1846e17cb70eaaf460b03384695.lean/declarations/apply-mem-target--3c447a5f4f634be97fba7146.md) | 104 | `result-track:3c447a5f4f634be97fba7146aacff00aeda393fb7cefe9dabf6d4432029e4da8` |
| 7 | `theorem` | [toPartialEquiv_injective](../../../../../mathematics/Algebra/GroupTheory/Equidecomp/Variantd89c334de7a78fac2e57e575749b944993c3c1846e17cb70eaaf460b03384695.lean/declarations/topartialequiv-injective--810fba06812573106adb14d8.md) | 107 | `result-track:810fba06812573106adb14d883653bf55c9e03788bcdefe21269f0bf1f63147b` |
| 8 | `theorem` | [IsDecompOn.mono](../../../../../mathematics/Algebra/GroupTheory/Equidecomp/Variantd89c334de7a78fac2e57e575749b944993c3c1846e17cb70eaaf460b03384695.lean/declarations/isdecompon-mono--e59ccf82e85cb59fe2535eb3.md) | 111 | `result-track:e59ccf82e85cb59fe2535eb3ad7994bc83a3f66b15ea5c85ab8c04da3ef66b33` |
| 9 | `def` | [restr](../../../../../mathematics/Algebra/GroupTheory/Equidecomp/Variantd89c334de7a78fac2e57e575749b944993c3c1846e17cb70eaaf460b03384695.lean/declarations/restr--e911c677be67057a0e6d1bce.md) | 119 | `declaration-track:e911c677be67057a0e6d1bceb234992d50b049419c565b5b45738a2cc5fb7508` |
| 10 | `theorem` | [toPartialEquiv_restr](../../../../../mathematics/Algebra/GroupTheory/Equidecomp/Variantd89c334de7a78fac2e57e575749b944993c3c1846e17cb70eaaf460b03384695.lean/declarations/topartialequiv-restr--73fd97f555d2416df0a49685.md) | 125 | `result-track:73fd97f555d2416df0a49685b9864dfcb37817af3c5f1c51761a73e14882bbb3` |
| 11 | `theorem` | [source_restr](../../../../../mathematics/Algebra/GroupTheory/Equidecomp/Variantd89c334de7a78fac2e57e575749b944993c3c1846e17cb70eaaf460b03384695.lean/declarations/source-restr--fd201e1ca5426d87274c511b.md) | 128 | `result-track:fd201e1ca5426d87274c511b509b65733c1aaa18d27f14b20402fb794bf5d253` |
| 12 | `theorem` | [restr_of_source_subset](../../../../../mathematics/Algebra/GroupTheory/Equidecomp/Variantd89c334de7a78fac2e57e575749b944993c3c1846e17cb70eaaf460b03384695.lean/declarations/restr-of-source-subset--ead3a44e081d53dda561576d.md) | 131 | `result-track:ead3a44e081d53dda561576dd75b50786842f8dd2a33f26a8e2399bdbcdf8be1` |
| 13 | `theorem` | [restr_univ](../../../../../mathematics/Algebra/GroupTheory/Equidecomp/Variantd89c334de7a78fac2e57e575749b944993c3c1846e17cb70eaaf460b03384695.lean/declarations/restr-univ--bae99841f0da1c8e490e164a.md) | 137 | `result-track:bae99841f0da1c8e490e164a7ae8477891a532d6104aab8ff7448c736edc4a76` |
| 14 | `def` | [refl](../../../../../mathematics/Algebra/GroupTheory/Equidecomp/Variantd89c334de7a78fac2e57e575749b944993c3c1846e17cb70eaaf460b03384695.lean/declarations/refl--4825a7919a34cd4f63287d3d.md) | 150 | `declaration-track:4825a7919a34cd4f63287d3d09d13b2a4d842e0128526dde56dbc09c5cde8a8f` |
| 15 | `theorem` | [IsDecompOn.comp'](../../../../../mathematics/Algebra/GroupTheory/Equidecomp/Variantd89c334de7a78fac2e57e575749b944993c3c1846e17cb70eaaf460b03384695.lean/declarations/isdecompon-comp--a3c05f200a379a7715a3010a.md) | 157 | `result-track:a3c05f200a379a7715a3010a1811f3252f91caefdc160e524f1ac70060444ef6` |
| 16 | `theorem` | [IsDecompOn.comp](../../../../../mathematics/Algebra/GroupTheory/Equidecomp/Variantd89c334de7a78fac2e57e575749b944993c3c1846e17cb70eaaf460b03384695.lean/declarations/isdecompon-comp--ff529782c6552c52211d2a22.md) | 167 | `result-track:ff529782c6552c52211d2a22463e973ba142839cf751ebecda23d6c45b8fbb18` |
| 17 | `def` | [trans](../../../../../mathematics/Algebra/GroupTheory/Equidecomp/Variantd89c334de7a78fac2e57e575749b944993c3c1846e17cb70eaaf460b03384695.lean/declarations/trans--614f98ef57ae9f3276e84a38.md) | 175 | `declaration-track:614f98ef57ae9f3276e84a38c611c45f31a54849bb0b759bdfbcda823adc650d` |
| 18 | `theorem` | [IsDecompOn.of_leftInvOn](../../../../../mathematics/Algebra/GroupTheory/Equidecomp/Variantd89c334de7a78fac2e57e575749b944993c3c1846e17cb70eaaf460b03384695.lean/declarations/isdecompon-of-leftinvon--c52a0725fd1c9c0a10604c1b.md) | 186 | `result-track:c52a0725fd1c9c0a10604c1b77aa84d8a1b0aaebf938a152d9473683f4f80f41` |
| 19 | `def` | [symm](../../../../../mathematics/Algebra/GroupTheory/Equidecomp/Variantd89c334de7a78fac2e57e575749b944993c3c1846e17cb70eaaf460b03384695.lean/declarations/symm--fb75ee8130ea4327938a58fa.md) | 195 | `declaration-track:fb75ee8130ea4327938a58fac44bc0a1bc9e1d5d36079e6386e28dc955697a56` |
| 20 | `theorem` | [map_target](../../../../../mathematics/Algebra/GroupTheory/Equidecomp/Variantd89c334de7a78fac2e57e575749b944993c3c1846e17cb70eaaf460b03384695.lean/declarations/map-target--306b519d6b9764696f95d287.md) | 201 | `result-track:306b519d6b9764696f95d287d681fac1df5f9e8b24df7bb8b398a8c02a64de7d` |
| 21 | `theorem` | [left_inv](../../../../../mathematics/Algebra/GroupTheory/Equidecomp/Variantd89c334de7a78fac2e57e575749b944993c3c1846e17cb70eaaf460b03384695.lean/declarations/left-inv--8ff67ac9e760d30bab73993a.md) | 204 | `result-track:8ff67ac9e760d30bab73993ac13c5c8191e11caecc838571a2ab9724fe7a50ff` |
| 22 | `theorem` | [right_inv](../../../../../mathematics/Algebra/GroupTheory/Equidecomp/Variantd89c334de7a78fac2e57e575749b944993c3c1846e17cb70eaaf460b03384695.lean/declarations/right-inv--155db5e610ab791775513238.md) | 207 | `result-track:155db5e610ab79177551323892ad57a4ebb65a188306ea95aca3c1aa21ed0ce0` |
| 23 | `theorem` | [symm_symm](../../../../../mathematics/Algebra/GroupTheory/Equidecomp/Variantd89c334de7a78fac2e57e575749b944993c3c1846e17cb70eaaf460b03384695.lean/declarations/symm-symm--a73b9bde4684c6ae1b2dc2ef.md) | 211 | `result-track:a73b9bde4684c6ae1b2dc2ef80ae3d51e7cba8a8fcde11951292f988b793504d` |
| 24 | `theorem` | [symm_involutive](../../../../../mathematics/Algebra/GroupTheory/Equidecomp/Variantd89c334de7a78fac2e57e575749b944993c3c1846e17cb70eaaf460b03384695.lean/declarations/symm-involutive--249d4658c16d443ba0c1f871.md) | 213 | `result-track:249d4658c16d443ba0c1f871ced8071b364c78fba98d336f2b3457ace8fc0b56` |
| 25 | `theorem` | [symm_bijective](../../../../../mathematics/Algebra/GroupTheory/Equidecomp/Variantd89c334de7a78fac2e57e575749b944993c3c1846e17cb70eaaf460b03384695.lean/declarations/symm-bijective--ba0ff6d19b507f28ef75460f.md) | 215 | `result-track:ba0ff6d19b507f28ef75460fcc031e7795beb2d8103b1d8c47454286e42a9f14` |
| 26 | `theorem` | [refl_symm](../../../../../mathematics/Algebra/GroupTheory/Equidecomp/Variantd89c334de7a78fac2e57e575749b944993c3c1846e17cb70eaaf460b03384695.lean/declarations/refl-symm--3ad4bc66620980ebe4483e0c.md) | 218 | `result-track:3ad4bc66620980ebe4483e0c4bebd722d4020d2f3943d3532a2114139d046745` |
| 27 | `theorem` | [restr_refl_symm](../../../../../mathematics/Algebra/GroupTheory/Equidecomp/Variantd89c334de7a78fac2e57e575749b944993c3c1846e17cb70eaaf460b03384695.lean/declarations/restr-refl-symm--b7cea51ce2fee99609e7869c.md) | 221 | `result-track:b7cea51ce2fee99609e7869c6370233c192fc89f84802263afb07296d7d34b8f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
