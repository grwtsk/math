# subsetProdLex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:205991c3-ec7a-5f9c-0438-b73bc628e648",
  "kind": "theorem",
  "lexical_name": "subsetProdLex",
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
  "slug": "subsetprodlex--d892a9766a7608cc0cbd7d01",
  "source": {
    "blob": "0116f8929ab8b26e62eb1cac7f5987f3f8cf0f8d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 910,
    "line": 880,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFoundedSet/Variantef73acbbd22c602e9a545bb92f953e6efb091bd16660d65e1c31e80c614c6c78.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d892a9766a7608cc0cbd7d016b2dcc826b4c74130f01ce9cd70fbc7c12dfa738",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFoundedSet/Variantef73acbbd22c602e9a545bb92f953e6efb091bd16660d65e1c31e80c614c6c78.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:205991c3-ec7a-5f9c-0438-b73bc628e648`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 880–910.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem subsetProdLex [PartialOrder α] [Preorder β] {s : Set (α ×ₗ β)}
    (hα : ((fun (x : α ×ₗ β) => (ofLex x).1) '' s).IsPWO)
    (hβ : ∀ a, {y | toLex (a, y) ∈ s}.IsPWO) : s.IsPWO := by
  rw [IsPWO, partiallyWellOrderedOn_iff_exists_lt]
  intro f hf
  rw [isPWO_iff_exists_monotone_subseq] at hα
  obtain ⟨g, hg⟩ : ∃ (g : (ℕ ↪o ℕ)), Monotone fun n => (ofLex f (g n)).1 :=
    hα (fun n => (ofLex f n).1) (fun k => mem_image_of_mem (fun x => (ofLex x).1) (hf k))
  have hhg : ∀ n, (ofLex f (g 0)).1 ≤ (ofLex f (g n)).1 := fun n => hg n.zero_le
  by_cases! hc : ∃ n, (ofLex f (g 0)).1 < (ofLex f (g n)).1
  · obtain ⟨n, hn⟩ := hc
    use (g 0), (g n)
    constructor
    · by_contra hx
      simp_all
    · exact Prod.Lex.toLex_le_toLex.mpr <| .inl hn
  · have hhc : ∀ n, (ofLex f (g 0)).1 = (ofLex f (g n)).1 := by
      intro n
      exact (hhg n).eq_of_not_lt (hc n)
    obtain ⟨g', hg'⟩ : ∃ g' : ℕ ↪o ℕ, Monotone ((fun n ↦ (ofLex f (g (g' n))).2)) := by
      simp_rw [isPWO_iff_exists_monotone_subseq] at hβ
      apply hβ (ofLex f (g 0)).1 fun n ↦ (ofLex f (g n)).2
      intro n
      rw [hhc n]
      simpa using! hf _
    use (g (g' 0)), (g (g' 1))
    suffices (f (g (g' 0))) ≤ (f (g (g' 1))) by simpa
    · refine Prod.Lex.toLex_le_toLex.mpr <| .inr ⟨?_, ?_⟩
      · exact (hhc (g' 0)).symm.trans (hhc (g' 1))
      · exact hg' (Nat.zero_le 1)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFoundedSet/Variantef73acbbd22c602e9a545bb92f953e6efb091bd16660d65e1c31e80c614c6c78.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFoundedSet/Variantef73acbbd22c602e9a545bb92f953e6efb091bd16660d65e1c31e80c614c6c78.lean#L880).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0116f8929ab8b26e62eb1cac7f5987f3f8cf0f8d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
