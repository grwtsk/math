# uniqueMDiffOn_univ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "79e199bd0574779cf65ad0ca6c87251b12a8c06f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 381,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/80/80ac13bbf09a804d982cdff15a1eda62070e3fc5cf918f9613a32371d6f689fb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:87490d6b-6bc8-c3d6-47ad-a59a2c89fb34",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8d129ef1-1ca7-f4f2-e63c-fb908afa4a27",
  "kind": "theorem",
  "lexical_name": "uniqueMDiffOn_univ",
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
  "slug": "uniquemdiffon-univ--efbb7de491b6d689e5bf3ca5",
  "source": {
    "blob": "79e199bd0574779cf65ad0ca6c87251b12a8c06f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 393,
    "line": 381,
    "path": "GRWTSK/Geometry/DifferentialGeometry/MFDeriv/Variant80ac13bbf09a804d982cdff15a1eda62070e3fc5cf918f9613a32371d6f689fb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:efbb7de491b6d689e5bf3ca57b01b370aae1bc1845d6187e65f44801fce99dea",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/MFDeriv/Variant80ac13bbf09a804d982cdff15a1eda62070e3fc5cf918f9613a32371d6f689fb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8d129ef1-1ca7-f4f2-e63c-fb908afa4a27`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 381–393.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem uniqueMDiffOn_univ : UniqueMDiffOn I (univ : Set M) :=
  isOpen_univ.uniqueMDiffOn
#align unique_mdiff_on_univ uniqueMDiffOn_univ

/- We name the typeclass variables related to `SmoothManifoldWithCorners` structure as they are
necessary in lemmas mentioning the derivative, but not in lemmas about differentiability, so we
want to include them or omit them when necessary. -/
variable [Is : SmoothManifoldWithCorners I M] [I's : SmoothManifoldWithCorners I' M']
  [I''s : SmoothManifoldWithCorners I'' M'']
  {f' f₀' f₁' : TangentSpace I x →L[𝕜] TangentSpace I' (f x)}
  {g' : TangentSpace I' (f x) →L[𝕜] TangentSpace I'' (g (f x))}

/-- `UniqueMDiffWithinAt` achieves its goal: it implies the uniqueness of the derivative. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/MFDeriv/Variant80ac13bbf09a804d982cdff15a1eda62070e3fc5cf918f9613a32371d6f689fb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/MFDeriv/Variant80ac13bbf09a804d982cdff15a1eda62070e3fc5cf918f9613a32371d6f689fb.lean#L381).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `79e199bd0574779cf65ad0ca6c87251b12a8c06f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
