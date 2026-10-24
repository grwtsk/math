# IsPrefixFree.isUniquelyDecodable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d4393e606846361022bcb3f397706776de3d0430",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 50,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/28/28186b2ec20bd34ab051bbbd51fb2fdf8a2e1116b9a8b3a1911804b500c8d478.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5d9fc2ec-9959-b41a-9395-07e530cf2036",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:baa45116-840f-27a3-2a15-70525f116211",
  "kind": "theorem",
  "lexical_name": "IsPrefixFree.isUniquelyDecodable",
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
  "slug": "isprefixfree-isuniquelydecodable--7b05844707f1118b0f3cc141",
  "source": {
    "blob": "d4393e606846361022bcb3f397706776de3d0430",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 50,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PrefixFree/Variant28186b2ec20bd34ab051bbbd51fb2fdf8a2e1116b9a8b3a1911804b500c8d478.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7b05844707f1118b0f3cc14167f893c6dc7d3f1344a95294b03abac86dc38344",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PrefixFree/Variant28186b2ec20bd34ab051bbbd51fb2fdf8a2e1116b9a8b3a1911804b500c8d478.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:baa45116-840f-27a3-2a15-70525f116211`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsPrefixFree.isUniquelyDecodable (hS : IsPrefixFree S) (hε : [] ∉ S) :
    IsUniquelyDecodable S := by
  intro L₁ L₂ hL₁ hL₂ hflatten
  induction L₁ generalizing L₂ with
  | nil =>
    cases L₂ with
    | nil => rfl
    | cons w L =>
      simp at hflatten
      grind
  | cons w₁ L₁ ih =>
    cases L₂ with
    | nil =>
      simp at hflatten
      grind
    | cons w₂ L₂ =>
      simp only [List.flatten_cons] at hflatten
      have hw : w₁ = w₂ := by
        rcases List.append_eq_append_iff.mp hflatten with
          ⟨t, hw₁, -⟩ | ⟨t, hw₂, -⟩
        · exact hS _ (hL₁ _ (.head ..)) _ (hL₂ _ (.head ..)) ⟨t, hw₁.symm⟩
        · exact (hS _ (hL₂ _ (.head ..)) _ (hL₁ _ (.head ..)) ⟨t, hw₂.symm⟩).symm
      subst w₂
      congr
      apply ih L₂
      · grind
      · grind
      · exact List.append_cancel_left hflatten

/-- A nontrivial prefix-free code is uniquely decodable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PrefixFree/Variant28186b2ec20bd34ab051bbbd51fb2fdf8a2e1116b9a8b3a1911804b500c8d478.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PrefixFree/Variant28186b2ec20bd34ab051bbbd51fb2fdf8a2e1116b9a8b3a1911804b500c8d478.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d4393e606846361022bcb3f397706776de3d0430` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
