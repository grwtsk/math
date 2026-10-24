# Verification target: GRWTSK.Algebra.FiniteType.Variantd543799c66320bbc4873b0fdf4fa808beceb791633a1ec5634daa70770cb89e6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "99683d64ec7282ed2b4d619e773ab9d1255840ba",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/FiniteType/Variantd543799c66320bbc4873b0fdf4fa808beceb791633a1ec5634daa70770cb89e6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/FiniteType/Variantd543799c66320bbc4873b0fdf4fa808beceb791633a1ec5634daa70770cb89e6.lean/index.md) · [Full source](../../../../mathematics/Algebra/FiniteType/Variantd543799c66320bbc4873b0fdf4fa808beceb791633a1ec5634daa70770cb89e6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `99683d64ec7282ed2b4d619e773ab9d1255840ba`.

Source path: `GRWTSK/Algebra/FiniteType/Variantd543799c66320bbc4873b0fdf4fa808beceb791633a1ec5634daa70770cb89e6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/FiniteType/Variantd543799c66320bbc4873b0fdf4fa808beceb791633a1ec5634daa70770cb89e6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.FiniteStability` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.InvSubmonoid` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.RingHom.Finite` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [finiteType_stableUnderComposition](../../../../mathematics/Algebra/FiniteType/Variantd543799c66320bbc4873b0fdf4fa808beceb791633a1ec5634daa70770cb89e6.lean/declarations/finitetype-stableundercomposition--4495fccd066ed68f6b1e3e70.md) | 37 | `result-track:4495fccd066ed68f6b1e3e709cfd0836e603739a3386c94f15f6b4fd1745d2df` |
| 2 | `theorem` | [finiteType_localizationPreserves](../../../../mathematics/Algebra/FiniteType/Variantd543799c66320bbc4873b0fdf4fa808beceb791633a1ec5634daa70770cb89e6.lean/declarations/finitetype-localizationpreserves--dfa5de62e9d43b4b5a130c72.md) | 42 | `result-track:dfa5de62e9d43b4b5a130c723d92bbacf266569c1319cdadcaaf8735df67f073` |
| 3 | `theorem` | [localization_away_map_finiteType](../../../../mathematics/Algebra/FiniteType/Variantd543799c66320bbc4873b0fdf4fa808beceb791633a1ec5634daa70770cb89e6.lean/declarations/localization-away-map-finitetype--cce039b1f17ac9b7d6b4b62e.md) | 71 | `result-track:cce039b1f17ac9b7d6b4b62e671a9a2258e0d1af46aa8b164ec2af76ec22e344` |
| 4 | `theorem` | [IsLocalization.exists_smul_mem_of_mem_adjoin](../../../../mathematics/Algebra/FiniteType/Variantd543799c66320bbc4873b0fdf4fa808beceb791633a1ec5634daa70770cb89e6.lean/declarations/islocalization-exists-smul-mem-of-mem-adjoin--53fd8a6796c1e6a709187fe8.md) | 84 | `result-track:53fd8a6796c1e6a709187fe8d8c8fcc56ee1e8a0d8219152a097da8d102278cf` |
| 5 | `theorem` | [IsLocalization.lift_mem_adjoin_finsetIntegerMultiple](../../../../mathematics/Algebra/FiniteType/Variantd543799c66320bbc4873b0fdf4fa808beceb791633a1ec5634daa70770cb89e6.lean/declarations/islocalization-lift-mem-adjoin-finsetintegermultiple--3ed3528e66b6416bd0c82217.md) | 110 | `result-track:3ed3528e66b6416bd0c82217e8b122477e743fea4a00c7ff9bf1e8db7796ee9d` |
| 6 | `theorem` | [finiteType_ofLocalizationSpan](../../../../mathematics/Algebra/FiniteType/Variantd543799c66320bbc4873b0fdf4fa808beceb791633a1ec5634daa70770cb89e6.lean/declarations/finitetype-oflocalizationspan--974985aa360722d3fe508922.md) | 122 | `result-track:974985aa360722d3fe508922db495555a454f3fdae75da8cbc5295cfd39e694c` |
| 7 | `theorem` | [finiteType_holdsForLocalizationAway](../../../../mathematics/Algebra/FiniteType/Variantd543799c66320bbc4873b0fdf4fa808beceb791633a1ec5634daa70770cb89e6.lean/declarations/finitetype-holdsforlocalizationaway--5095c171bfee0880dbbb3abc.md) | 158 | `result-track:5095c171bfee0880dbbb3abc4b7a1a393b8da9a47ea309cf19ba03a9b8195776` |
| 8 | `theorem` | [finiteType_ofLocalizationSpanTarget](../../../../mathematics/Algebra/FiniteType/Variantd543799c66320bbc4873b0fdf4fa808beceb791633a1ec5634daa70770cb89e6.lean/declarations/finitetype-oflocalizationspantarget--073751bc7e0e5c4b5f4bd852.md) | 166 | `result-track:073751bc7e0e5c4b5f4bd8521ba7eb4988794467b5d5fcc92e040cbf3d90dab3` |
| 9 | `theorem` | [finiteType_isLocal](../../../../mathematics/Algebra/FiniteType/Variantd543799c66320bbc4873b0fdf4fa808beceb791633a1ec5634daa70770cb89e6.lean/declarations/finitetype-islocal--47f96d4df5411c16e0516408.md) | 221 | `result-track:47f96d4df5411c16e0516408ce3bf7c7fd75147b006d8b869ecab55ac20f456d` |
| 10 | `theorem` | [finiteType_respectsIso](../../../../mathematics/Algebra/FiniteType/Variantd543799c66320bbc4873b0fdf4fa808beceb791633a1ec5634daa70770cb89e6.lean/declarations/finitetype-respectsiso--103ec4f9a12a953010705436.md) | 233 | `result-track:103ec4f9a12a953010705436f16a132cf1a1761ac5877d8dfaaeb5da9916c326` |
| 11 | `theorem` | [finiteType_isStableUnderBaseChange](../../../../mathematics/Algebra/FiniteType/Variantd543799c66320bbc4873b0fdf4fa808beceb791633a1ec5634daa70770cb89e6.lean/declarations/finitetype-isstableunderbasechange--24e86cb5005e1c3b2d5fee6c.md) | 236 | `result-track:24e86cb5005e1c3b2d5fee6c79034aec9e664fe854c234228329dad12fa2f7f2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
