# HasLines.card_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c5259344d91591aadefbb16e34fc3bed00027a85",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 208,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/17/17e456c3d0bd06e33152756a86d8b7a4466d855cc204db2beba41296105b8ae9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a96639f4-fb64-1a6d-616b-67523a13c44a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:77ed093c-6ed4-c580-a73c-7c01bc60532a",
  "kind": "theorem",
  "lexical_name": "HasLines.card_le",
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
  "slug": "haslines-card-le--e47060d3863cc7d966dc7fae",
  "source": {
    "blob": "c5259344d91591aadefbb16e34fc3bed00027a85",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 230,
    "line": 208,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Configuration/Variant17e456c3d0bd06e33152756a86d8b7a4466d855cc204db2beba41296105b8ae9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e47060d3863cc7d966dc7fae398b3616092a8ea75d430dcfda87e46e53946455",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Configuration/Variant17e456c3d0bd06e33152756a86d8b7a4466d855cc204db2beba41296105b8ae9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:77ed093c-6ed4-c580-a73c-7c01bc60532a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 208–230.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem HasLines.card_le [HasLines P L] [Fintype P] [Fintype L] :
    Fintype.card P ≤ Fintype.card L := by
  classical
  by_contra hc₂
  obtain ⟨f, hf₁, hf₂⟩ := Nondegenerate.exists_injective_of_card_le (le_of_not_le hc₂)
  have :=
    calc
      ∑ p, lineCount L p = ∑ l, pointCount P l := sum_lineCount_eq_sum_pointCount P L
      _ ≤ ∑ l, lineCount L (f l) :=
        (Finset.sum_le_sum fun l _ => HasLines.pointCount_le_lineCount (hf₂ l))
      _ = ∑ p ∈ univ.map ⟨f, hf₁⟩, lineCount L p := by rw [sum_map]; dsimp
      _ < ∑ p, lineCount L p := by
        obtain ⟨p, hp⟩ := not_forall.mp (mt (Fintype.card_le_of_surjective f) hc₂)
        refine sum_lt_sum_of_subset (subset_univ _) (mem_univ p) ?_ ?_ fun p _ _ ↦ zero_le _
        · simpa only [Finset.mem_map, exists_prop, Finset.mem_univ, true_and]
        · rw [lineCount, Nat.card_eq_fintype_card, Fintype.card_pos_iff]
          obtain ⟨l, _⟩ := @exists_line P L _ _ p
          exact
            let this := not_exists.mp hp l
            ⟨⟨mkLine this, (mkLine_ax this).2⟩⟩
  exact lt_irrefl _ this

/-- If a nondegenerate configuration has a unique point on any two lines, then `|L| ≤ |P|`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Configuration/Variant17e456c3d0bd06e33152756a86d8b7a4466d855cc204db2beba41296105b8ae9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Configuration/Variant17e456c3d0bd06e33152756a86d8b7a4466d855cc204db2beba41296105b8ae9.lean#L208).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c5259344d91591aadefbb16e34fc3bed00027a85` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
