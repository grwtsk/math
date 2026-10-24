# disjSups_assoc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "43c079997e2e7dade5cd646a5d2ee545185c2d5b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 483,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/50/50eae8ea2d4e0f0828ddd5c73d1d2a267bf07d176277d9c754b2c7ec22c9bcc7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f2f12472-b6bc-ca5d-e7a0-49f9ef3af9d3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6ac6d27e-bf13-5aca-493c-601e46f6dd8a",
  "kind": "theorem",
  "lexical_name": "disjSups_assoc",
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
  "slug": "disjsups-assoc--49ba0e010156be05e9fbd39f",
  "source": {
    "blob": "43c079997e2e7dade5cd646a5d2ee545185c2d5b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 489,
    "line": 483,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sups/Variant50eae8ea2d4e0f0828ddd5c73d1d2a267bf07d176277d9c754b2c7ec22c9bcc7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:49ba0e010156be05e9fbd39ff6a40b640dae0e08565405e9a49b047c9d95f974",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sups/Variant50eae8ea2d4e0f0828ddd5c73d1d2a267bf07d176277d9c754b2c7ec22c9bcc7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6ac6d27e-bf13-5aca-493c-601e46f6dd8a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 483–489.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem disjSups_assoc : ∀ s t u : Finset α, s ○ t ○ u = s ○ (t ○ u) := by
  refine (associative_of_commutative_of_le inferInstance ?_).assoc
  simp only [le_eq_subset, disjSups_subset_iff, mem_disjSups]
  rintro s t u _ ⟨a, ha, b, hb, hab, rfl⟩ c hc habc
  rw [disjoint_sup_left] at habc
  exact ⟨a, ha, _, ⟨b, hb, c, hc, habc.2, rfl⟩, hab.sup_right habc.1, (sup_assoc ..).symm⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sups/Variant50eae8ea2d4e0f0828ddd5c73d1d2a267bf07d176277d9c754b2c7ec22c9bcc7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sups/Variant50eae8ea2d4e0f0828ddd5c73d1d2a267bf07d176277d9c754b2c7ec22c9bcc7.lean#L483).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `43c079997e2e7dade5cd646a5d2ee545185c2d5b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
