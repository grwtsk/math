# setWidth_setWidth_succ_eq_setWidth_setWidth_add_twoPow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "50b69a68eefa1987f13d13b2f6ef1b1314e79981",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 613,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d5/d5a437dfa8887952bb544591ea2f57cbc8ee8e6d75d94211b638d70ae16275ea.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4644f263-ee03-3286-7017-afd89dd9f309",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5e3332ae-5354-ae0e-2662-f784ba985bb5",
  "kind": "theorem",
  "lexical_name": "setWidth_setWidth_succ_eq_setWidth_setWidth_add_twoPow",
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
  "slug": "setwidth-setwidth-succ-eq-setwidth-setwidth-add-twopow--a05d78ce5aeeb70a5828a8bd",
  "source": {
    "blob": "50b69a68eefa1987f13d13b2f6ef1b1314e79981",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 638,
    "line": 613,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitblast/Variantd5a437dfa8887952bb544591ea2f57cbc8ee8e6d75d94211b638d70ae16275ea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a05d78ce5aeeb70a5828a8bd19793a9d1b32c6c6584161fd09049a040c54eeb5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitblast/Variantd5a437dfa8887952bb544591ea2f57cbc8ee8e6d75d94211b638d70ae16275ea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5e3332ae-5354-ae0e-2662-f784ba985bb5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 613–638.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem setWidth_setWidth_succ_eq_setWidth_setWidth_add_twoPow (x : BitVec w) (i : Nat) :
    setWidth w (x.setWidth (i + 1)) =
      setWidth w (x.setWidth i) + (x &&& twoPow w i) := by
  rw [add_eq_or_of_and_eq_zero]
  · ext k h
    simp only [getElem_setWidth, getLsbD_setWidth, h, getLsbD_eq_getElem, getElem_or, getElem_and,
      getElem_twoPow]
    by_cases hik : i = k
    · subst hik
      simp
    · by_cases hik' : k < (i + 1)
      · have hik'' : k < i := by omega
        simp [hik', hik'']
        omega
      · have hik'' : ¬ (k < i) := by omega
        simp [hik', hik'']
        omega
  · ext k
    simp only [and_twoPow,
      ]
    by_cases hi : x.getLsbD i <;> simp [hi] <;> omega

/--
Recurrence lemma: multiplying `x` with the first `s` bits of `y` is the
same as truncating `y` to `s` bits, then zero extending to the original length,
and performing the multiplication. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitblast/Variantd5a437dfa8887952bb544591ea2f57cbc8ee8e6d75d94211b638d70ae16275ea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitblast/Variantd5a437dfa8887952bb544591ea2f57cbc8ee8e6d75d94211b638d70ae16275ea.lean#L613).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `50b69a68eefa1987f13d13b2f6ef1b1314e79981` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
