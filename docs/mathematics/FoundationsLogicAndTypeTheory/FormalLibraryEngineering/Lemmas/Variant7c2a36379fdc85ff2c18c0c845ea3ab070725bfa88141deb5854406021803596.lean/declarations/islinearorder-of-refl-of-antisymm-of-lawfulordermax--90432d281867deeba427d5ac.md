# IsLinearOrder.of_refl_of_antisymm_of_lawfulOrderMax

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:aa177394-6fbb-9633-e4ca-16e52189bfe5",
  "kind": "theorem",
  "lexical_name": "IsLinearOrder.of_refl_of_antisymm_of_lawfulOrderMax",
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
  "slug": "islinearorder-of-refl-of-antisymm-of-lawfulordermax--90432d281867deeba427d5ac",
  "source": {
    "blob": "9fe823b210a027eebf877392112a4c42cb1876e5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 525,
    "line": 506,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant7c2a36379fdc85ff2c18c0c845ea3ab070725bfa88141deb5854406021803596.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:90432d281867deeba427d5acabc9dc74f360d20da99a348109e412259be0c1ba",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant7c2a36379fdc85ff2c18c0c845ea3ab070725bfa88141deb5854406021803596.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aa177394-6fbb-9633-e4ca-16e52189bfe5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 506–525.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public theorem IsLinearOrder.of_refl_of_antisymm_of_lawfulOrderMax {α : Type u} [LE α] [Max α]
    [Refl (α := α) (· ≤ ·)] [Antisymm (α := α) (· ≤ ·)] [LawfulOrderMax α] :
    IsLinearOrder α := by
  apply IsLinearOrder.of_le
  · infer_instance
  · constructor
    intro a b c hab hbc
    have : b = max a b := by
      apply le_antisymm
      · exact right_le_max
      · rw [max_le_iff]
        exact ⟨hab, le_refl b⟩
    rw [this, max_le_iff] at hbc
    exact hbc.1
  · constructor
    intro a b
    cases max_eq_or (a := a) (b := b) <;> rename_i h
    · exact Or.inr (h ▸ right_le_max)
    · exact Or.inl (h ▸ left_le_max)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant7c2a36379fdc85ff2c18c0c845ea3ab070725bfa88141deb5854406021803596.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant7c2a36379fdc85ff2c18c0c845ea3ab070725bfa88141deb5854406021803596.lean#L506).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9fe823b210a027eebf877392112a4c42cb1876e5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
