# apply_eq_of_line_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3eea7e4bd418a2e1ae42665cdf464a2230815e33",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 790,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8a/8a1b825a290fa3fe872eebffb11772fd16fd80ba9ab328484ff9ae14691b7366.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6e5f911e-4268-4acd-2e0a-126e18ce1820",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:95aafb37-b963-12ec-317f-a8aa2107c505",
  "kind": "theorem",
  "lexical_name": "apply_eq_of_line_eq",
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
  "slug": "apply-eq-of-line-eq--2957ed45cca2c87852a537b4",
  "source": {
    "blob": "3eea7e4bd418a2e1ae42665cdf464a2230815e33",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 814,
    "line": 790,
    "path": "GRWTSK/Algebra/AharoniKorman/Variant8a1b825a290fa3fe872eebffb11772fd16fd80ba9ab328484ff9ae14691b7366.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2957ed45cca2c87852a537b4bdf8e44810c073badb957a4d86cb25335597c31e",
  "verification": {
    "reference": "docs/verification/Algebra/AharoniKorman/Variant8a1b825a290fa3fe872eebffb11772fd16fd80ba9ab328484ff9ae14691b7366.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:95aafb37-b963-12ec-317f-a8aa2107c505`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 790–814.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem apply_eq_of_line_eq (f : SpinalMap C) {n : ℕ} (hC : IsChain (· ≤ ·) C)
    {lo hi : Hollom} (hlo : lo ∈ C ∩ level n) (hhi : hi ∈ C ∩ level n) (hlohi : lo ≤ hi)
    {x y : Hollom} (h : line x = line y)
    (h₁l : lo ≤ x) (h₂l : lo ≤ y) (h₁h : x ≤ hi) (h₂h : y ≤ hi) :
    f x = f y := by
  wlog hxy : (ofHollom y).1 ≤ (ofHollom x).1 generalizing x y
  · exact (this h.symm h₂l h₁l h₂h h₁h (le_of_not_ge hxy)).symm
  have hx : x ∈ level n := ordConnected_level.out hlo.2 hhi.2 ⟨h₁l, h₁h⟩
  have hy : y ∈ level n := ordConnected_level.out hlo.2 hhi.2 ⟨h₂l, h₂h⟩
  induction hx using induction_on_level with | h x₁ y₁ =>
  induction hy using induction_on_level with | h x₂ y₂ =>
  simp only at hxy
  simp only [line_toHollom] at h
  obtain ⟨k, rfl⟩ := exists_add_of_le hxy
  obtain rfl : y₂ = y₁ + k := by lia
  induction hlo.2 using induction_on_level with | h xlo ylo =>
  induction hhi.2 using induction_on_level with | h xhi yhi =>
  exact apply_eq_of_line_eq_aux f hC hlo.1 hhi.1 (by simp_all) (by simp_all) h₁l h₂l h₁h h₂h

/--
Construction of the set `R`, which has the following key properties:
* It is a subset of `level n`.
* Each of its elements is comparable to all of `C ∩ level n`.
* There exists an `a` such that `{(x, y, n) | x ≥ a ∧ y ≥ a} ⊆ R`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/AharoniKorman/Variant8a1b825a290fa3fe872eebffb11772fd16fd80ba9ab328484ff9ae14691b7366.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/AharoniKorman/Variant8a1b825a290fa3fe872eebffb11772fd16fd80ba9ab328484ff9ae14691b7366.lean#L790).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3eea7e4bd418a2e1ae42665cdf464a2230815e33` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
