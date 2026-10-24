# mdifferentiableAt_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b7a3dc8a-2a33-841a-da83-2db1c84be959",
  "kind": "theorem",
  "lexical_name": "mdifferentiableAt_iff",
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
  "slug": "mdifferentiableat-iff--866f942dddc15cf6013ecb87",
  "source": {
    "blob": "579ab3196cc8e592932491621d1a052b71d72708",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 265,
    "line": 259,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Defs/Variant57f17b6839555433ba8def595a48dd74f57f8851537383598acd50349d8cb869.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:866f942dddc15cf6013ecb87f00a800c8401861b30f9d217755bdc208a6ae3d8",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Defs/Variant57f17b6839555433ba8def595a48dd74f57f8851537383598acd50349d8cb869.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b7a3dc8a-2a33-841a-da83-2db1c84be959`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 259–265.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mdifferentiableAt_iff (f : M → M') (x : M) :
    MDifferentiableAt I I' f x ↔ ContinuousAt f x ∧
    DifferentiableWithinAt 𝕜 (writtenInExtChartAt I I' x f) (range I) ((extChartAt I x) x) := by
  rw [MDifferentiableAt, liftPropAt_iff]
  congrm _ ∧ ?_
  simp [DifferentiableWithinAtProp, Set.univ_inter, Function.comp_assoc]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Defs/Variant57f17b6839555433ba8def595a48dd74f57f8851537383598acd50349d8cb869.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Defs/Variant57f17b6839555433ba8def595a48dd74f57f8851537383598acd50349d8cb869.lean#L259).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `579ab3196cc8e592932491621d1a052b71d72708` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
