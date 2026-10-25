# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.Cardinal.Variant90e9d8e740b3f8217aed5848d5e04a82c680b479d0b762339b6c6ecb19c90b0e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "de3615aa257e048d272585e2db475f8cd582bbde",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Cardinal/Variant90e9d8e740b3f8217aed5848d5e04a82c680b479d0b762339b6c6ecb19c90b0e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Cardinal/Variant90e9d8e740b3f8217aed5848d5e04a82c680b479d0b762339b6c6ecb19c90b0e.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Cardinal/Variant90e9d8e740b3f8217aed5848d5e04a82c680b479d0b762339b6c6ecb19c90b0e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `de3615aa257e048d272585e2db475f8cd582bbde`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Cardinal/Variant90e9d8e740b3f8217aed5848d5e04a82c680b479d0b762339b6c6ecb19c90b0e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/SetTheory/Cardinal/Variant90e9d8e740b3f8217aed5848d5e04a82c680b479d0b762339b6c6ecb19c90b0e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.MathematicalTooling.Coverage.Reconstruction` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Cardinal.Regular` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [RevisedCoveringStatement](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Cardinal/Variant90e9d8e740b3f8217aed5848d5e04a82c680b479d0b762339b6c6ecb19c90b0e.lean/declarations/revisedcoveringstatement--2a13ef0ace3a8fdc26a7b639.md) | 25 | `declaration-track:2a13ef0ace3a8fdc26a7b6393ed84edfbc5b0333edba8bd907db2557c87eb708` |
| 2 | `theorem` | [downwardClosure_eq_iUnion](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Cardinal/Variant90e9d8e740b3f8217aed5848d5e04a82c680b479d0b762339b6c6ecb19c90b0e.lean/declarations/downwardclosure-eq-iunion--eaec767bb0890899d7935fd7.md) | 34 | `result-track:eaec767bb0890899d7935fd7faad47b297e4bdb8770f83318feae3f048944d73` |
| 3 | `theorem` | [mk_downwardClosure_le_sum](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Cardinal/Variant90e9d8e740b3f8217aed5848d5e04a82c680b479d0b762339b6c6ecb19c90b0e.lean/declarations/mk-downwardclosure-le-sum--440b6ebd6105775e61117672.md) | 45 | `result-track:440b6ebd6105775e61117672376caa1698d17403cf48491d7e0d72b8bb03f6bd` |
| 4 | `theorem` | [downward_member_small](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Cardinal/Variant90e9d8e740b3f8217aed5848d5e04a82c680b479d0b762339b6c6ecb19c90b0e.lean/declarations/downward-member-small--62fcf9bcc7334bb487ee51c7.md) | 51 | `result-track:62fcf9bcc7334bb487ee51c7e861b9f1dfa31f4c32c1f6435d1e36d7aa444086` |
| 5 | `theorem` | [sum_powerset_le_mul](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Cardinal/Variant90e9d8e740b3f8217aed5848d5e04a82c680b479d0b762339b6c6ecb19c90b0e.lean/declarations/sum-powerset-le-mul--2b9c60dfeda38df9d00ca2ae.md) | 58 | `result-track:2b9c60dfeda38df9d00ca2aee834d03e8ee6bf9e1527df0469eb4c3d0958b10d` |
| 6 | `theorem` | [mk_downwardClosure_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Cardinal/Variant90e9d8e740b3f8217aed5848d5e04a82c680b479d0b762339b6c6ecb19c90b0e.lean/declarations/mk-downwardclosure-le--224601ac06c2b317c568a9ad.md) | 67 | `result-track:224601ac06c2b317c568a9ad190d919c4e9ea092eeeec37d7e1d30b6b9d48470` |
| 7 | `theorem` | [reconstructed_index_bound](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Cardinal/Variant90e9d8e740b3f8217aed5848d5e04a82c680b479d0b762339b6c6ecb19c90b0e.lean/declarations/reconstructed-index-bound--26e25b269cc2d7e375c5d84e.md) | 77 | `result-track:26e25b269cc2d7e375c5d84e37a296fb75b060513c311ba8d2945de8cf7f41d9` |
| 8 | `theorem` | [covering_threshold_enlargement](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Cardinal/Variant90e9d8e740b3f8217aed5848d5e04a82c680b479d0b762339b6c6ecb19c90b0e.lean/declarations/covering-threshold-enlargement--a6f30695854496769305b10d.md) | 84 | `result-track:a6f30695854496769305b10d7951417fb531af1cca3e2265e82ed287fe502867` |
| 9 | `theorem` | [composed_cover_threshold](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Cardinal/Variant90e9d8e740b3f8217aed5848d5e04a82c680b479d0b762339b6c6ecb19c90b0e.lean/declarations/composed-cover-threshold--b9dfbc98a51583ffc2b1bc85.md) | 91 | `result-track:b9dfbc98a51583ffc2b1bc851cfe722f4bc80313413504225728efb057dc7d73` |
| 10 | `theorem` | [reconstruct_composed_cover](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Cardinal/Variant90e9d8e740b3f8217aed5848d5e04a82c680b479d0b762339b6c6ecb19c90b0e.lean/declarations/reconstruct-composed-cover--3ce1e88a94486e2d8a24296b.md) | 108 | `result-track:3ce1e88a94486e2d8a24296b66ff731a4dbe7ef17f9ceea81f870afafc6143fe` |
| 11 | `theorem` | [equiv_image_cardinal](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Cardinal/Variant90e9d8e740b3f8217aed5848d5e04a82c680b479d0b762339b6c6ecb19c90b0e.lean/declarations/equiv-image-cardinal--5aa999e69ff9d729d8b6598e.md) | 119 | `result-track:5aa999e69ff9d729d8b6598e58af80b6a487994691ffd861caf5d4777122af3b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
