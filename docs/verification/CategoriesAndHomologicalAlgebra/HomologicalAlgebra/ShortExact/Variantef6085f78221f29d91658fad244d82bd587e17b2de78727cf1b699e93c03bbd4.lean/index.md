# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.ShortExact.Variantef6085f78221f29d91658fad244d82bd587e17b2de78727cf1b699e93c03bbd4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f752247e1d9b3bfbdf60c85c458c8e8cd7efaca8",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ShortExact/Variantef6085f78221f29d91658fad244d82bd587e17b2de78727cf1b699e93c03bbd4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ShortExact/Variantef6085f78221f29d91658fad244d82bd587e17b2de78727cf1b699e93c03bbd4.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ShortExact/Variantef6085f78221f29d91658fad244d82bd587e17b2de78727cf1b699e93c03bbd4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f752247e1d9b3bfbdf60c85c458c8e8cd7efaca8`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ShortExact/Variantef6085f78221f29d91658fad244d82bd587e17b2de78727cf1b699e93c03bbd4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ShortExact/Variantef6085f78221f29d91658fad244d82bd587e17b2de78727cf1b699e93c03bbd4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.HomotopyCategory.HomologicalFunctor` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.HomotopyCategory.ShiftSequence` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.HomologySequenceLemmas` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.Refinements` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [homologySequenceδ_quotient_mapTriangle_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ShortExact/Variantef6085f78221f29d91658fad244d82bd587e17b2de78727cf1b699e93c03bbd4.lean/declarations/homologysequence-quotient-maptriangle-obj--a7476c3839b12d2b1392456a.md) | 33 | `result-track:a7476c3839b12d2b1392456add2fb047692966a9fc0bc32780367ada78072e58` |
| 2 | `def` | [descShortComplex](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ShortExact/Variantef6085f78221f29d91658fad244d82bd587e17b2de78727cf1b699e93c03bbd4.lean/declarations/descshortcomplex--eed6eeededb858d5b0e88833.md) | 48 | `declaration-track:eed6eeededb858d5b0e888331e7b3cfdd6ac0da8766dcdc367e929708b6c78e4` |
| 3 | `lemma` | [inr_descShortComplex](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ShortExact/Variantef6085f78221f29d91658fad244d82bd587e17b2de78727cf1b699e93c03bbd4.lean/declarations/inr-descshortcomplex--25523e39e046e63252756333.md) | 51 | `result-track:25523e39e046e63252756333fae6649fb4f4cd2e161a056ad09f0e25fa3e22f5` |
| 4 | `lemma` | [inr_f_descShortComplex_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ShortExact/Variantef6085f78221f29d91658fad244d82bd587e17b2de78727cf1b699e93c03bbd4.lean/declarations/inr-f-descshortcomplex-f--a8623537ee3985f16a1b123a.md) | 55 | `result-track:a8623537ee3985f16a1b123a2e2d8ae4e4a822a16e224cc0949f4933776cc6d2` |
| 5 | `lemma` | [inl_v_descShortComplex_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ShortExact/Variantef6085f78221f29d91658fad244d82bd587e17b2de78727cf1b699e93c03bbd4.lean/declarations/inl-v-descshortcomplex-f--1d4817e2d32c4bef873caa44.md) | 59 | `result-track:1d4817e2d32c4bef873caa4455d3d8d93c3e35aa6dab6f4254b78ef30674d4cb` |
| 6 | `lemma` | [homologySequenceδ_triangleh](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ShortExact/Variantef6085f78221f29d91658fad244d82bd587e17b2de78727cf1b699e93c03bbd4.lean/declarations/homologysequence-triangleh--74aa2ce6815a347cb1660233.md) | 65 | `result-track:74aa2ce6815a347cb1660233b85592b25592b1b3300d0f3a3d9d857127bea3c2` |
| 7 | `lemma` | [quasiIso_descShortComplex](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ShortExact/Variantef6085f78221f29d91658fad244d82bd587e17b2de78727cf1b699e93c03bbd4.lean/declarations/quasiiso-descshortcomplex--b8e1b39338852759daed5533.md) | 116 | `result-track:b8e1b39338852759daed5533a698045df37518060b6cdd73425c277327d01035` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
