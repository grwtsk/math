# map_mkQ_eq_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d2490233-167a-7006-b311-0ab9fdadfc55",
  "kind": "theorem",
  "lexical_name": "map_mkQ_eq_top",
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
  "slug": "map-mkq-eq-top--d3ad68f32c40e1441baf9daf",
  "source": {
    "blob": "512bed4bfea0d4a046cc9350793fcad712653801",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 188,
    "line": 182,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant69bceab9885b6c6ecb07c4d64f0e0b90d1806a65c58509546a45571df14503eb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d3ad68f32c40e1441baf9dafc7dfbb68c95c596733dbd5d4d452bdd824b68d0f",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant69bceab9885b6c6ecb07c4d64f0e0b90d1806a65c58509546a45571df14503eb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d2490233-167a-7006-b311-0ab9fdadfc55`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 182–188.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_mkQ_eq_top : map p.mkQ p' = ⊤ ↔ p ⊔ p' = ⊤ := by
  simp only [LinearMap.map_eq_top_iff p.range_mkQ, sup_comm, ker_mkQ]

variable (q : Submodule R₂ M₂)

/-- The map from the quotient of `M` by submodule `p` to the quotient of `M₂` by submodule `q` along
`f : M → M₂` is linear. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant69bceab9885b6c6ecb07c4d64f0e0b90d1806a65c58509546a45571df14503eb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant69bceab9885b6c6ecb07c4d64f0e0b90d1806a65c58509546a45571df14503eb.lean#L182).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `512bed4bfea0d4a046cc9350793fcad712653801` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
