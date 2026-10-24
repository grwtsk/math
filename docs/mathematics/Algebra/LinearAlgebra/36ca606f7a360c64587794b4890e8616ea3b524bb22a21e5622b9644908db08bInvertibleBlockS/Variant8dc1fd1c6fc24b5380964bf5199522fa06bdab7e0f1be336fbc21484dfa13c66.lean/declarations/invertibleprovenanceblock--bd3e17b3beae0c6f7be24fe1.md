# InvertibleProvenanceBlock

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2232708f9ddbbc0a0ae1cba74d0bbe1329a806623312bf54219d36d4ec78984d",
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
  "slug": "invertibleprovenanceblock--bd3e17b3beae0c6f7be24fe1",
  "source": {
    "blob": "ebbd8cd1553977bdaf725e268ce2610f546a1076",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 70,
    "path": "GRWTSK/Algebra/LinearAlgebra/36ca606f7a360c64587794b4890e8616ea3b524bb22a21e5622b9644908db08bInvertibleBlockS/Variant8dc1fd1c6fc24b5380964bf5199522fa06bdab7e0f1be336fbc21484dfa13c66.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bd3e17b3beae0c6f7be24fe1100e29a6f5b0425bc49cfabf3433081ccba7a6c6",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/36ca606f7a360c64587794b4890e8616ea3b524bb22a21e5622b9644908db08bInvertibleBlockS/Variant8dc1fd1c6fc24b5380964bf5199522fa06bdab7e0f1be336fbc21484dfa13c66.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2232708f9ddbbc0a0ae1cba74d0bbe1329a806623312bf54219d36d4ec78984d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure InvertibleProvenanceBlock (G : PositiveForm (P × U)) where
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

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/36ca606f7a360c64587794b4890e8616ea3b524bb22a21e5622b9644908db08bInvertibleBlockS/Variant8dc1fd1c6fc24b5380964bf5199522fa06bdab7e0f1be336fbc21484dfa13c66.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/36ca606f7a360c64587794b4890e8616ea3b524bb22a21e5622b9644908db08bInvertibleBlockS/Variant8dc1fd1c6fc24b5380964bf5199522fa06bdab7e0f1be336fbc21484dfa13c66.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ebbd8cd1553977bdaf725e268ce2610f546a1076` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
