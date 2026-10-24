# Verification target: GRWTSK.Algebra.GroupTheory.Transfer.Variant417acea1599186110e615b2172459cb8bf02149b509ab220f008a486cf130ed6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c98355533cabbb878b3faada7ab0f73e16d42d09",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Transfer/Variant417acea1599186110e615b2172459cb8bf02149b509ab220f008a486cf130ed6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Transfer/Variant417acea1599186110e615b2172459cb8bf02149b509ab220f008a486cf130ed6.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Transfer/Variant417acea1599186110e615b2172459cb8bf02149b509ab220f008a486cf130ed6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c98355533cabbb878b3faada7ab0f73e16d42d09`.

Source path: `GRWTSK/Algebra/GroupTheory/Transfer/Variant417acea1599186110e615b2172459cb8bf02149b509ab220f008a486cf130ed6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Transfer/Variant417acea1599186110e615b2172459cb8bf02149b509ab220f008a486cf130ed6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.Complement` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Sylow` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [diff](../../../../../mathematics/Algebra/GroupTheory/Transfer/Variant417acea1599186110e615b2172459cb8bf02149b509ab220f008a486cf130ed6.lean/declarations/diff--50accad5d37daf0817078351.md) | 54 | `declaration-track:50accad5d37daf08170783510c7efc519960309070c97927bdf871f20a0cb516` |
| 2 | `theorem` | [diff_mul_diff](../../../../../mathematics/Algebra/GroupTheory/Transfer/Variant417acea1599186110e615b2172459cb8bf02149b509ab220f008a486cf130ed6.lean/declarations/diff-mul-diff--0a47efcb15ebe4b387140d50.md) | 66 | `result-track:0a47efcb15ebe4b387140d500bc5e844b87273dce6bca2a26569fd4d2597f458` |
| 3 | `theorem` | [diff_self](../../../../../mathematics/Algebra/GroupTheory/Transfer/Variant417acea1599186110e615b2172459cb8bf02149b509ab220f008a486cf130ed6.lean/declarations/diff-self--5c17c6dfeff04410a831255e.md) | 76 | `result-track:5c17c6dfeff04410a831255ecd6841bd9a0db123330ea85823541e9b241ee40e` |
| 4 | `theorem` | [diff_inv](../../../../../mathematics/Algebra/GroupTheory/Transfer/Variant417acea1599186110e615b2172459cb8bf02149b509ab220f008a486cf130ed6.lean/declarations/diff-inv--24eb58e5c1546d0cae8be6dd.md) | 82 | `result-track:24eb58e5c1546d0cae8be6dd0b53f59d1c90dba79ec8678d6a05b5f5964ec97f` |
| 5 | `theorem` | [smul_diff_smul](../../../../../mathematics/Algebra/GroupTheory/Transfer/Variant417acea1599186110e615b2172459cb8bf02149b509ab220f008a486cf130ed6.lean/declarations/smul-diff-smul--84631db6161dba987c7c0402.md) | 88 | `result-track:84631db6161dba987c7c04025c1c851086016af10092048db287489b3413fe85` |
| 6 | `def` | [transfer](../../../../../mathematics/Algebra/GroupTheory/Transfer/Variant417acea1599186110e615b2172459cb8bf02149b509ab220f008a486cf130ed6.lean/declarations/transfer--d8bef168838fb8aa5629a8ce.md) | 113 | `declaration-track:d8bef168838fb8aa5629a8ce1be02a8cde54c736e50146c9a686f5e09110672d` |
| 7 | `theorem` | [transfer_def](../../../../../mathematics/Algebra/GroupTheory/Transfer/Variant417acea1599186110e615b2172459cb8bf02149b509ab220f008a486cf130ed6.lean/declarations/transfer-def--e46be2a2401e08de452bdf30.md) | 124 | `result-track:e46be2a2401e08de452bdf30540533f7f838b2e0bac625b0fd902ede0b8b5b8a` |
| 8 | `theorem` | [transfer_eq_prod_quotient_orbitRel_zpowers_quot](../../../../../mathematics/Algebra/GroupTheory/Transfer/Variant417acea1599186110e615b2172459cb8bf02149b509ab220f008a486cf130ed6.lean/declarations/transfer-eq-prod-quotient-orbitrel-zpowers-quot--824240f88ba22cee7df8cabd.md) | 130 | `result-track:824240f88ba22cee7df8cabd49315efbe06028564034ba75569c3a7c0b9ec1a5` |
| 9 | `theorem` | [transfer_eq_pow_aux](../../../../../mathematics/Algebra/GroupTheory/Transfer/Variant417acea1599186110e615b2172459cb8bf02149b509ab220f008a486cf130ed6.lean/declarations/transfer-eq-pow-aux--21ad284572cd738d1a9b724c.md) | 155 | `result-track:21ad284572cd738d1a9b724cc9344c4c27e70150e268e2ecc272503c17c2e791` |
| 10 | `theorem` | [transfer_eq_pow](../../../../../mathematics/Algebra/GroupTheory/Transfer/Variant417acea1599186110e615b2172459cb8bf02149b509ab220f008a486cf130ed6.lean/declarations/transfer-eq-pow--4dff7ead7e6a0865ffcf1fbb.md) | 177 | `result-track:4dff7ead7e6a0865ffcf1fbb65fc1be9e6cf5ef0c63c54419f67aeffd1ebf1ad` |
| 11 | `theorem` | [transfer_center_eq_pow](../../../../../mathematics/Algebra/GroupTheory/Transfer/Variant417acea1599186110e615b2172459cb8bf02149b509ab220f008a486cf130ed6.lean/declarations/transfer-center-eq-pow--ffc8ab607abb950d5848d22b.md) | 196 | `result-track:ffc8ab607abb950d5848d22b8f2242c47d4682897087e710d1516257c92a8c21` |
| 12 | `def` | [transferCenterPow](../../../../../mathematics/Algebra/GroupTheory/Transfer/Variant417acea1599186110e615b2172459cb8bf02149b509ab220f008a486cf130ed6.lean/declarations/transfercenterpow--b9105d6889f794af0902638f.md) | 204 | `declaration-track:b9105d6889f794af0902638fc79e34b4a83708420b9837c4c5397021b334141d` |
| 13 | `theorem` | [transferCenterPow_apply](../../../../../mathematics/Algebra/GroupTheory/Transfer/Variant417acea1599186110e615b2172459cb8bf02149b509ab220f008a486cf130ed6.lean/declarations/transfercenterpow-apply--299df42cc3bc03b4186542b4.md) | 213 | `result-track:299df42cc3bc03b4186542b4cf6528dc96aed08c80cd67355f7cc75dddcfab85` |
| 14 | `def` | [transferSylow](../../../../../mathematics/Algebra/GroupTheory/Transfer/Variant417acea1599186110e615b2172459cb8bf02149b509ab220f008a486cf130ed6.lean/declarations/transfersylow--93f0592f583bd4a792c546f4.md) | 223 | `declaration-track:93f0592f583bd4a792c546f4a33d2dcb132458edd30b86391e11fa3192b14162` |
| 15 | `theorem` | [transferSylow_eq_pow_aux](../../../../../mathematics/Algebra/GroupTheory/Transfer/Variant417acea1599186110e615b2172459cb8bf02149b509ab220f008a486cf130ed6.lean/declarations/transfersylow-eq-pow-aux--c469889dd110b3c095235f4d.md) | 233 | `result-track:c469889dd110b3c095235f4da05fff211fa569d3c2ca9a6803088612dfc437b5` |
| 16 | `theorem` | [transferSylow_eq_pow](../../../../../mathematics/Algebra/GroupTheory/Transfer/Variant417acea1599186110e615b2172459cb8bf02149b509ab220f008a486cf130ed6.lean/declarations/transfersylow-eq-pow--1f8129f0f755ed882f207309.md) | 244 | `result-track:1f8129f0f755ed882f207309537fb0c74844dd693d957011c83672de9682e906` |
| 17 | `theorem` | [transferSylow_restrict_eq_pow](../../../../../mathematics/Algebra/GroupTheory/Transfer/Variant417acea1599186110e615b2172459cb8bf02149b509ab220f008a486cf130ed6.lean/declarations/transfersylow-restrict-eq-pow--0f63eabe497c760e954ad983.md) | 252 | `result-track:0f63eabe497c760e954ad9833d96bed485ad125ea819c8483a6ad1fc58e92360` |
| 18 | `theorem` | [ker_transferSylow_isComplement'](../../../../../mathematics/Algebra/GroupTheory/Transfer/Variant417acea1599186110e615b2172459cb8bf02149b509ab220f008a486cf130ed6.lean/declarations/ker-transfersylow-iscomplement--796a291686d736bad3f62411.md) | 258 | `result-track:796a291686d736bad3f62411c373d37e552d6be3b3a70e7101eafc6b8268f479` |
| 19 | `theorem` | [not_dvd_card_ker_transferSylow](../../../../../mathematics/Algebra/GroupTheory/Transfer/Variant417acea1599186110e615b2172459cb8bf02149b509ab220f008a486cf130ed6.lean/declarations/not-dvd-card-ker-transfersylow--e6ae4fb5c04e583d093e25a6.md) | 273 | `result-track:e6ae4fb5c04e583d093e25a614b1a220acb9245c6e86066462b6346d46490998` |
| 20 | `theorem` | [ker_transferSylow_disjoint](../../../../../mathematics/Algebra/GroupTheory/Transfer/Variant417acea1599186110e615b2172459cb8bf02149b509ab220f008a486cf130ed6.lean/declarations/ker-transfersylow-disjoint--b4772598b311f9c996da2000.md) | 278 | `result-track:b4772598b311f9c996da2000e06705bd8e74b2968794f3e8682f092cc84a1ca0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
