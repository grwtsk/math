# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Bifunctor.Variant6f98c3319d6ccd5352403342067f33b21dc5ce34852186e769eff573a3986c20

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6ba6b3e6577658e46a911318fd6d5b786c604969",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant6f98c3319d6ccd5352403342067f33b21dc5ce34852186e769eff573a3986c20.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant6f98c3319d6ccd5352403342067f33b21dc5ce34852186e769eff573a3986c20.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant6f98c3319d6ccd5352403342067f33b21dc5ce34852186e769eff573a3986c20.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6ba6b3e6577658e46a911318fd6d5b786c604969`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant6f98c3319d6ccd5352403342067f33b21dc5ce34852186e769eff573a3986c20.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant6f98c3319d6ccd5352403342067f33b21dc5ce34852186e769eff573a3986c20.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Localization.Prod` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Functor.Currying` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsInvertedBy₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant6f98c3319d6ccd5352403342067f33b21dc5ce34852186e769eff573a3986c20.lean/declarations/isinvertedby--c6af1f4843bc6f55ee28c526.md) | 50 | `declaration-track:c6af1f4843bc6f55ee28c526df866ebe9892b98938ddfb57fc763ee37f586784` |
| 2 | `class` | [Lifting₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant6f98c3319d6ccd5352403342067f33b21dc5ce34852186e769eff573a3986c20.lean/declarations/lifting--affe72e4e5f0725056af0be7.md) | 65 | `declaration-track:affe72e4e5f0725056af0be76da207f5df06344ba67b3307231258ea788b90ba` |
| 3 | `def` | [Lifting₂.iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant6f98c3319d6ccd5352403342067f33b21dc5ce34852186e769eff573a3986c20.lean/declarations/lifting-iso--93a3463f3e73ba921ddfb2ef.md) | 76 | `declaration-track:93a3463f3e73ba921ddfb2ef108283387738112dd1ce590ad491e3309e6ad479` |
| 4 | `def` | [Lifting₂.fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant6f98c3319d6ccd5352403342067f33b21dc5ce34852186e769eff573a3986c20.lean/declarations/lifting-fst--0e6e3583476286ccd86873ed.md) | 81 | `declaration-track:0e6e3583476286ccd86873ed8b0df6a73fd7c7f7b2bc3475508e0b16879f7d34` |
| 5 | `instance` | [Lifting₂.flip](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant6f98c3319d6ccd5352403342067f33b21dc5ce34852186e769eff573a3986c20.lean/declarations/lifting-flip--37b9a757f38abcea268fae1a.md) | 85 | `declaration-track:37b9a757f38abcea268fae1ad30859a79837e5ab996ec9256dfa93f0e3665625` |
| 6 | `def` | [Lifting₂.snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant6f98c3319d6ccd5352403342067f33b21dc5ce34852186e769eff573a3986c20.lean/declarations/lifting-snd--2b8da1d8550ec023bf7f6fef.md) | 90 | `declaration-track:2b8da1d8550ec023bf7f6fef989d2b9b802808b6383e2b1e45c216f9016864af` |
| 7 | `instance` | [Lifting₂.uncurry](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant6f98c3319d6ccd5352403342067f33b21dc5ce34852186e769eff573a3986c20.lean/declarations/lifting-uncurry--3ae64055d325802a9b0cc440.md) | 94 | `declaration-track:3ae64055d325802a9b0cc44095f3a0a173e89246ff97efbf4a006e81afcdf931` |
| 8 | `def` | [lift₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant6f98c3319d6ccd5352403342067f33b21dc5ce34852186e769eff573a3986c20.lean/declarations/lift--d0e38b77078252699118e0d3.md) | 112 | `declaration-track:d0e38b77078252699118e0d3573f4fb4846a8c78ce681cf2a97a973cbc1cdbef` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant6f98c3319d6ccd5352403342067f33b21dc5ce34852186e769eff573a3986c20.lean/declarations/instance--efa9646165ad8818599b4e67.md) | 115 | `declaration-track:efa9646165ad8818599b4e6798a3e5d4f167b9f677e3a59373e1fdc331b6e57a` |
| 10 | `instance` | [Lifting₂.liftingLift₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant6f98c3319d6ccd5352403342067f33b21dc5ce34852186e769eff573a3986c20.lean/declarations/lifting-liftinglift--8b150e8a605e8f9695993a1c.md) | 120 | `declaration-track:8b150e8a605e8f9695993a1c02d0ac962740053ebee6f13441240733367064c6` |
| 11 | `instance` | [Lifting₂.liftingLift₂Flip](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant6f98c3319d6ccd5352403342067f33b21dc5ce34852186e769eff573a3986c20.lean/declarations/lifting-liftinglift-flip--4e8ac3d2f9b864c8045c6111.md) | 124 | `declaration-track:4e8ac3d2f9b864c8045c6111ca54f5e822769621dd8fe1de8b0a2af58971a5ed` |
| 12 | `lemma` | [lift₂_iso_hom_app_app₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant6f98c3319d6ccd5352403342067f33b21dc5ce34852186e769eff573a3986c20.lean/declarations/lift-iso-hom-app-app--eec30284568a9afb1a866025.md) | 128 | `result-track:eec30284568a9afb1a8660256c805f20f5f863d7f3232235343d0ff4b024af05` |
| 13 | `lemma` | [lift₂_iso_hom_app_app₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant6f98c3319d6ccd5352403342067f33b21dc5ce34852186e769eff573a3986c20.lean/declarations/lift-iso-hom-app-app--1c1c2de76971f47d3d9b38ab.md) | 133 | `result-track:1c1c2de76971f47d3d9b38ab418d2d21cfcd9a1922962a63b72d5f06b1225d88` |
| 14 | `def` | [lift₂NatTrans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant6f98c3319d6ccd5352403342067f33b21dc5ce34852186e769eff573a3986c20.lean/declarations/lift-nattrans--669bb3f98f99be228bac028b.md) | 152 | `declaration-track:669bb3f98f99be228bac028b94881f65ecc175c0533b2c24f2219dc958ce0bcc` |
| 15 | `theorem` | [lift₂NatTrans_app_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant6f98c3319d6ccd5352403342067f33b21dc5ce34852186e769eff573a3986c20.lean/declarations/lift-nattrans-app-app--d654de955e0b055481fe497d.md) | 158 | `result-track:d654de955e0b055481fe497d0fc61d548ba7dafc9eaf8224694e52817c8d7d8b` |
| 16 | `theorem` | [natTrans₂_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant6f98c3319d6ccd5352403342067f33b21dc5ce34852186e769eff573a3986c20.lean/declarations/nattrans-ext--caa1848cf12507a3f95ee0a4.md) | 168 | `result-track:caa1848cf12507a3f95ee0a4206afa6b1f77f399643e98c67580402f207f5683` |
| 17 | `def` | [lift₂NatIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant6f98c3319d6ccd5352403342067f33b21dc5ce34852186e769eff573a3986c20.lean/declarations/lift-natiso--37698dc74c8d174275ced262.md) | 176 | `declaration-track:37698dc74c8d174275ced2628eabdb91bd876c3a2d00664057b3155974584b67` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
