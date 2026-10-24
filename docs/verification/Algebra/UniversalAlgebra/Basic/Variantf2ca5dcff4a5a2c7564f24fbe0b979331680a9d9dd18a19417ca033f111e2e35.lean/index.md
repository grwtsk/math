# Verification target: GRWTSK.Algebra.UniversalAlgebra.Basic.Variantf2ca5dcff4a5a2c7564f24fbe0b979331680a9d9dd18a19417ca033f111e2e35

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "40474abb6a9ef3c103fdadd1050c14f1fe5d6fa0",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Basic/Variantf2ca5dcff4a5a2c7564f24fbe0b979331680a9d9dd18a19417ca033f111e2e35.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantf2ca5dcff4a5a2c7564f24fbe0b979331680a9d9dd18a19417ca033f111e2e35.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantf2ca5dcff4a5a2c7564f24fbe0b979331680a9d9dd18a19417ca033f111e2e35.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `40474abb6a9ef3c103fdadd1050c14f1fe5d6fa0`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Basic/Variantf2ca5dcff4a5a2c7564f24fbe0b979331680a9d9dd18a19417ca033f111e2e35.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Basic/Variantf2ca5dcff4a5a2c7564f24fbe0b979331680a9d9dd18a19417ca033f111e2e35.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Torsion` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Group.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.Unbundled.Pow` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [zpow_right_strictMono](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantf2ca5dcff4a5a2c7564f24fbe0b979331680a9d9dd18a19417ca033f111e2e35.lean/declarations/zpow-right-strictmono--8dd4b5d93f568480d2f703a2.md) | 25 | `result-track:8dd4b5d93f568480d2f703a2e97bae45c998c2fda61dc8e13ba4ce4ab08a21ff` |
| 2 | `lemma` | [one_lt_zpow](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantf2ca5dcff4a5a2c7564f24fbe0b979331680a9d9dd18a19417ca033f111e2e35.lean/declarations/one-lt-zpow--b4142b98efc91a46f1ae873f.md) | 30 | `result-track:b4142b98efc91a46f1ae873fe20773640dc1c5e95250a6c74adbc8a3225a550a` |
| 3 | `lemma` | [zpow_right_strictAnti](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantf2ca5dcff4a5a2c7564f24fbe0b979331680a9d9dd18a19417ca033f111e2e35.lean/declarations/zpow-right-strictanti--ee06df039f1a63029ccb8a3d.md) | 36 | `result-track:ee06df039f1a63029ccb8a3d9b059aa9d9505b332872f2adbf39eef823d47b46` |
| 4 | `lemma` | [zpow_right_inj](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantf2ca5dcff4a5a2c7564f24fbe0b979331680a9d9dd18a19417ca033f111e2e35.lean/declarations/zpow-right-inj--b1ab2a43a7a8e4caa989a5b3.md) | 42 | `result-track:b1ab2a43a7a8e4caa989a5b3327332c601f4d034175a7ba7671da8e811daac9b` |
| 5 | `lemma` | [zpow_right_mono](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantf2ca5dcff4a5a2c7564f24fbe0b979331680a9d9dd18a19417ca033f111e2e35.lean/declarations/zpow-right-mono--a1094d8b626b4a3da2e4c30f.md) | 46 | `result-track:a1094d8b626b4a3da2e4c30fe0f8f6431bf3dd93f60066e0c200bcf5eb999fa7` |
| 6 | `lemma` | [zpow_le_zpow_right](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantf2ca5dcff4a5a2c7564f24fbe0b979331680a9d9dd18a19417ca033f111e2e35.lean/declarations/zpow-le-zpow-right--f7f6706f7132109849183e3a.md) | 54 | `result-track:f7f6706f7132109849183e3a252689f8b1b9afe9c6f5ac0a079e7a815932e4d1` |
| 7 | `lemma` | [zpow_lt_zpow_right](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantf2ca5dcff4a5a2c7564f24fbe0b979331680a9d9dd18a19417ca033f111e2e35.lean/declarations/zpow-lt-zpow-right--a079c94926d69cf41b4d6fa6.md) | 59 | `result-track:a079c94926d69cf41b4d6fa6669a571d48adb200eb28484ae1925fed37b46c3d` |
| 8 | `lemma` | [zpow_le_zpow_iff_right](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantf2ca5dcff4a5a2c7564f24fbe0b979331680a9d9dd18a19417ca033f111e2e35.lean/declarations/zpow-le-zpow-iff-right--3c86c036635a8b87cbb514eb.md) | 64 | `result-track:3c86c036635a8b87cbb514eb258e0f4f727859e368f8f61671a9fbcf59dd61aa` |
| 9 | `lemma` | [zpow_lt_zpow_iff_right](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantf2ca5dcff4a5a2c7564f24fbe0b979331680a9d9dd18a19417ca033f111e2e35.lean/declarations/zpow-lt-zpow-iff-right--9626cf2a9908ac67fbf00ce1.md) | 70 | `result-track:9626cf2a9908ac67fbf00ce179f2ac6e06b5b746ca67657f2d1925c867a1cde9` |
| 10 | `lemma` | [zpow_left_strictMono](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantf2ca5dcff4a5a2c7564f24fbe0b979331680a9d9dd18a19417ca033f111e2e35.lean/declarations/zpow-left-strictmono--9ba0d095c35ddf9a266851ed.md) | 78 | `result-track:9ba0d095c35ddf9a266851ede0c50ebdc42d2969da23c814e8642035912420ee` |
| 11 | `lemma` | [zpow_left_mono](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantf2ca5dcff4a5a2c7564f24fbe0b979331680a9d9dd18a19417ca033f111e2e35.lean/declarations/zpow-left-mono--1eb61b411577f6628d82a4e8.md) | 84 | `result-track:1eb61b411577f6628d82a4e86e24ac20abd81877e5b5e4fad7096445ded054a6` |
| 12 | `lemma` | [zpow_le_zpow_left](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantf2ca5dcff4a5a2c7564f24fbe0b979331680a9d9dd18a19417ca033f111e2e35.lean/declarations/zpow-le-zpow-left--a01f9da0dbd00965979a8e99.md) | 92 | `result-track:a01f9da0dbd00965979a8e993175630f36bd8cb447907756ee3ab62737daa187` |
| 13 | `lemma` | [zpow_lt_zpow_left](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantf2ca5dcff4a5a2c7564f24fbe0b979331680a9d9dd18a19417ca033f111e2e35.lean/declarations/zpow-lt-zpow-left--1b123331cb192f306104c49b.md) | 97 | `result-track:1b123331cb192f306104c49b557a5dcf1af8699d0a58301fe83fae524afa86e5` |
| 14 | `lemma` | [zpow_le_zpow_iff_left](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantf2ca5dcff4a5a2c7564f24fbe0b979331680a9d9dd18a19417ca033f111e2e35.lean/declarations/zpow-le-zpow-iff-left--f453b1b9fad5b24a3e471f7a.md) | 108 | `result-track:f453b1b9fad5b24a3e471f7ae05bdc4f3d0430916bb9213cfa5039327ae00c8d` |
| 15 | `lemma` | [zpow_lt_zpow_iff_left](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantf2ca5dcff4a5a2c7564f24fbe0b979331680a9d9dd18a19417ca033f111e2e35.lean/declarations/zpow-lt-zpow-iff-left--7cc0da092fdec8a60968b4ea.md) | 114 | `result-track:7cc0da092fdec8a60968b4ea01a4adca7897532a819f84a8d977b4a1669aa3f3` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantf2ca5dcff4a5a2c7564f24fbe0b979331680a9d9dd18a19417ca033f111e2e35.lean/declarations/instance--a8a751a4e566ff232ad2f482.md) | 120 | `declaration-track:a8a751a4e566ff232ad2f482ee9078ea17659848165729ecb034df5759e81740` |
| 17 | `theorem` | [not_isCyclic_of_denselyOrdered](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantf2ca5dcff4a5a2c7564f24fbe0b979331680a9d9dd18a19417ca033f111e2e35.lean/declarations/not-iscyclic-of-denselyordered--d4316943b649aaf1d69cf46e.md) | 126 | `result-track:d4316943b649aaf1d69cf46e499d2de0762adbc201dc958e8445869d871d235d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
