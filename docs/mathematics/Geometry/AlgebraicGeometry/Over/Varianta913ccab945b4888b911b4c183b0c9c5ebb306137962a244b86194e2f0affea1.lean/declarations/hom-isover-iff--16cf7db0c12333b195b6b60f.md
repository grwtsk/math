# Hom.isOver_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:45fcfd95-0f30-2f7d-413d-6515eb1e2679",
  "kind": "lemma",
  "lexical_name": "Hom.isOver_iff",
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
  "slug": "hom-isover-iff--16cf7db0c12333b195b6b60f",
  "source": {
    "blob": "b9f1d1ddbd0030d8435ee74c685c75a065e71473",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 53,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Over/Varianta913ccab945b4888b911b4c183b0c9c5ebb306137962a244b86194e2f0affea1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:16cf7db0c12333b195b6b60f917ea3b78fd0ac6cc48a0b915d8d3db2b8ca8e2b",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Over/Varianta913ccab945b4888b911b4c183b0c9c5ebb306137962a244b86194e2f0affea1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:45fcfd95-0f30-2f7d-413d-6515eb1e2679`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Hom.isOver_iff [X.Over S] [Y.Over S] {f : X ⟶ Y} : f.IsOver S ↔ f ≫ Y ↘ S = X ↘ S :=
  ⟨fun H ↦ H.1, fun h ↦ ⟨h⟩⟩

/-! Also note the existence of `CategoryTheory.IsOverTower X Y S`. -/

/-- Given `X.Over S`, this is the bundled object of `Over S`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Over/Varianta913ccab945b4888b911b4c183b0c9c5ebb306137962a244b86194e2f0affea1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Over/Varianta913ccab945b4888b911b4c183b0c9c5ebb306137962a244b86194e2f0affea1.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b9f1d1ddbd0030d8435ee74c685c75a065e71473` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
