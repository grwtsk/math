# iff_of_unique

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f5c6e14b-b828-d44a-a2b8-b053b15b48d4",
  "kind": "lemma",
  "lexical_name": "iff_of_unique",
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
  "slug": "iff-of-unique--e19f104ac4b153e48f8357d2",
  "source": {
    "blob": "727304af98e65385a9f5b9a0d0c9f8f24f08e7af",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 56,
    "path": "GRWTSK/Topology/GeneralTopology/CompactOpenCovered/Variant26e2995b50c67fdd586caa10cc2b5df0630c788ac9d3a38b7d517f16ef87c125.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e19f104ac4b153e48f8357d2eb62d9f7b660d20a50e6629061384ecd8827ff43",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CompactOpenCovered/Variant26e2995b50c67fdd586caa10cc2b5df0630c788ac9d3a38b7d517f16ef87c125.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f5c6e14b-b828-d44a-a2b8-b053b15b48d4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma iff_of_unique [Unique ι] :
    IsCompactOpenCovered f U ↔ ∃ (V : Opens (X default)), IsCompact V.1 ∧ f default '' V.1 = U := by
  refine ⟨fun ⟨s, hs, V, hc, hcov⟩ ↦ ?_, fun ⟨V, hc, h⟩ ↦ ?_⟩
  · cases s.eq_empty_or_singleton_of_unique <;> aesop
  · refine ⟨{default}, Set.finite_singleton _, fun i h ↦ h ▸ V, fun i ↦ ?_, by simpa⟩
    rintro rfl
    simpa

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CompactOpenCovered/Variant26e2995b50c67fdd586caa10cc2b5df0630c788ac9d3a38b7d517f16ef87c125.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CompactOpenCovered/Variant26e2995b50c67fdd586caa10cc2b5df0630c788ac9d3a38b7d517f16ef87c125.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `727304af98e65385a9f5b9a0d0c9f8f24f08e7af` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
