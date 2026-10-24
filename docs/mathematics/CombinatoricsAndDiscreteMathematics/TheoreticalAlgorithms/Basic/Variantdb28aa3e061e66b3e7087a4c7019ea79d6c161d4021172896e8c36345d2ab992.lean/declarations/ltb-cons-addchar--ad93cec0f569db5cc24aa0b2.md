# ltb_cons_addChar

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8dbe2dd1f754426d00d29a7ac7434ba204a5d404",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 59,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/db/db28aa3e061e66b3e7087a4c7019ea79d6c161d4021172896e8c36345d2ab992.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:53c66916-a585-889b-ed2b-d052a3f9b1af",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:24b95241-e6c5-6ab9-6b15-58e214098cac",
  "kind": "theorem",
  "lexical_name": "ltb_cons_addChar",
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
  "slug": "ltb-cons-addchar--ad93cec0f569db5cc24aa0b2",
  "source": {
    "blob": "8dbe2dd1f754426d00d29a7ac7434ba204a5d404",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 59,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantdb28aa3e061e66b3e7087a4c7019ea79d6c161d4021172896e8c36345d2ab992.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ad93cec0f569db5cc24aa0b27eef7f3030469544d921742d639f16dbb74a4337",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantdb28aa3e061e66b3e7087a4c7019ea79d6c161d4021172896e8c36345d2ab992.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:24b95241-e6c5-6ab9-6b15-58e214098cac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ltb_cons_addChar (c : Char) (cs₁ cs₂ : List Char) (i₁ i₂ : Pos) :
    ltb ⟨⟨c :: cs₁⟩, i₁ + c⟩ ⟨⟨c :: cs₂⟩, i₂ + c⟩ = ltb ⟨⟨cs₁⟩, i₁⟩ ⟨⟨cs₂⟩, i₂⟩ := by
  apply ltb.inductionOn ⟨⟨cs₁⟩, i₁⟩ ⟨⟨cs₂⟩, i₂⟩ (motive := fun ⟨⟨cs₁⟩, i₁⟩ ⟨⟨cs₂⟩, i₂⟩ ↦
    ltb ⟨⟨c :: cs₁⟩, i₁ + c⟩ ⟨⟨c :: cs₂⟩, i₂ + c⟩ =
    ltb ⟨⟨cs₁⟩, i₁⟩ ⟨⟨cs₂⟩, i₂⟩) <;> simp only <;>
  intro ⟨cs₁⟩ ⟨cs₂⟩ i₁ i₂ <;>
  intros <;>
  (conv => lhs; unfold ltb) <;> (conv => rhs; unfold ltb) <;>
  simp only [Iterator.hasNext_cons_addChar, ite_false, ite_true, *, reduceCtorEq]
  · rename_i h₂ h₁ heq ih
    simp only [Iterator.next, next, heq, Iterator.curr, get_cons_addChar, ite_true] at ih ⊢
    repeat rw [Pos.addChar_right_comm _ c]
    exact ih
  · rename_i h₂ h₁ hne
    simp [Iterator.curr, get_cons_addChar, hne]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantdb28aa3e061e66b3e7087a4c7019ea79d6c161d4021172896e8c36345d2ab992.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantdb28aa3e061e66b3e7087a4c7019ea79d6c161d4021172896e8c36345d2ab992.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8dbe2dd1f754426d00d29a7ac7434ba204a5d404` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
