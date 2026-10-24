# case_more_digits

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "951ab2d6881306ebeea4e95e9e82bcd74e4151c0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 114,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4e/4e5cf5754d50cbd6289dbc8af4a741c17987a4cf81929e7215827078af1b8eca.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9544f687-a5d5-fd3f-7f66-d93462ec8835",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:efaa6718-cf98-fce3-5136-e535d90624bc",
  "kind": "theorem",
  "lexical_name": "case_more_digits",
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
  "slug": "case-more-digits--ddd812431ab5a14050694acb",
  "source": {
    "blob": "951ab2d6881306ebeea4e95e9e82bcd74e4151c0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 114,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo1962Q1/Variant4e5cf5754d50cbd6289dbc8af4a741c17987a4cf81929e7215827078af1b8eca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ddd812431ab5a14050694acbdb5015fd1f844317f0393e4d4fb38d2a5590cc76",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo1962Q1/Variant4e5cf5754d50cbd6289dbc8af4a741c17987a4cf81929e7215827078af1b8eca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:efaa6718-cf98-fce3-5136-e535d90624bc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem case_more_digits {c n : ℕ} (h1 : (digits 10 c).length ≥ 6) (h2 : ProblemPredicate' c n) :
    n ≥ 153846 := by
  have h3 : c ≠ 0 := by
    intro h4
    have h5 : (digits 10 c).length = 0 := by simp [h4]
    exact case_0_digit h5 h2
  have h6 : 2 ≤ 10 := by decide
  calc
    n ≥ 10 * c := le.intro h2.left.symm
    _ ≥ 10 ^ (digits 10 c).length := (base_pow_length_digits_le 10 c h6 h3)
    _ ≥ 10 ^ 6 := ((pow_le_iff_le_right h6).mpr h1)
    _ ≥ 153846 := by norm_num
#align imo1962_q1.case_more_digits Imo1962Q1.case_more_digits

/-!
Now we combine these cases to show that 153846 is the smallest solution.
-/


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo1962Q1/Variant4e5cf5754d50cbd6289dbc8af4a741c17987a4cf81929e7215827078af1b8eca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo1962Q1/Variant4e5cf5754d50cbd6289dbc8af4a741c17987a4cf81929e7215827078af1b8eca.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `951ab2d6881306ebeea4e95e9e82bcd74e4151c0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
