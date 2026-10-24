# isolatedSpectralProjection

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6a56f84f5e959f811b9d74fc5ba9ae0895a1e2ce2cc41b40a66ff2207c8accdd",
  "kind": "def",
  "lexical_name": "isolatedSpectralProjection",
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
  "slug": "isolatedspectralprojection--256a59068ab71c80d62bb1a9",
  "source": {
    "blob": "b276c3cdd7836a22127d8d8edf3183e368736ba5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 188,
    "line": 179,
    "path": "GRWTSK/Analysis/CFCProjection/Variantcf43516af192973e3fe224312e5a26c045586f2b7680ea1475240f451ba3150f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:256a59068ab71c80d62bb1a9d4f93467ad67207d1675cf119b24266c87296832",
  "verification": {
    "reference": "docs/verification/Analysis/CFCProjection/Variantcf43516af192973e3fe224312e5a26c045586f2b7680ea1475240f451ba3150f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6a56f84f5e959f811b9d74fc5ba9ae0895a1e2ce2cc41b40a66ff2207c8accdd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 179–188.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isolatedSpectralProjection
    (A : H →L[ℂ] H) (hA : IsStarNormal A)
    (lambda : ℂ) (hlambda : lambda ∈ spectrum ℂ A)
    (r : ℝ) (hr : 0 < r)
    (hgap : ∀ z ∈ spectrum ℂ A, z ≠ lambda → r ≤ dist z lambda) : H →L[ℂ] H :=
  cfcSpectralProjection A hA (spectralSingleton A lambda)
    (spectralSingleton_isClopen_of_gap A lambda hlambda r hr hgap)

/-- The isolated-value construction is an orthogonal projection. -/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/CFCProjection/Variantcf43516af192973e3fe224312e5a26c045586f2b7680ea1475240f451ba3150f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/CFCProjection/Variantcf43516af192973e3fe224312e5a26c045586f2b7680ea1475240f451ba3150f.lean#L179).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b276c3cdd7836a22127d8d8edf3183e368736ba5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
