# denote_relabel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:adc6ec9c-6757-eef9-0278-e9c94ca1832d",
  "kind": "theorem",
  "lexical_name": "denote_relabel",
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
  "slug": "denote-relabel--55a3168d8747dec349e6fb6b",
  "source": {
    "blob": "ccadd2fc6747aaf925eaa17d84e76933a6b7e7d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 137,
    "line": 114,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Relabel/Variant8a2ef12dce04e37812eb8bed2be264cde16d5b20fbd94bcd80824eae956bb663.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:55a3168d8747dec349e6fb6b463b1a1e987c785b0f19961900df29ae0e3921b8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Relabel/Variant8a2ef12dce04e37812eb8bed2be264cde16d5b20fbd94bcd80824eae956bb663.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:adc6ec9c-6757-eef9-0278-e9c94ca1832d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–137.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem denote_relabel (aig : AIG α) (r : α → β) (start : Nat) {hidx}
    (assign : β → Bool) :
    ⟦aig.relabel r, ⟨start, invert, hidx⟩, assign⟧
      =
    ⟦aig, ⟨start, invert, by rw [← relabel_size_eq_size (r := r)]; omega⟩, (assign ∘ r)⟧ := by
  apply denote_idx_trichotomy
  · intro heq1
    have heq2 := relabel_false heq1
    rw [denote_idx_false heq1]
    rw [denote_idx_false heq2]
  · intro a heq1
    rw [denote_idx_atom heq1]
    rcases relabel_atom heq1 with ⟨x, ⟨hlx, hrx⟩⟩
    rw [hrx] at heq1
    rw [denote_idx_atom hlx]
    simp [hrx]
  · intro lhs rhs heq1
    have heq2 := relabel_gate heq1
    rw [denote_idx_gate heq1]
    rw [denote_idx_gate heq2]
    have := aig.hdag (by rw [← relabel_size_eq_size (r := r)]; omega) heq2
    rw [denote_relabel aig r lhs.gate assign]
    rw [denote_relabel aig r rhs.gate assign]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Relabel/Variant8a2ef12dce04e37812eb8bed2be264cde16d5b20fbd94bcd80824eae956bb663.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Relabel/Variant8a2ef12dce04e37812eb8bed2be264cde16d5b20fbd94bcd80824eae956bb663.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ccadd2fc6747aaf925eaa17d84e76933a6b7e7d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
