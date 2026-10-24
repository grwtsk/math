# Verification target: GRWTSK.Algebra.LinearAlgebra.Constructions.Varianta705b27392db80e2fcd1f26007713cfc1836b728ca690a08889c534703aa19b5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "80dd140e35d5278fd3b3395b92185ed0cb307777",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Constructions/Varianta705b27392db80e2fcd1f26007713cfc1836b728ca690a08889c534703aa19b5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Constructions/Varianta705b27392db80e2fcd1f26007713cfc1836b728ca690a08889c534703aa19b5.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Constructions/Varianta705b27392db80e2fcd1f26007713cfc1836b728ca690a08889c534703aa19b5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `80dd140e35d5278fd3b3395b92185ed0cb307777`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Constructions/Varianta705b27392db80e2fcd1f26007713cfc1836b728ca690a08889c534703aa19b5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Constructions/Varianta705b27392db80e2fcd1f26007713cfc1836b728ca690a08889c534703aa19b5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.CrossProduct` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.DotProduct` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Projectivization.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [orthogonal](../../../../../mathematics/Algebra/LinearAlgebra/Constructions/Varianta705b27392db80e2fcd1f26007713cfc1836b728ca690a08889c534703aa19b5.lean/declarations/orthogonal--11b6e38722a8efbc896a41e0.md) | 33 | `declaration-track:11b6e38722a8efbc896a41e0024cce85a74329c162d0a3c9a373466ac386f5ed` |
| 2 | `lemma` | [orthogonal_mk](../../../../../mathematics/Algebra/LinearAlgebra/Constructions/Varianta705b27392db80e2fcd1f26007713cfc1836b728ca690a08889c534703aa19b5.lean/declarations/orthogonal-mk--56f001023b2ad1ffcdf8dd6b.md) | 38 | `result-track:56f001023b2ad1ffcdf8dd6bd065d861d92d0537f58606503cc73fcd8e38b5fb` |
| 3 | `lemma` | [orthogonal_comm](../../../../../mathematics/Algebra/LinearAlgebra/Constructions/Varianta705b27392db80e2fcd1f26007713cfc1836b728ca690a08889c534703aa19b5.lean/declarations/orthogonal-comm--98be7c560504c97bfed2796e.md) | 42 | `result-track:98be7c560504c97bfed2796efc71f4c44279a171c719c4c3ef1c28a1f1593a3a` |
| 4 | `lemma` | [exists_not_self_orthogonal](../../../../../mathematics/Algebra/LinearAlgebra/Constructions/Varianta705b27392db80e2fcd1f26007713cfc1836b728ca690a08889c534703aa19b5.lean/declarations/exists-not-self-orthogonal--ff532c7fc4f89c1314d89455.md) | 46 | `result-track:ff532c7fc4f89c1314d894554c100bdf3afd5ab457fb23dd86894ac740eb586f` |
| 5 | `lemma` | [exists_not_orthogonal_self](../../../../../mathematics/Algebra/LinearAlgebra/Constructions/Varianta705b27392db80e2fcd1f26007713cfc1836b728ca690a08889c534703aa19b5.lean/declarations/exists-not-orthogonal-self--3462822c1b585125ede0e110.md) | 52 | `result-track:3462822c1b585125ede0e11085e96408525f52f958f81f460761c70892e33aad` |
| 6 | `lemma` | [mk_eq_mk_iff_crossProduct_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Constructions/Varianta705b27392db80e2fcd1f26007713cfc1836b728ca690a08889c534703aa19b5.lean/declarations/mk-eq-mk-iff-crossproduct-eq-zero--f398c733752450797f85a1bd.md) | 60 | `result-track:f398c733752450797f85a1bdcc2f5fe668a30c585b97490049c09ee1e46077ba` |
| 7 | `def` | [cross](../../../../../mathematics/Algebra/LinearAlgebra/Constructions/Varianta705b27392db80e2fcd1f26007713cfc1836b728ca690a08889c534703aa19b5.lean/declarations/cross--c3269a16220f8cd2a6d5e949.md) | 68 | `declaration-track:c3269a16220f8cd2a6d5e949a3ef4b37d45dbf3da1f4428eead41a81168e3814` |
| 8 | `lemma` | [cross_mk](../../../../../mathematics/Algebra/LinearAlgebra/Constructions/Varianta705b27392db80e2fcd1f26007713cfc1836b728ca690a08889c534703aa19b5.lean/declarations/cross-mk--af2ffa19b75e304f480005c4.md) | 77 | `result-track:af2ffa19b75e304f480005c464766c3c1cc9f83a5d786a9df9b4ebc0e770dc78` |
| 9 | `lemma` | [cross_mk_of_cross_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Constructions/Varianta705b27392db80e2fcd1f26007713cfc1836b728ca690a08889c534703aa19b5.lean/declarations/cross-mk-of-cross-eq-zero--048011a32ff17e386c2a0fb5.md) | 83 | `result-track:048011a32ff17e386c2a0fb54d08082f1f5cfb81a3b279ba9fd65787d3a02d0d` |
| 10 | `lemma` | [cross_mk_of_cross_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/Constructions/Varianta705b27392db80e2fcd1f26007713cfc1836b728ca690a08889c534703aa19b5.lean/declarations/cross-mk-of-cross-ne-zero--d6db1ba7900972679e1631d8.md) | 88 | `result-track:d6db1ba7900972679e1631d8a85187be9d7c9238b1a29a5b387139a5bd7b1a58` |
| 11 | `lemma` | [cross_self](../../../../../mathematics/Algebra/LinearAlgebra/Constructions/Varianta705b27392db80e2fcd1f26007713cfc1836b728ca690a08889c534703aa19b5.lean/declarations/cross-self--0787c4c694199c52a5f4e886.md) | 93 | `result-track:0787c4c694199c52a5f4e8865e5213b7eefc051efbd844a3fb3c78fde6d82d51` |
| 12 | `lemma` | [cross_mk_of_ne](../../../../../mathematics/Algebra/LinearAlgebra/Constructions/Varianta705b27392db80e2fcd1f26007713cfc1836b728ca690a08889c534703aa19b5.lean/declarations/cross-mk-of-ne--ca97b8c320c87650b5327fbb.md) | 98 | `result-track:ca97b8c320c87650b5327fbb21e4df641d96bd7ac248fed5417a0b8cec65d4d2` |
| 13 | `lemma` | [cross_comm](../../../../../mathematics/Algebra/LinearAlgebra/Constructions/Varianta705b27392db80e2fcd1f26007713cfc1836b728ca690a08889c534703aa19b5.lean/declarations/cross-comm--33e086892d18fd4047f24b21.md) | 103 | `result-track:33e086892d18fd4047f24b21d8787393526cb3f177dadc82aebab891f31e3c20` |
| 14 | `theorem` | [cross_orthogonal_left](../../../../../mathematics/Algebra/LinearAlgebra/Constructions/Varianta705b27392db80e2fcd1f26007713cfc1836b728ca690a08889c534703aa19b5.lean/declarations/cross-orthogonal-left--ae35e363c0b2ad8ca1f8c90c.md) | 111 | `result-track:ae35e363c0b2ad8ca1f8c90c7b178fbc6194d87184751e30e9411387ca4eb865` |
| 15 | `theorem` | [cross_orthogonal_right](../../../../../mathematics/Algebra/LinearAlgebra/Constructions/Varianta705b27392db80e2fcd1f26007713cfc1836b728ca690a08889c534703aa19b5.lean/declarations/cross-orthogonal-right--c95830f7d4fdebfaed517e8a.md) | 117 | `result-track:c95830f7d4fdebfaed517e8ad0ddf839a951d4dbf32675621cf93ec65b6b05e9` |
| 16 | `theorem` | [orthogonal_cross_left](../../../../../mathematics/Algebra/LinearAlgebra/Constructions/Varianta705b27392db80e2fcd1f26007713cfc1836b728ca690a08889c534703aa19b5.lean/declarations/orthogonal-cross-left--bb01a38de5fd7bcd239714d6.md) | 122 | `result-track:bb01a38de5fd7bcd239714d639cc701f5a417d650aa2c74cab39e833ad82780b` |
| 17 | `lemma` | [orthogonal_cross_right](../../../../../mathematics/Algebra/LinearAlgebra/Constructions/Varianta705b27392db80e2fcd1f26007713cfc1836b728ca690a08889c534703aa19b5.lean/declarations/orthogonal-cross-right--ea3c33b9fecc91ea733cfb5c.md) | 127 | `result-track:ea3c33b9fecc91ea733cfb5c28641b5f65c942645fe61300171f485c25d4560c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
