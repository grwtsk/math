# sub_eq_fold_erase

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4932534f498741f8b3148dea1b35b037992de9fb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 365,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7e/7e772248d64422798400ab06255c5ce254894dc0a58eaceadc40c263728341e0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:26a11006-9197-5923-55a5-8b2b4216a1c1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0d32680c-24dc-9598-28a5-2eb6779208cf",
  "kind": "lemma",
  "lexical_name": "sub_eq_fold_erase",
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
  "slug": "sub-eq-fold-erase--c653e7a84aa3eae568da9aee",
  "source": {
    "blob": "4932534f498741f8b3148dea1b35b037992de9fb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 380,
    "line": 365,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/MapFold/Variant7e772248d64422798400ab06255c5ce254894dc0a58eaceadc40c263728341e0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c653e7a84aa3eae568da9aeeca3b1c58b1ef7b624cbdfa3d8b50b909e62dc24e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/MapFold/Variant7e772248d64422798400ab06255c5ce254894dc0a58eaceadc40c263728341e0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0d32680c-24dc-9598-28a5-2eb6779208cf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 365–380.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma sub_eq_fold_erase (s t : Multiset α) : s - t = foldl erase s t :=
  Quotient.inductionOn₂ s t fun l₁ l₂ => by
    show ofList (l₁.diff l₂) = foldl erase l₁ l₂
    rw [diff_eq_foldl l₁ l₂]
    symm
    exact foldl_hom _ fun x y => rfl

end sub

/-! ### Lift a relation to `Multiset`s -/


section Rel

variable {δ : Type*} {r : α → β → Prop} {p : γ → δ → Prop}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/MapFold/Variant7e772248d64422798400ab06255c5ce254894dc0a58eaceadc40c263728341e0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/MapFold/Variant7e772248d64422798400ab06255c5ce254894dc0a58eaceadc40c263728341e0.lean#L365).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4932534f498741f8b3148dea1b35b037992de9fb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
