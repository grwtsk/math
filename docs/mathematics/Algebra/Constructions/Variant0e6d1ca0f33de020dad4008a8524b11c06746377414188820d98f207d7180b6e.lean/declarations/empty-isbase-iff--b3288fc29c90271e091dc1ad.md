# empty_isBase_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:378449fb-ada7-c976-ccde-e29a2e769a3b",
  "kind": "theorem",
  "lexical_name": "empty_isBase_iff",
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
  "slug": "empty-isbase-iff--b3288fc29c90271e091dc1ad",
  "source": {
    "blob": "1b4d68b715c2e07084918ba0dac6496c65789367",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 128,
    "path": "GRWTSK/Algebra/Constructions/Variant0e6d1ca0f33de020dad4008a8524b11c06746377414188820d98f207d7180b6e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b3288fc29c90271e091dc1ad6768f791890614a285eb6113881ca6609d1047b0",
  "verification": {
    "reference": "docs/verification/Algebra/Constructions/Variant0e6d1ca0f33de020dad4008a8524b11c06746377414188820d98f207d7180b6e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:378449fb-ada7-c976-ccde-e29a2e769a3b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem empty_isBase_iff : M.IsBase ∅ ↔ M = loopyOn M.E := by
  simp only [isBase_iff_maximal_indep, Maximal, empty_indep, le_eq_subset, empty_subset,
    subset_empty_iff, true_implies, true_and, ext_iff_indep, loopyOn_ground,
    loopyOn_indep_iff]
  exact ⟨fun h I _ ↦ ⟨@h _, fun hI ↦ by simp [hI]⟩, fun h I hI ↦ (h hI.subset_ground).1 hI⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Constructions/Variant0e6d1ca0f33de020dad4008a8524b11c06746377414188820d98f207d7180b6e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Constructions/Variant0e6d1ca0f33de020dad4008a8524b11c06746377414188820d98f207d7180b6e.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1b4d68b715c2e07084918ba0dac6496c65789367` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
