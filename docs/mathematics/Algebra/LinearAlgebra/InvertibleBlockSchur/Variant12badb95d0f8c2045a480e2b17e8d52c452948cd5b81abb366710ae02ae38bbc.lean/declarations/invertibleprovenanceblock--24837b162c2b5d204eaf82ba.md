# InvertibleProvenanceBlock

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:de956c23fdd3deb93b29826e38c3ee776834520db24238196b379a8747f4cb83",
  "kind": "structure",
  "lexical_name": "InvertibleProvenanceBlock",
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
  "slug": "invertibleprovenanceblock--24837b162c2b5d204eaf82ba",
  "source": {
    "blob": "798b90a41744d33835954b33a351d2927ff96e93",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 62,
    "path": "GRWTSK/Algebra/LinearAlgebra/InvertibleBlockSchur/Variant12badb95d0f8c2045a480e2b17e8d52c452948cd5b81abb366710ae02ae38bbc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:24837b162c2b5d204eaf82ba521f8acd3f7334c4be0a631685dab23ddbb532d5",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/InvertibleBlockSchur/Variant12badb95d0f8c2045a480e2b17e8d52c452948cd5b81abb366710ae02ae38bbc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:de956c23fdd3deb93b29826e38c3ee776834520db24238196b379a8747f4cb83`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure InvertibleProvenanceBlock (G : PositiveForm (P × U)) where
  /-- Linear equivalence from provenance vectors to their Gram covectors. -/
  gramEquiv : P ≃ₗ[ℝ] (P →ₗ[ℝ] ℝ)
  gramEquiv_apply : ∀ p q,
    gramEquiv p q =
      G.form (provenanceInclusion q) (provenanceInclusion p)

namespace InvertibleProvenanceBlock

variable {G : PositiveForm (P × U)}

/-- The canonical least-squares provenance correction obtained by solving the
Gram normal equation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/InvertibleBlockSchur/Variant12badb95d0f8c2045a480e2b17e8d52c452948cd5b81abb366710ae02ae38bbc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/InvertibleBlockSchur/Variant12badb95d0f8c2045a480e2b17e8d52c452948cd5b81abb366710ae02ae38bbc.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `798b90a41744d33835954b33a351d2927ff96e93` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
