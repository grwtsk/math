# norm_mk_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1ec3037c608383b72506667c25071d22f9fd1021",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 181,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1e/1ee0cf24f77d118a344258246e15dc87aeefa499d661567f6ef626c0a3a97a67.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c73a17ca-0043-febf-c775-fa41c5553991",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9641706e-c8b3-cbf7-6967-9626cb8ff37f",
  "kind": "lemma",
  "lexical_name": "norm_mk_eq_zero",
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
  "slug": "norm-mk-eq-zero--d0be95b537ce2b51f236e883",
  "source": {
    "blob": "1ec3037c608383b72506667c25071d22f9fd1021",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 187,
    "line": 181,
    "path": "GRWTSK/Analysis/Quotient/Variant1ee0cf24f77d118a344258246e15dc87aeefa499d661567f6ef626c0a3a97a67.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d0be95b537ce2b51f236e883d2966a5a8d64b8b50e434ca31e7d84ef2144acad",
  "verification": {
    "reference": "docs/verification/Analysis/Quotient/Variant1ee0cf24f77d118a344258246e15dc87aeefa499d661567f6ef626c0a3a97a67.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9641706e-c8b3-cbf7-6967-9626cb8ff37f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 181–187.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma norm_mk_eq_zero [hS : IsClosed (S : Set M)] : ‖(m : M ⧸ S)‖ = 0 ↔ m ∈ S := by
  rw [norm_mk_eq_zero_iff_mem_closure, hS.closure_eq, SetLike.mem_coe]

/-- For any `x : M ⧸ S` and any `0 < ε`, there is `m : M` such that `mk' S m = x`
and `‖m‖ < ‖x‖ + ε`. -/
@[to_additive "For any `x : M ⧸ S` and any `0 < ε`, there is `m : M` such that `mk' S m = x`
and `‖m‖ < ‖x‖ + ε`."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Quotient/Variant1ee0cf24f77d118a344258246e15dc87aeefa499d661567f6ef626c0a3a97a67.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Quotient/Variant1ee0cf24f77d118a344258246e15dc87aeefa499d661567f6ef626c0a3a97a67.lean#L181).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ec3037c608383b72506667c25071d22f9fd1021` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
