# restriction_compatible_with_boundary

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:356136aa-bc5a-b336-3296-52b7f1d2cd2c",
  "kind": "theorem",
  "lexical_name": "restriction_compatible_with_boundary",
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
  "slug": "restriction-compatible-with-boundary--62aa05b14a2288d3a2cbd6e9",
  "source": {
    "blob": "36a247d1cd860836674c6dbb43600232bb9b47e7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 38,
    "line": 28,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RestrictionMap/Variant9936c2d6dd8837abc86a2abb96595ef370c9c8c4cd41eef8b2f44df753fb63a1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:62aa05b14a2288d3a2cbd6e9d5f1f05940f2c6faf56913baaa06ba1ac215abe3",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/RestrictionMap/Variant9936c2d6dd8837abc86a2abb96595ef370c9c8c4cd41eef8b2f44df753fb63a1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:356136aa-bc5a-b336-3296-52b7f1d2cd2c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–38.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem restriction_compatible_with_boundary
    {S : Folder.AdelicInfinityTopos.AdelicSpectralSheaf}
    {i j : Folder.AdelicInfinityTopos.Place}
    (rho : Folder.AdelicInfinityTopos.AdelicRestrictionMap S i j) :
    rho.compatibleWithBoundary :=
  Folder.AdelicInfinityTopos.restriction_compatible_with_boundary rho

end RestrictionMap
end AdelicInfinityTopos
end Theorem
end Folder
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/RestrictionMap/Variant9936c2d6dd8837abc86a2abb96595ef370c9c8c4cd41eef8b2f44df753fb63a1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RestrictionMap/Variant9936c2d6dd8837abc86a2abb96595ef370c9c8c4cd41eef8b2f44df753fb63a1.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `36a247d1cd860836674c6dbb43600232bb9b47e7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
