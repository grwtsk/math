# irreducible_X_pow_sub_C_of_root_adjoin_eq_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "eb507eb6fc3b59ca7942bd0f2038038f2acf0721",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 501,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4c/4c58eb1108fe364b785c7cb560b97625aa7a9bd5b924f0d77686aef31ae2d872.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a744313b-e970-433f-b7c2-b84ed7f04ada",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b74cd55b-50e2-6cff-0953-51b4303440d3",
  "kind": "lemma",
  "lexical_name": "irreducible_X_pow_sub_C_of_root_adjoin_eq_top",
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
  "slug": "irreducible-x-pow-sub-c-of-root-adjoin-eq-top--b6c852f86443dbbcef180c4d",
  "source": {
    "blob": "eb507eb6fc3b59ca7942bd0f2038038f2acf0721",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 515,
    "line": 501,
    "path": "GRWTSK/Algebra/KummerExtension/Variant4c58eb1108fe364b785c7cb560b97625aa7a9bd5b924f0d77686aef31ae2d872.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b6c852f86443dbbcef180c4d178218d6727761eb209b8165bb2552e454e5027c",
  "verification": {
    "reference": "docs/verification/Algebra/KummerExtension/Variant4c58eb1108fe364b785c7cb560b97625aa7a9bd5b924f0d77686aef31ae2d872.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b74cd55b-50e2-6cff-0953-51b4303440d3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 501–515.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma irreducible_X_pow_sub_C_of_root_adjoin_eq_top
    {a : K} {α : L} (ha : α ^ (finrank K L) = algebraMap K L a) (hα : K⟮α⟯ = ⊤) :
    Irreducible (X ^ (finrank K L) - C a) := by
  have : X ^ (finrank K L) - C a = minpoly K α := by
    refine minpoly.unique _ _ (monic_X_pow_sub_C _ finrank_pos.ne.symm) ?_ ?_
    · simp only [aeval_def, eval₂_sub, eval₂_X_pow, ha, eval₂_C, sub_self]
    · intros q hq hq'
      refine le_trans ?_ (degree_le_of_dvd (minpoly.dvd _ _ hq') hq.ne_zero)
      rw [degree_X_pow_sub_C finrank_pos,
        degree_eq_natDegree (minpoly.ne_zero (IsIntegral.of_finite K α)),
        ← IntermediateField.adjoin.finrank (IsIntegral.of_finite K α), hα, Nat.cast_le]
      exact (finrank_top K L).ge
  exact this ▸ minpoly.irreducible (IsIntegral.of_finite K α)

include hK in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/KummerExtension/Variant4c58eb1108fe364b785c7cb560b97625aa7a9bd5b924f0d77686aef31ae2d872.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/KummerExtension/Variant4c58eb1108fe364b785c7cb560b97625aa7a9bd5b924f0d77686aef31ae2d872.lean#L501).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eb507eb6fc3b59ca7942bd0f2038038f2acf0721` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
