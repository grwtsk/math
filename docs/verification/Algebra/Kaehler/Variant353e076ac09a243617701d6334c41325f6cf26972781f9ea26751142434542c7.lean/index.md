# Verification target: GRWTSK.Algebra.Kaehler.Variant353e076ac09a243617701d6334c41325f6cf26972781f9ea26751142434542c7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bb141bf6b2643c2566500a9f40bf20f129ff5367",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Kaehler/Variant353e076ac09a243617701d6334c41325f6cf26972781f9ea26751142434542c7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Kaehler/Variant353e076ac09a243617701d6334c41325f6cf26972781f9ea26751142434542c7.lean/index.md) · [Full source](../../../../mathematics/Algebra/Kaehler/Variant353e076ac09a243617701d6334c41325f6cf26972781f9ea26751142434542c7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bb141bf6b2643c2566500a9f40bf20f129ff5367`.

Source path: `GRWTSK/Algebra/Kaehler/Variant353e076ac09a243617701d6334c41325f6cf26972781f9ea26751142434542c7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Kaehler/Variant353e076ac09a243617701d6334c41325f6cf26972781f9ea26751142434542c7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Etale.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Kaehler.JacobiZariski` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.BaseChange` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Smooth.Kaehler` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Flat.Localization` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [KaehlerDifferential.tensorKaehlerEquivOfFormallyEtale](../../../../mathematics/Algebra/Kaehler/Variant353e076ac09a243617701d6334c41325f6cf26972781f9ea26751142434542c7.lean/declarations/kaehlerdifferential-tensorkaehlerequivofformallyetale--733651e826a568c5fe9ec316.md) | 34 | `declaration-track:733651e826a568c5fe9ec31695d91104fdd7c53a79a87c3aa84a802cd2ad3803` |
| 2 | `lemma` | [KaehlerDifferential.tensorKaehlerEquivOfFormallyEtale_symm_D_algebraMap](../../../../mathematics/Algebra/Kaehler/Variant353e076ac09a243617701d6334c41325f6cf26972781f9ea26751142434542c7.lean/declarations/kaehlerdifferential-tensorkaehlerequivofformallyetale-symm-d-algebramap--bf5d499663b1f4f3067695d0.md) | 43 | `result-track:bf5d499663b1f4f3067695d0caff543ef2933060b4caec558895725c7d2267f2` |
| 3 | `lemma` | [KaehlerDifferential.isBaseChange_of_formallyEtale](../../../../mathematics/Algebra/Kaehler/Variant353e076ac09a243617701d6334c41325f6cf26972781f9ea26751142434542c7.lean/declarations/kaehlerdifferential-isbasechange-of-formallyetale--b592ad338991cf03f6ff1c38.md) | 49 | `result-track:b592ad338991cf03f6ff1c3816780b83e46fd1fd9a3d53c660f57dbfaf821d1f` |
| 4 | `instance` | [KaehlerDifferential.isLocalizedModule_map](../../../../mathematics/Algebra/Kaehler/Variant353e076ac09a243617701d6334c41325f6cf26972781f9ea26751142434542c7.lean/declarations/kaehlerdifferential-islocalizedmodule-map--15b9919ea50cb51af091a142.md) | 59 | `declaration-track:15b9919ea50cb51af091a14266ab10d23192917eacc1b8ab1550f1443c0c825a` |
| 5 | `def` | [tensorCotangentSpace](../../../../mathematics/Algebra/Kaehler/Variant353e076ac09a243617701d6334c41325f6cf26972781f9ea26751142434542c7.lean/declarations/tensorcotangentspace--fa87afc9f8fa8cc344249051.md) | 84 | `declaration-track:fa87afc9f8fa8cc344249051f8bcd34166d93ddbd69b1f764908ed8081c7e9f8` |
| 6 | `def` | [tensorCotangentInvFun](../../../../mathematics/Algebra/Kaehler/Variant353e076ac09a243617701d6334c41325f6cf26972781f9ea26751142434542c7.lean/declarations/tensorcotangentinvfun--87ff7cd3c43c84691ddb09af.md) | 132 | `declaration-track:87ff7cd3c43c84691ddb09af1609e97511295362b475eb2ddf67dfacea0fe2b9` |
| 7 | `lemma` | [tensorCotangentInvFun_smul_mk](../../../../mathematics/Algebra/Kaehler/Variant353e076ac09a243617701d6334c41325f6cf26972781f9ea26751142434542c7.lean/declarations/tensorcotangentinvfun-smul-mk--91d85a87215e8c97459bf42d.md) | 173 | `result-track:91d85a87215e8c97459bf42d74d3f2578900644bcfd6f666039f0893bb3cf02c` |
| 8 | `def` | [tensorCotangent](../../../../mathematics/Algebra/Kaehler/Variant353e076ac09a243617701d6334c41325f6cf26972781f9ea26751142434542c7.lean/declarations/tensorcotangent--6f0d8e2099a10f4fcbaf7176.md) | 192 | `declaration-track:6f0d8e2099a10f4fcbaf7176b92426bb8c84446e4e362d9d63db2d73ce6c4abc` |
| 9 | `def` | [tensorH1Cotangent](../../../../mathematics/Algebra/Kaehler/Variant353e076ac09a243617701d6334c41325f6cf26972781f9ea26751142434542c7.lean/declarations/tensorh1cotangent--52f1c992dfae3a6010cf773e.md) | 222 | `declaration-track:52f1c992dfae3a6010cf773ee8bed39b2d86b25b7aabd82feb5a7a45d48cbc11` |
| 10 | `def` | [tensorH1CotangentOfIsLocalization](../../../../mathematics/Algebra/Kaehler/Variant353e076ac09a243617701d6334c41325f6cf26972781f9ea26751142434542c7.lean/declarations/tensorh1cotangentofislocalization--03146b92217e256fffb49604.md) | 265 | `declaration-track:03146b92217e256fffb4960468ca448371810c00a761163f6537c8a64201b6e9` |
| 11 | `lemma` | [tensorH1CotangentOfIsLocalization_toLinearMap](../../../../mathematics/Algebra/Kaehler/Variant353e076ac09a243617701d6334c41325f6cf26972781f9ea26751142434542c7.lean/declarations/tensorh1cotangentofislocalization-tolinearmap--e071804f44a960f73502962d.md) | 327 | `result-track:e071804f44a960f73502962d7261af4a3bdc89cafeb2756ced7feb748d7f7dd3` |
| 12 | `instance` | [H1Cotangent.isLocalizedModule](../../../../mathematics/Algebra/Kaehler/Variant353e076ac09a243617701d6334c41325f6cf26972781f9ea26751142434542c7.lean/declarations/h1cotangent-islocalizedmodule--97a2e1f8395a1000b81220fb.md) | 368 | `declaration-track:97a2e1f8395a1000b81220fbc7cbf8beddda75e87caaa5ce7766931711af98b1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
