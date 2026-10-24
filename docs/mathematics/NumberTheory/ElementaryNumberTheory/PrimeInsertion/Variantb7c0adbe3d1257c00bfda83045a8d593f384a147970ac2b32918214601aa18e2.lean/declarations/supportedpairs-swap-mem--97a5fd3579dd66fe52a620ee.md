# supportedPairs_swap_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f47bc15ee7659d444f6099da0293a4fd500d3780",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 136,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b7/b7c0adbe3d1257c00bfda83045a8d593f384a147970ac2b32918214601aa18e2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fd3dfd80-969d-2a9c-8ab5-d28f50798f8e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d042c3a3-22f2-a370-54d5-0873c412af74",
  "kind": "theorem",
  "lexical_name": "supportedPairs_swap_mem",
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
  "slug": "supportedpairs-swap-mem--97a5fd3579dd66fe52a620ee",
  "source": {
    "blob": "f47bc15ee7659d444f6099da0293a4fd500d3780",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 143,
    "line": 136,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/PrimeInsertion/Variantb7c0adbe3d1257c00bfda83045a8d593f384a147970ac2b32918214601aa18e2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:97a5fd3579dd66fe52a620ee556a7aeef6713b3778935d02c5b751d9b2e52cab",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/PrimeInsertion/Variantb7c0adbe3d1257c00bfda83045a8d593f384a147970ac2b32918214601aa18e2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d042c3a3-22f2-a370-54d5-0873c412af74`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–143.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem supportedPairs_swap_mem (P : Finset ℕ)
    (hP : ∀ q ∈ P, Nat.Prime q) (a : ℕ × ℕ) (ha : a ∈ supportedPairs P) :
    (a.2, a.1) ∈ supportedPairs P := by
  have hs := (mem_supportedPairs_iff P hP a.1 a.2).mp ha
  exact (mem_supportedPairs_iff P hP a.2 a.1).mpr
    ⟨hs.2.1, hs.1, hs.2.2.1.symm, hs.2.2.2.2, hs.2.2.2.1⟩

/-- Exchanging the two ordered coordinates exchanges the genuine rectangular cutoffs. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/PrimeInsertion/Variantb7c0adbe3d1257c00bfda83045a8d593f384a147970ac2b32918214601aa18e2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/PrimeInsertion/Variantb7c0adbe3d1257c00bfda83045a8d593f384a147970ac2b32918214601aa18e2.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f47bc15ee7659d444f6099da0293a4fd500d3780` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
