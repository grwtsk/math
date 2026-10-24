# nhds_one_hasBasis

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
      "line": 146,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1e/1ee0cf24f77d118a344258246e15dc87aeefa499d661567f6ef626c0a3a97a67.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:643addb4-eb65-4359-9f0b-a4bf1d096fca",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f259dab3-b2fa-0002-e96a-1b099cfd7f41",
  "kind": "lemma",
  "lexical_name": "nhds_one_hasBasis",
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
  "slug": "nhds-one-hasbasis--19a528c7234510cfb8993b4f",
  "source": {
    "blob": "1ec3037c608383b72506667c25071d22f9fd1021",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 158,
    "line": 146,
    "path": "GRWTSK/Analysis/Quotient/Variant1ee0cf24f77d118a344258246e15dc87aeefa499d661567f6ef626c0a3a97a67.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:19a528c7234510cfb8993b4fd92dadf2b433f5325ddd12cdeb9e10b1bdb3a609",
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

Occurrence: `result:f259dab3-b2fa-0002-e96a-1b099cfd7f41`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 146–158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma nhds_one_hasBasis : (𝓝 (1 : M ⧸ S)).HasBasis (fun ε ↦ 0 < ε) fun ε ↦ {x | ‖x‖ < ε} := by
  have : ∀ ε : ℝ, mk '' ball (1 : M) ε = {x : M ⧸ S | ‖x‖ < ε} := by
    refine fun ε ↦ Set.ext <| forall_mk.2 fun x ↦ ?_
    rw [ball_one_eq, mem_setOf_eq, norm_lt_iff, mem_image]
    exact exists_congr fun _ ↦ and_comm
  rw [← mk_one, nhds_eq, ← funext this]
  exact .map _ Metric.nhds_basis_ball

/-- An alternative definition of the norm on the quotient group: the norm of `((x : M) : M ⧸ S)` is
equal to the distance from `x` to `S`. -/
@[to_additive
"An alternative definition of the norm on the quotient group: the norm of `((x : M) : M ⧸ S)` is
equal to the distance from `x` to `S`."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Quotient/Variant1ee0cf24f77d118a344258246e15dc87aeefa499d661567f6ef626c0a3a97a67.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Quotient/Variant1ee0cf24f77d118a344258246e15dc87aeefa499d661567f6ef626c0a3a97a67.lean#L146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ec3037c608383b72506667c25071d22f9fd1021` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
