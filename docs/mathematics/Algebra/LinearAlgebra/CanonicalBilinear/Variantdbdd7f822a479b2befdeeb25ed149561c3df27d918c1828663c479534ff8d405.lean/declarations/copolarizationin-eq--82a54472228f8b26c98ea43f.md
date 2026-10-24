# CoPolarizationIn_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fe6b77494e4557c498dd20e6af2643b22b14961b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 211,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/db/dbdd7f822a479b2befdeeb25ed149561c3df27d918c1828663c479534ff8d405.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:16567541-2f1d-5cf1-fed5-90d9e0452019",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b1f4f7d6-77e4-1058-5b54-43d316be7ddf",
  "kind": "lemma",
  "lexical_name": "CoPolarizationIn_eq",
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
  "slug": "copolarizationin-eq--82a54472228f8b26c98ea43f",
  "source": {
    "blob": "fe6b77494e4557c498dd20e6af2643b22b14961b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 216,
    "line": 211,
    "path": "GRWTSK/Algebra/LinearAlgebra/CanonicalBilinear/Variantdbdd7f822a479b2befdeeb25ed149561c3df27d918c1828663c479534ff8d405.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:82a54472228f8b26c98ea43fa3a9c8547eb1e0fbe36be376c1ec2970df27f71a",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/CanonicalBilinear/Variantdbdd7f822a479b2befdeeb25ed149561c3df27d918c1828663c479534ff8d405.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b1f4f7d6-77e4-1058-5b54-43d316be7ddf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 211–216.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma CoPolarizationIn_eq (x : P.corootSpan S) :
    P.CoPolarizationIn S x = P.CoPolarization x :=
  P.flip.PolarizationIn_eq S x

/-- A canonical bilinear form on the span of roots in a finite root pairing, taking values in a
commutative ring, where the root-coroot pairing takes values in that ring. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/CanonicalBilinear/Variantdbdd7f822a479b2befdeeb25ed149561c3df27d918c1828663c479534ff8d405.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/CanonicalBilinear/Variantdbdd7f822a479b2befdeeb25ed149561c3df27d918c1828663c479534ff8d405.lean#L211).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe6b77494e4557c498dd20e6af2643b22b14961b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
