# uniqueMul_of_twoUniqueMul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3af3a13d0165afd4873fbef728cf13bc78dc12fd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 260,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/50/50cbcba813634b4cf7bbd6826b64ff0f0f77c51b160f0e583dcb4bf6de5a677b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e49cd217-adf3-a840-0daa-67ba6b9ff004",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d0fab345-69d2-96f5-9a03-ee145f86ed58",
  "kind": "lemma",
  "lexical_name": "uniqueMul_of_twoUniqueMul",
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
  "slug": "uniquemul-of-twouniquemul--e8c86cf07bdda562c6fced1f",
  "source": {
    "blob": "3af3a13d0165afd4873fbef728cf13bc78dc12fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 269,
    "line": 260,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant50cbcba813634b4cf7bbd6826b64ff0f0f77c51b160f0e583dcb4bf6de5a677b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e8c86cf07bdda562c6fced1f0c75d7218f1d70b8d02a3587564e64acf6feacc0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant50cbcba813634b4cf7bbd6826b64ff0f0f77c51b160f0e583dcb4bf6de5a677b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d0fab345-69d2-96f5-9a03-ee145f86ed58`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 260–269.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma uniqueMul_of_twoUniqueMul {G} [Mul G] {A B : Finset G} (h : 1 < #A * #B →
    ∃ p1 ∈ A ×ˢ B, ∃ p2 ∈ A ×ˢ B, p1 ≠ p2 ∧ UniqueMul A B p1.1 p1.2 ∧ UniqueMul A B p2.1 p2.2)
    (hA : A.Nonempty) (hB : B.Nonempty) : ∃ a ∈ A, ∃ b ∈ B, UniqueMul A B a b := by
  by_cases! +distrib hc : #A ≤ 1 ∧ #B ≤ 1
  · exact UniqueMul.of_card_le_one hA hB hc.1 hc.2
  rw [← Finset.card_pos] at hA hB
  obtain ⟨p, hp, _, _, _, hu, _⟩ := h (Nat.one_lt_mul_iff.mpr ⟨hA, hB, hc⟩)
  rw [Finset.mem_product] at hp
  exact ⟨p.1, hp.1, p.2, hp.2, hu⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant50cbcba813634b4cf7bbd6826b64ff0f0f77c51b160f0e583dcb4bf6de5a677b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant50cbcba813634b4cf7bbd6826b64ff0f0f77c51b160f0e583dcb4bf6de5a677b.lean#L260).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3af3a13d0165afd4873fbef728cf13bc78dc12fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
