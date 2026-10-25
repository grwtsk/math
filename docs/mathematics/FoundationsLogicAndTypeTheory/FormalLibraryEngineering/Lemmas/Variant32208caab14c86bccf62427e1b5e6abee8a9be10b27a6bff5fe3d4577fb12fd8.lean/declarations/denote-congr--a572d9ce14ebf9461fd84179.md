# denote_congr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:15db7966-487e-1236-0e2b-81be8fda28f0",
  "kind": "theorem",
  "lexical_name": "denote_congr",
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
  "slug": "denote-congr--a572d9ce14ebf9461fd84179",
  "source": {
    "blob": "e61bfb751b1e3bd4145be4d3ffe29c903fcc608d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 309,
    "line": 294,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant32208caab14c86bccf62427e1b5e6abee8a9be10b27a6bff5fe3d4577fb12fd8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a572d9ce14ebf9461fd8417926bff397b9af03f7c27bca545993e416846dd2d8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant32208caab14c86bccf62427e1b5e6abee8a9be10b27a6bff5fe3d4577fb12fd8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:15db7966-487e-1236-0e2b-81be8fda28f0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 294–309.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem denote_congr (assign1 assign2 : α → Bool) (aig : AIG α) (idx : Nat) (invert : Bool)
    (hidx : idx < aig.decls.size) (h : ∀ a, a ∈ aig → assign1 a = assign2 a) :
    ⟦aig, ⟨idx, invert, hidx⟩, assign1⟧ = ⟦aig, ⟨idx, invert, hidx⟩, assign2⟧ := by
  apply denote_idx_trichotomy
  · intro heq
    simp [denote_idx_false heq]
  · intro a heq
    simp only [denote_idx_atom heq, Bool.bne_left_inj]
    apply h
    simp [mem_def, ← heq]
  · intro lhs rhs heq
    simp only [denote_idx_gate heq]
    have := aig.hdag hidx heq
    rw [denote_congr assign1 assign2 aig lhs.gate _ (by omega) h]
    rw [denote_congr assign1 assign2 aig rhs.gate _ (by omega) h]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant32208caab14c86bccf62427e1b5e6abee8a9be10b27a6bff5fe3d4577fb12fd8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant32208caab14c86bccf62427e1b5e6abee8a9be10b27a6bff5fe3d4577fb12fd8.lean#L294).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e61bfb751b1e3bd4145be4d3ffe29c903fcc608d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
