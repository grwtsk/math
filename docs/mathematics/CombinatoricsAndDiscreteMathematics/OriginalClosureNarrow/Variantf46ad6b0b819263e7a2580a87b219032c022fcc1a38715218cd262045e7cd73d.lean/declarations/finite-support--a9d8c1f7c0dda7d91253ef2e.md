# finite_support

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "83a5d40441eb869d9f0da889e21cc8720344470e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 2190,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f4/f46ad6b0b819263e7a2580a87b219032c022fcc1a38715218cd262045e7cd73d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:23499e96-916e-d521-4321-83bcdab2dd58",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4e3b82ff-67f3-69c6-67da-48387b3c2798",
  "kind": "theorem",
  "lexical_name": "finite_support",
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
  "slug": "finite-support--a9d8c1f7c0dda7d91253ef2e",
  "source": {
    "blob": "83a5d40441eb869d9f0da889e21cc8720344470e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2237,
    "line": 2190,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrow/Variantf46ad6b0b819263e7a2580a87b219032c022fcc1a38715218cd262045e7cd73d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a9d8c1f7c0dda7d91253ef2ed4f6e65aca3ff6f3404887ce5806c80e49331a78",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrow/Variantf46ad6b0b819263e7a2580a87b219032c022fcc1a38715218cd262045e7cd73d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4e3b82ff-67f3-69c6-67da-48387b3c2798`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2190–2237.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_support (h : HasType P Γ M T) :
    ∃ A : Finset (S × S), ∃ R : Finset (S × S × S), HasType (P.restrict A R) Γ M T := by
  classical
  induction h with
  | ax h => exact ⟨{(_,_)}, ∅, .ax ⟨h, Finset.mem_singleton_self _⟩⟩
  | var _ ih =>
      obtain ⟨A, R, ht⟩ := ih
      exact ⟨A, R, .var ht⟩
  | weaken _ _ ihM ihA =>
      obtain ⟨A, R, hM⟩ := ihM
      obtain ⟨A', R', hA⟩ := ihA
      exact ⟨A ∪ A', R ∪ R', .weaken
        (hM.restrict_mono Finset.subset_union_left Finset.subset_union_left)
        (hA.restrict_mono Finset.subset_union_right Finset.subset_union_right)⟩
  | @product Γ D E a b c _ _ hr ihD ihE =>
      obtain ⟨A, R, hD⟩ := ihD
      obtain ⟨A', R', hE⟩ := ihE
      refine ⟨A ∪ A', insert (a,b,c) (R ∪ R'), .product
        (hD.restrict_mono Finset.subset_union_left
          (Finset.subset_union_left.trans (Finset.subset_insert _ _)))
        (hE.restrict_mono Finset.subset_union_right
          (Finset.subset_union_right.trans (Finset.subset_insert _ _))) ?_⟩
      exact ⟨hr, Finset.mem_insert_self _ _⟩
  | abstraction _ _ ihb ihPi =>
      obtain ⟨A, R, hb⟩ := ihb
      obtain ⟨A', R', hPi⟩ := ihPi
      exact ⟨A ∪ A', R ∪ R', .abstraction
        (hb.restrict_mono Finset.subset_union_left Finset.subset_union_left)
        (hPi.restrict_mono Finset.subset_union_right Finset.subset_union_right)⟩
  | application _ _ ihf iha =>
      obtain ⟨A, R, hf⟩ := ihf
      obtain ⟨A', R', ha⟩ := iha
      exact ⟨A ∪ A', R ∪ R', .application
        (hf.restrict_mono Finset.subset_union_left Finset.subset_union_left)
        (ha.restrict_mono Finset.subset_union_right Finset.subset_union_right)⟩
  | conversion _ _ hc ihM ihT =>
      obtain ⟨A, R, hM⟩ := ihM
      obtain ⟨A', R', hT⟩ := ihT
      exact ⟨A ∪ A', R ∪ R', .conversion
        (hM.restrict_mono Finset.subset_union_left Finset.subset_union_left)
        (hT.restrict_mono Finset.subset_union_right Finset.subset_union_right) hc⟩

end HasType

namespace SystemWeaklyNormalizing

variable {S : Type u} {P : Specification S}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrow/Variantf46ad6b0b819263e7a2580a87b219032c022fcc1a38715218cd262045e7cd73d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrow/Variantf46ad6b0b819263e7a2580a87b219032c022fcc1a38715218cd262045e7cd73d.lean#L2190).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `83a5d40441eb869d9f0da889e21cc8720344470e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
