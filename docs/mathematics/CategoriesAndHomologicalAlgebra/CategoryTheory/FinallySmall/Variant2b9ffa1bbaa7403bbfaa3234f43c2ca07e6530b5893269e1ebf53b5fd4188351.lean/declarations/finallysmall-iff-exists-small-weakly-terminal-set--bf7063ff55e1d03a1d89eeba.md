# finallySmall_iff_exists_small_weakly_terminal_set

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3f60c829-dac7-a067-ebf1-54ce92262d2c",
  "kind": "theorem",
  "lexical_name": "finallySmall_iff_exists_small_weakly_terminal_set",
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
  "slug": "finallysmall-iff-exists-small-weakly-terminal-set--bf7063ff55e1d03a1d89eeba",
  "source": {
    "blob": "423a3ea36691f36e934d2842eaa662888addaa89",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 171,
    "line": 159,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FinallySmall/Variant2b9ffa1bbaa7403bbfaa3234f43c2ca07e6530b5893269e1ebf53b5fd4188351.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bf7063ff55e1d03a1d89eebaacf1680828c6f4a23e5037f1efed476335c48797",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FinallySmall/Variant2b9ffa1bbaa7403bbfaa3234f43c2ca07e6530b5893269e1ebf53b5fd4188351.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3f60c829-dac7-a067-ebf1-54ce92262d2c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 159–171.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finallySmall_iff_exists_small_weakly_terminal_set [IsFilteredOrEmpty J] :
    FinallySmall.{v} J ↔ ∃ (s : Set J) (_ : Small.{v} s), ∀ i, ∃ j ∈ s, Nonempty (i ⟶ j) := by
  refine ⟨fun _ => FinallySmall.exists_small_weakly_terminal_set _, fun h => ?_⟩
  rcases h with ⟨s, hs, hs'⟩
  exact finallySmall_of_small_weakly_terminal_set s hs'

end WeaklyTerminal

section WeaklyInitial

variable (J : Type u) [Category.{v} J]

/-- The converse is true if `J` is cofiltered, see `initiallySmall_of_small_weakly_initial_set`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FinallySmall/Variant2b9ffa1bbaa7403bbfaa3234f43c2ca07e6530b5893269e1ebf53b5fd4188351.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FinallySmall/Variant2b9ffa1bbaa7403bbfaa3234f43c2ca07e6530b5893269e1ebf53b5fd4188351.lean#L159).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `423a3ea36691f36e934d2842eaa662888addaa89` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
