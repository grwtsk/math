# Verification target: GRWTSK.Algebra.LinearAlgebra.Defs.Variant3a561647b5648d2cf8cc50353e7c8963ca902da0bc49886d38c51e54e55f2170

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "32e60b6f9bc00aafe41c91290e38fed485b65c26",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Defs/Variant3a561647b5648d2cf8cc50353e7c8963ca902da0bc49886d38c51e54e55f2170.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant3a561647b5648d2cf8cc50353e7c8963ca902da0bc49886d38c51e54e55f2170.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant3a561647b5648d2cf8cc50353e7c8963ca902da0bc49886d38c51e54e55f2170.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `32e60b6f9bc00aafe41c91290e38fed485b65c26`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Defs/Variant3a561647b5648d2cf8cc50353e7c8963ca902da0bc49886d38c51e54e55f2170.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Defs/Variant3a561647b5648d2cf8cc50353e7c8963ca902da0bc49886d38c51e54e55f2170.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.AlgCat.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Central.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FiniteDimensional.Defs` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Reindex` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CSA](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant3a561647b5648d2cf8cc50353e7c8963ca902da0bc49886d38c51e54e55f2170.lean/declarations/csa--66d44347c2af65404a1e234c.md) | 35 | `declaration-track:66d44347c2af65404a1e234cd423a46c248a5f962d5661f0c7e36a2ff67429be` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant3a561647b5648d2cf8cc50353e7c8963ca902da0bc49886d38c51e54e55f2170.lean/declarations/instance--fbeda69a3c53d7a95bed8da6.md) | 45 | `declaration-track:fbeda69a3c53d7a95bed8da63aded815bedfd83c2a61d4fceca6e14b9feff292` |
| 3 | `abbrev` | [IsBrauerEquivalent](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant3a561647b5648d2cf8cc50353e7c8963ca902da0bc49886d38c51e54e55f2170.lean/declarations/isbrauerequivalent--298ab1de6789991c0c1b2cd8.md) | 51 | `declaration-track:298ab1de6789991c0c1b2cd83a8e14dc5b2ec3aa102c1b5672ec7142d04f540b` |
| 4 | `lemma` | [refl](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant3a561647b5648d2cf8cc50353e7c8963ca902da0bc49886d38c51e54e55f2170.lean/declarations/refl--d6663a78126820f8de8ca38e.md) | 57 | `result-track:d6663a78126820f8de8ca38edf26c6e9d1ed66fea1a31bfe5f38e36f707a536a` |
| 5 | `lemma` | [symm](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant3a561647b5648d2cf8cc50353e7c8963ca902da0bc49886d38c51e54e55f2170.lean/declarations/symm--808ca9bb9348a3e273534e00.md) | 61 | `result-track:808ca9bb9348a3e273534e0050a2f2bf618f4bce7a6e9a962236e027d0ed01fe` |
| 6 | `lemma` | [trans](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant3a561647b5648d2cf8cc50353e7c8963ca902da0bc49886d38c51e54e55f2170.lean/declarations/trans--bfdcb1028b675e182061b389.md) | 67 | `result-track:bfdcb1028b675e182061b389b651b1ad40d4d408a1710f38b54647ccfbfc33ad` |
| 7 | `lemma` | [is_eqv](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant3a561647b5648d2cf8cc50353e7c8963ca902da0bc49886d38c51e54e55f2170.lean/declarations/is-eqv--26b732bde52fbb5fc530eb74.md) | 77 | `result-track:26b732bde52fbb5fc530eb74bdf9c5195b23bf4f67ccf02c70460562032a3a2e` |
| 8 | `def` | [Brauer.CSA_Setoid](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant3a561647b5648d2cf8cc50353e7c8963ca902da0bc49886d38c51e54e55f2170.lean/declarations/brauer-csa-setoid--63fd06d5ec0f5c3ca13d0d02.md) | 87 | `declaration-track:63fd06d5ec0f5c3ca13d0d02d1700f9d39e48ff470e0accb6150f2c278f28df0` |
| 9 | `abbrev` | [BrauerGroup](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant3a561647b5648d2cf8cc50353e7c8963ca902da0bc49886d38c51e54e55f2170.lean/declarations/brauergroup--05d8d161566b9edd6cabc434.md) | 93 | `declaration-track:05d8d161566b9edd6cabc434a51ff0a05e400a8e90652d936e7f072242b1738d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
