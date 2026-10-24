# Verification target: GRWTSK.Algebra.FieldTheory.Basic.Variant47c2f47be0862fbf3888142ace99a8a722bd1eaf10bef725ff342eb578a65577

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "509e9c3c86c1b5622f611f58a41c63daf7f14964",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/FieldTheory/Basic/Variant47c2f47be0862fbf3888142ace99a8a722bd1eaf10bef725ff342eb578a65577.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/FieldTheory/Basic/Variant47c2f47be0862fbf3888142ace99a8a722bd1eaf10bef725ff342eb578a65577.lean/index.md) · [Full source](../../../../../mathematics/Algebra/FieldTheory/Basic/Variant47c2f47be0862fbf3888142ace99a8a722bd1eaf10bef725ff342eb578a65577.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `509e9c3c86c1b5622f611f58a41c63daf7f14964`.

Source path: `GRWTSK/Algebra/FieldTheory/Basic/Variant47c2f47be0862fbf3888142ace99a8a722bd1eaf10bef725ff342eb578a65577.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/FieldTheory/Basic/Variant47c2f47be0862fbf3888142ace99a8a722bd1eaf10bef725ff342eb578a65577.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Derivation.MapCoeffs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.PrimitiveElement` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [logDeriv](../../../../../mathematics/Algebra/FieldTheory/Basic/Variant47c2f47be0862fbf3888142ace99a8a722bd1eaf10bef725ff342eb578a65577.lean/declarations/logderiv--5c248cd221d93d62200403f2.md) | 33 | `declaration-track:5c248cd221d93d62200403f287fcd25fece0d54542b8f49182a82c9fecedc742` |
| 2 | `lemma` | [logDeriv_zero](../../../../../mathematics/Algebra/FieldTheory/Basic/Variant47c2f47be0862fbf3888142ace99a8a722bd1eaf10bef725ff342eb578a65577.lean/declarations/logderiv-zero--a699e8c92a445cf747bc07d4.md) | 36 | `result-track:a699e8c92a445cf747bc07d490795a0690e5e7a743087d1c75287a65215e00be` |
| 3 | `lemma` | [logDeriv_one](../../../../../mathematics/Algebra/FieldTheory/Basic/Variant47c2f47be0862fbf3888142ace99a8a722bd1eaf10bef725ff342eb578a65577.lean/declarations/logderiv-one--2018ebdefc8a7241aa7af95d.md) | 40 | `result-track:2018ebdefc8a7241aa7af95d839a58974146d2d3124769aabf0f3b5b5f4b78b7` |
| 4 | `lemma` | [logDeriv_mul](../../../../../mathematics/Algebra/FieldTheory/Basic/Variant47c2f47be0862fbf3888142ace99a8a722bd1eaf10bef725ff342eb578a65577.lean/declarations/logderiv-mul--417f9f1abbba652be9c03247.md) | 43 | `result-track:417f9f1abbba652be9c0324782ce4fe1c026a0f0deaa481a3415d5d65bb0243a` |
| 5 | `lemma` | [logDeriv_div](../../../../../mathematics/Algebra/FieldTheory/Basic/Variant47c2f47be0862fbf3888142ace99a8a722bd1eaf10bef725ff342eb578a65577.lean/declarations/logderiv-div--f68c5904203d10664060963a.md) | 48 | `result-track:f68c5904203d10664060963a37c7d9f8501344d8ebca5163406e4491e0b5a98a` |
| 6 | `lemma` | [logDeriv_pow](../../../../../mathematics/Algebra/FieldTheory/Basic/Variant47c2f47be0862fbf3888142ace99a8a722bd1eaf10bef725ff342eb578a65577.lean/declarations/logderiv-pow--51adbb40f01990c8f9ed4319.md) | 54 | `result-track:51adbb40f01990c8f9ed4319df8a7ed0ca887fdc0e0a1099eacdb072147870b0` |
| 7 | `lemma` | [logDeriv_eq_zero](../../../../../mathematics/Algebra/FieldTheory/Basic/Variant47c2f47be0862fbf3888142ace99a8a722bd1eaf10bef725ff342eb578a65577.lean/declarations/logderiv-eq-zero--a0f93531945ddb5d36d37198.md) | 63 | `result-track:a0f93531945ddb5d36d37198143f84ece7f1c5bf84f98ab4dab462ea6b505570` |
| 8 | `lemma` | [logDeriv_multisetProd](../../../../../mathematics/Algebra/FieldTheory/Basic/Variant47c2f47be0862fbf3888142ace99a8a722bd1eaf10bef725ff342eb578a65577.lean/declarations/logderiv-multisetprod--083c0988afb597e897d54d3e.md) | 67 | `result-track:083c0988afb597e897d54d3e799eb25591e2971b0fbc86877d8ddf3da80085b2` |
| 9 | `lemma` | [logDeriv_prod](../../../../../mathematics/Algebra/FieldTheory/Basic/Variant47c2f47be0862fbf3888142ace99a8a722bd1eaf10bef725ff342eb578a65577.lean/declarations/logderiv-prod--54985b26e35122c0d0de2d8c.md) | 79 | `result-track:54985b26e35122c0d0de2d8ceadf05b2fa702cf02bb5080da603f41b1c62aea6` |
| 10 | `lemma` | [logDeriv_prod_of_eq_zero](../../../../../mathematics/Algebra/FieldTheory/Basic/Variant47c2f47be0862fbf3888142ace99a8a722bd1eaf10bef725ff342eb578a65577.lean/declarations/logderiv-prod-of-eq-zero--a29065fd679618c0d76d7cae.md) | 82 | `result-track:a29065fd679618c0d76d7cae728e662c7bfd16a83e9c92001dcea5f56b20f04a` |
| 11 | `lemma` | [logDeriv_algebraMap](../../../../../mathematics/Algebra/FieldTheory/Basic/Variant47c2f47be0862fbf3888142ace99a8a722bd1eaf10bef725ff342eb578a65577.lean/declarations/logderiv-algebramap--291eae7bf4880e3bf8a313a9.md) | 87 | `result-track:291eae7bf4880e3bf8a313a9c9a49032b9f8840c278f58c7de242c89eed2abd7` |
| 12 | `lemma` | [_root_.GRWTSK.Algebra.FieldTheory.LogDeriv.Variant8181fee3c239fe5605955a4c1fdfadff1e6ce4890645f04ab390d3f54fcd83ed.algebraMap.coe_logDeriv](../../../../../mathematics/Algebra/FieldTheory/Basic/Variant47c2f47be0862fbf3888142ace99a8a722bd1eaf10bef725ff342eb578a65577.lean/declarations/root-grwtsk-algebra-fieldtheory-logderiv-variant8181fee3c239fe5605955a4c--db9fd2b7e030dd21de2a804f.md) | 94 | `result-track:db9fd2b7e030dd21de2a804fcff335aa71c73a1fca76004a2641596d0c4c3b07` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/FieldTheory/Basic/Variant47c2f47be0862fbf3888142ace99a8a722bd1eaf10bef725ff342eb578a65577.lean/declarations/instance--480447251d03a32afc3107fc.md) | 100 | `declaration-track:480447251d03a32afc3107fc7a97a5b827c94776fa6d6f8b5063ef34c7e7d05f` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/FieldTheory/Basic/Variant47c2f47be0862fbf3888142ace99a8a722bd1eaf10bef725ff342eb578a65577.lean/declarations/instance--f0345cc30a9a22dae704e4c2.md) | 127 | `declaration-track:f0345cc30a9a22dae704e4c2dff7f34cd6e92614baf6152289407cd0ebd0dae9` |
| 15 | `def` | [differentialFiniteDimensional](../../../../../mathematics/Algebra/FieldTheory/Basic/Variant47c2f47be0862fbf3888142ace99a8a722bd1eaf10bef725ff342eb578a65577.lean/declarations/differentialfinitedimensional--391eebb6f04f2492f1cd5a29.md) | 143 | `declaration-track:391eebb6f04f2492f1cd5a29e492051793ec01551fdbfec851dcf9e0cfb7f819` |
| 16 | `lemma` | [differentialAlgebraFiniteDimensional](../../../../../mathematics/Algebra/FieldTheory/Basic/Variant47c2f47be0862fbf3888142ace99a8a722bd1eaf10bef725ff342eb578a65577.lean/declarations/differentialalgebrafinitedimensional--51f155808a68fff8911871c7.md) | 153 | `result-track:51f155808a68fff8911871c7ab2305987c05a601f572990535f37ead963ec0b1` |
| 17 | `def` | [uniqueDifferentialAlgebraFiniteDimensional](../../../../../mathematics/Algebra/FieldTheory/Basic/Variant47c2f47be0862fbf3888142ace99a8a722bd1eaf10bef725ff342eb578a65577.lean/declarations/uniquedifferentialalgebrafinitedimensional--30e2393eaef090e9dc572e0d.md) | 167 | `declaration-track:30e2393eaef090e9dc572e0d002d9e137c9d071904fe3ef59951cd342727a7c4` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/FieldTheory/Basic/Variant47c2f47be0862fbf3888142ace99a8a722bd1eaf10bef725ff342eb578a65577.lean/declarations/instance--e1c1ba455bf10740ca3d79ae.md) | 188 | `declaration-track:e1c1ba455bf10740ca3d79aee1908c91b99f44be77d9fec412443c3ad34379bb` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/FieldTheory/Basic/Variant47c2f47be0862fbf3888142ace99a8a722bd1eaf10bef725ff342eb578a65577.lean/declarations/instance--a465a26e97c6fd58c37bd9b9.md) | 191 | `declaration-track:a465a26e97c6fd58c37bd9b9459955506bf69555fa4164cf020e21447611c37e` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/FieldTheory/Basic/Variant47c2f47be0862fbf3888142ace99a8a722bd1eaf10bef725ff342eb578a65577.lean/declarations/instance--d0f2ed6cc28942fa7d3eba43.md) | 194 | `declaration-track:d0f2ed6cc28942fa7d3eba4311773f368c7172dc5165cfe8ea7e92495b3e889b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
