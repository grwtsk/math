# GzGpChi_at

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "04b1fb17f416b15ab6948debfd8585a9821e2d24",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 180,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7f/7fd3f2aed214eae1c854c4b73b51c0cfb05b6e582ee3fab4430a97572a0143f9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d00fdf62-64ed-f9ae-eb26-39bf7fc4e95f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:32cefb7f-687f-bea4-9017-03a8ec92b19b",
  "kind": "theorem",
  "lexical_name": "GzGpChi_at",
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
  "slug": "gzgpchi-at--fcc38eac0c7ad4aeece7090b",
  "source": {
    "blob": "04b1fb17f416b15ab6948debfd8585a9821e2d24",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 189,
    "line": 180,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Main/Variant7fd3f2aed214eae1c854c4b73b51c0cfb05b6e582ee3fab4430a97572a0143f9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fcc38eac0c7ad4aeece7090b8737e216ce5251b6caa0ca7a994a34648a928692",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Main/Variant7fd3f2aed214eae1c854c4b73b51c0cfb05b6e582ee3fab4430a97572a0143f9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:32cefb7f-687f-bea4-9017-03a8ec92b19b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 180–189.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem GzGpChi_at {Z : ZeroConfig} {κ : ℕ} {c : ℕ → ℂ} (P : Params) (hP : P.Valid)
    (hEF : ExplicitFormulaPaperChi κ q c Z) (T : ℝ)
    (hL : 0 < P.L T) (hwL : 8 * P.w ≤ P.L T) :
    Z.Gz P T = GpChi P κ q c T := by
  refine Z.Gz_eq_GpChi P κ q c T hEF hL ?_ ?_
  · exact (Complex.ofRealCLM.contDiff.comp (Params.phi_contDiff hP hwL)).of_le (by norm_num)
  · exact closure_minimal (Params.phi_support_subset hP) isClosed_Icc

/-- the χ-EF bridge, eventual-in-T form (`Gz_eq_GpChi` + the Taper side conditions;
mirror of Main.lean's `eventually_side_conditions` first component). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Main/Variant7fd3f2aed214eae1c854c4b73b51c0cfb05b6e582ee3fab4430a97572a0143f9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Main/Variant7fd3f2aed214eae1c854c4b73b51c0cfb05b6e582ee3fab4430a97572a0143f9.lean#L180).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `04b1fb17f416b15ab6948debfd8585a9821e2d24` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
