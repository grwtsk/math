# Verification target: GRWTSK.Algebra.GroupTheory.Ring.Variant9035c15a4d95d63992b5abad12ac783aee0fbf9da56c96953b6eda47a050bb93

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9b5e548b776c17f4c31c511321a81d13ce6ddba8",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Ring/Variant9035c15a4d95d63992b5abad12ac783aee0fbf9da56c96953b6eda47a050bb93.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Ring/Variant9035c15a4d95d63992b5abad12ac783aee0fbf9da56c96953b6eda47a050bb93.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Ring/Variant9035c15a4d95d63992b5abad12ac783aee0fbf9da56c96953b6eda47a050bb93.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9b5e548b776c17f4c31c511321a81d13ce6ddba8`.

Source path: `GRWTSK/Algebra/GroupTheory/Ring/Variant9035c15a4d95d63992b5abad12ac783aee0fbf9da56c96953b6eda47a050bb93.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Ring/Variant9035c15a4d95d63992b5abad12ac783aee0fbf9da56c96953b6eda47a050bb93.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Ring.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.InjSurj` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FastInstance` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Ring/Variant9035c15a4d95d63992b5abad12ac783aee0fbf9da56c96953b6eda47a050bb93.lean/declarations/instance--5813922f17284637aa14fb9e.md) | 29 | `declaration-track:5813922f17284637aa14fb9ec0327d2adfd2c9575a0874fdf2eabf9d7929b86c` |
| 2 | `theorem` | [coe_add](../../../../../mathematics/Algebra/GroupTheory/Ring/Variant9035c15a4d95d63992b5abad12ac783aee0fbf9da56c96953b6eda47a050bb93.lean/declarations/coe-add--02f079c2b8cfa05fd613f283.md) | 33 | `result-track:02f079c2b8cfa05fd613f2839597c1e1f712bd46b5a7db22001d7ebaa4ff21a0` |
| 3 | `instance` | [addSemigroup](../../../../../mathematics/Algebra/GroupTheory/Ring/Variant9035c15a4d95d63992b5abad12ac783aee0fbf9da56c96953b6eda47a050bb93.lean/declarations/addsemigroup--2510a7ebfbde42e22d1e9bd2.md) | 36 | `declaration-track:2510a7ebfbde42e22d1e9bd2237171e00c314fe0db7d67dbb295296d14179751` |
| 4 | `instance` | [addCommSemigroup](../../../../../mathematics/Algebra/GroupTheory/Ring/Variant9035c15a4d95d63992b5abad12ac783aee0fbf9da56c96953b6eda47a050bb93.lean/declarations/addcommsemigroup--c86bb91d50496ff5555756c9.md) | 39 | `declaration-track:c86bb91d50496ff5555756c97c17bdb8d6f9fa6fc76babc47c8ef2eab54aaf9a` |
| 5 | `instance` | [addLeftCancelSemigroup](../../../../../mathematics/Algebra/GroupTheory/Ring/Variant9035c15a4d95d63992b5abad12ac783aee0fbf9da56c96953b6eda47a050bb93.lean/declarations/addleftcancelsemigroup--0aa9977e176d3c156b6a0021.md) | 43 | `declaration-track:0aa9977e176d3c156b6a00216321e184cdf62a962de04e1f7ac64f608d44ab6b` |
| 6 | `instance` | [addRightCancelSemigroup](../../../../../mathematics/Algebra/GroupTheory/Ring/Variant9035c15a4d95d63992b5abad12ac783aee0fbf9da56c96953b6eda47a050bb93.lean/declarations/addrightcancelsemigroup--588fd0ca928cf84064295f91.md) | 47 | `declaration-track:588fd0ca928cf84064295f916d5f5eb005e4c333cf7c6d64d6fba2e69d90a173` |
| 7 | `instance` | [addLeftStrictMono](../../../../../mathematics/Algebra/GroupTheory/Ring/Variant9035c15a4d95d63992b5abad12ac783aee0fbf9da56c96953b6eda47a050bb93.lean/declarations/addleftstrictmono--320e31d37efa55ef36b7fd52.md) | 51 | `declaration-track:320e31d37efa55ef36b7fd52c7de685a7bf875ceed895deb4cf3ac70728e499a` |
| 8 | `instance` | [addRightStrictMono](../../../../../mathematics/Algebra/GroupTheory/Ring/Variant9035c15a4d95d63992b5abad12ac783aee0fbf9da56c96953b6eda47a050bb93.lean/declarations/addrightstrictmono--c0e1e03ffb85937e850640b6.md) | 54 | `declaration-track:c0e1e03ffb85937e850640b64a159bb6d406d85a79db259953160b749a78f4e5` |
| 9 | `instance` | [addLeftReflectLT](../../../../../mathematics/Algebra/GroupTheory/Ring/Variant9035c15a4d95d63992b5abad12ac783aee0fbf9da56c96953b6eda47a050bb93.lean/declarations/addleftreflectlt--5d18dceeb34e45e6111a9051.md) | 57 | `declaration-track:5d18dceeb34e45e6111a9051c2f98408e9f8f42ae886f5cdfe2717246666f7ae` |
| 10 | `instance` | [addRightReflectLT](../../../../../mathematics/Algebra/GroupTheory/Ring/Variant9035c15a4d95d63992b5abad12ac783aee0fbf9da56c96953b6eda47a050bb93.lean/declarations/addrightreflectlt--95cd74cdddaaebebd76a2151.md) | 60 | `declaration-track:95cd74cdddaaebebd76a21511f0568632bb76fc4378b186d02fed9cf21b06263` |
| 11 | `instance` | [addLeftReflectLE](../../../../../mathematics/Algebra/GroupTheory/Ring/Variant9035c15a4d95d63992b5abad12ac783aee0fbf9da56c96953b6eda47a050bb93.lean/declarations/addleftreflectle--b92e6b715686e8242d64794b.md) | 63 | `declaration-track:b92e6b715686e8242d64794ba2399e0e52100782aa01989f2e6ce4e5b2a66933` |
| 12 | `instance` | [addRightReflectLE](../../../../../mathematics/Algebra/GroupTheory/Ring/Variant9035c15a4d95d63992b5abad12ac783aee0fbf9da56c96953b6eda47a050bb93.lean/declarations/addrightreflectle--55dbe049acf6eefd6b9f105e.md) | 66 | `declaration-track:55dbe049acf6eefd6b9f105ef1e2da6aac642c396055c783ad795ca6cea79bc4` |
| 13 | `instance` | [addLeftMono](../../../../../mathematics/Algebra/GroupTheory/Ring/Variant9035c15a4d95d63992b5abad12ac783aee0fbf9da56c96953b6eda47a050bb93.lean/declarations/addleftmono--ad8a1e394cc7ace2cae1dd01.md) | 71 | `declaration-track:ad8a1e394cc7ace2cae1dd011feda6673e2e306b399d6959d6c832666e5881db` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Ring/Variant9035c15a4d95d63992b5abad12ac783aee0fbf9da56c96953b6eda47a050bb93.lean/declarations/instance--c7c1e421525307b3b1415c29.md) | 79 | `declaration-track:c7c1e421525307b3b1415c29a956b63e89c25a547991d4f533b88be0777b3e56` |
| 15 | `theorem` | [val_mul](../../../../../mathematics/Algebra/GroupTheory/Ring/Variant9035c15a4d95d63992b5abad12ac783aee0fbf9da56c96953b6eda47a050bb93.lean/declarations/val-mul--8dfea548aebcbb743d0f544a.md) | 83 | `result-track:8dfea548aebcbb743d0f544a3a607277c5059734a8e6f0fda38289ef83846c73` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Ring/Variant9035c15a4d95d63992b5abad12ac783aee0fbf9da56c96953b6eda47a050bb93.lean/declarations/instance--0d61e62ea32322322bcc88e3.md) | 86 | `declaration-track:0d61e62ea32322322bcc88e3547ace3116b934804f8f93505b3b30485447bd62` |
| 17 | `theorem` | [val_pow](../../../../../mathematics/Algebra/GroupTheory/Ring/Variant9035c15a4d95d63992b5abad12ac783aee0fbf9da56c96953b6eda47a050bb93.lean/declarations/val-pow--329e7e507b9374e23821325b.md) | 90 | `result-track:329e7e507b9374e23821325be3018e0433acdba93d7bcfc4fd6cecd1ec470513` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Ring/Variant9035c15a4d95d63992b5abad12ac783aee0fbf9da56c96953b6eda47a050bb93.lean/declarations/instance--5bf326ff1fdc7476c54f5983.md) | 94 | `declaration-track:5bf326ff1fdc7476c54f5983d852cb2b499c3cd5d4fb04e130812c9624e43954` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Ring/Variant9035c15a4d95d63992b5abad12ac783aee0fbf9da56c96953b6eda47a050bb93.lean/declarations/instance--0cb3e37d9c6dfbfb03276d83.md) | 97 | `declaration-track:0cb3e37d9c6dfbfb03276d832f447cbebc3d3373a8e4426299541d9fc09ba391` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Ring/Variant9035c15a4d95d63992b5abad12ac783aee0fbf9da56c96953b6eda47a050bb93.lean/declarations/instance--9f00a1aaf756565616754cec.md) | 100 | `declaration-track:9f00a1aaf756565616754cec108d36c87dde2fa5b230a2b85106f5fb2f120838` |
| 21 | `theorem` | [val_one](../../../../../mathematics/Algebra/GroupTheory/Ring/Variant9035c15a4d95d63992b5abad12ac783aee0fbf9da56c96953b6eda47a050bb93.lean/declarations/val-one--d3e81469dff923fed07cc040.md) | 104 | `result-track:d3e81469dff923fed07cc040658fb0a24e57481d4a8d64b7c537b73cdb901785` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Ring/Variant9035c15a4d95d63992b5abad12ac783aee0fbf9da56c96953b6eda47a050bb93.lean/declarations/instance--e46135fc1d6f6daff0a36f2e.md) | 107 | `declaration-track:e46135fc1d6f6daff0a36f2ec004f306959f8279ad6bbc10dbf2bf9bf42b653b` |
| 23 | `instance` | [commMonoid](../../../../../mathematics/Algebra/GroupTheory/Ring/Variant9035c15a4d95d63992b5abad12ac783aee0fbf9da56c96953b6eda47a050bb93.lean/declarations/commmonoid--24a1090482595c304f63a6bc.md) | 114 | `declaration-track:24a1090482595c304f63a6bca169f8438b3bd5169bde524710d1968cbf62c0a0` |
| 24 | `instance` | [isOrderedMonoid](../../../../../mathematics/Algebra/GroupTheory/Ring/Variant9035c15a4d95d63992b5abad12ac783aee0fbf9da56c96953b6eda47a050bb93.lean/declarations/isorderedmonoid--38aba7906cb9c6af92b1c474.md) | 118 | `declaration-track:38aba7906cb9c6af92b1c4740e0e38d69762bb72bdda7ad0a62d0c163c4b865e` |
| 25 | `instance` | [isOrderedCancelMonoid](../../../../../mathematics/Algebra/GroupTheory/Ring/Variant9035c15a4d95d63992b5abad12ac783aee0fbf9da56c96953b6eda47a050bb93.lean/declarations/isorderedcancelmonoid--3f0c1b8b4a721c839d577241.md) | 125 | `declaration-track:3f0c1b8b4a721c839d577241e6f885a12dbadd754f528e6c1f351d26d174c90f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
