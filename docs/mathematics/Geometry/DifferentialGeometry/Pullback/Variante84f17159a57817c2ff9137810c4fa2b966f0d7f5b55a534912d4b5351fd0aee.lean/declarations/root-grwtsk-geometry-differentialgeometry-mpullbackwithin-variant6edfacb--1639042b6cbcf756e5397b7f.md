# _root_.GRWTSK.Geometry.DifferentialGeometry.MpullbackWithin.Variant6edfacb98b5052c4647612a683b61c09510355e9760809f72fabfb46eb991b6a.ContMDiffWithinAt.mpullbackWithin_vectorField_inter_of_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:068a93a7-cc4c-e7cf-73d7-61c9db2e69ba",
  "kind": "lemma",
  "lexical_name": "_root_.GRWTSK.Geometry.DifferentialGeometry.MpullbackWithin.Variant6edfacb98b5052c4647612a683b61c09510355e9760809f72fabfb46eb991b6a.ContMDiffWithinAt.mpullbackWithin_vectorField_inter_of_eq",
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
  "slug": "root-grwtsk-geometry-differentialgeometry-mpullbackwithin-variant6edfacb--1639042b6cbcf756e5397b7f",
  "source": {
    "blob": "615e126c4fe99c2dbf0bc2c6eafd189eeb7b2734",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 470,
    "line": 461,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Pullback/Variante84f17159a57817c2ff9137810c4fa2b966f0d7f5b55a534912d4b5351fd0aee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1639042b6cbcf756e5397b7f2c385371d792ecb4c28cf7e1cfe1fc36f60f7a34",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Pullback/Variante84f17159a57817c2ff9137810c4fa2b966f0d7f5b55a534912d4b5351fd0aee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:068a93a7-cc4c-e7cf-73d7-61c9db2e69ba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 461–470.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.GRWTSK.Geometry.DifferentialGeometry.MpullbackWithin.Variant6edfacb98b5052c4647612a683b61c09510355e9760809f72fabfb46eb991b6a.ContMDiffWithinAt.mpullbackWithin_vectorField_inter_of_eq
    (hV : CMDiffAt[t] m (T% V) y₀) (hf : CMDiffAt[s] n f x₀) (hf' : (mfderiv[s] f x₀).IsInvertible)
    (hx₀ : x₀ ∈ s) (hs : UniqueMDiff[s]) (hmn : m + 1 ≤ n) (h : f x₀ = y₀) :
    CMDiffAt[s ∩ f ⁻¹' t] m (T% (mpullbackWithin I I' f V s)) x₀ := by
  subst h
  exact ContMDiffWithinAt.mpullbackWithin_vectorField_inter hV hf hf' hx₀ hs hmn

/-- The pullback of a `C^m` vector field by a `C^n` function with invertible derivative and
with `m + 1 ≤ n` is `C^m`.
Version within a set at a point. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Pullback/Variante84f17159a57817c2ff9137810c4fa2b966f0d7f5b55a534912d4b5351fd0aee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Pullback/Variante84f17159a57817c2ff9137810c4fa2b966f0d7f5b55a534912d4b5351fd0aee.lean#L461).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `615e126c4fe99c2dbf0bc2c6eafd189eeb7b2734` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
