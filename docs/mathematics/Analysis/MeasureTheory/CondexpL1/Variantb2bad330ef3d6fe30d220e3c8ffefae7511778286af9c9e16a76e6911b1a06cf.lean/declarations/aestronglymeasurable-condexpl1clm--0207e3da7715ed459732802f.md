# aestronglyMeasurable_condExpL1CLM

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f8f9b9d015697d9b4e6f4fcc21b2e845b950199a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 504,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b2/b2bad330ef3d6fe30d220e3c8ffefae7511778286af9c9e16a76e6911b1a06cf.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bf2c9640-1b40-77b7-0580-1d119e59621f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5d57b4e0-a3ed-b4ca-cf7e-85c624cbc923",
  "kind": "theorem",
  "lexical_name": "aestronglyMeasurable_condExpL1CLM",
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
  "slug": "aestronglymeasurable-condexpl1clm--0207e3da7715ed459732802f",
  "source": {
    "blob": "f8f9b9d015697d9b4e6f4fcc21b2e845b950199a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 528,
    "line": 504,
    "path": "GRWTSK/Analysis/MeasureTheory/CondexpL1/Variantb2bad330ef3d6fe30d220e3c8ffefae7511778286af9c9e16a76e6911b1a06cf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0207e3da7715ed459732802fe253e29580d9815eb26898b8bdb7c9c0dc73c232",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/CondexpL1/Variantb2bad330ef3d6fe30d220e3c8ffefae7511778286af9c9e16a76e6911b1a06cf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5d57b4e0-a3ed-b4ca-cf7e-85c624cbc923`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 504–528.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem aestronglyMeasurable_condExpL1CLM (f : α →₁[μ] F') :
    AEStronglyMeasurable[m] (condExpL1CLM F' hm μ f) μ := by
  refine @Lp.induction _ _ _ _ _ _ _ ENNReal.one_ne_top
    (fun f : α →₁[μ] F' => AEStronglyMeasurable[m] (condExpL1CLM F' hm μ f) μ) ?_ ?_ ?_ f
  · intro c s hs hμs
    rw [condExpL1CLM_indicatorConst hs hμs.ne c]
    exact aestronglyMeasurable_condExpInd hs hμs.ne c
  · intro f g hf hg _ hfm hgm
    rw [(condExpL1CLM F' hm μ).map_add]
    exact (hfm.add hgm).congr (coeFn_add ..).symm
  · have : {f : Lp F' 1 μ | AEStronglyMeasurable[m] (condExpL1CLM F' hm μ f) μ} =
        condExpL1CLM F' hm μ ⁻¹' {f | AEStronglyMeasurable[m] f μ} := rfl
    rw [this]
    refine IsClosed.preimage (condExpL1CLM F' hm μ).continuous ?_
    exact isClosed_aestronglyMeasurable hm

@[deprecated (since := "2025-01-24")]
alias aestronglyMeasurable'_condExpL1CLM := aestronglyMeasurable_condExpL1CLM

@[deprecated (since := "2025-01-21")]
alias aestronglyMeasurable_condexpL1CLM := aestronglyMeasurable_condExpL1CLM

@[deprecated (since := "2025-01-24")]
alias aestronglyMeasurable'_condexpL1CLM := aestronglyMeasurable_condexpL1CLM

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/CondexpL1/Variantb2bad330ef3d6fe30d220e3c8ffefae7511778286af9c9e16a76e6911b1a06cf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/CondexpL1/Variantb2bad330ef3d6fe30d220e3c8ffefae7511778286af9c9e16a76e6911b1a06cf.lean#L504).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f8f9b9d015697d9b4e6f4fcc21b2e845b950199a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
