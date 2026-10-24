# Verification target: GRWTSK.Analysis.AbelRuffini.Variant1e597fa199b6199a56f06350bb551884920bfc666abb573c29fa83e2eb006aaa

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9f6860534500563d2d1297e5a91643f81ad68e13",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AbelRuffini/Variant1e597fa199b6199a56f06350bb551884920bfc666abb573c29fa83e2eb006aaa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/AbelRuffini/Variant1e597fa199b6199a56f06350bb551884920bfc666abb573c29fa83e2eb006aaa.lean/index.md) · [Full source](../../../../mathematics/Analysis/AbelRuffini/Variant1e597fa199b6199a56f06350bb551884920bfc666abb573c29fa83e2eb006aaa.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9f6860534500563d2d1297e5a91643f81ad68e13`.

Source path: `GRWTSK/Analysis/AbelRuffini/Variant1e597fa199b6199a56f06350bb551884920bfc666abb573c29fa83e2eb006aaa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AbelRuffini/Variant1e597fa199b6199a56f06350bb551884920bfc666abb573c29fa83e2eb006aaa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.LocalExtr.Polynomial` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.AbelRuffini` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.RootsOfUnity.Minpoly` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.EisensteinCriterion` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../mathematics/Analysis/AbelRuffini/Variant1e597fa199b6199a56f06350bb551884920bfc666abb573c29fa83e2eb006aaa.lean/declarations/macro-rules--d08294a0be1b11b7f2ed00ab.md) | 42 | `declaration-track:d08294a0be1b11b7f2ed00abfef54037975c17ed84e5ff0ee663e91085fc782b` |
| 2 | `def` | [Φ](../../../../mathematics/Analysis/AbelRuffini/Variant1e597fa199b6199a56f06350bb551884920bfc666abb573c29fa83e2eb006aaa.lean/declarations/anonymous--ad6e8d4139f5a2a0e73386f2.md) | 53 | `declaration-track:ad6e8d4139f5a2a0e73386f2e388a703855930b3a08a133d19adf5f30e33a34d` |
| 3 | `theorem` | [map_Phi](../../../../mathematics/Analysis/AbelRuffini/Variant1e597fa199b6199a56f06350bb551884920bfc666abb573c29fa83e2eb006aaa.lean/declarations/map-phi--49dc4bee9ac7c6ca6c2ec8b9.md) | 60 | `result-track:49dc4bee9ac7c6ca6c2ec8b9a240617e61ef6205534c42d0e1f9f36d6c92fde9` |
| 4 | `theorem` | [coeff_zero_Phi](../../../../mathematics/Analysis/AbelRuffini/Variant1e597fa199b6199a56f06350bb551884920bfc666abb573c29fa83e2eb006aaa.lean/declarations/coeff-zero-phi--56632f8f11727966634a3b63.md) | 64 | `result-track:56632f8f11727966634a3b63b0cd8b28e1c840bf4bf48a8394a5b68212d69d80` |
| 5 | `theorem` | [coeff_five_Phi](../../../../mathematics/Analysis/AbelRuffini/Variant1e597fa199b6199a56f06350bb551884920bfc666abb573c29fa83e2eb006aaa.lean/declarations/coeff-five-phi--50bb8b423527f179beb8b00f.md) | 68 | `result-track:50bb8b423527f179beb8b00fb535fd26ff2baca9a256c2131aa07b5cad39771a` |
| 6 | `theorem` | [degree_Phi](../../../../mathematics/Analysis/AbelRuffini/Variant1e597fa199b6199a56f06350bb551884920bfc666abb573c29fa83e2eb006aaa.lean/declarations/degree-phi--0a1dc72a88512e7af065c1b3.md) | 74 | `result-track:0a1dc72a88512e7af065c1b3069f9860e6e5c115f1d0964d85528cafbb346f67` |
| 7 | `theorem` | [natDegree_Phi](../../../../mathematics/Analysis/AbelRuffini/Variant1e597fa199b6199a56f06350bb551884920bfc666abb573c29fa83e2eb006aaa.lean/declarations/natdegree-phi--f37ab2e6ff47096c9e62c519.md) | 82 | `result-track:f37ab2e6ff47096c9e62c519262d676858d099d1f0b6c3a0de0a4089c4b99087` |
| 8 | `theorem` | [leadingCoeff_Phi](../../../../mathematics/Analysis/AbelRuffini/Variant1e597fa199b6199a56f06350bb551884920bfc666abb573c29fa83e2eb006aaa.lean/declarations/leadingcoeff-phi--b5525d87e23814052f0de98a.md) | 86 | `result-track:b5525d87e23814052f0de98aab2123da181f4a3146fd601162d28b1e54af2f0f` |
| 9 | `theorem` | [monic_Phi](../../../../mathematics/Analysis/AbelRuffini/Variant1e597fa199b6199a56f06350bb551884920bfc666abb573c29fa83e2eb006aaa.lean/declarations/monic-phi--eb3469cb5fb68425c46b3805.md) | 90 | `result-track:eb3469cb5fb68425c46b3805e024490f75e65e6ebbcdceb05ce132228304e0c5` |
| 10 | `theorem` | [irreducible_Phi](../../../../mathematics/Analysis/AbelRuffini/Variant1e597fa199b6199a56f06350bb551884920bfc666abb573c29fa83e2eb006aaa.lean/declarations/irreducible-phi--1f4fb4b91e337898df6130f9.md) | 94 | `result-track:1f4fb4b91e337898df6130f9125f7c4f05bbe6a879339cd753a3cc1acedea1c9` |
| 11 | `theorem` | [real_roots_Phi_le](../../../../mathematics/Analysis/AbelRuffini/Variant1e597fa199b6199a56f06350bb551884920bfc666abb573c29fa83e2eb006aaa.lean/declarations/real-roots-phi-le--3f82d5e241db581fa7dc8baf.md) | 114 | `result-track:3f82d5e241db581fa7dc8baf7733292fd4f887aa4cdc6d975872318471a935a3` |
| 12 | `theorem` | [real_roots_Phi_ge_aux](../../../../mathematics/Analysis/AbelRuffini/Variant1e597fa199b6199a56f06350bb551884920bfc666abb573c29fa83e2eb006aaa.lean/declarations/real-roots-phi-ge-aux--ad0c3c57a15d91334717bff5.md) | 125 | `result-track:ad0c3c57a15d91334717bff562dde03a6a7826d64f7a361df324a1294de0c3b2` |
| 13 | `theorem` | [real_roots_Phi_ge](../../../../mathematics/Analysis/AbelRuffini/Variant1e597fa199b6199a56f06350bb551884920bfc666abb573c29fa83e2eb006aaa.lean/declarations/real-roots-phi-ge--a0132c894afc9fa1b137863d.md) | 157 | `result-track:a0132c894afc9fa1b137863da3145eadb3b0ba60776f6c22ddf04a849ca8eefe` |
| 14 | `theorem` | [complex_roots_Phi](../../../../mathematics/Analysis/AbelRuffini/Variant1e597fa199b6199a56f06350bb551884920bfc666abb573c29fa83e2eb006aaa.lean/declarations/complex-roots-phi--e7ac8032c3e0af0230460bbf.md) | 167 | `result-track:e7ac8032c3e0af0230460bbff233f9fd10229b051b4e22a7e879ad34133ee462` |
| 15 | `theorem` | [gal_Phi](../../../../mathematics/Analysis/AbelRuffini/Variant1e597fa199b6199a56f06350bb551884920bfc666abb573c29fa83e2eb006aaa.lean/declarations/gal-phi--aa0076ab5bb15fa2cd6aa76a.md) | 171 | `result-track:aa0076ab5bb15fa2cd6aa76a48a76fd464e9bd14c3a34de21d3d7204aa3a5078` |
| 16 | `theorem` | [not_solvable_by_rad](../../../../mathematics/Analysis/AbelRuffini/Variant1e597fa199b6199a56f06350bb551884920bfc666abb573c29fa83e2eb006aaa.lean/declarations/not-solvable-by-rad--1fa5d1db6b2482235cd97a22.md) | 181 | `result-track:1fa5d1db6b2482235cd97a2202cde222a678090f676d530eae228631658d841f` |
| 17 | `theorem` | [not_solvable_by_rad'](../../../../mathematics/Analysis/AbelRuffini/Variant1e597fa199b6199a56f06350bb551884920bfc666abb573c29fa83e2eb006aaa.lean/declarations/not-solvable-by-rad--29ca0cc7ec4f99f4ef00aee6.md) | 191 | `result-track:29ca0cc7ec4f99f4ef00aee6984dfbb95b72ee94e1a79df54189ec9d45e63220` |
| 18 | `theorem` | [exists_not_solvable_by_rad](../../../../mathematics/Analysis/AbelRuffini/Variant1e597fa199b6199a56f06350bb551884920bfc666abb573c29fa83e2eb006aaa.lean/declarations/exists-not-solvable-by-rad--275c6a25f19f606e52cf7fe0.md) | 196 | `result-track:275c6a25f19f606e52cf7fe0a7d2a9c0d202477c7ba95c98b9f40ab267cf30d0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
