# GradeZero.isNoetherianRing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d2ef37357b9edfcab3eb260f052ec4cec5bb550f4a9b89b89304f9da91a3917e",
  "kind": "instance",
  "lexical_name": "GradeZero.isNoetherianRing",
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
  "slug": "gradezero-isnoetherianring--b134235fae24c127e3ab267c",
  "source": {
    "blob": "84c30d7a18a4d65309ac1a1e263a98eea6040add",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 29,
    "line": 25,
    "path": "GRWTSK/Algebra/Noetherian/Variantfa7acdf927ac3426cd47643bf0549566f992c0f22af543d771cd4b3c8e0078a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b134235fae24c127e3ab267c96baa9ae65be8d77f7c1cb13dfa6d798430fdd5d",
  "verification": {
    "reference": "docs/verification/Algebra/Noetherian/Variantfa7acdf927ac3426cd47643bf0549566f992c0f22af543d771cd4b3c8e0078a0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d2ef37357b9edfcab3eb260f052ec4cec5bb550f4a9b89b89304f9da91a3917e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–29.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance GradeZero.isNoetherianRing : IsNoetherianRing (𝒜 0) :=
  isNoetherianRing_of_surjective
    A (𝒜 0) (GradedRing.projZeroRingHom' 𝒜) (GradedRing.projZeroRingHom'_surjective 𝒜)

end GradedRing
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Noetherian/Variantfa7acdf927ac3426cd47643bf0549566f992c0f22af543d771cd4b3c8e0078a0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Noetherian/Variantfa7acdf927ac3426cd47643bf0549566f992c0f22af543d771cd4b3c8e0078a0.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `84c30d7a18a4d65309ac1a1e263a98eea6040add` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
