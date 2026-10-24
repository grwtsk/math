# ofDigits_mod_pow_eq_ofDigits_take

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "36e7ca1f01147bc6f08a66af9d17670bda23ad5a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 465,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3c/3c646b30d5a9da2ae99f090ffc83bb7a3b5258f2d31b1578ab384b5998c3fe66.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d3af436e-5670-f544-c71d-01da5769c41c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:91a7df38-da28-c07d-c6e0-124d77060210",
  "kind": "lemma",
  "lexical_name": "ofDigits_mod_pow_eq_ofDigits_take",
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
  "slug": "ofdigits-mod-pow-eq-ofdigits-take--525d770dd1c48386db27d397",
  "source": {
    "blob": "36e7ca1f01147bc6f08a66af9d17670bda23ad5a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 485,
    "line": 465,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant3c646b30d5a9da2ae99f090ffc83bb7a3b5258f2d31b1578ab384b5998c3fe66.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:525d770dd1c48386db27d3975c6392dc7a302abaa61a97e5b876a14de1a8c409",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant3c646b30d5a9da2ae99f090ffc83bb7a3b5258f2d31b1578ab384b5998c3fe66.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:91a7df38-da28-c07d-c6e0-124d77060210`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 465–485.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ofDigits_mod_pow_eq_ofDigits_take
    {p : ℕ} (i : ℕ) (hpos : 0 < p) (digits : List ℕ) (w₁ : ∀ l ∈ digits, l < p) :
    ofDigits p digits % p ^ i = ofDigits p (digits.take i) := by
  induction i generalizing digits with
  | zero => simp [mod_one]
  | succ i ih =>
    cases digits with
    | nil => simp
    | cons hd tl =>
      rw [List.take_succ_cons, ofDigits_cons, ofDigits_cons,
        ← ih _ fun x hx ↦ w₁ x <| List.mem_cons_of_mem hd hx, add_mod,
        mod_eq_of_lt <| lt_of_lt_of_le (w₁ hd List.mem_cons_self) (le_pow <| add_one_pos i),
        pow_succ', mul_mod_mul_left, mod_eq_of_lt]
      apply add_lt_of_lt_sub
      apply lt_of_lt_of_le (b := p)
      · exact w₁ hd List.mem_cons_self
      · rw [← Nat.mul_sub]
        exact Nat.le_mul_of_pos_right _ <| Nat.sub_pos_of_lt <| mod_lt _ <| pow_pos hpos i

/-- `n` modulo `p^i` is like taking the least significant `i` digits of `n` in base `p`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant3c646b30d5a9da2ae99f090ffc83bb7a3b5258f2d31b1578ab384b5998c3fe66.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant3c646b30d5a9da2ae99f090ffc83bb7a3b5258f2d31b1578ab384b5998c3fe66.lean#L465).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `36e7ca1f01147bc6f08a66af9d17670bda23ad5a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
