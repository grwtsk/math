# fixedPointCount_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "019fd503b86f32b87105f7a34ddb803ec66b9341",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 531,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9f/9f6b6dde7fcf8c6f3d03af30b14361e0c3bfe41c780207a9d5fda53feec2170d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e3877aaf-55bc-c586-578d-34fbc3b77a39",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8707a751-d214-1fe0-2b58-51de3bfce13f",
  "kind": "theorem",
  "lexical_name": "fixedPointCount_le",
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
  "slug": "fixedpointcount-le--b7d73831914d8ed36322d333",
  "source": {
    "blob": "019fd503b86f32b87105f7a34ddb803ec66b9341",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 536,
    "line": 531,
    "path": "GRWTSK/Algebra/Symmetry/Variant9f6b6dde7fcf8c6f3d03af30b14361e0c3bfe41c780207a9d5fda53feec2170d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b7d73831914d8ed36322d333e54af657d04ad2489a55fd35ce4a0aeeafbb3d81",
  "verification": {
    "reference": "docs/verification/Algebra/Symmetry/Variant9f6b6dde7fcf8c6f3d03af30b14361e0c3bfe41c780207a9d5fda53feec2170d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8707a751-d214-1fe0-2b58-51de3bfce13f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 531–536.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fixedPointCount_le {n : Nat} (H : BitPerm n) (r : Nat) :
    fixedPointCount H r ≤ 2 ^ n := by
  rw [← BitMatrix.Dynamics.Avalanche.card_bits n, ← Finset.card_univ]
  exact Finset.card_le_card (Finset.filter_subset _ _)

/-- Conjugate state permutations have the same fixed-point counts at every time. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Symmetry/Variant9f6b6dde7fcf8c6f3d03af30b14361e0c3bfe41c780207a9d5fda53feec2170d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Symmetry/Variant9f6b6dde7fcf8c6f3d03af30b14361e0c3bfe41c780207a9d5fda53feec2170d.lean#L531).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `019fd503b86f32b87105f7a34ddb803ec66b9341` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
