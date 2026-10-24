# Verification target: GRWTSK.Algebra.LinearAlgebra.Defs.Variant14706ed8a1c5accd1d73c67a5daeca06946edfde05ea3940d8557258da7795f9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8119195d127ed228a5787b065fd735a3477531a6",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Defs/Variant14706ed8a1c5accd1d73c67a5daeca06946edfde05ea3940d8557258da7795f9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant14706ed8a1c5accd1d73c67a5daeca06946edfde05ea3940d8557258da7795f9.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant14706ed8a1c5accd1d73c67a5daeca06946edfde05ea3940d8557258da7795f9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8119195d127ed228a5787b065fd735a3477531a6`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Defs/Variant14706ed8a1c5accd1d73c67a5daeca06946edfde05ea3940d8557258da7795f9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Defs/Variant14706ed8a1c5accd1d73c67a5daeca06946edfde05ea3940d8557258da7795f9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.AlgCat.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Central.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FiniteDimensional.Defs` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Reindex` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CSA](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant14706ed8a1c5accd1d73c67a5daeca06946edfde05ea3940d8557258da7795f9.lean/declarations/csa--240961206e344c2d72d56464.md) | 43 | `declaration-track:240961206e344c2d72d56464d626ed93d3fc042f582a8ea561a463808f6bfc22` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant14706ed8a1c5accd1d73c67a5daeca06946edfde05ea3940d8557258da7795f9.lean/declarations/instance--d20b716c98a4dc05464ca09c.md) | 53 | `declaration-track:d20b716c98a4dc05464ca09c736d600b78d5ef73aa540db0518b5d8ce92a035d` |
| 3 | `abbrev` | [IsBrauerEquivalent](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant14706ed8a1c5accd1d73c67a5daeca06946edfde05ea3940d8557258da7795f9.lean/declarations/isbrauerequivalent--14159c43bddfc06c7581231a.md) | 59 | `declaration-track:14159c43bddfc06c7581231a74f4762c2968cb8017d9e49c5874fa967044839f` |
| 4 | `lemma` | [refl](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant14706ed8a1c5accd1d73c67a5daeca06946edfde05ea3940d8557258da7795f9.lean/declarations/refl--709dcb710a76329823caeff5.md) | 65 | `result-track:709dcb710a76329823caeff5e82a27047b3287d22aa866e4f4212d4e878a2733` |
| 5 | `lemma` | [symm](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant14706ed8a1c5accd1d73c67a5daeca06946edfde05ea3940d8557258da7795f9.lean/declarations/symm--4a13a39d83578dddda588d44.md) | 69 | `result-track:4a13a39d83578dddda588d442a0c2659a3d0bdb6b25658c2839113c13e6fed2e` |
| 6 | `lemma` | [trans](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant14706ed8a1c5accd1d73c67a5daeca06946edfde05ea3940d8557258da7795f9.lean/declarations/trans--b39e0769abe722f79657020f.md) | 75 | `result-track:b39e0769abe722f79657020f09059ab603252e4492e1b6905c109c04254442b1` |
| 7 | `lemma` | [is_eqv](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant14706ed8a1c5accd1d73c67a5daeca06946edfde05ea3940d8557258da7795f9.lean/declarations/is-eqv--d2a2a76763727bc918178977.md) | 85 | `result-track:d2a2a76763727bc91817897768d329a985b58d867912fe84bb3129645ce0553d` |
| 8 | `def` | [Brauer.CSA_Setoid](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant14706ed8a1c5accd1d73c67a5daeca06946edfde05ea3940d8557258da7795f9.lean/declarations/brauer-csa-setoid--075b344832cc0047da9dd61d.md) | 95 | `declaration-track:075b344832cc0047da9dd61dd7c8a8149c476a86c29436875f0924dcbe0ec482` |
| 9 | `abbrev` | [BrauerGroup](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant14706ed8a1c5accd1d73c67a5daeca06946edfde05ea3940d8557258da7795f9.lean/declarations/brauergroup--3e8367d410676aaa2d9928cb.md) | 101 | `declaration-track:3e8367d410676aaa2d9928cb25cd2af9fa72ee0781d5f94b458e3f20981daef9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
