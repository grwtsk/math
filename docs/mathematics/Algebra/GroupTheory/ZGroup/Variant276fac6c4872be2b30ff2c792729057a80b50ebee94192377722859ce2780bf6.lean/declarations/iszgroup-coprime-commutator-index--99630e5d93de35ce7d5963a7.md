# IsZGroup.coprime_commutator_index

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:28e2ea73-e7f1-5e6f-f82d-fd433d1a6a67",
  "kind": "theorem",
  "lexical_name": "IsZGroup.coprime_commutator_index",
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
  "slug": "iszgroup-coprime-commutator-index--99630e5d93de35ce7d5963a7",
  "source": {
    "blob": "a00e11ec5c5e5e3d6674727af3274dec1c447d59",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 305,
    "line": 292,
    "path": "GRWTSK/Algebra/GroupTheory/ZGroup/Variant276fac6c4872be2b30ff2c792729057a80b50ebee94192377722859ce2780bf6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:99630e5d93de35ce7d5963a7cbf5451e9a60248a3001207a18462b56b1c92726",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/ZGroup/Variant276fac6c4872be2b30ff2c792729057a80b50ebee94192377722859ce2780bf6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:28e2ea73-e7f1-5e6f-f82d-fd433d1a6a67`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 292–305.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsZGroup.coprime_commutator_index [Finite G] [IsZGroup G] :
    (Nat.card (commutator G)).Coprime (commutator G).index := by
  suffices h : ∀ p, p.Prime → (¬ p ∣ Nat.card (commutator G) ∨ ¬ p ∣ (commutator G).index) by
    contrapose! h
    exact Nat.Prime.not_coprime_iff_dvd.mp h
  intro p hp
  have := Fact.mk hp
  exact Sylow.not_dvd_card_commutator_or_not_dvd_index_commutator default

end Hall

section Classification

/-- An extension of coprime Z-groups is a Z-group. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/ZGroup/Variant276fac6c4872be2b30ff2c792729057a80b50ebee94192377722859ce2780bf6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/ZGroup/Variant276fac6c4872be2b30ff2c792729057a80b50ebee94192377722859ce2780bf6.lean#L292).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a00e11ec5c5e5e3d6674727af3274dec1c447d59` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
