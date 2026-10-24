# paths_odd_eq_empty

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "39da14536f6413ab19e984562b75a9212cd679d5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 122,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/30/306be3b977f5cf5cdf6eedf2f9893f5678f9f37766ec8d9ad3bfcbbc234fb11b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:43193ef3-5818-5010-2e5f-25c8e31762f6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d1a4ff1d-d391-fba8-0732-5854b4612e9a",
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
  "slug": "paths-odd-eq-empty--71bad5fada81bddf15d9a1ec",
  "source": {
    "blob": "39da14536f6413ab19e984562b75a9212cd679d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 122,
    "path": "GRWTSK/Algebra/LinearAlgebra/CatalanJacobiTest/Variant306be3b977f5cf5cdf6eedf2f9893f5678f9f37766ec8d9ad3bfcbbc234fb11b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:71bad5fada81bddf15d9a1ecc905a547a5578bd9972dec275ebbdd13a7f43c1e",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/CatalanJacobiTest/Variant306be3b977f5cf5cdf6eedf2f9893f5678f9f37766ec8d9ad3bfcbbc234fb11b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d1a4ff1d-d391-fba8-0732-5854b4612e9a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma paths_odd_eq_empty (n : ℕ) : paths (2*n+1) 0 = ∅ := by
  apply Finset.eq_empty_iff_forall_notMem.mpr
  intro l H
  obtain ⟨hl, hc, _⟩ := (mem_paths (2*n+1) 0 l).mp H
  have L := length_eq_counts l
  simp at hc
  omega

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/CatalanJacobiTest/Variant306be3b977f5cf5cdf6eedf2f9893f5678f9f37766ec8d9ad3bfcbbc234fb11b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/CatalanJacobiTest/Variant306be3b977f5cf5cdf6eedf2f9893f5678f9f37766ec8d9ad3bfcbbc234fb11b.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `39da14536f6413ab19e984562b75a9212cd679d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
