# InvertibleProvenanceBlock

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:32d6c5fb5a375ffd8d8f7edc0f681acaf0214a70e45747aa0756b678e6f39ad4",
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
  "slug": "invertibleprovenanceblock--2016d00c7d41ce0c62760c3a",
  "source": {
    "blob": "d678bbada417d305a83d20390b5589757dd01ee6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 70,
    "path": "GRWTSK/Algebra/LinearAlgebra/InvertibleBlockSchur/Variant08fb77a2c355d72d30dbe44eaac9d713c807a63143291ce4999c1319bdec502c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2016d00c7d41ce0c62760c3a03906e6a806e53c24e3fca77f564f4599c2c50e2",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/InvertibleBlockSchur/Variant08fb77a2c355d72d30dbe44eaac9d713c807a63143291ce4999c1319bdec502c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:32d6c5fb5a375ffd8d8f7edc0f681acaf0214a70e45747aa0756b678e6f39ad4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–82.

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

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/InvertibleBlockSchur/Variant08fb77a2c355d72d30dbe44eaac9d713c807a63143291ce4999c1319bdec502c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/InvertibleBlockSchur/Variant08fb77a2c355d72d30dbe44eaac9d713c807a63143291ce4999c1319bdec502c.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d678bbada417d305a83d20390b5589757dd01ee6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
