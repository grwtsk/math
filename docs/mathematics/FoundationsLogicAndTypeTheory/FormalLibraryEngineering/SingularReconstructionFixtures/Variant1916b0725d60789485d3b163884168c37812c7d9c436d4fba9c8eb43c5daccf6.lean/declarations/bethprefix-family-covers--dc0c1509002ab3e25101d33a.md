# bethPrefix_family_covers

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:956560b0-226c-9f89-0a70-63a55ec0cc7f",
  "kind": "theorem",
  "lexical_name": "bethPrefix_family_covers",
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
  "slug": "bethprefix-family-covers--dc0c1509002ab3e25101d33a",
  "source": {
    "blob": "28657971d137e0f295531485863a81af3795f768",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 77,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SingularReconstructionFixtures/Variant1916b0725d60789485d3b163884168c37812c7d9c436d4fba9c8eb43c5daccf6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dc0c1509002ab3e25101d33ad822f52bf1411a2c13cb0ed928c9232201519419",
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

Occurrence: `result:956560b0-226c-9f89-0a70-63a55ec0cc7f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bethPrefix_family_covers (A : Set BethAmbient) :
    ∃ Q : Set (Set BethAmbient), Q ⊆ Set.range bethPrefix ∧
      #Q < Order.succ (ℵ₀ : Cardinal.{0}) ∧ A ⊆ ⋃₀ Q := by
  refine ⟨Set.range bethPrefix, Set.Subset.rfl, ?_, ?_⟩
  · exact Cardinal.mk_range_le.trans_lt
      (by rw [Cardinal.mk_nat]; exact Order.lt_succ ℵ₀)
  · intro x _
    exact mem_sUnion.mpr ⟨bethPrefix x.1, Set.mem_range_self x.1,
      by change x.1 ≤ x.1; exact le_rfl⟩

/-- A singular reconstruction with a supplied small catalogue, constructed
local covers, actual source-block restrictions, and proven small fragments. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SingularReconstructionFixtures/Variant1916b0725d60789485d3b163884168c37812c7d9c436d4fba9c8eb43c5daccf6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SingularReconstructionFixtures/Variant1916b0725d60789485d3b163884168c37812c7d9c436d4fba9c8eb43c5daccf6.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `28657971d137e0f295531485863a81af3795f768` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
