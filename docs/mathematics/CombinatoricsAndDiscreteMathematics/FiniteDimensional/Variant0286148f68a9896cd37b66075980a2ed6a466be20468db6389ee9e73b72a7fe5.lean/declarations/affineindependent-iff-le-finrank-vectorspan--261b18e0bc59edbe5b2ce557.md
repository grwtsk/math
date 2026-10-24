# affineIndependent_iff_le_finrank_vectorSpan

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7ac36d50-3d6a-ec4a-db1f-6caa264132b7",
  "kind": "theorem",
  "lexical_name": "affineIndependent_iff_le_finrank_vectorSpan",
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
  "slug": "affineindependent-iff-le-finrank-vectorspan--261b18e0bc59edbe5b2ce557",
  "source": {
    "blob": "e0f18d1f383311dc12e2e8cb4df73b6dc44ec2a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 203,
    "line": 192,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteDimensional/Variant0286148f68a9896cd37b66075980a2ed6a466be20468db6389ee9e73b72a7fe5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:261b18e0bc59edbe5b2ce55771a08a65062d1a7724ed41f156682d03fbaa29b5",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/FiniteDimensional/Variant0286148f68a9896cd37b66075980a2ed6a466be20468db6389ee9e73b72a7fe5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7ac36d50-3d6a-ec4a-db1f-6caa264132b7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 192–203.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem affineIndependent_iff_le_finrank_vectorSpan [Fintype ι] (p : ι → P) {n : ℕ}
    (hc : Fintype.card ι = n + 1) :
    AffineIndependent k p ↔ n ≤ finrank k (vectorSpan k (Set.range p)) := by
  rw [affineIndependent_iff_finrank_vectorSpan_eq k p hc]
  constructor
  · rintro rfl
    rfl
  · exact fun hle => le_antisymm (finrank_vectorSpan_range_le k p hc) hle
#align affine_independent_iff_le_finrank_vector_span affineIndependent_iff_le_finrank_vectorSpan

/-- `n + 2` points are affinely independent if and only if their
`vectorSpan` does not have dimension at most `n`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/FiniteDimensional/Variant0286148f68a9896cd37b66075980a2ed6a466be20468db6389ee9e73b72a7fe5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteDimensional/Variant0286148f68a9896cd37b66075980a2ed6a466be20468db6389ee9e73b72a7fe5.lean#L192).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e0f18d1f383311dc12e2e8cb4df73b6dc44ec2a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
