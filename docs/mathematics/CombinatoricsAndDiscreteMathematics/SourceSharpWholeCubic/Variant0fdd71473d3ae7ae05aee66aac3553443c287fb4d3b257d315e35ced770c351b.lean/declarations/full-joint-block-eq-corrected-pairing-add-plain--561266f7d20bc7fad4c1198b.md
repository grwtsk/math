# full_joint_block_eq_corrected_pairing_add_plain

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:90edb0cd-1867-9af5-f91a-49e58fa52516",
  "kind": "theorem",
  "lexical_name": "full_joint_block_eq_corrected_pairing_add_plain",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "full-joint-block-eq-corrected-pairing-add-plain--561266f7d20bc7fad4c1198b",
  "source": {
    "blob": "551f3ad1970d7f5ddb0ef506e147511d43eb4f2a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 36,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SourceSharpWholeCubic/Variant0fdd71473d3ae7ae05aee66aac3553443c287fb4d3b257d315e35ced770c351b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:561266f7d20bc7fad4c1198b377127922c4de9f5992427167e5fae6646f1a1b7",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/SourceSharpWholeCubic/Variant0fdd71473d3ae7ae05aee66aac3553443c287fb4d3b257d315e35ced770c351b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:90edb0cd-1867-9af5-f91a-49e58fa52516`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem full_joint_block_eq_corrected_pairing_add_plain (A : ℝ) (hA : 1 ≤ A) :
    (∑ d ∈ Finset.Icc 1 (vaughanCutoff A), realMoebius d *
      wholeCubicMainTerm A (d : ℝ)) + literalOmegaComplementarySector A =
        completeCorrectedAbelPairing A + plainInventory A := by
  rw [← correctedCompleteOmega_eq_complete_pairing A hA,
    correctedCompleteOmega_eq_full_positive_kappa]
  have hs :
      (∑ d ∈ Finset.Icc 1 (vaughanCutoff A), realMoebius d *
        wholeCubicMainTerm A (d : ℝ)) =
      (∑ d ∈ Finset.Icc 1 (vaughanCutoff A), realMoebius d / Real.sqrt (d : ℝ) *
        ∑ j ∈ Finset.range 4, fullPositiveKappa (j + 1) / (j.factorial : ℝ) *
          iteratedDeriv j (sourceCorrelation explicitSecondDerivative A) (Real.log (d : ℝ))) := by
    apply Finset.sum_congr rfl
    intro d _
    unfold wholeCubicMainTerm
    norm_num [Finset.sum_range_succ, iteratedDeriv_succ, iteratedDeriv_zero, Nat.factorial]
    ring
  rw [hs]
  ring

/-- The whole fractional carrier and the earlier two-error carrier coincide jointly. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/SourceSharpWholeCubic/Variant0fdd71473d3ae7ae05aee66aac3553443c287fb4d3b257d315e35ced770c351b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/SourceSharpWholeCubic/Variant0fdd71473d3ae7ae05aee66aac3553443c287fb4d3b257d315e35ced770c351b.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `551f3ad1970d7f5ddb0ef506e147511d43eb4f2a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
