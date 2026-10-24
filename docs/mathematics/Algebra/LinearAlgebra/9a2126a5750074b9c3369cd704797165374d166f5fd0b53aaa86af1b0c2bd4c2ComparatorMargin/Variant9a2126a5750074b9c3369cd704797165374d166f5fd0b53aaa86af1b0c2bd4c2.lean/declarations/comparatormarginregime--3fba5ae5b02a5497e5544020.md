# ComparatorMarginRegime

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ac8da9cbd0ec32b024a2aebf6f29dc36130544dcfc53873a63a0e5af14fada3b",
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
  "slug": "comparatormarginregime--3fba5ae5b02a5497e5544020",
  "source": {
    "blob": "fe2676913f87d39cc8f342b62932073c8b56f181",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 80,
    "path": "GRWTSK/Algebra/LinearAlgebra/9a2126a5750074b9c3369cd704797165374d166f5fd0b53aaa86af1b0c2bd4c2ComparatorMargin/Variant9a2126a5750074b9c3369cd704797165374d166f5fd0b53aaa86af1b0c2bd4c2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3fba5ae5b02a5497e5544020c9e29a09c7ab22794cd31838338936832a779d4d",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/9a2126a5750074b9c3369cd704797165374d166f5fd0b53aaa86af1b0c2bd4c2ComparatorMargin/Variant9a2126a5750074b9c3369cd704797165374d166f5fd0b53aaa86af1b0c2bd4c2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ac8da9cbd0ec32b024a2aebf6f29dc36130544dcfc53873a63a0e5af14fada3b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ComparatorMarginRegime
    (Q : LinearComparator V) (I : LinearIntervention X V) where
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

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/9a2126a5750074b9c3369cd704797165374d166f5fd0b53aaa86af1b0c2bd4c2ComparatorMargin/Variant9a2126a5750074b9c3369cd704797165374d166f5fd0b53aaa86af1b0c2bd4c2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/9a2126a5750074b9c3369cd704797165374d166f5fd0b53aaa86af1b0c2bd4c2ComparatorMargin/Variant9a2126a5750074b9c3369cd704797165374d166f5fd0b53aaa86af1b0c2bd4c2.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe2676913f87d39cc8f342b62932073c8b56f181` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
