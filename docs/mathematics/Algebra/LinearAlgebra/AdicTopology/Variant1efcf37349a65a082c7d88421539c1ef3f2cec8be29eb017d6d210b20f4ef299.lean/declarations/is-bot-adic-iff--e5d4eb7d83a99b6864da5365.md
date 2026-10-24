# is_bot_adic_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8bba3285-2d70-6371-eea5-3c698b3f91d9",
  "kind": "theorem",
  "lexical_name": "is_bot_adic_iff",
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
  "slug": "is-bot-adic-iff--e5d4eb7d83a99b6864da5365",
  "source": {
    "blob": "2d8fefa289ed042b553c048b55efc1a09351f7f2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 217,
    "line": 201,
    "path": "GRWTSK/Algebra/LinearAlgebra/AdicTopology/Variant1efcf37349a65a082c7d88421539c1ef3f2cec8be29eb017d6d210b20f4ef299.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e5d4eb7d83a99b6864da536532752ac10c94cfce235a20db55d03531485b481a",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/AdicTopology/Variant1efcf37349a65a082c7d88421539c1ef3f2cec8be29eb017d6d210b20f4ef299.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8bba3285-2d70-6371-eea5-3c698b3f91d9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 201–217.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem is_bot_adic_iff {A : Type*} [CommRing A] [TopologicalSpace A] [IsTopologicalRing A] :
    IsAdic (⊥ : Ideal A) ↔ DiscreteTopology A := by
  rw [isAdic_iff]
  constructor
  · rintro ⟨h, _h'⟩
    rw [discreteTopology_iff_isOpen_singleton_zero]
    simpa using h 1
  · intros
    constructor
    · simp
    · intro U U_nhds
      use 1
      simp [mem_of_mem_nhds U_nhds]

end IsAdic

/-- The ring `R` is equipped with a preferred ideal. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/AdicTopology/Variant1efcf37349a65a082c7d88421539c1ef3f2cec8be29eb017d6d210b20f4ef299.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/AdicTopology/Variant1efcf37349a65a082c7d88421539c1ef3f2cec8be29eb017d6d210b20f4ef299.lean#L201).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2d8fefa289ed042b553c048b55efc1a09351f7f2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
