# rotationUnit_commute

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1eb234cd-ec06-3dd9-c683-af7f8fbc894f",
  "kind": "theorem",
  "lexical_name": "rotationUnit_commute",
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
  "slug": "rotationunit-commute--54e2b2e45008360938e9b9e2",
  "source": {
    "blob": "c74145f19ca6fdc9034dc773c98eba153dbf70b6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 107,
    "path": "GRWTSK/Algebra/LinearAlgebra/CommonJ.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:54e2b2e45008360938e9b9e26f04617d225b1e9ebd7487f8626a33396a6ceeef",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/CommonJ__SourceOccurrence449540949f6d5f0fbc37881d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1eb234cd-ec06-3dd9-c683-af7f8fbc894f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rotationUnit_commute {R : Type u} [CommRing R] (c₂ s₂ c₁ s₁ : R)
    (h₂ : c₂ ^ 2 + s₂ ^ 2 = 1) (h₁ : c₁ ^ 2 + s₁ ^ 2 = 1) :
    Commute (rotationUnit c₂ s₂ h₂) (rotationUnit c₁ s₁ h₁) := by
  apply Units.ext
  exact (rotationMatrix_commute c₂ s₂ c₁ s₁).eq




/-- The common-J matrix really is the stated linear combination of identity and J. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/LinearAlgebra/CommonJ__SourceOccurrence449540949f6d5f0fbc37881d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/CommonJ.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c74145f19ca6fdc9034dc773c98eba153dbf70b6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
