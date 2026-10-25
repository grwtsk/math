# cardinalMk_closure_le_max

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "37f45168df1dd9d3feb00f776dd540f3e1e9868f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 69,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a5/a59dd79af1d9247999e11936c9e9a1c5b23c58d20a2213afc49045d9dedb63d6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ab0d1751-97c6-a8f2-3070-933aab538210",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b795a3c7-c61d-93ba-5244-36261f87227b",
  "kind": "lemma",
  "lexical_name": "cardinalMk_closure_le_max",
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
  "slug": "cardinalmk-closure-le-max--3b3482d5613849ccbcae6887",
  "source": {
    "blob": "37f45168df1dd9d3feb00f776dd540f3e1e9868f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 69,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Subfield/Varianta59dd79af1d9247999e11936c9e9a1c5b23c58d20a2213afc49045d9dedb63d6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3b3482d5613849ccbcae68871dbb9d671a9956ec30f826495eb6a761b728c646",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Subfield/Varianta59dd79af1d9247999e11936c9e9a1c5b23c58d20a2213afc49045d9dedb63d6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b795a3c7-c61d-93ba-5244-36261f87227b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma cardinalMk_closure_le_max : #(closure s) ≤ max #s ℵ₀ :=
  (Cardinal.mk_le_of_surjective <| surjective_ofWType s).trans <| by
    convert WType.cardinalMk_le_max_aleph0_of_finite' using 1
    · rw [lift_uzero, mk_sum, lift_uzero]
      have : lift.{u,0} #(Fin 6) < ℵ₀ := lift_lt_aleph0.mpr (lt_aleph0_of_finite _)
      obtain h|h := lt_or_le #s ℵ₀
      · rw [max_eq_right h.le, max_eq_right]
        exact (add_lt_aleph0 this h).le
      · rw [max_eq_left h, add_eq_right h (this.le.trans h), max_eq_left h]
    rintro (n|_)
    · fin_cases n <;> (dsimp only [id_eq]; infer_instance)
    infer_instance

@[deprecated (since := "2024-11-10")] alias cardinal_mk_closure_le_max := cardinalMk_closure_le_max

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Subfield/Varianta59dd79af1d9247999e11936c9e9a1c5b23c58d20a2213afc49045d9dedb63d6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Subfield/Varianta59dd79af1d9247999e11936c9e9a1c5b23c58d20a2213afc49045d9dedb63d6.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `37f45168df1dd9d3feb00f776dd540f3e1e9868f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
