# IsHilbertSum.linearIsometryEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bf2f20b0b0473afc82c358ffd94db5f86100120abeab7d2fbd674927a82879ca",
  "kind": "def",
  "lexical_name": "IsHilbertSum.linearIsometryEquiv",
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
  "slug": "ishilbertsum-linearisometryequiv--edf8ea23cbf3d3e578239775",
  "source": {
    "blob": "2f03e57af87069e6dd0bedb504a804f6e4a4b3fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 306,
    "line": 301,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/L2Space/Variant2a429840e57fd017ea28bd079856c3edab18e9d3d0a5a2c4c1664fea1c368537.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:edf8ea23cbf3d3e57823977517007de8ea5639ef5e9efe2cd417e61d95183652",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/L2Space/Variant2a429840e57fd017ea28bd079856c3edab18e9d3d0a5a2c4c1664fea1c368537.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bf2f20b0b0473afc82c358ffd94db5f86100120abeab7d2fbd674927a82879ca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 301–306.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def IsHilbertSum.linearIsometryEquiv (hV : IsHilbertSum 𝕜 G V) : E ≃ₗᵢ[𝕜] lp G 2 :=
  LinearIsometryEquiv.symm <|
    LinearIsometryEquiv.ofSurjective hV.OrthogonalFamily.linearIsometry hV.surjective_isometry

/-- In the canonical isometric isomorphism between a Hilbert sum `E` of `G` and `lp G 2`,
a vector `w : lp G 2` is the image of the infinite sum of the associated elements in `E`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/L2Space/Variant2a429840e57fd017ea28bd079856c3edab18e9d3d0a5a2c4c1664fea1c368537.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/L2Space/Variant2a429840e57fd017ea28bd079856c3edab18e9d3d0a5a2c4c1664fea1c368537.lean#L301).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2f03e57af87069e6dd0bedb504a804f6e4a4b3fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
