# quadraticChar_eq_pow_of_char_ne_two'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3db8b666d77153bf7fc137251adccd59989a8755",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 184,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e0/e0f0e7c09a9fcc4995b1d1b7509ecbaf9a42eb3e7b829853c6b5c73955645e0f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:698b6ca7-b0be-1b45-2f0c-e43e509ded1b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fb58c273-deae-20d3-af8f-9c9d66755452",
  "kind": "theorem",
  "lexical_name": "quadraticChar_eq_pow_of_char_ne_two'",
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
  "slug": "quadraticchar-eq-pow-of-char-ne-two--24e9eb7fcdd2eb52e596ef5a",
  "source": {
    "blob": "3db8b666d77153bf7fc137251adccd59989a8755",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 197,
    "line": 184,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variante0f0e7c09a9fcc4995b1d1b7509ecbaf9a42eb3e7b829853c6b5c73955645e0f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:24e9eb7fcdd2eb52e596ef5a653fb1c90b7aa6e3b0f20b29e1d493714c9846fe",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Basic/Variante0f0e7c09a9fcc4995b1d1b7509ecbaf9a42eb3e7b829853c6b5c73955645e0f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fb58c273-deae-20d3-af8f-9c9d66755452`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 184–197.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem quadraticChar_eq_pow_of_char_ne_two' (hF : ringChar F ≠ 2) (a : F) :
    (quadraticChar F a : F) = a ^ (Fintype.card F / 2) := by
  by_cases ha : a = 0
  · have : 0 < Fintype.card F / 2 := Nat.div_pos Fintype.one_lt_card two_pos
    simp only [ha, quadraticChar_apply, quadraticCharFun_zero, Int.cast_zero, zero_pow this.ne']
  · rw [quadraticChar_eq_pow_of_char_ne_two hF ha]
    by_cases ha' : a ^ (Fintype.card F / 2) = 1
    · simp only [ha', if_true, Int.cast_one]
    · have ha'' := Or.resolve_left (FiniteField.pow_dichotomy hF ha) ha'
      simp only [ha'', Int.cast_ite, Int.cast_one, Int.cast_neg, ite_eq_right_iff]
      exact Eq.symm

variable (F) in
/-- The quadratic character is quadratic as a multiplicative character. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Basic/Variante0f0e7c09a9fcc4995b1d1b7509ecbaf9a42eb3e7b829853c6b5c73955645e0f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variante0f0e7c09a9fcc4995b1d1b7509ecbaf9a42eb3e7b829853c6b5c73955645e0f.lean#L184).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3db8b666d77153bf7fc137251adccd59989a8755` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
