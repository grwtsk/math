# induction_on_max₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8f24c77e5cbfedc683c6828e7edd3eba8cda6be8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 316,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/af/af5897e4b0dd36c75abbbc7518d51d53d59ff249cc2f93d0ad482b10414e5964.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0c3543d4-77f7-3539-fd00-3fc4a5fc4fe6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b8da6f9d-76f4-69f8-dd05-f60058aa25b2",
  "kind": "lemma",
  "lexical_name": "induction_on_max₂",
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
  "slug": "induction-on-max--8c8ee1edead3ba449c10df02",
  "source": {
    "blob": "8f24c77e5cbfedc683c6828e7edd3eba8cda6be8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 327,
    "line": 316,
    "path": "GRWTSK/Algebra/GroupTheory/Finsupp/Variantaf5897e4b0dd36c75abbbc7518d51d53d59ff249cc2f93d0ad482b10414e5964.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8c8ee1edead3ba449c10df02eb70a2a4984668085676833d4cdde3a66d5fc6da",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Finsupp/Variantaf5897e4b0dd36c75abbbc7518d51d53d59ff249cc2f93d0ad482b10414e5964.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b8da6f9d-76f4-69f8-dd05-f60058aa25b2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 316–327.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma induction_on_max₂ (f : ι →₀ M) (zero : motive 0)
    (add_single : ∀ a b (f : ι →₀ M), (∀ c ∈ f.support, c < a) → b ≠ 0 →
      motive f → motive (f + single a b)) : motive f := by
  refine f.induction_on_max zero ?_
  convert! add_single using 7 with _ _ _ H
  have := fun c hc ↦ (H c hc).ne
  apply (addCommute_of_disjoint _).eq
  simp_all [not_imp_not]

/-- A finitely supported function can be built by adding up `single a b` for decreasing `a`.

The lemma `induction_on_min` swaps the argument order in the sum. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Finsupp/Variantaf5897e4b0dd36c75abbbc7518d51d53d59ff249cc2f93d0ad482b10414e5964.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Finsupp/Variantaf5897e4b0dd36c75abbbc7518d51d53d59ff249cc2f93d0ad482b10414e5964.lean#L316).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8f24c77e5cbfedc683c6828e7edd3eba8cda6be8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
