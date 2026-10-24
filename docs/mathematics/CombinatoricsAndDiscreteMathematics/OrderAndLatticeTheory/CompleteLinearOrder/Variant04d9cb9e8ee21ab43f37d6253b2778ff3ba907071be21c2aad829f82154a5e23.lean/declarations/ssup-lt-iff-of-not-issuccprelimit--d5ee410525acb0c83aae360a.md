# sSup_lt_iff_of_not_isSuccPrelimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6ae2a2d9df72cc0a960c2bcdf6557624c2402937",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 170,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/04/04d9cb9e8ee21ab43f37d6253b2778ff3ba907071be21c2aad829f82154a5e23.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3f874115-4905-d6b5-b291-76dc3a7f304b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:25f732bf-fa4c-2319-ab9d-c17c629d02c8",
  "kind": "theorem",
  "lexical_name": "sSup_lt_iff_of_not_isSuccPrelimit",
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
  "slug": "ssup-lt-iff-of-not-issuccprelimit--d5ee410525acb0c83aae360a",
  "source": {
    "blob": "6ae2a2d9df72cc0a960c2bcdf6557624c2402937",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 178,
    "line": 170,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLinearOrder/Variant04d9cb9e8ee21ab43f37d6253b2778ff3ba907071be21c2aad829f82154a5e23.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d5ee410525acb0c83aae360a96a0147fab4b4aaba385b3c67996135c51a13daa",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLinearOrder/Variant04d9cb9e8ee21ab43f37d6253b2778ff3ba907071be21c2aad829f82154a5e23.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:25f732bf-fa4c-2319-ab9d-c17c629d02c8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 170–178.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sSup_lt_iff_of_not_isSuccPrelimit (h : ¬IsSuccPrelimit x) :
    sSup s < x ↔ ∀ a ∈ s, a < x := by
  have ⟨y, hy⟩ := not_isSuccPrelimit_iff.mp h
  simp_rw [← hy.le_iff_lt_left]
  exact sSup_le_iff

/-- Similar to `iSup_lt_iff` but with a weaker RHS, as it does not require a uniform bound. -/
@[to_dual lt_iInf_iff_of_not_isPredPrelimit
/-- Similar to `lt_iInf_iff` but with a weaker RHS, as it does not require a uniform bound. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLinearOrder/Variant04d9cb9e8ee21ab43f37d6253b2778ff3ba907071be21c2aad829f82154a5e23.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLinearOrder/Variant04d9cb9e8ee21ab43f37d6253b2778ff3ba907071be21c2aad829f82154a5e23.lean#L170).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6ae2a2d9df72cc0a960c2bcdf6557624c2402937` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
