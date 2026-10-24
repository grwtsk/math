# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6e2a29c7ddbfbf98333d1869094237a573c0d80515bc3b6f70687516e021f814",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--1227fc2fa62f3bb61db07efc",
  "source": {
    "blob": "4bd339bbe32099e4cd4eedf8ec0519b39e0bfed4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 41,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PointwiseSMul/Variant3fc67f99074e7bee01f8ea4e7ab327ba89fc130ecdefd44bacc3063c653771a7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1227fc2fa62f3bb61db07efc7ee5f6db954a308021237b43c2ca4778d3d49ce9",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/PointwiseSMul/Variant3fc67f99074e7bee01f8ea4e7ab327ba89fc130ecdefd44bacc3063c653771a7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6e2a29c7ddbfbf98333d1869094237a573c0d80515bc3b6f70687516e021f814`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
scoped instance [SMul G P] [IsLeftCancelSMul G P] [Semiring R] [AddCommMonoid V]
    [SMulWithZero R V] :
    SMul (R[G]) (P → V) where
  smul f x p := ∑ gh ∈ Finset.SMulAntidiagonal p
    (Set.SMulAntidiagonal.finite_of_finite_fst f.coeff.support.finite_toSet x.support p),
      f.coeff gh.1 • x gh.2

@[to_additive (dont_translate := R) smul_eq]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/PointwiseSMul/Variant3fc67f99074e7bee01f8ea4e7ab327ba89fc130ecdefd44bacc3063c653771a7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/PointwiseSMul/Variant3fc67f99074e7bee01f8ea4e7ab327ba89fc130ecdefd44bacc3063c653771a7.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4bd339bbe32099e4cd4eedf8ec0519b39e0bfed4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
