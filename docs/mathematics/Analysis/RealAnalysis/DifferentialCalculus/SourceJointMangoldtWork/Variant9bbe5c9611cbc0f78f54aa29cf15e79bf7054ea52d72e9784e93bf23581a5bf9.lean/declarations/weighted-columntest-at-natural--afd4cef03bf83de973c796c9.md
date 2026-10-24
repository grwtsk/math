# weighted_columnTest_at_natural

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:744ea975-8a75-d929-c1c1-e3c60ffe035c",
  "kind": "theorem",
  "lexical_name": "weighted_columnTest_at_natural",
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
  "slug": "weighted-columntest-at-natural--afd4cef03bf83de973c796c9",
  "source": {
    "blob": "3d4e2b0260225c3ab16efa8c2cc679e9df63e555",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 101,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceJointMangoldtWork/Variant9bbe5c9611cbc0f78f54aa29cf15e79bf7054ea52d72e9784e93bf23581a5bf9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:afd4cef03bf83de973c796c9959b5f06d85543dc885ba8613c9717b019f9d991",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceJointMangoldtWork/Variant9bbe5c9611cbc0f78f54aa29cf15e79bf7054ea52d72e9784e93bf23581a5bf9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:744ea975-8a75-d929-c1c1-e3c60ffe035c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem weighted_columnTest_at_natural (A : ℝ) (m k : ℕ)
    (hm : 0 < m) (hk : 0 < k) :
    vonMangoldt m / (m : ℝ) * columnTest A k (Real.log (m : ℝ)) =
      vonMangoldt m * sourcePlainWeight A ((m * k : ℕ) : ℝ) := by
  rw [show vonMangoldt m / (m : ℝ) * columnTest A k (Real.log (m : ℝ)) =
    vonMangoldt m * (columnTest A k (Real.log (m : ℝ)) / (m : ℝ)) by ring,
    columnTest_at_natural A m k hm hk]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceJointMangoldtWork/Variant9bbe5c9611cbc0f78f54aa29cf15e79bf7054ea52d72e9784e93bf23581a5bf9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceJointMangoldtWork/Variant9bbe5c9611cbc0f78f54aa29cf15e79bf7054ea52d72e9784e93bf23581a5bf9.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d4e2b0260225c3ab16efa8c2cc679e9df63e555` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
