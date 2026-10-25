# countable_setOf_nonempty_of_disjoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a92f2fa5308414a24919605f916589c02304c64e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 291,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/65/659b77443450f23be00b51f1795c4494fd7fff5db7f90007a9e5265d6d0a79ec.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:26f6fd84-3731-c3d9-8b3a-06debee63bcd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:221c164e-55a0-0589-524c-8423c5f5e026",
  "kind": "theorem",
  "lexical_name": "countable_setOf_nonempty_of_disjoint",
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
  "slug": "countable-setof-nonempty-of-disjoint--9b9715d2de7ead856609715d",
  "source": {
    "blob": "a92f2fa5308414a24919605f916589c02304c64e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 311,
    "line": 291,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Countable/Variant659b77443450f23be00b51f1795c4494fd7fff5db7f90007a9e5265d6d0a79ec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9b9715d2de7ead856609715d8e48761e129aaef72539c97a1351483406a96feb",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Countable/Variant659b77443450f23be00b51f1795c4494fd7fff5db7f90007a9e5265d6d0a79ec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:221c164e-55a0-0589-524c-8423c5f5e026`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 291–311.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem countable_setOf_nonempty_of_disjoint {f : β → Set α}
    (hf : Pairwise (Disjoint on f)) {s : Set α} (h'f : ∀ t, f t ⊆ s) (hs : s.Countable) :
    Set.Countable {t | (f t).Nonempty} := by
  rw [← Set.countable_coe_iff] at hs ⊢
  have : ∀ t : {t // (f t).Nonempty}, ∃ x : s, x.1 ∈ f t := by
    rintro ⟨t, ⟨x, hx⟩⟩
    exact ⟨⟨x, (h'f t hx)⟩, hx⟩
  choose F hF using this
  have A : Injective F := by
    rintro ⟨t, ht⟩ ⟨t', ht'⟩ htt'
    have A : (f t ∩ f t').Nonempty := by
      refine ⟨F ⟨t, ht⟩, hF ⟨t, _⟩, ?_⟩
      rw [htt']
      exact hF ⟨t', _⟩
    simp only [Subtype.mk.injEq]
    by_contra H
    exact not_disjoint_iff_nonempty_inter.2 A (hf H)
  exact Injective.countable A

end Set

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Countable/Variant659b77443450f23be00b51f1795c4494fd7fff5db7f90007a9e5265d6d0a79ec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Countable/Variant659b77443450f23be00b51f1795c4494fd7fff5db7f90007a9e5265d6d0a79ec.lean#L291).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a92f2fa5308414a24919605f916589c02304c64e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
