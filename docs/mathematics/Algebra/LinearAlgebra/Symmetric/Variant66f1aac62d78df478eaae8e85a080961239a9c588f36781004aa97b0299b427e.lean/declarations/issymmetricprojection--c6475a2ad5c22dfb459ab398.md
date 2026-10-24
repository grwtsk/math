# IsSymmetricProjection

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e64bbe19c7b71f4911fd9abfdd9b0da3ca6b9702aa65e7df631cc958a24e2c05",
  "kind": "structure",
  "lexical_name": "IsSymmetricProjection",
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
  "slug": "issymmetricprojection--c6475a2ad5c22dfb459ab398",
  "source": {
    "blob": "02a1219cbae9425cac01edc7a05b4146ab5b787e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 187,
    "line": 176,
    "path": "GRWTSK/Algebra/LinearAlgebra/Symmetric/Variant66f1aac62d78df478eaae8e85a080961239a9c588f36781004aa97b0299b427e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c6475a2ad5c22dfb459ab3985a148eff491530e88120d1f3832232ded91f3b8b",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Symmetric/Variant66f1aac62d78df478eaae8e85a080961239a9c588f36781004aa97b0299b427e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e64bbe19c7b71f4911fd9abfdd9b0da3ca6b9702aa65e7df631cc958a24e2c05`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 176–187.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure IsSymmetricProjection (T : E →ₗ[𝕜] E) : Prop where
  isIdempotentElem : IsIdempotentElem T
  isSymmetric : T.IsSymmetric

section Complex

variable {V : Type*} [SeminormedAddCommGroup V] [InnerProductSpace ℂ V]

attribute [local simp] map_ofNat in -- use `ofNat` simp theorem with bad keys
open scoped InnerProductSpace in
/-- A linear operator on a complex inner product space is symmetric precisely when
`⟪T v, v⟫_ℂ` is real for all v. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Symmetric/Variant66f1aac62d78df478eaae8e85a080961239a9c588f36781004aa97b0299b427e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Symmetric/Variant66f1aac62d78df478eaae8e85a080961239a9c588f36781004aa97b0299b427e.lean#L176).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `02a1219cbae9425cac01edc7a05b4146ab5b787e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
