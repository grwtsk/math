# isSolvable_iff_commutator_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "843bd713510c1ed2f04eb357450a0be1cabafe8e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 216,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cc/ccb3e754c6034965a9ad851f4f6b48bbd62791816b766aba4d09ed99997c486d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:05da05bb-e31c-69c5-d113-7b3c1a9de606",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a39176fc-ef04-dc0a-604e-5fb8de2f59ef",
  "kind": "theorem",
  "lexical_name": "isSolvable_iff_commutator_lt",
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
  "slug": "issolvable-iff-commutator-lt--bac5b40f3b09123596383d67",
  "source": {
    "blob": "843bd713510c1ed2f04eb357450a0be1cabafe8e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 237,
    "line": 216,
    "path": "GRWTSK/Algebra/GroupTheory/Solvable/Variantccb3e754c6034965a9ad851f4f6b48bbd62791816b766aba4d09ed99997c486d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bac5b40f3b09123596383d6738f25a4f3daa0a07a0594117ac9438d26ea4f8c1",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Solvable/Variantccb3e754c6034965a9ad851f4f6b48bbd62791816b766aba4d09ed99997c486d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a39176fc-ef04-dc0a-604e-5fb8de2f59ef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 216–237.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isSolvable_iff_commutator_lt [WellFoundedLT (Subgroup G)] :
    IsSolvable G ↔ ∀ H : Subgroup G, H ≠ ⊥ → ⁅H, H⁆ < H := by
  refine ⟨fun _ _ ↦ IsSolvable.commutator_lt_of_ne_bot, fun h ↦ ?_⟩
  suffices h : IsSolvable (⊤ : Subgroup G) from
    isSolvable_of_surjective (MonoidHom.range_eq_top.mp (range_subtype ⊤))
  induction (⊤ : Subgroup G) using WellFoundedLT.induction with | ind H hH
  rcases eq_or_ne H ⊥ with rfl | h'
  · infer_instance
  · obtain ⟨n, hn⟩ := hH ⁅H, H⁆ (h H h')
    use n + 1
    rw [← map_subtype_inj, Subgroup.map_bot] at hn ⊢
    rw [← hn]
    clear hn
    induction n with
    | zero =>
      rw [derivedSeries_succ, derivedSeries_zero, derivedSeries_zero, map_commutator,
        Subgroup.map_top, Subgroup.map_top, range_subtype, range_subtype]
    | succ n ih => rw [derivedSeries_succ, map_commutator, ih, derivedSeries_succ, map_commutator]

@[deprecated (since := "2026-07-16")]
alias _root_.isSolvable_iff_commutator_lt := Group.isSolvable_iff_commutator_lt

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Solvable/Variantccb3e754c6034965a9ad851f4f6b48bbd62791816b766aba4d09ed99997c486d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Solvable/Variantccb3e754c6034965a9ad851f4f6b48bbd62791816b766aba4d09ed99997c486d.lean#L216).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `843bd713510c1ed2f04eb357450a0be1cabafe8e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
