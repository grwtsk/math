# isolatedSpectralProjection

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e0c05fbddea7ddccf8189daf134afca80028c28400c01af1dcf379d0937d8bf3",
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
  "slug": "isolatedspectralprojection--46d454f74940606ddb9d1ff9",
  "source": {
    "blob": "3aa98bcf08046d2fb29566b8e364ca232f95d77a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 196,
    "line": 187,
    "path": "GRWTSK/Analysis/CFCProjection/Variantc03bc4c351615cf05f5a3fa14e46b34aa4c37f2e995739a527947c3715875706.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:46d454f74940606ddb9d1ff920a2051fe5fb698a49ce3bff7849d12baa9a69f5",
  "verification": {
    "reference": "docs/verification/Analysis/CFCProjection/Variantc03bc4c351615cf05f5a3fa14e46b34aa4c37f2e995739a527947c3715875706.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e0c05fbddea7ddccf8189daf134afca80028c28400c01af1dcf379d0937d8bf3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 187–196.

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

[Verification target and public status](../../../../../verification/Analysis/CFCProjection/Variantc03bc4c351615cf05f5a3fa14e46b34aa4c37f2e995739a527947c3715875706.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/CFCProjection/Variantc03bc4c351615cf05f5a3fa14e46b34aa4c37f2e995739a527947c3715875706.lean#L187).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3aa98bcf08046d2fb29566b8e364ca232f95d77a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
