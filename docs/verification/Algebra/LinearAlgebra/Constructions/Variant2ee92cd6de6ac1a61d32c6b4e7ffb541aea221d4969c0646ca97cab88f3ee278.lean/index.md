# Verification target: GRWTSK.Algebra.LinearAlgebra.Constructions.Variant2ee92cd6de6ac1a61d32c6b4e7ffb541aea221d4969c0646ca97cab88f3ee278

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "398b0d071eedc0db6c3a1af2df2846d905d1ec2a",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Constructions/Variant2ee92cd6de6ac1a61d32c6b4e7ffb541aea221d4969c0646ca97cab88f3ee278.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Constructions/Variant2ee92cd6de6ac1a61d32c6b4e7ffb541aea221d4969c0646ca97cab88f3ee278.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Constructions/Variant2ee92cd6de6ac1a61d32c6b4e7ffb541aea221d4969c0646ca97cab88f3ee278.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `398b0d071eedc0db6c3a1af2df2846d905d1ec2a`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Constructions/Variant2ee92cd6de6ac1a61d32c6b4e7ffb541aea221d4969c0646ca97cab88f3ee278.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Constructions/Variant2ee92cd6de6ac1a61d32c6b4e7ffb541aea221d4969c0646ca97cab88f3ee278.lean.json)

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
| 1 | `def` | [orthogonal](../../../../../mathematics/Algebra/LinearAlgebra/Constructions/Variant2ee92cd6de6ac1a61d32c6b4e7ffb541aea221d4969c0646ca97cab88f3ee278.lean/declarations/orthogonal--4610b04a7a908b7da849bf2f.md) | 45 | `declaration-track:4610b04a7a908b7da849bf2faf81dca175e97049e6ae04df855f63e344f9f3e5` |
| 2 | `lemma` | [orthogonal_mk](../../../../../mathematics/Algebra/LinearAlgebra/Constructions/Variant2ee92cd6de6ac1a61d32c6b4e7ffb541aea221d4969c0646ca97cab88f3ee278.lean/declarations/orthogonal-mk--1b1008d9c06924f34eec7c85.md) | 50 | `result-track:1b1008d9c06924f34eec7c8549268c88b7fbf524ef26b20b49377036033c3cf5` |
| 3 | `lemma` | [orthogonal_comm](../../../../../mathematics/Algebra/LinearAlgebra/Constructions/Variant2ee92cd6de6ac1a61d32c6b4e7ffb541aea221d4969c0646ca97cab88f3ee278.lean/declarations/orthogonal-comm--4e8846b316a52fccef36ac3c.md) | 54 | `result-track:4e8846b316a52fccef36ac3c89428c8c94a3c6b607ba7af018134967556de24c` |
| 4 | `lemma` | [exists_not_self_orthogonal](../../../../../mathematics/Algebra/LinearAlgebra/Constructions/Variant2ee92cd6de6ac1a61d32c6b4e7ffb541aea221d4969c0646ca97cab88f3ee278.lean/declarations/exists-not-self-orthogonal--0b05410f7afb019bda0db150.md) | 58 | `result-track:0b05410f7afb019bda0db150b7d99a7e17ed9149b3c203addc91009fa57735ee` |
| 5 | `lemma` | [exists_not_orthogonal_self](../../../../../mathematics/Algebra/LinearAlgebra/Constructions/Variant2ee92cd6de6ac1a61d32c6b4e7ffb541aea221d4969c0646ca97cab88f3ee278.lean/declarations/exists-not-orthogonal-self--f1f4081124c891a6d2fb0078.md) | 64 | `result-track:f1f4081124c891a6d2fb007832738eb111f97d1f13b1bda3419ffe8ed6334064` |
| 6 | `lemma` | [mk_eq_mk_iff_crossProduct_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Constructions/Variant2ee92cd6de6ac1a61d32c6b4e7ffb541aea221d4969c0646ca97cab88f3ee278.lean/declarations/mk-eq-mk-iff-crossproduct-eq-zero--381887a2049fb2ae161de9f3.md) | 72 | `result-track:381887a2049fb2ae161de9f3ec5ffea7026985429285866267bd881c51e529e7` |
| 7 | `def` | [cross](../../../../../mathematics/Algebra/LinearAlgebra/Constructions/Variant2ee92cd6de6ac1a61d32c6b4e7ffb541aea221d4969c0646ca97cab88f3ee278.lean/declarations/cross--bd1b3f1d9162fdb2bcdbabd1.md) | 80 | `declaration-track:bd1b3f1d9162fdb2bcdbabd1ba3e2c0655fed4169db2d157082b7a65dbbea213` |
| 8 | `lemma` | [cross_mk](../../../../../mathematics/Algebra/LinearAlgebra/Constructions/Variant2ee92cd6de6ac1a61d32c6b4e7ffb541aea221d4969c0646ca97cab88f3ee278.lean/declarations/cross-mk--2c08ae315dc9edb09bd46734.md) | 89 | `result-track:2c08ae315dc9edb09bd4673405df0ef55ce3b012cd6e515cdcc5c36df3bdf5c6` |
| 9 | `lemma` | [cross_mk_of_cross_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Constructions/Variant2ee92cd6de6ac1a61d32c6b4e7ffb541aea221d4969c0646ca97cab88f3ee278.lean/declarations/cross-mk-of-cross-eq-zero--8089033d61cebfc4d39dfcc0.md) | 95 | `result-track:8089033d61cebfc4d39dfcc0918e3c065f4e981be7a6b60f1ca7edf0c4e86752` |
| 10 | `lemma` | [cross_mk_of_cross_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/Constructions/Variant2ee92cd6de6ac1a61d32c6b4e7ffb541aea221d4969c0646ca97cab88f3ee278.lean/declarations/cross-mk-of-cross-ne-zero--d0a7271f2384b4a1399ee7f2.md) | 100 | `result-track:d0a7271f2384b4a1399ee7f2abf211b5f38269257a50a513ffc03e0faf563f0a` |
| 11 | `lemma` | [cross_self](../../../../../mathematics/Algebra/LinearAlgebra/Constructions/Variant2ee92cd6de6ac1a61d32c6b4e7ffb541aea221d4969c0646ca97cab88f3ee278.lean/declarations/cross-self--c094a25b8fe39fd0cae2032c.md) | 105 | `result-track:c094a25b8fe39fd0cae2032c5505cfcaba3e5de40117d06e8dd7578e37208aa5` |
| 12 | `lemma` | [cross_mk_of_ne](../../../../../mathematics/Algebra/LinearAlgebra/Constructions/Variant2ee92cd6de6ac1a61d32c6b4e7ffb541aea221d4969c0646ca97cab88f3ee278.lean/declarations/cross-mk-of-ne--dfb8e2a8d498bdb3a72787e1.md) | 110 | `result-track:dfb8e2a8d498bdb3a72787e1a7a88aea5d41dadcf83388b5006441dd8d20240c` |
| 13 | `lemma` | [cross_comm](../../../../../mathematics/Algebra/LinearAlgebra/Constructions/Variant2ee92cd6de6ac1a61d32c6b4e7ffb541aea221d4969c0646ca97cab88f3ee278.lean/declarations/cross-comm--31e2fefc2fdb7265bb9dcf9c.md) | 115 | `result-track:31e2fefc2fdb7265bb9dcf9cff17555f20479c7097c40a05895a763ae8d3126e` |
| 14 | `theorem` | [cross_orthogonal_left](../../../../../mathematics/Algebra/LinearAlgebra/Constructions/Variant2ee92cd6de6ac1a61d32c6b4e7ffb541aea221d4969c0646ca97cab88f3ee278.lean/declarations/cross-orthogonal-left--fe456e6beba82b2083c0a53f.md) | 123 | `result-track:fe456e6beba82b2083c0a53fca899bbed78eebd625ef6e0d0faeeb95a2747beb` |
| 15 | `theorem` | [cross_orthogonal_right](../../../../../mathematics/Algebra/LinearAlgebra/Constructions/Variant2ee92cd6de6ac1a61d32c6b4e7ffb541aea221d4969c0646ca97cab88f3ee278.lean/declarations/cross-orthogonal-right--28ff58f4923eae53ddfc862a.md) | 129 | `result-track:28ff58f4923eae53ddfc862a9bfdc80a2505dd7b2ff863ecb5f362c05fa90fdc` |
| 16 | `theorem` | [orthogonal_cross_left](../../../../../mathematics/Algebra/LinearAlgebra/Constructions/Variant2ee92cd6de6ac1a61d32c6b4e7ffb541aea221d4969c0646ca97cab88f3ee278.lean/declarations/orthogonal-cross-left--ebbe42c31863e3d4ea403f14.md) | 134 | `result-track:ebbe42c31863e3d4ea403f14bf1b4eb62ef8b22238662f29ac235796598223a6` |
| 17 | `lemma` | [orthogonal_cross_right](../../../../../mathematics/Algebra/LinearAlgebra/Constructions/Variant2ee92cd6de6ac1a61d32c6b4e7ffb541aea221d4969c0646ca97cab88f3ee278.lean/declarations/orthogonal-cross-right--7f41ef30df817bb630d1a5b1.md) | 139 | `result-track:7f41ef30df817bb630d1a5b13c7ed2a7560a0ce16cf7033f2102ce14bca3fbc1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
