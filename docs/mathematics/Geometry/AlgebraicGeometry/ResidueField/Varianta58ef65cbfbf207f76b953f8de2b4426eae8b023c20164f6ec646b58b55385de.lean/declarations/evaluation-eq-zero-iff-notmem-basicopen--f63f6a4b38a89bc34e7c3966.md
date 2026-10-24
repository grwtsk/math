# evaluation_eq_zero_iff_notMem_basicOpen

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e4e62035-53c4-1c2f-a4b2-b571dca6b756",
  "kind": "lemma",
  "lexical_name": "evaluation_eq_zero_iff_notMem_basicOpen",
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
  "slug": "evaluation-eq-zero-iff-notmem-basicopen--f63f6a4b38a89bc34e7c3966",
  "source": {
    "blob": "e661a3bf6a498cb60e57412edd041e172bccdbf4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 115,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/ResidueField/Varianta58ef65cbfbf207f76b953f8de2b4426eae8b023c20164f6ec646b58b55385de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f63f6a4b38a89bc34e7c396618bbfea680d7e07fec460559616a24b58dcb81d5",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/ResidueField/Varianta58ef65cbfbf207f76b953f8de2b4426eae8b023c20164f6ec646b58b55385de.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e4e62035-53c4-1c2f-a4b2-b571dca6b756`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma evaluation_eq_zero_iff_notMem_basicOpen (x : X) (hx : x ∈ U) (f : Γ(X, U)) :
    X.evaluation U x hx f = 0 ↔ x ∉ X.basicOpen f :=
  X.toLocallyRingedSpace.evaluation_eq_zero_iff_notMem_basicOpen ⟨x, hx⟩ f

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/ResidueField/Varianta58ef65cbfbf207f76b953f8de2b4426eae8b023c20164f6ec646b58b55385de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/ResidueField/Varianta58ef65cbfbf207f76b953f8de2b4426eae8b023c20164f6ec646b58b55385de.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e661a3bf6a498cb60e57412edd041e172bccdbf4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
