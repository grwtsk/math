# nat_floor_real_sqrt_eq_nat_sqrt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "92936ac2ea8d16aff301eecc8983d24e0b1f65d2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 435,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f4/f4e96c735ead60a8983bcf8eb6e38dfd05d8102c3f741094f73639858605bb6a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d14a5b9c-8e8a-a6ac-c419-1f82fa5ad132",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:69682f05-f8cc-d104-17fa-8ffc6d32d0fb",
  "kind": "theorem",
  "lexical_name": "nat_floor_real_sqrt_eq_nat_sqrt",
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
  "slug": "nat-floor-real-sqrt-eq-nat-sqrt--ae60d3b8379dd64c81f41a1d",
  "source": {
    "blob": "92936ac2ea8d16aff301eecc8983d24e0b1f65d2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 439,
    "line": 435,
    "path": "GRWTSK/Topology/GeneralTopology/Sqrt/Variantf4e96c735ead60a8983bcf8eb6e38dfd05d8102c3f741094f73639858605bb6a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ae60d3b8379dd64c81f41a1df016f96cd2c70b400e12106b1f178d2554dc1ec1",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Sqrt/Variantf4e96c735ead60a8983bcf8eb6e38dfd05d8102c3f741094f73639858605bb6a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:69682f05-f8cc-d104-17fa-8ffc6d32d0fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 435–439.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nat_floor_real_sqrt_eq_nat_sqrt {a : ℕ} : ⌊√(a : ℝ)⌋₊ = Nat.sqrt a := by
  rw [Nat.floor_eq_iff (sqrt_nonneg a)]
  exact ⟨nat_sqrt_le_real_sqrt, real_sqrt_lt_nat_sqrt_succ⟩

/-- Bernoulli's inequality for exponent `1 / 2`, stated using `sqrt`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Sqrt/Variantf4e96c735ead60a8983bcf8eb6e38dfd05d8102c3f741094f73639858605bb6a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Sqrt/Variantf4e96c735ead60a8983bcf8eb6e38dfd05d8102c3f741094f73639858605bb6a.lean#L435).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `92936ac2ea8d16aff301eecc8983d24e0b1f65d2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
