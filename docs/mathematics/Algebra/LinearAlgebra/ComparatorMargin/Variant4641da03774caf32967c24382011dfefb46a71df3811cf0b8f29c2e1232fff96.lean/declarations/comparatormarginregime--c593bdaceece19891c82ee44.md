# ComparatorMarginRegime

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a1a52102024cf33cc2d7ea0506dbaad5b931905e85fd4a3ef634a732e0d58a94",
  "kind": "structure",
  "lexical_name": "ComparatorMarginRegime",
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
  "slug": "comparatormarginregime--c593bdaceece19891c82ee44",
  "source": {
    "blob": "ec83de9c90234d62a752d97b73c4085b13863e80",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 90,
    "path": "GRWTSK/Algebra/LinearAlgebra/ComparatorMargin/Variant4641da03774caf32967c24382011dfefb46a71df3811cf0b8f29c2e1232fff96.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c593bdaceece19891c82ee446e0e27fb4b5e6d17accfbcc8a80c68c0e2563db1",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/ComparatorMargin/Variant4641da03774caf32967c24382011dfefb46a71df3811cf0b8f29c2e1232fff96.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a1a52102024cf33cc2d7ea0506dbaad5b931905e85fd4a3ef634a732e0d58a94`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ComparatorMarginRegime
    (Q : LinearComparator V) (I : LinearIntervention X V) where
  /-- Uniform positive factor in the gap-versus-sensitivity lower bound. -/
  margin : ℝ
  margin_pos : 0 < margin
  sector_complete : C.ComparatorSectorComplete Q
  lower_bound :
    ∀ x : X, margin * C.interventionSensitivity I x ≤ Q.comparatorGap I x

namespace ComparatorMarginRegime

variable {C : PositiveCommutingInvolutions G}
variable {Q : LinearComparator V}
variable {I : LinearIntervention X V}

/-- The quantitative lower-margin inequality written in terms of the packaged
pointwise margin object. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/ComparatorMargin/Variant4641da03774caf32967c24382011dfefb46a71df3811cf0b8f29c2e1232fff96.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/ComparatorMargin/Variant4641da03774caf32967c24382011dfefb46a71df3811cf0b8f29c2e1232fff96.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ec83de9c90234d62a752d97b73c4085b13863e80` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
