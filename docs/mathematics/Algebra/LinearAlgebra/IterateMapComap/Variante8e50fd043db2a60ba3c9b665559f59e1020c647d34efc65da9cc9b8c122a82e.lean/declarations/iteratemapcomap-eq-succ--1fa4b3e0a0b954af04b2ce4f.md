# iterateMapComap_eq_succ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2bf2e18fa55aa620015d7080b961a925f879d79c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 65,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e8/e8e50fd043db2a60ba3c9b665559f59e1020c647d34efc65da9cc9b8c122a82e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:260a891b-13f8-6724-d183-669b90f15ca0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c155bce3-9609-c94c-56c9-60a00c7b3eec",
  "kind": "theorem",
  "lexical_name": "iterateMapComap_eq_succ",
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
  "slug": "iteratemapcomap-eq-succ--1fa4b3e0a0b954af04b2ce4f",
  "source": {
    "blob": "2bf2e18fa55aa620015d7080b961a925f879d79c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 65,
    "path": "GRWTSK/Algebra/LinearAlgebra/IterateMapComap/Variante8e50fd043db2a60ba3c9b665559f59e1020c647d34efc65da9cc9b8c122a82e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1fa4b3e0a0b954af04b2ce4f41dde7e708d561bda1090636e2334b90dc0ffd2c",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/IterateMapComap/Variante8e50fd043db2a60ba3c9b665559f59e1020c647d34efc65da9cc9b8c122a82e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c155bce3-9609-c94c-56c9-60a00c7b3eec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iterateMapComap_eq_succ (K : Submodule R N)
    (m : ℕ) (heq : f.iterateMapComap i m K = f.iterateMapComap i (m + 1) K)
    (hf : Surjective f) (hi : Injective i) (n : ℕ) :
    f.iterateMapComap i n K = f.iterateMapComap i (n + 1) K := by
  induction n with
  | zero =>
    contrapose! heq
    induction m with
    | zero => exact heq
    | succ m ih =>
      rw [iterateMapComap, iterateMapComap, iterate_succ', iterate_succ']
      exact fun H ↦ ih (map_injective_of_injective hi (comap_injective_of_surjective hf H))
  | succ n ih =>
    rw [iterateMapComap, iterateMapComap, iterate_succ', iterate_succ',
      Function.comp_apply, Function.comp_apply, ← iterateMapComap, ← iterateMapComap, ih]

/-- If `f` is surjective, `i` is injective, and there exists some `m` such that
`LinearMap.iterateMapComap f i m K = LinearMap.iterateMapComap f i (m + 1) K`,
then the kernel of `f` is contained in `K`.
This is a corollary of `LinearMap.iterateMapComap_eq_succ` and `LinearMap.ker_le_comap`.
As a special case, if one can take `K` to be zero,
then `f` is injective. This is the key result for establishing the strong rank condition
for noetherian rings. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/IterateMapComap/Variante8e50fd043db2a60ba3c9b665559f59e1020c647d34efc65da9cc9b8c122a82e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/IterateMapComap/Variante8e50fd043db2a60ba3c9b665559f59e1020c647d34efc65da9cc9b8c122a82e.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2bf2e18fa55aa620015d7080b961a925f879d79c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
