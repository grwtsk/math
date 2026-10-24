# prod_indicator_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c7e79533346a2114ef641f6ac77df96e2bd2ba4b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 71,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/73/73fae3f06362cd0d557b12f7bbb80007e246adddaa747c8938a5d0a21ae83173.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c2765d45-dd8c-054b-e6cc-cc61c7d73edf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4059ada9-cf02-c66d-d1c8-0ec41bc59e65",
  "kind": "lemma",
  "lexical_name": "prod_indicator_apply",
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
  "slug": "prod-indicator-apply--14a3cfd4b0e0efe21664b8f9",
  "source": {
    "blob": "c7e79533346a2114ef641f6ac77df96e2bd2ba4b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 71,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Pi/Variant73fae3f06362cd0d557b12f7bbb80007e246adddaa747c8938a5d0a21ae83173.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:14a3cfd4b0e0efe21664b8f999f83b8a0834657176c1b0237c3b1a836834c918",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Pi/Variant73fae3f06362cd0d557b12f7bbb80007e246adddaa747c8938a5d0a21ae83173.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4059ada9-cf02-c66d-d1c8-0ec41bc59e65`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma prod_indicator_apply (s : Finset ι) (f : ι → Set κ) (g : ι → κ → α) (j : κ) :
    ∏ i ∈ s, (f i).indicator (g i) j = (⋂ x ∈ s, f x).indicator (∏ i ∈ s, g i) j := by
  rw [Set.indicator]
  split_ifs with hj
  · rw [Finset.prod_apply]
    congr! 1 with i hi
    simp only [Finset.inf_set_eq_iInter, Set.mem_iInter] at hj
    exact Set.indicator_of_mem (hj _ hi) _
  · obtain ⟨i, hi, hj⟩ := by simpa using hj
    exact Finset.prod_eq_zero hi <| Set.indicator_of_notMem hj _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Pi/Variant73fae3f06362cd0d557b12f7bbb80007e246adddaa747c8938a5d0a21ae83173.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Pi/Variant73fae3f06362cd0d557b12f7bbb80007e246adddaa747c8938a5d0a21ae83173.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c7e79533346a2114ef641f6ac77df96e2bd2ba4b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
