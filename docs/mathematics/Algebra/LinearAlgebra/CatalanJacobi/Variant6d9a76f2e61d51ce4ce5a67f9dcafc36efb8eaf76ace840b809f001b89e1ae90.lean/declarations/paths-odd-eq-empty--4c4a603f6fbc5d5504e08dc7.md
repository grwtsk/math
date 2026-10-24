# paths_odd_eq_empty

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a75d7fa2-4907-cabe-96cf-43712e70210b",
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
  "slug": "paths-odd-eq-empty--4c4a603f6fbc5d5504e08dc7",
  "source": {
    "blob": "eb6ee69d5a5270a414850f1fcd65ca9ea93f7dd0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 161,
    "line": 154,
    "path": "GRWTSK/Algebra/LinearAlgebra/CatalanJacobi/Variant6d9a76f2e61d51ce4ce5a67f9dcafc36efb8eaf76ace840b809f001b89e1ae90.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4c4a603f6fbc5d5504e08dc73e933414979bcbeffdaec4d8eb30b320dd4b0bbf",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/CatalanJacobi/Variant6d9a76f2e61d51ce4ce5a67f9dcafc36efb8eaf76ace840b809f001b89e1ae90.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a75d7fa2-4907-cabe-96cf-43712e70210b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 154–161.

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

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/CatalanJacobi/Variant6d9a76f2e61d51ce4ce5a67f9dcafc36efb8eaf76ace840b809f001b89e1ae90.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/CatalanJacobi/Variant6d9a76f2e61d51ce4ce5a67f9dcafc36efb8eaf76ace840b809f001b89e1ae90.lean#L154).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eb6ee69d5a5270a414850f1fcd65ca9ea93f7dd0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
