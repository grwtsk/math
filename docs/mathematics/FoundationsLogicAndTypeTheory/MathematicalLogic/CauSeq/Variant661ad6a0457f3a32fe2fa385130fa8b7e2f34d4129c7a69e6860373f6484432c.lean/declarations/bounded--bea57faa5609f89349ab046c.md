# bounded

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2cb1d825-af78-4ced-197a-525ca9d50872",
  "kind": "theorem",
  "lexical_name": "bounded",
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
  "slug": "bounded--bea57faa5609f89349ab046c",
  "source": {
    "blob": "6842220056ddc6363b225c03bc1c3d4cd4c26bb3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 204,
    "line": 189,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/CauSeq/Variant661ad6a0457f3a32fe2fa385130fa8b7e2f34d4129c7a69e6860373f6484432c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bea57faa5609f89349ab046cfe95d5a84c2f13d0c5709a7258794d82eedbf8ff",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/CauSeq/Variant661ad6a0457f3a32fe2fa385130fa8b7e2f34d4129c7a69e6860373f6484432c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2cb1d825-af78-4ced-197a-525ca9d50872`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 189–204.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bounded (f : CauSeq β abv) : ∃ r, ∀ i, abv (f i) < r := by
  cases' f.cauchy zero_lt_one with i h
  set R : ℕ → α := @Nat.rec (fun _ => α) (abv (f 0)) fun i c => max c (abv (f i.succ)) with hR
  have : ∀ i, ∀ j ≤ i, abv (f j) ≤ R i := by
    refine' Nat.rec (by simp [hR]) _
    rintro i hi j (rfl | hj)
    · simp
    exact (hi j hj).trans (le_max_left _ _)
  refine' ⟨R i + 1, fun j => _⟩
  cases' lt_or_le j i with ij ij
  · exact lt_of_le_of_lt (this i _ (le_of_lt ij)) (lt_add_one _)
  · have := lt_of_le_of_lt (abv_add abv _ _) (add_lt_add_of_le_of_lt (this i _ le_rfl) (h _ ij))
    rw [add_sub, add_comm] at this
    simpa using this
#align cau_seq.bounded CauSeq.bounded

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/CauSeq/Variant661ad6a0457f3a32fe2fa385130fa8b7e2f34d4129c7a69e6860373f6484432c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/CauSeq/Variant661ad6a0457f3a32fe2fa385130fa8b7e2f34d4129c7a69e6860373f6484432c.lean#L189).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6842220056ddc6363b225c03bc1c3d4cd4c26bb3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
