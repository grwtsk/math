# coe_norm_eq_abs_norm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:94a12feb-6851-b0c8-43e0-2291a5a86bde",
  "kind": "theorem",
  "lexical_name": "coe_norm_eq_abs_norm",
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
  "slug": "coe-norm-eq-abs-norm--5f8c188f7aa1fbc7dfad11ee",
  "source": {
    "blob": "1ade586cb8b9a3c96200939bb6563f47414367f0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 136,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/InfiniteAdeleRing/Variant84cfa19c8e0c54e0421da1d7e48fb548b315a0b72b5c2baaa66f1b5357547d13.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5f8c188f7aa1fbc7dfad11ee8f03a42ea8565952f8f507363d9c5e174b1e1138",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/InfiniteAdeleRing/Variant84cfa19c8e0c54e0421da1d7e48fb548b315a0b72b5c2baaa66f1b5357547d13.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:94a12feb-6851-b0c8-43e0-2291a5a86bde`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coe_norm_eq_abs_norm [NumberField K] (x : K) :
    ‖algebraMap K K∞ x‖ = |Algebra.norm ℚ x| := by
  simpa [-Rat.cast_abs, norm_def] using! InfinitePlace.prod_eq_abs_norm x

/-- The embedding of the completion `Kᵥ` at an infinite place `v` into the infinite adele ring. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/InfiniteAdeleRing/Variant84cfa19c8e0c54e0421da1d7e48fb548b315a0b72b5c2baaa66f1b5357547d13.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/InfiniteAdeleRing/Variant84cfa19c8e0c54e0421da1d7e48fb548b315a0b72b5c2baaa66f1b5357547d13.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ade586cb8b9a3c96200939bb6563f47414367f0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
