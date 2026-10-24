# Verification target: GRWTSK.Algebra.GroupTheory.Defs.Variant519461919fc72ec298f335a2661d0a902c4c6f4599a2b09674f6347dfc85510c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6aebec56f70fad83880d797b1586c672c27ddb92",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Defs/Variant519461919fc72ec298f335a2661d0a902c4c6f4599a2b09674f6347dfc85510c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant519461919fc72ec298f335a2661d0a902c4c6f4599a2b09674f6347dfc85510c.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant519461919fc72ec298f335a2661d0a902c4c6f4599a2b09674f6347dfc85510c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6aebec56f70fad83880d797b1586c672c27ddb92`.

Source path: `GRWTSK/Algebra/GroupTheory/Defs/Variant519461919fc72ec298f335a2661d0a902c4c6f4599a2b09674f6347dfc85510c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Defs/Variant519461919fc72ec298f335a2661d0a902c4c6f4599a2b09674f6347dfc85510c.lean.json)

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
| 1 | `instance` | [instCommMonoid](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant519461919fc72ec298f335a2661d0a902c4c6f4599a2b09674f6347dfc85510c.lean/declarations/instcommmonoid--a211049ff54e2cc8b38e5b75.md) | 36 | `declaration-track:a211049ff54e2cc8b38e5b75ced2f19c9c78ee852b7cb91fafb601943cfb3575` |
| 2 | `instance` | [instAddCommGroup](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant519461919fc72ec298f335a2661d0a902c4c6f4599a2b09674f6347dfc85510c.lean/declarations/instaddcommgroup--8482adf34bf07b5097e86db3.md) | 45 | `declaration-track:8482adf34bf07b5097e86db3132b688ac910d82fb7ef03f8ec62f924787f9517` |
| 3 | `instance` | [instIsAddTorsionFree](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant519461919fc72ec298f335a2661d0a902c4c6f4599a2b09674f6347dfc85510c.lean/declarations/instisaddtorsionfree--17e7fb5e0f2dd01bab230c49.md) | 66 | `declaration-track:17e7fb5e0f2dd01bab230c4915cccc9057cf3125b5c8f806f6a34237a10bf597` |
| 4 | `instance` | [instAddCommMonoid](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant519461919fc72ec298f335a2661d0a902c4c6f4599a2b09674f6347dfc85510c.lean/declarations/instaddcommmonoid--d2304430f2ad10965d3f3231.md) | 79 | `declaration-track:d2304430f2ad10965d3f32315a5f26e24d2734c32c70967d4cb3cb99a74ffec5` |
| 5 | `instance` | [instAddMonoid](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant519461919fc72ec298f335a2661d0a902c4c6f4599a2b09674f6347dfc85510c.lean/declarations/instaddmonoid--1ea933391551d1a63c2ee620.md) | 80 | `declaration-track:1ea933391551d1a63c2ee620603756157d2c356806b516c995085b27f7ab0f24` |
| 6 | `instance` | [instMonoid](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant519461919fc72ec298f335a2661d0a902c4c6f4599a2b09674f6347dfc85510c.lean/declarations/instmonoid--0096f9afe124d8ffb3faf25d.md) | 81 | `declaration-track:0096f9afe124d8ffb3faf25de5642a7e346f9d2211e25dc342303262f3613f0f` |
| 7 | `instance` | [instCommSemigroup](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant519461919fc72ec298f335a2661d0a902c4c6f4599a2b09674f6347dfc85510c.lean/declarations/instcommsemigroup--59fb513536ebf5841e265e35.md) | 82 | `declaration-track:59fb513536ebf5841e265e35078d93f988f4f218646d008638cb8ae0e1e5f0e1` |
| 8 | `instance` | [instSemigroup](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant519461919fc72ec298f335a2661d0a902c4c6f4599a2b09674f6347dfc85510c.lean/declarations/instsemigroup--336262ab6c2f3c0429d1060b.md) | 83 | `declaration-track:336262ab6c2f3c0429d1060b417b702e7301abfab9ff1c6e38ecc1343e912078` |
| 9 | `instance` | [instAddGroup](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant519461919fc72ec298f335a2661d0a902c4c6f4599a2b09674f6347dfc85510c.lean/declarations/instaddgroup--fd0467b93104296ecd0d90ec.md) | 84 | `declaration-track:fd0467b93104296ecd0d90ec697cf9ffb11498d3ade82b527ed86d172ff52e6a` |
| 10 | `instance` | [instAddCommSemigroup](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant519461919fc72ec298f335a2661d0a902c4c6f4599a2b09674f6347dfc85510c.lean/declarations/instaddcommsemigroup--de4c57aba5bdcbdb4bf79de3.md) | 85 | `declaration-track:de4c57aba5bdcbdb4bf79de305cf6a4abe93be573266df5cbb810b859880f2a3` |
| 11 | `instance` | [instAddSemigroup](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant519461919fc72ec298f335a2661d0a902c4c6f4599a2b09674f6347dfc85510c.lean/declarations/instaddsemigroup--80150ea12678182130e4679a.md) | 86 | `declaration-track:80150ea12678182130e4679a2730cd44a0457e59b76c321a9e9e8171b468179f` |
| 12 | `lemma` | [nsmul_eq_mul](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant519461919fc72ec298f335a2661d0a902c4c6f4599a2b09674f6347dfc85510c.lean/declarations/nsmul-eq-mul--869b836e672eb3c672ef5b39.md) | 91 | `result-track:869b836e672eb3c672ef5b391da480501450f65e49e489a089169011c3f700da` |
| 13 | `lemma` | [zsmul_eq_mul](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant519461919fc72ec298f335a2661d0a902c4c6f4599a2b09674f6347dfc85510c.lean/declarations/zsmul-eq-mul--022aa110ed71bc7e12fbd10d.md) | 94 | `result-track:022aa110ed71bc7e12fbd10dc932d6b16bf92495cbad57a28c9c04d367d8e5b7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
