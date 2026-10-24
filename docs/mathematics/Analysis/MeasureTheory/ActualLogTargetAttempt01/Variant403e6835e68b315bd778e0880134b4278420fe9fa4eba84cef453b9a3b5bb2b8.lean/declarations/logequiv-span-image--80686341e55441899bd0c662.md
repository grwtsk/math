# logEquiv_span_image

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:97925dc2-376e-eb0e-ef1d-7dad53b60ffa",
  "kind": "theorem",
  "lexical_name": "logEquiv_span_image",
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
  "slug": "logequiv-span-image--80686341e55441899bd0c662",
  "source": {
    "blob": "a1c12a393c7417885720dbf18e3930b2f4c04211",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 88,
    "path": "GRWTSK/Analysis/MeasureTheory/ActualLogTargetAttempt01/Variant403e6835e68b315bd778e0880134b4278420fe9fa4eba84cef453b9a3b5bb2b8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:80686341e55441899bd0c662ac6c2cd99e1eca889f339bf530c261c87523b8d3",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/ActualLogTargetAttempt01/Variant403e6835e68b315bd778e0880134b4278420fe9fa4eba84cef453b9a3b5bb2b8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:97925dc2-376e-eb0e-ef1d-7dad53b60ffa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem logEquiv_span_image (s : Set PositiveL2) :
    logEquiv '' (Submodule.span ℂ s : Set PositiveL2) =
      (Submodule.span ℂ (logEquiv '' s) : Set LogL2) := by
  change ((Submodule.span ℂ s).map logEquiv.toLinearEquiv.toLinearMap : Set LogL2) = _
  rw [Submodule.map_span]

/-- Actual hull transport uses the earlier proved nonzero K/D rescaling only as a prerequisite. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/ActualLogTargetAttempt01/Variant403e6835e68b315bd778e0880134b4278420fe9fa4eba84cef453b9a3b5bb2b8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/ActualLogTargetAttempt01/Variant403e6835e68b315bd778e0880134b4278420fe9fa4eba84cef453b9a3b5bb2b8.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a1c12a393c7417885720dbf18e3930b2f4c04211` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
