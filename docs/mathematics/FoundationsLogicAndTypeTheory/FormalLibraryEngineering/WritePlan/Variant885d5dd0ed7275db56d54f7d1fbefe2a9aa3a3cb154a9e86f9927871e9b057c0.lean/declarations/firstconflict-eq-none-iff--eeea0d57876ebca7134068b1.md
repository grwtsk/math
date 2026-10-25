# firstConflict_eq_none_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c82675f3-47d1-e246-5468-297459b32eb4",
  "kind": "theorem",
  "lexical_name": "firstConflict_eq_none_iff",
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
  "slug": "firstconflict-eq-none-iff--eeea0d57876ebca7134068b1",
  "source": {
    "blob": "db40b7466b3faf5c011f7692cdb187cc8311c259",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 171,
    "line": 144,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WritePlan/Variant885d5dd0ed7275db56d54f7d1fbefe2a9aa3a3cb154a9e86f9927871e9b057c0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eeea0d57876ebca7134068b11d79a5e0c88f04070045fb8a9c1e5eee9a7801eb",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WritePlan/Variant885d5dd0ed7275db56d54f7d1fbefe2a9aa3a3cb154a9e86f9927871e9b057c0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c82675f3-47d1-e246-5468-297459b32eb4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 144–171.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem firstConflict_eq_none_iff
    (targets : List WriteTarget) :
    firstConflict targets = none ↔ PairwiseCompatible targets := by
  induction targets with
  | nil =>
      simp [firstConflict, PairwiseCompatible]
  | cons a rest ih =>
      constructor
      · intro hfc
        unfold firstConflict at hfc
        cases hconf : hasConflictWith a rest with
        | none =>
            simp [hconf] at hfc
            exact (pairwise_cons_iff a rest).mpr
              ⟨(hasConflictWith_eq_none_iff a rest).mp hconf, ih.mp hfc⟩
        | some c =>
            simp [hconf] at hfc
      · intro hp
        have ha : ∀ b, b ∈ rest → CompatibleTargets a b :=
          (pairwise_cons_iff a rest).mp hp |>.1
        have hrest : PairwiseCompatible rest :=
          (pairwise_cons_iff a rest).mp hp |>.2
        have hconf : hasConflictWith a rest = none :=
          (hasConflictWith_eq_none_iff a rest).mpr ha
        have hfc_rest : firstConflict rest = none := ih.mpr hrest
        unfold firstConflict
        rw [hconf, hfc_rest]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WritePlan/Variant885d5dd0ed7275db56d54f7d1fbefe2a9aa3a3cb154a9e86f9927871e9b057c0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WritePlan/Variant885d5dd0ed7275db56d54f7d1fbefe2a9aa3a3cb154a9e86f9927871e9b057c0.lean#L144).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `db40b7466b3faf5c011f7692cdb187cc8311c259` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
