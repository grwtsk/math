# goodm_of_rule3

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8cbd9e0c93ea1e365c124ee6a71a662bf7caf627",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 143,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0c/0c49c7bcec9b322e9e02c161115b1f0cecc3d257ab69b5cdcc0c347fe0ab0cc5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a312400e-9a44-0d8b-316a-98d9eb8f065c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:aba9a2d6-e3e0-14d6-fd1a-ecfdf2027a6e",
  "kind": "theorem",
  "lexical_name": "goodm_of_rule3",
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
  "slug": "goodm-of-rule3--34d57e0b6c961e5aa7e7191d",
  "source": {
    "blob": "8cbd9e0c93ea1e365c124ee6a71a662bf7caf627",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 143,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DecisionNec/Variant0c49c7bcec9b322e9e02c161115b1f0cecc3d257ab69b5cdcc0c347fe0ab0cc5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:34d57e0b6c961e5aa7e7191d87d2e0c0cad4c93759748f20d071b090079ebda5",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DecisionNec/Variant0c49c7bcec9b322e9e02c161115b1f0cecc3d257ab69b5cdcc0c347fe0ab0cc5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aba9a2d6-e3e0-14d6-fd1a-ecfdf2027a6e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem goodm_of_rule3 (as bs : Miustr) (h₁ : Derivable (as ++ [I, I, I] ++ bs))
    (h₂ : Goodm (as ++ [I, I, I] ++ bs)) : Goodm (as ++ (U :: bs)) := by
  obtain ⟨mhead, nmtail⟩ := h₂
  have k : as ≠ nil := by rintro rfl; contradiction
  constructor
  · cases as
    · contradiction
    exact mhead
  · contrapose nmtail
    rcases exists_cons_of_ne_nil k with ⟨x, xs, rfl⟩
    simp_rw [cons_append] at nmtail ⊢
    simpa using nmtail

/-!
The proof of the next lemma is identical, on the tactic level, to the previous proof.
-/


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DecisionNec/Variant0c49c7bcec9b322e9e02c161115b1f0cecc3d257ab69b5cdcc0c347fe0ab0cc5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DecisionNec/Variant0c49c7bcec9b322e9e02c161115b1f0cecc3d257ab69b5cdcc0c347fe0ab0cc5.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8cbd9e0c93ea1e365c124ee6a71a662bf7caf627` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
