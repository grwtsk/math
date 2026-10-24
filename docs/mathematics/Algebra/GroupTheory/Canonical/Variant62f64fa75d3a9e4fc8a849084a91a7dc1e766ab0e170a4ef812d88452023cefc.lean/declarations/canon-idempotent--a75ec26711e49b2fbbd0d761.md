# canon_idempotent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d538d60a-e5e9-a3e4-90df-46e92e37a01c",
  "kind": "theorem",
  "lexical_name": "canon_idempotent",
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
  "slug": "canon-idempotent--a75ec26711e49b2fbbd0d761",
  "source": {
    "blob": "e4df12f10fac8ff549e2b7f1f952cf7717c05150",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 67,
    "path": "GRWTSK/Algebra/GroupTheory/Canonical/Variant62f64fa75d3a9e4fc8a849084a91a7dc1e766ab0e170a4ef812d88452023cefc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a75ec26711e49b2fbbd0d761039534112a81640304e81d0bfa8a7b7026c6fc93",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Canonical/Variant62f64fa75d3a9e4fc8a849084a91a7dc1e766ab0e170a4ef812d88452023cefc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d538d60a-e5e9-a3e4-90df-46e92e37a01c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem canon_idempotent
    {G X : Type}
    [Group G]
    [Fintype G]
    [MulAction G X]
    (canonicalizer : FiniteDataCanonicalizer G X)
    (value : X) :
    canonicalizer.canonicalize
        (canonicalizer.canonicalize value) =
      canonicalizer.canonicalize value :=
  canonicalizer.idempotent value

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Canonical/Variant62f64fa75d3a9e4fc8a849084a91a7dc1e766ab0e170a4ef812d88452023cefc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Canonical/Variant62f64fa75d3a9e4fc8a849084a91a7dc1e766ab0e170a4ef812d88452023cefc.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e4df12f10fac8ff549e2b7f1f952cf7717c05150` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
