# basicOpen_eq_zeroLocus_of_mul_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "785e3ed3c72359e96d30ee598be8c3e59e4145f3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 972,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9d/9dc5ef7fb0fd2ea06b696dadb86c92ed803ed944879d0c260a7cbea1e0935aa5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:470648b4-e5f3-d4bf-8884-6af9821faf1f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:76f6343c-ad24-96c1-aaa8-7cdc09dc1bd0",
  "kind": "lemma",
  "lexical_name": "basicOpen_eq_zeroLocus_of_mul_add",
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
  "slug": "basicopen-eq-zerolocus-of-mul-add--d077452ef6e5f93c69b75475",
  "source": {
    "blob": "785e3ed3c72359e96d30ee598be8c3e59e4145f3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 979,
    "line": 972,
    "path": "GRWTSK/Topology/GeneralTopology/Topology/Variant9dc5ef7fb0fd2ea06b696dadb86c92ed803ed944879d0c260a7cbea1e0935aa5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d077452ef6e5f93c69b75475d311b4dede25bc667d00ac559185457bc76875b6",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Topology/Variant9dc5ef7fb0fd2ea06b696dadb86c92ed803ed944879d0c260a7cbea1e0935aa5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:76f6343c-ad24-96c1-aaa8-7cdc09dc1bd0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 972–979.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma basicOpen_eq_zeroLocus_of_mul_add (e f : R) (mul : e * f = 0) (add : e + f = 1) :
    basicOpen e = zeroLocus {f} := by
  ext p
  suffices e ∉ p.asIdeal ↔ f ∈ p.asIdeal by simpa
  refine ⟨(p.2.mem_or_mem_of_mul_eq_zero mul).resolve_left, fun h₁ h₂ ↦ p.2.1 ?_⟩
  rw [Ideal.eq_top_iff_one, ← add]
  exact add_mem h₂ h₁

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Topology/Variant9dc5ef7fb0fd2ea06b696dadb86c92ed803ed944879d0c260a7cbea1e0935aa5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Topology/Variant9dc5ef7fb0fd2ea06b696dadb86c92ed803ed944879d0c260a7cbea1e0935aa5.lean#L972).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `785e3ed3c72359e96d30ee598be8c3e59e4145f3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
