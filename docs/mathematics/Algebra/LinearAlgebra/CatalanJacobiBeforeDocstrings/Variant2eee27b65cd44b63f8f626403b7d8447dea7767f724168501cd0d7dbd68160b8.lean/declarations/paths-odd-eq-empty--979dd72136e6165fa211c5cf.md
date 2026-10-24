# paths_odd_eq_empty

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c38b3a285efe19a7ceafe3f49ba66b77b574dd32",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 143,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2e/2eee27b65cd44b63f8f626403b7d8447dea7767f724168501cd0d7dbd68160b8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fcda6702-543a-80f3-06a1-30eff85ea456",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:13c3eab0-973e-98b6-c433-ca8cdd8d28f1",
  "kind": "lemma",
  "lexical_name": "paths_odd_eq_empty",
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
  "slug": "paths-odd-eq-empty--979dd72136e6165fa211c5cf",
  "source": {
    "blob": "c38b3a285efe19a7ceafe3f49ba66b77b574dd32",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 150,
    "line": 143,
    "path": "GRWTSK/Algebra/LinearAlgebra/CatalanJacobiBeforeDocstrings/Variant2eee27b65cd44b63f8f626403b7d8447dea7767f724168501cd0d7dbd68160b8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:979dd72136e6165fa211c5cf950692a3f9a192644beaa5345beb5fe9617ac22f",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/CatalanJacobiBeforeDocstrings/Variant2eee27b65cd44b63f8f626403b7d8447dea7767f724168501cd0d7dbd68160b8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:13c3eab0-973e-98b6-c433-ca8cdd8d28f1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–150.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma paths_odd_eq_empty (n : ℕ) : paths (2 * n + 1) 0 = ∅ := by
  apply Finset.eq_empty_iff_forall_notMem.mpr
  intro l H
  obtain ⟨hl, hc, _⟩ := (mem_paths (2 * n + 1) 0 l).mp H
  have L := length_eq_counts l
  simp at hc
  omega

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/CatalanJacobiBeforeDocstrings/Variant2eee27b65cd44b63f8f626403b7d8447dea7767f724168501cd0d7dbd68160b8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/CatalanJacobiBeforeDocstrings/Variant2eee27b65cd44b63f8f626403b7d8447dea7767f724168501cd0d7dbd68160b8.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c38b3a285efe19a7ceafe3f49ba66b77b574dd32` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
