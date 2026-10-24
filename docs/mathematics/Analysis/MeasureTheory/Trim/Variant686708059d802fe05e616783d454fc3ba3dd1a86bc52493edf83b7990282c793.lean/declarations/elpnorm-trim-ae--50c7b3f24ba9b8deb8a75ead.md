# eLpNorm_trim_ae

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0bc1cda2-f2cb-11a2-f035-2b60b039456f",
  "kind": "theorem",
  "lexical_name": "eLpNorm_trim_ae",
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
  "slug": "elpnorm-trim-ae--50c7b3f24ba9b8deb8a75ead",
  "source": {
    "blob": "11c48599950e5b397c9c00c9aec8ff5024c2d5e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 76,
    "path": "GRWTSK/Analysis/MeasureTheory/Trim/Variant686708059d802fe05e616783d454fc3ba3dd1a86bc52493edf83b7990282c793.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:50c7b3f24ba9b8deb8a75eada2ed90e8e980a8e5ae0057fb3560e306a3fab69f",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Trim/Variant686708059d802fe05e616783d454fc3ba3dd1a86bc52493edf83b7990282c793.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0bc1cda2-f2cb-11a2-f035-2b60b039456f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eLpNorm_trim_ae (hm : m ≤ m0) {f : α → ε} (hf : AEStronglyMeasurable[m] f (μ.trim hm)) :
    eLpNorm f p (μ.trim hm) = eLpNorm f p μ := by
  have hfμ := aestronglyMeasurable_of_aestronglyMeasurable_trim hm hf
  rw [eLpNorm_congr_ae hf.ae_eq_mk,
    eLpNorm_congr_ae (ae_eq_of_ae_eq_trim hf.ae_eq_mk)]
  exact eLpNorm_trim hm hf.stronglyMeasurable_mk

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Trim/Variant686708059d802fe05e616783d454fc3ba3dd1a86bc52493edf83b7990282c793.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Trim/Variant686708059d802fe05e616783d454fc3ba3dd1a86bc52493edf83b7990282c793.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `11c48599950e5b397c9c00c9aec8ff5024c2d5e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
