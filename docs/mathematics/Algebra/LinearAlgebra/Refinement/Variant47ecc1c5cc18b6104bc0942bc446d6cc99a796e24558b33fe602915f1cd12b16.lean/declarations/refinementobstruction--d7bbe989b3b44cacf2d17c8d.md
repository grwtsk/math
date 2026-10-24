# RefinementObstruction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:86a8adc240af2a77816666447e05ea5e082f1d55738f4293fdb12fe3af4e1916",
  "kind": "structure",
  "lexical_name": "RefinementObstruction",
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
  "slug": "refinementobstruction--d7bbe989b3b44cacf2d17c8d",
  "source": {
    "blob": "1494f54adb99648e0703970e8ea41ceb096152c7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 83,
    "path": "GRWTSK/Algebra/LinearAlgebra/Refinement/Variant47ecc1c5cc18b6104bc0942bc446d6cc99a796e24558b33fe602915f1cd12b16.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d7bbe989b3b44cacf2d17c8d0c94fa787a811e1e43ad44242a423915e6cfa05e",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Refinement/Variant47ecc1c5cc18b6104bc0942bc446d6cc99a796e24558b33fe602915f1cd12b16.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:86a8adc240af2a77816666447e05ea5e082f1d55738f4293fdb12fe3af4e1916`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure RefinementObstruction {State : Type u} (G : KnownMaximalState State) where
  coarse : AbsoluteRegion G
  fine : AbsoluteRegion G
  squareIdentifier : String
  failedCondition : Prop
  witness : failedCondition
  unresolvedObligations : List String

end DAF.Terrain
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Refinement/Variant47ecc1c5cc18b6104bc0942bc446d6cc99a796e24558b33fe602915f1cd12b16.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Refinement/Variant47ecc1c5cc18b6104bc0942bc446d6cc99a796e24558b33fe602915f1cd12b16.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1494f54adb99648e0703970e8ea41ceb096152c7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
