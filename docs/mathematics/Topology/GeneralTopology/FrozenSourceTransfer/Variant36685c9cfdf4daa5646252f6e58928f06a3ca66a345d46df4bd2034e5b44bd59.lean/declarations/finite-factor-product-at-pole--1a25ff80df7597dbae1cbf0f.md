# finite_factor_product_at_pole

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9cb3a4e05d3ee70ba135372f1237d9522a157470",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 121,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/36/36685c9cfdf4daa5646252f6e58928f06a3ca66a345d46df4bd2034e5b44bd59.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:17d96d6d-0257-d0dc-90e5-0e11c07be5f3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f396998c-2674-559c-5f78-d2fcc07009d1",
  "kind": "theorem",
  "lexical_name": "finite_factor_product_at_pole",
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
  "slug": "finite-factor-product-at-pole--1a25ff80df7597dbae1cbf0f",
  "source": {
    "blob": "9cb3a4e05d3ee70ba135372f1237d9522a157470",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 121,
    "path": "GRWTSK/Topology/GeneralTopology/FrozenSourceTransfer/Variant36685c9cfdf4daa5646252f6e58928f06a3ca66a345d46df4bd2034e5b44bd59.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1a25ff80df7597dbae1cbf0f20b1865d887de75ea9105053e1c7644fd769f18a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/FrozenSourceTransfer/Variant36685c9cfdf4daa5646252f6e58928f06a3ca66a345d46df4bd2034e5b44bd59.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f396998c-2674-559c-5f78-d2fcc07009d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_factor_product_at_pole (E : ℂ → ℂ) :
    Complex.exp (-(1 / 2 : ℂ)) * E (1 / 2) * V (1 / 2) = 0 := by
  rw [V_positive_pole_zero, mul_zero]

/-- A continuous finite factor has zero product limit and cannot provide the repaired pole value. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/FrozenSourceTransfer/Variant36685c9cfdf4daa5646252f6e58928f06a3ca66a345d46df4bd2034e5b44bd59.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/FrozenSourceTransfer/Variant36685c9cfdf4daa5646252f6e58928f06a3ca66a345d46df4bd2034e5b44bd59.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9cb3a4e05d3ee70ba135372f1237d9522a157470` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
