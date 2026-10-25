# pairwise_cons_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1fb628f8-0b4f-0a89-39a2-b6add120ceda",
  "kind": "theorem",
  "lexical_name": "pairwise_cons_iff",
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
  "slug": "pairwise-cons-iff--8089820c5ac3440c6542067a",
  "source": {
    "blob": "db40b7466b3faf5c011f7692cdb187cc8311c259",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 143,
    "line": 116,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WritePlan/Variant885d5dd0ed7275db56d54f7d1fbefe2a9aa3a3cb154a9e86f9927871e9b057c0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8089820c5ac3440c6542067a1a30553bf13bc1b16656b96391ab0f8c69e466a8",
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

Occurrence: `result:1fb628f8-0b4f-0a89-39a2-b6add120ceda`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–143.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem pairwise_cons_iff
    (a : WriteTarget)
    (rest : List WriteTarget) :
    PairwiseCompatible (a :: rest) ↔
      (∀ b, b ∈ rest → CompatibleTargets a b) ∧
        PairwiseCompatible rest := by
  constructor
  · intro h
    constructor
    · intro b hb
      exact h a (by simp) b (by simp [hb])
    · intro b hb c hc
      exact h b (by simp [hb]) c (by simp [hc])
  · intro h
    rcases h with ⟨ha, hrest⟩
    intro b hb c hc
    simp only [List.mem_cons] at hb hc
    rcases hb with hb_eq | hb_rest
    · subst b
      rcases hc with hc_eq | hc_rest
      · subst c
        exact compatible_self a
      · exact ha c hc_rest
    · rcases hc with hc_eq | hc_rest
      · subst c
        exact compatibleTargets_symm (ha b hb_rest)
      · exact hrest b hb_rest c hc_rest

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WritePlan/Variant885d5dd0ed7275db56d54f7d1fbefe2a9aa3a3cb154a9e86f9927871e9b057c0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WritePlan/Variant885d5dd0ed7275db56d54f7d1fbefe2a9aa3a3cb154a9e86f9927871e9b057c0.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `db40b7466b3faf5c011f7692cdb187cc8311c259` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
