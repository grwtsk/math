# Indep.contract_isBase_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b03285d0-6a3e-7afa-f9e7-432d68d30c4f",
  "kind": "lemma",
  "lexical_name": "Indep.contract_isBase_iff",
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
  "slug": "indep-contract-isbase-iff--82892953e64b25c49de3ce70",
  "source": {
    "blob": "95268aafc7cee76f5ca4a9534dcdf5010b14443d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 143,
    "line": 134,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Contract/Variantf51981e6baf0c8cec97614f162fd5f2a7f556e727b1107616fdb4a68dddac71c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:82892953e64b25c49de3ce708f647949e6e53ce54d049d0450879ca7bcc8037a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Contract/Variantf51981e6baf0c8cec97614f162fd5f2a7f556e727b1107616fdb4a68dddac71c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b03285d0-6a3e-7afa-f9e7-432d68d30c4f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–143.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Indep.contract_isBase_iff (hI : M.Indep I) :
    (M ／ I).IsBase B ↔ M.IsBase (B ∪ I) ∧ Disjoint B I := by
  rw [← dual_delete_dual, dual_isBase_iff', delete_ground, dual_ground, delete_isBase_iff,
    subset_diff, ← and_assoc, and_congr_left_iff, ← dual_dual M, dual_isBase_iff', dual_dual,
    dual_dual, union_comm, dual_ground, union_subset_iff, and_iff_right hI.subset_ground,
    and_congr_left_iff, ← isBase_restrict_iff, diff_diff, Spanning.isBase_restrict_iff,
    and_iff_left (diff_subset_diff_right subset_union_left)]
  · simp
  rwa [← dual_ground, ← coindep_iff_compl_spanning, dual_coindep_iff]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Contract/Variantf51981e6baf0c8cec97614f162fd5f2a7f556e727b1107616fdb4a68dddac71c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Contract/Variantf51981e6baf0c8cec97614f162fd5f2a7f556e727b1107616fdb4a68dddac71c.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `95268aafc7cee76f5ca4a9534dcdf5010b14443d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
