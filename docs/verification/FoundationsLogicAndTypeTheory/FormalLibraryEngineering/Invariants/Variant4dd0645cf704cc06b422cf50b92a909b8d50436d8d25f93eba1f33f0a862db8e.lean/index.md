# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Invariants.Variant4dd0645cf704cc06b422cf50b92a909b8d50436d8d25f93eba1f33f0a862db8e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "699b83742abd94cab31b90ec76f31abad2ef4ead",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Invariants/Variant4dd0645cf704cc06b422cf50b92a909b8d50436d8d25f93eba1f33f0a862db8e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Invariants/Variant4dd0645cf704cc06b422cf50b92a909b8d50436d8d25f93eba1f33f0a862db8e.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Invariants/Variant4dd0645cf704cc06b422cf50b92a909b8d50436d8d25f93eba1f33f0a862db8e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `699b83742abd94cab31b90ec76f31abad2ef4ead`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Invariants/Variant4dd0645cf704cc06b422cf50b92a909b8d50436d8d25f93eba1f33f0a862db8e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Invariants/Variant4dd0645cf704cc06b422cf50b92a909b8d50436d8d25f93eba1f33f0a862db8e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RepresentationTheory.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RepresentationTheory.FDRep` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [average](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Invariants/Variant4dd0645cf704cc06b422cf50b92a909b8d50436d8d25f93eba1f33f0a862db8e.lean/declarations/average--a5cfb75ddfe4a293a7a1bd5f.md) | 36 | `declaration-track:a5cfb75ddfe4a293a7a1bd5f72319efebc8b934641e9f5d9a869a7308c05d496` |
| 2 | `theorem` | [mul_average_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Invariants/Variant4dd0645cf704cc06b422cf50b92a909b8d50436d8d25f93eba1f33f0a862db8e.lean/declarations/mul-average-left--59464af54b274b2dc7394395.md) | 42 | `result-track:59464af54b274b2dc739439508a61e9db93c3ad9234132ee0d2c9a4bbe5bacb7` |
| 3 | `theorem` | [mul_average_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Invariants/Variant4dd0645cf704cc06b422cf50b92a909b8d50436d8d25f93eba1f33f0a862db8e.lean/declarations/mul-average-right--b222ecff5dc8d34730d22022.md) | 52 | `result-track:b222ecff5dc8d34730d22022d99998f6f0700649854d587361679451c2d92821` |
| 4 | `def` | [invariants](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Invariants/Variant4dd0645cf704cc06b422cf50b92a909b8d50436d8d25f93eba1f33f0a862db8e.lean/declarations/invariants--fccdcbb637b104cd408bf791.md) | 72 | `declaration-track:fccdcbb637b104cd408bf791bbc4b74af199159080800bf56372f5e387a19af1` |
| 5 | `theorem` | [mem_invariants](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Invariants/Variant4dd0645cf704cc06b422cf50b92a909b8d50436d8d25f93eba1f33f0a862db8e.lean/declarations/mem-invariants--2577062b2c5ad199c5632018.md) | 79 | `result-track:2577062b2c5ad199c5632018f13e60d13f27fc6cf80294262c5cfcdc728d5e5e` |
| 6 | `theorem` | [invariants_eq_inter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Invariants/Variant4dd0645cf704cc06b422cf50b92a909b8d50436d8d25f93eba1f33f0a862db8e.lean/declarations/invariants-eq-inter--79605e87014c083a88714993.md) | 81 | `result-track:79605e87014c083a88714993413e04ed0826c0252e655eb1748ff344fbc16421` |
| 7 | `theorem` | [invariants_eq_top](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Invariants/Variant4dd0645cf704cc06b422cf50b92a909b8d50436d8d25f93eba1f33f0a862db8e.lean/declarations/invariants-eq-top--f54ebed573e55883d50247ba.md) | 84 | `result-track:f54ebed573e55883d50247baa39f2785bb43b5788d986d0cd2aef1fe0bd99dec` |
| 8 | `def` | [averageMap](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Invariants/Variant4dd0645cf704cc06b422cf50b92a909b8d50436d8d25f93eba1f33f0a862db8e.lean/declarations/averagemap--9de19be2bebcea07b77d3814.md) | 95 | `declaration-track:9de19be2bebcea07b77d38147040505bfa249dd2976c0b32d97464fbe160dca6` |
| 9 | `theorem` | [averageMap_invariant](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Invariants/Variant4dd0645cf704cc06b422cf50b92a909b8d50436d8d25f93eba1f33f0a862db8e.lean/declarations/averagemap-invariant--64914b59120714b364be1693.md) | 100 | `result-track:64914b59120714b364be169391fe0af940951331bc772741282fb44d042b7f02` |
| 10 | `theorem` | [averageMap_id](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Invariants/Variant4dd0645cf704cc06b422cf50b92a909b8d50436d8d25f93eba1f33f0a862db8e.lean/declarations/averagemap-id--c36779bb43f0d98a2a596919.md) | 106 | `result-track:c36779bb43f0d98a2a59691971f2b3b89ff9a2325aee48286c051480846de22a` |
| 11 | `theorem` | [isProj_averageMap](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Invariants/Variant4dd0645cf704cc06b422cf50b92a909b8d50436d8d25f93eba1f33f0a862db8e.lean/declarations/isproj-averagemap--28e5db551d99a7cfe063f44a.md) | 110 | `result-track:28e5db551d99a7cfe063f44ae978f4f2cf03c20d9b643f358e733913a24dd67f` |
| 12 | `lemma` | [le_comap_invariants](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Invariants/Variant4dd0645cf704cc06b422cf50b92a909b8d50436d8d25f93eba1f33f0a862db8e.lean/declarations/le-comap-invariants--eb37f175288f2fb85db28e3b.md) | 119 | `result-track:eb37f175288f2fb85db28e3b46fc4d21d43c5ef6e0b56e5ae3ede5af559ba3df` |
| 13 | `abbrev` | [toInvariants](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Invariants/Variant4dd0645cf704cc06b422cf50b92a909b8d50436d8d25f93eba1f33f0a862db8e.lean/declarations/toinvariants--5223d9343c40dcea028f3657.md) | 127 | `declaration-track:5223d9343c40dcea028f3657682b26b77fc7af03cc05aeb34499399b99018a1a` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Invariants/Variant4dd0645cf704cc06b422cf50b92a909b8d50436d8d25f93eba1f33f0a862db8e.lean/declarations/instance--5348f701ee4a81dc9dc5fe59.md) | 131 | `declaration-track:5348f701ee4a81dc9dc5fe5944470d15733886e50250d67a634b17e43e5dedb3` |
| 15 | `abbrev` | [quotientToInvariants](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Invariants/Variant4dd0645cf704cc06b422cf50b92a909b8d50436d8d25f93eba1f33f0a862db8e.lean/declarations/quotienttoinvariants--afcebe6736295f1a763d1ad9.md) | 136 | `declaration-track:afcebe6736295f1a763d1ad99c43170ebc6959d337c766833d51f0d591144b8e` |
| 16 | `theorem` | [mem_invariants_iff_comm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Invariants/Variant4dd0645cf704cc06b422cf50b92a909b8d50436d8d25f93eba1f33f0a862db8e.lean/declarations/mem-invariants-iff-comm--7f7f3b067538b7ffbcf499f2.md) | 151 | `result-track:7f7f3b067538b7ffbcf499f2fd6304d98b4158a3bc4cf935efbd328d75ccff2e` |
| 17 | `def` | [invariantsEquivRepHom](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Invariants/Variant4dd0645cf704cc06b422cf50b92a909b8d50436d8d25f93eba1f33f0a862db8e.lean/declarations/invariantsequivrephom--fa79b6df2a3211a1b399b93a.md) | 164 | `declaration-track:fa79b6df2a3211a1b399b93a15bf3e9964497c3d2af2782f313284ea5a55ea33` |
| 18 | `def` | [invariantsEquivFDRepHom](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Invariants/Variant4dd0645cf704cc06b422cf50b92a909b8d50436d8d25f93eba1f33f0a862db8e.lean/declarations/invariantsequivfdrephom--60aae4fd265cbd1dde3f68ba.md) | 182 | `declaration-track:60aae4fd265cbd1dde3f68ba33ce49847b33af5eba1528b4a917ecc0dd73b506` |
| 19 | `abbrev` | [toInvariants](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Invariants/Variant4dd0645cf704cc06b422cf50b92a909b8d50436d8d25f93eba1f33f0a862db8e.lean/declarations/toinvariants--8520708440bb0a8b4d98d061.md) | 203 | `declaration-track:8520708440bb0a8b4d98d061d8edac18013665c504cbc004405c795af31b26d6` |
| 20 | `abbrev` | [quotientToInvariants](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Invariants/Variant4dd0645cf704cc06b422cf50b92a909b8d50436d8d25f93eba1f33f0a862db8e.lean/declarations/quotienttoinvariants--c3a7a7afebfd565460af2c87.md) | 207 | `declaration-track:c3a7a7afebfd565460af2c8743af29359a0d08acc02f5e601abac69ba687d9b1` |
| 21 | `def` | [invariantsFunctor](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Invariants/Variant4dd0645cf704cc06b422cf50b92a909b8d50436d8d25f93eba1f33f0a862db8e.lean/declarations/invariantsfunctor--6424851a7ba27f723f4e06f0.md) | 213 | `declaration-track:6424851a7ba27f723f4e06f038306551c069cd5cb9f27f0cc5aab4e656d61956` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Invariants/Variant4dd0645cf704cc06b422cf50b92a909b8d50436d8d25f93eba1f33f0a862db8e.lean/declarations/instance--4360bdbac9525f8958fbaf50.md) | 220 | `declaration-track:4360bdbac9525f8958fbaf502d05fa5bee09e072aeade85665cee28358ed4d53` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Invariants/Variant4dd0645cf704cc06b422cf50b92a909b8d50436d8d25f93eba1f33f0a862db8e.lean/declarations/instance--9beb56d0607dda9457f5ec65.md) | 222 | `declaration-track:9beb56d0607dda9457f5ec659b281d62c2b0d3035858b38847a5c7b082c14fd2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
