# differentiableAt_negMulLog_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "22cfb270646646d61913c5b6caf2fbaa9e98152a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 166,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/27/27c494a4aa8988d5a8abe1f1c7c1a9fcab9b052d78f76bcdc57d172c14bb8166.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:db0ab4e5-4e6e-db16-8add-60a170a679a0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5964130f-4a36-bd4b-13cc-46156435fa03",
  "kind": "lemma",
  "lexical_name": "differentiableAt_negMulLog_iff",
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
  "slug": "differentiableat-negmullog-iff--61d6d2b2b974f8239c573261",
  "source": {
    "blob": "22cfb270646646d61913c5b6caf2fbaa9e98152a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 181,
    "line": 166,
    "path": "GRWTSK/Topology/GeneralTopology/NegMulLog/Variant27c494a4aa8988d5a8abe1f1c7c1a9fcab9b052d78f76bcdc57d172c14bb8166.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:61d6d2b2b974f8239c5732618861bdb37a09cd25b5e0449c5469a80993dbb5f7",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/NegMulLog/Variant27c494a4aa8988d5a8abe1f1c7c1a9fcab9b052d78f76bcdc57d172c14bb8166.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5964130f-4a36-bd4b-13cc-46156435fa03`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 166–181.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma differentiableAt_negMulLog_iff {x : ℝ} : DifferentiableAt ℝ negMulLog x ↔ x ≠ 0 := by
  constructor
  · unfold negMulLog
    intro h eq0
    simp only [neg_mul, differentiableAt_neg_iff, eq0] at h
    exact not_DifferentiableAt_log_mul_zero h
  · intro hx
    have : x ∈ ({0} : Set ℝ)ᶜ := by
      simp_all only [ne_eq, Set.mem_compl_iff, Set.mem_singleton_iff, not_false_eq_true]
    have := differentiableOn_negMulLog x this
    apply DifferentiableWithinAt.differentiableAt (s := {0}ᶜ) <;>
    simp_all only [ne_eq, Set.mem_compl_iff, Set.mem_singleton_iff, not_false_eq_true,
      compl_singleton_mem_nhds_iff]

@[fun_prop] alias ⟨_, differentiableAt_negMulLog⟩ := differentiableAt_negMulLog_iff

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/NegMulLog/Variant27c494a4aa8988d5a8abe1f1c7c1a9fcab9b052d78f76bcdc57d172c14bb8166.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/NegMulLog/Variant27c494a4aa8988d5a8abe1f1c7c1a9fcab9b052d78f76bcdc57d172c14bb8166.lean#L166).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `22cfb270646646d61913c5b6caf2fbaa9e98152a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
