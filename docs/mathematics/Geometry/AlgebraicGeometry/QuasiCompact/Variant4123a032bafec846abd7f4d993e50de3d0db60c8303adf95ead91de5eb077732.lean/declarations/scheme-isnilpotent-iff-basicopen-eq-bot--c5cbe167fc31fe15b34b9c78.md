# Scheme.isNilpotent_iff_basicOpen_eq_bot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f04e7d14-c8c2-a417-3c74-5dda84922955",
  "kind": "lemma",
  "lexical_name": "Scheme.isNilpotent_iff_basicOpen_eq_bot",
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
  "slug": "scheme-isnilpotent-iff-basicopen-eq-bot--c5cbe167fc31fe15b34b9c78",
  "source": {
    "blob": "d0089e9863bc5f1bbe575d893ef51e48d00cd625",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 347,
    "line": 341,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/QuasiCompact/Variant4123a032bafec846abd7f4d993e50de3d0db60c8303adf95ead91de5eb077732.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c5cbe167fc31fe15b34b9c78858263ab424334a9380ada7931b26fd386324149",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/QuasiCompact/Variant4123a032bafec846abd7f4d993e50de3d0db60c8303adf95ead91de5eb077732.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f04e7d14-c8c2-a417-3c74-5dda84922955`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 341–347.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Scheme.isNilpotent_iff_basicOpen_eq_bot {X : Scheme.{u}}
    [CompactSpace X] (f : Γ(X, ⊤)) :
    IsNilpotent f ↔ X.basicOpen f = ⊥ :=
  isNilpotent_iff_basicOpen_eq_bot_of_isCompact (U := ⊤) (CompactSpace.isCompact_univ) f

/-- The zero locus of a set of sections over a compact open of a scheme is `X` if and only if
`s` is contained in the nilradical of `Γ(X, U)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/QuasiCompact/Variant4123a032bafec846abd7f4d993e50de3d0db60c8303adf95ead91de5eb077732.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/QuasiCompact/Variant4123a032bafec846abd7f4d993e50de3d0db60c8303adf95ead91de5eb077732.lean#L341).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d0089e9863bc5f1bbe575d893ef51e48d00cd625` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
