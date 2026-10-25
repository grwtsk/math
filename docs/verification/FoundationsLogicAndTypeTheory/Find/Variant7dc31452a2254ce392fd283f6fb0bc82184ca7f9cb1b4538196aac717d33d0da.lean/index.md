# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.Find.Variant7dc31452a2254ce392fd283f6fb0bc82184ca7f9cb1b4538196aac717d33d0da

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4a5ee9f02fca62fb93233ac9809c6678d3a2fe64",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Find/Variant7dc31452a2254ce392fd283f6fb0bc82184ca7f9cb1b4538196aac717d33d0da.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Variant7dc31452a2254ce392fd283f6fb0bc82184ca7f9cb1b4538196aac717d33d0da.lean/index.md) · [Full source](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Variant7dc31452a2254ce392fd283f6fb0bc82184ca7f9cb1b4538196aac717d33d0da.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4a5ee9f02fca62fb93233ac9809c6678d3a2fe64`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Find/Variant7dc31452a2254ce392fd283f6fb0bc82184ca7f9cb1b4538196aac717d33d0da.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Find/Variant7dc31452a2254ce392fd283f6fb0bc82184ca7f9cb1b4538196aac717d33d0da.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Find` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.PNat.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [decidablePredExistsNat](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Variant7dc31452a2254ce392fd283f6fb0bc82184ca7f9cb1b4538196aac717d33d0da.lean/declarations/decidablepredexistsnat--4801600843be49c78fe26be3.md) | 29 | `declaration-track:4801600843be49c78fe26be3423633b71a11e07c538643f668672957276fd6a3` |
| 2 | `def` | [findX](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Variant7dc31452a2254ce392fd283f6fb0bc82184ca7f9cb1b4538196aac717d33d0da.lean/declarations/findx--13dc3b36d3fc3f0730856dad.md) | 36 | `declaration-track:13dc3b36d3fc3f0730856dad888e24bc604422b9925fee78b725a1205a60e445` |
| 3 | `def` | [find](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Variant7dc31452a2254ce392fd283f6fb0bc82184ca7f9cb1b4538196aac717d33d0da.lean/declarations/find--c25e166b545914f8b2e79e5a.md) | 58 | `declaration-track:c25e166b545914f8b2e79e5ab1adcb7c6191fa8a13ed3a935fd4e5799a767ae2` |
| 4 | `theorem` | [find_spec](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Variant7dc31452a2254ce392fd283f6fb0bc82184ca7f9cb1b4538196aac717d33d0da.lean/declarations/find-spec--75be3f54258ec02ac45a0e12.md) | 61 | `result-track:75be3f54258ec02ac45a0e12c2c333a25255d9048caeaf8c23415a359031d2bf` |
| 5 | `theorem` | [find_min](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Variant7dc31452a2254ce392fd283f6fb0bc82184ca7f9cb1b4538196aac717d33d0da.lean/declarations/find-min--328f50bebaa773fa1a9b61e1.md) | 64 | `result-track:328f50bebaa773fa1a9b61e1c2029353562ae8bd5e5c6820262181d13a9bd04d` |
| 6 | `theorem` | [find_min'](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Variant7dc31452a2254ce392fd283f6fb0bc82184ca7f9cb1b4538196aac717d33d0da.lean/declarations/find-min--0ad1758b04e137629ed76c5f.md) | 67 | `result-track:0ad1758b04e137629ed76c5fd3d61958e7da2459940c64dbfb2ca267425b7900` |
| 7 | `theorem` | [find_eq_iff](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Variant7dc31452a2254ce392fd283f6fb0bc82184ca7f9cb1b4538196aac717d33d0da.lean/declarations/find-eq-iff--3e7832e9192749787a84f49d.md) | 72 | `result-track:3e7832e9192749787a84f49d7823336d01e51b2b50603a7af53ae82e41787cf4` |
| 8 | `theorem` | [find_lt_iff](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Variant7dc31452a2254ce392fd283f6fb0bc82184ca7f9cb1b4538196aac717d33d0da.lean/declarations/find-lt-iff--0c9ad0afb1704a447a1608bc.md) | 80 | `result-track:0c9ad0afb1704a447a1608bccb05094976b93838648706874ec5de75f4477139` |
| 9 | `theorem` | [find_le_iff](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Variant7dc31452a2254ce392fd283f6fb0bc82184ca7f9cb1b4538196aac717d33d0da.lean/declarations/find-le-iff--61f4b9bd26ea889f468b0fff.md) | 85 | `result-track:61f4b9bd26ea889f468b0fff775cebc0a8d0b63bc919d067046c1c6f11f92ccd` |
| 10 | `theorem` | [le_find_iff](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Variant7dc31452a2254ce392fd283f6fb0bc82184ca7f9cb1b4538196aac717d33d0da.lean/declarations/le-find-iff--3d4882f7fcfd06c363818765.md) | 89 | `result-track:3d4882f7fcfd06c3638187651f911df7bca80b0fa6f96661f3bba00503df7324` |
| 11 | `theorem` | [lt_find_iff](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Variant7dc31452a2254ce392fd283f6fb0bc82184ca7f9cb1b4538196aac717d33d0da.lean/declarations/lt-find-iff--0576095445132beec68f7d7d.md) | 93 | `result-track:0576095445132beec68f7d7d9f55c1ea1fd94293a8f7e32bcf317767173d6766` |
| 12 | `theorem` | [find_eq_one](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Variant7dc31452a2254ce392fd283f6fb0bc82184ca7f9cb1b4538196aac717d33d0da.lean/declarations/find-eq-one--c6a54592938a648c7c9be3f2.md) | 97 | `result-track:c6a54592938a648c7c9be3f27f41b2238566dc2a5f91de9b4271adaf678a8482` |
| 13 | `theorem` | [one_le_find](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Variant7dc31452a2254ce392fd283f6fb0bc82184ca7f9cb1b4538196aac717d33d0da.lean/declarations/one-le-find--81c9eb1a9b4bf7fa8d45f156.md) | 99 | `result-track:81c9eb1a9b4bf7fa8d45f15679d2d7209a8220bb25de01d63257b69c2f5496f5` |
| 14 | `theorem` | [find_mono](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Variant7dc31452a2254ce392fd283f6fb0bc82184ca7f9cb1b4538196aac717d33d0da.lean/declarations/find-mono--fbb635d04e16da361735b121.md) | 101 | `result-track:fbb635d04e16da361735b12100c94c02fe619ea0726eb552928889b76f3ac110` |
| 15 | `theorem` | [find_le](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Variant7dc31452a2254ce392fd283f6fb0bc82184ca7f9cb1b4538196aac717d33d0da.lean/declarations/find-le--d9edf3744496d0f3b3d98e05.md) | 105 | `result-track:d9edf3744496d0f3b3d98e05f0ddb85086653cd1977aa8129784bd3185d4963b` |
| 16 | `theorem` | [find_comp_succ](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Variant7dc31452a2254ce392fd283f6fb0bc82184ca7f9cb1b4538196aac717d33d0da.lean/declarations/find-comp-succ--aad17512de882ba5e4c8b4ee.md) | 108 | `result-track:aad17512de882ba5e4c8b4ee194c9360dc60462aef52a972bd83d60a0c065bdd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
