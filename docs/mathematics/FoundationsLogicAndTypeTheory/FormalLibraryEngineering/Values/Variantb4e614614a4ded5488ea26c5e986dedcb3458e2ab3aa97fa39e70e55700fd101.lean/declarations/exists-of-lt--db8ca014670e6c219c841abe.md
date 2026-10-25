# exists_of_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bb71a146-eafc-baad-8a8c-e9da1ea1e3b8",
  "kind": "theorem",
  "lexical_name": "exists_of_lt",
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
  "slug": "exists-of-lt--db8ca014670e6c219c841abe",
  "source": {
    "blob": "25ef234369ad8eaeb1a058c78315e6f8bece3de9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 498,
    "line": 489,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Values/Variantb4e614614a4ded5488ea26c5e986dedcb3458e2ab3aa97fa39e70e55700fd101.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:db8ca014670e6c219c841abe5f2707760b3eb94c2a827142158fb75087f1c506",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Values/Variantb4e614614a4ded5488ea26c5e986dedcb3458e2ab3aa97fa39e70e55700fd101.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bb71a146-eafc-baad-8a8c-e9da1ea1e3b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 489–498.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_of_lt (hn : n < Γ.length) : ∃ A, Lookup Γ n A := by
  induction Γ generalizing n with
  | nil => exact False.elim (Nat.not_lt_zero _ hn)
  | cons A Γ ih =>
    cases n with
    | zero => exact ⟨_, .zero A Γ⟩
    | succ n =>
      obtain ⟨B, hb⟩ := ih (Nat.lt_of_succ_lt_succ hn)
      exact ⟨_, .succ A hb⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Values/Variantb4e614614a4ded5488ea26c5e986dedcb3458e2ab3aa97fa39e70e55700fd101.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Values/Variantb4e614614a4ded5488ea26c5e986dedcb3458e2ab3aa97fa39e70e55700fd101.lean#L489).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `25ef234369ad8eaeb1a058c78315e6f8bece3de9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
