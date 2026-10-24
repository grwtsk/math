# toCharTwoJEqZeroNF_spec

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "07054e09ffb71b29a619f0db2b929ec5ec65532a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 655,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d9/d9b961a91c4634bdac4d8a7a901efd1a694ccd81ce52f09c1bcf391b354aea2a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c3c58f6e-2c50-9b12-b698-a4fe11fec3bc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a2be35a8-35b8-266b-6fdd-cc34d3999ec6",
  "kind": "theorem",
  "lexical_name": "toCharTwoJEqZeroNF_spec",
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
  "slug": "tochartwojeqzeronf-spec--3f5bb0a61b09581f884d5294",
  "source": {
    "blob": "07054e09ffb71b29a619f0db2b929ec5ec65532a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 666,
    "line": 655,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/NormalForms/Variantd9b961a91c4634bdac4d8a7a901efd1a694ccd81ce52f09c1bcf391b354aea2a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3f5bb0a61b09581f884d5294bf686597dd530a537dac3a456bdc4e30143f9dc7",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/NormalForms/Variantd9b961a91c4634bdac4d8a7a901efd1a694ccd81ce52f09c1bcf391b354aea2a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a2be35a8-35b8-266b-6fdd-cc34d3999ec6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 655–666.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toCharTwoJEqZeroNF_spec (ha₁ : W.a₁ = 0) :
    (W.toCharTwoJEqZeroNF • W).IsCharTwoJEqZeroNF := by
  constructor
  · simp [toCharTwoJEqZeroNF, ha₁, variableChange_a₁]
  · simp_rw [toCharTwoJEqZeroNF, variableChange_a₂, inv_one, Units.val_one]
    linear_combination 2 * W.a₂ * CharP.cast_eq_zero R 2

variable (W : WeierstrassCurve F)

/-- For a `WeierstrassCurve` defined over a field of characteristic = 2,
there is an explicit change of variables of it to `Y² + XY = X³ + a₂X² + a₆`
(`WeierstrassCurve.IsCharTwoJNeZeroNF`) if its j ≠ 0. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/NormalForms/Variantd9b961a91c4634bdac4d8a7a901efd1a694ccd81ce52f09c1bcf391b354aea2a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/NormalForms/Variantd9b961a91c4634bdac4d8a7a901efd1a694ccd81ce52f09c1bcf391b354aea2a.lean#L655).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `07054e09ffb71b29a619f0db2b929ec5ec65532a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
