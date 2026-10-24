# exponent_relator_identity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:97e30214-40dd-be79-e0d7-f364cdd27940",
  "kind": "theorem",
  "lexical_name": "exponent_relator_identity",
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
  "slug": "exponent-relator-identity--4ee96f18412458b69fbb7207",
  "source": {
    "blob": "64ce6f9da81e1a9b707c842322267b4c2b3a909e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 82,
    "path": "GRWTSK/Algebra/LinearAlgebra/BraidQuotientAttempt03/Variant27295accf967689f4aeb7bf25cc129cb2c61e8877d8b3b9a85d10cdec6a936fc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4ee96f18412458b69fbb720774afd75c42414d4e6f8cee696766e741b5d612e5",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/BraidQuotientAttempt03/Variant27295accf967689f4aeb7bf25cc129cb2c61e8877d8b3b9a85d10cdec6a936fc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:97e30214-40dd-be79-e0d7-f364cdd27940`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exponent_relator_identity :
    ∀ r ∈ braidRelations, FreeGroup.lift generatorExponent r = 1 := by
  intro r hr
  change r=braidRelator at hr
  subst r
  simp [braidRelator,generatorExponent]

/-- The actual exponent homomorphism on the presented group, not a word-count premise. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/BraidQuotientAttempt03/Variant27295accf967689f4aeb7bf25cc129cb2c61e8877d8b3b9a85d10cdec6a936fc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/BraidQuotientAttempt03/Variant27295accf967689f4aeb7bf25cc129cb2c61e8877d8b3b9a85d10cdec6a936fc.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `64ce6f9da81e1a9b707c842322267b4c2b3a909e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
