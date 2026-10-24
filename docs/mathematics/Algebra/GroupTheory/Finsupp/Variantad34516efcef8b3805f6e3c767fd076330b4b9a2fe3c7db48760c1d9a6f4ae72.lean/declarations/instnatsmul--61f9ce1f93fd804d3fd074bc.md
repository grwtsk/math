# instNatSMul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:189d249e30a260218dc2a82bdc873929e52e0f6fa81b7b6b1026ec6d1ed6f63b",
  "kind": "instance",
  "lexical_name": "instNatSMul",
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
  "slug": "instnatsmul--61f9ce1f93fd804d3fd074bc",
  "source": {
    "blob": "5c0672afa34c34dab46e38a528f557082cbde665",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 117,
    "path": "GRWTSK/Algebra/GroupTheory/Finsupp/Variantad34516efcef8b3805f6e3c767fd076330b4b9a2fe3c7db48760c1d9a6f4ae72.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:61f9ce1f93fd804d3fd074bc26487ddb5bf65dc784e209f33c891610322876d5",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Finsupp/Variantad34516efcef8b3805f6e3c767fd076330b4b9a2fe3c7db48760c1d9a6f4ae72.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:189d249e30a260218dc2a82bdc873929e52e0f6fa81b7b6b1026ec6d1ed6f63b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instNatSMul : SMul ℕ (ι →₀ M) where smul n v := v.mapRange (n • ·) (nsmul_zero _)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Finsupp/Variantad34516efcef8b3805f6e3c767fd076330b4b9a2fe3c7db48760c1d9a6f4ae72.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Finsupp/Variantad34516efcef8b3805f6e3c767fd076330b4b9a2fe3c7db48760c1d9a6f4ae72.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c0672afa34c34dab46e38a528f557082cbde665` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
