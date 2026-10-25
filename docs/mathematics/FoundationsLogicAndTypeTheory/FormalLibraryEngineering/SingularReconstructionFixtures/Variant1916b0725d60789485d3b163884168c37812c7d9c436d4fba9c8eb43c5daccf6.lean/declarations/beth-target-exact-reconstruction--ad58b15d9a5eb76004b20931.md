# beth_target_exact_reconstruction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:408f8dde-1261-a4b0-86a6-d46c62962406",
  "kind": "theorem",
  "lexical_name": "beth_target_exact_reconstruction",
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
  "slug": "beth-target-exact-reconstruction--ad58b15d9a5eb76004b20931",
  "source": {
    "blob": "28657971d137e0f295531485863a81af3795f768",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 52,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SingularReconstructionFixtures/Variant1916b0725d60789485d3b163884168c37812c7d9c436d4fba9c8eb43c5daccf6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ad58b15d9a5eb76004b20931bdf88aead1a1d2ace3f774d336c8b1515519bae6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SingularReconstructionFixtures/Variant1916b0725d60789485d3b163884168c37812c7d9c436d4fba9c8eb43c5daccf6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:408f8dde-1261-a4b0-86a6-d46c62962406`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem beth_target_exact_reconstruction :
    singularCoverThreshold (Cardinal.beth (Ordinal.omega0 : Ordinal.{0})) ℵ₀ <
        Cardinal.beth (Ordinal.omega0 : Ordinal.{0}) ∧
      ∃ (I : Type) (C : I → Set BethTarget),
        #I < singularCoverThreshold (Cardinal.beth (Ordinal.omega0 : Ordinal.{0})) ℵ₀ ∧
        (∀ i, C i ∈ downwardClosure bethSmallFamily) ∧ (univ : Set BethTarget) = ⋃ i, C i := by
  apply singular_exact_reconstruction bethSmallFamily (Cardinal.beth Ordinal.omega0) ℵ₀
    beth_omega_strongLimit beth_omega_uncountable beth_omega_singular beth_omega_uncountable
    bethSmallFamily_covers_small
  rw [Cardinal.mk_univ, bethFiber_sigma_card]

/-- The constructed nested family is already countable, hence bounded by the
ambient singular cardinal; every one of its blocks is strictly smaller. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SingularReconstructionFixtures/Variant1916b0725d60789485d3b163884168c37812c7d9c436d4fba9c8eb43c5daccf6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SingularReconstructionFixtures/Variant1916b0725d60789485d3b163884168c37812c7d9c436d4fba9c8eb43c5daccf6.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `28657971d137e0f295531485863a81af3795f768` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
