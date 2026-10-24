# li2_bounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d90f6a8d-637d-28cc-c142-ceac1d35cb41",
  "kind": "theorem",
  "lexical_name": "li2_bounds",
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
  "slug": "li2-bounds--e6a5f69cc0974e2cfb7f3fce",
  "source": {
    "blob": "fdecf084c85fab7b2b6ec338b0c88813296d71d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 271,
    "line": 267,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Li2Bounds/Varianta76a82955210e20fdfaa8009668db095f5a22bc2d1c3de02bc7cf19273e31133.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e6a5f69cc0974e2cfb7f3fce563c7a777fea0c41deacfe5632dab7b580ceb2f8",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Li2Bounds/Varianta76a82955210e20fdfaa8009668db095f5a22bc2d1c3de02bc7cf19273e31133.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d90f6a8d-637d-28cc-c142-ceac1d35cb41`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 267–271.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem li2_bounds : (1039:ℚ)/1000 ≤ li2 ∧ li2 ≤ (106:ℚ)/100 :=
  ⟨li2_lower, li2_upper⟩

/-- li(2) is approximately 1.045 (the Ramanujan-Soldner constant).
    Our bounds show: |li(2) - 1.045| ≤ 0.015 -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Li2Bounds/Varianta76a82955210e20fdfaa8009668db095f5a22bc2d1c3de02bc7cf19273e31133.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Li2Bounds/Varianta76a82955210e20fdfaa8009668db095f5a22bc2d1c3de02bc7cf19273e31133.lean#L267).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fdecf084c85fab7b2b6ec338b0c88813296d71d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
