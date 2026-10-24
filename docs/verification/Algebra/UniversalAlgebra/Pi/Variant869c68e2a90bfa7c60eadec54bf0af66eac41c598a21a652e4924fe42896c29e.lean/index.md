# Verification target: GRWTSK.Algebra.UniversalAlgebra.Pi.Variant869c68e2a90bfa7c60eadec54bf0af66eac41c598a21a652e4924fe42896c29e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1e0c53c72608adca41c72ec85eee4cae498e76a4",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Pi/Variant869c68e2a90bfa7c60eadec54bf0af66eac41c598a21a652e4924fe42896c29e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant869c68e2a90bfa7c60eadec54bf0af66eac41c598a21a652e4924fe42896c29e.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant869c68e2a90bfa7c60eadec54bf0af66eac41c598a21a652e4924fe42896c29e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1e0c53c72608adca41c72ec85eee4cae498e76a4`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Pi/Variant869c68e2a90bfa7c60eadec54bf0af66eac41c598a21a652e4924fe42896c29e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Pi/Variant869c68e2a90bfa7c60eadec54bf0af66eac41c598a21a652e4924fe42896c29e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Notation.Lemmas` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.Canonical.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Defs` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Pi` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [isOrderedMonoid](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant869c68e2a90bfa7c60eadec54bf0af66eac41c598a21a652e4924fe42896c29e.lean/declarations/isorderedmonoid--764fd2af3300a8115da77b29.md) | 36 | `declaration-track:764fd2af3300a8115da77b29aee6eb14d82172a893327e15e03dbf5b8ff4b2a6` |
| 2 | `instance` | [existsMulOfLe](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant869c68e2a90bfa7c60eadec54bf0af66eac41c598a21a652e4924fe42896c29e.lean/declarations/existsmulofle--91540c03bece2fd426ce0802.md) | 42 | `declaration-track:91540c03bece2fd426ce0802a61f15d2542853a1943b2e275cd64f657d19e0bd` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant869c68e2a90bfa7c60eadec54bf0af66eac41c598a21a652e4924fe42896c29e.lean/declarations/instance--e6749c2d6bff0782dfe709ab.md) | 52 | `declaration-track:e6749c2d6bff0782dfe709ab03288fd901cc9487acc30b5261c00803684fee82` |
| 4 | `instance` | [isOrderedCancelMonoid](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant869c68e2a90bfa7c60eadec54bf0af66eac41c598a21a652e4924fe42896c29e.lean/declarations/isorderedcancelmonoid--6c2a532a533e28c2e967caee.md) | 59 | `declaration-track:6c2a532a533e28c2e967caee4dae294ec6778ded0b4ccfddb107d21e82e64c69` |
| 5 | `instance` | [isOrderedRing](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant869c68e2a90bfa7c60eadec54bf0af66eac41c598a21a652e4924fe42896c29e.lean/declarations/isorderedring--13dd22d3495bcc7df4130fcc.md) | 64 | `declaration-track:13dd22d3495bcc7df4130fccd3de1821042190fa9c15469ec6008418072e8143` |
| 6 | `theorem` | [one_le_const_of_one_le](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant869c68e2a90bfa7c60eadec54bf0af66eac41c598a21a652e4924fe42896c29e.lean/declarations/one-le-const-of-one-le--5abe63174685e598f98f38cf.md) | 78 | `result-track:5abe63174685e598f98f38cf6aad3d952908f4f5ac1927bc1e4b09121aebed69` |
| 7 | `theorem` | [const_le_one_of_le_one](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant869c68e2a90bfa7c60eadec54bf0af66eac41c598a21a652e4924fe42896c29e.lean/declarations/const-le-one-of-le-one--d1d2bcc17726018334b52915.md) | 81 | `result-track:d1d2bcc17726018334b5291563b134c4af9fad7cc0553114cc2338223ff3a786` |
| 8 | `theorem` | [one_le_const](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant869c68e2a90bfa7c60eadec54bf0af66eac41c598a21a652e4924fe42896c29e.lean/declarations/one-le-const--80dc6c8fda06bce4c7d04168.md) | 86 | `result-track:80dc6c8fda06bce4c7d041684082701a1ebea4f6f4f53d8590407e8641cb2e50` |
| 9 | `theorem` | [one_lt_const](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant869c68e2a90bfa7c60eadec54bf0af66eac41c598a21a652e4924fe42896c29e.lean/declarations/one-lt-const--e81022ea07dff32242867002.md) | 90 | `result-track:e81022ea07dff32242867002494aa1d3bcac99336838d94674fafc2cd3314996` |
| 10 | `theorem` | [const_le_one](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant869c68e2a90bfa7c60eadec54bf0af66eac41c598a21a652e4924fe42896c29e.lean/declarations/const-le-one--dc641e9bf6c32a0ffb493a18.md) | 94 | `result-track:dc641e9bf6c32a0ffb493a186da2695353890000f205b6d15813aa730f2c0db3` |
| 11 | `theorem` | [const_lt_one](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant869c68e2a90bfa7c60eadec54bf0af66eac41c598a21a652e4924fe42896c29e.lean/declarations/const-lt-one--4f5e5ef18dbe0136829b5434.md) | 98 | `result-track:4f5e5ef18dbe0136829b5434f759ce2425dad5c09b72c09516d2863716d4cfb0` |
| 12 | `lemma` | [one_le_extend](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant869c68e2a90bfa7c60eadec54bf0af66eac41c598a21a652e4924fe42896c29e.lean/declarations/one-le-extend--636ff02c78c12d7976f09119.md) | 106 | `result-track:636ff02c78c12d7976f09119893843f6e19486aa24da6a64034d34cafdf95dfc` |
| 13 | `lemma` | [extend_le_one](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant869c68e2a90bfa7c60eadec54bf0af66eac41c598a21a652e4924fe42896c29e.lean/declarations/extend-le-one--323127926d5f4cbbfe11b64c.md) | 109 | `result-track:323127926d5f4cbbfe11b64cde57f1f5ad96c65e659f981bb0f67e5ebe65caa6` |
| 14 | `lemma` | [mulSingle_le_mulSingle](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant869c68e2a90bfa7c60eadec54bf0af66eac41c598a21a652e4924fe42896c29e.lean/declarations/mulsingle-le-mulsingle--b1abaa36d50192cfa2c7ebc4.md) | 120 | `result-track:b1abaa36d50192cfa2c7ebc42d0e6136b6597a4531e78fe2a0783e29e33069ea` |
| 15 | `lemma` | [one_le_mulSingle](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant869c68e2a90bfa7c60eadec54bf0af66eac41c598a21a652e4924fe42896c29e.lean/declarations/one-le-mulsingle--c6ff9e4830ec3c747433ed96.md) | 126 | `result-track:c6ff9e4830ec3c747433ed96af356f304716b966531d9d95829f52112f80f256` |
| 16 | `lemma` | [mulSingle_le_one](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant869c68e2a90bfa7c60eadec54bf0af66eac41c598a21a652e4924fe42896c29e.lean/declarations/mulsingle-le-one--06f5610fa18d6d9ea5aa0d8a.md) | 129 | `result-track:06f5610fa18d6d9ea5aa0d8aa684e38bc77e514b8de856c4490cd863bcc0064f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
