# norm_unit_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a56e33ae-9ba3-8271-200e-642359201d05",
  "kind": "theorem",
  "lexical_name": "norm_unit_smul",
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
  "slug": "norm-unit-smul--1fe41d7284a0becfc09af4a3",
  "source": {
    "blob": "e402cf9e21e2f5980eb41f22d785a1b310c4f5a7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 88,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/FundamentalCone/Variant9f6bd370978ccc6d1ece8c57fb65eb136ab4d30441805ad95bb7170a26533f37.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1fe41d7284a0becfc09af4a32024cf464382c994ae4c6e79e05822dcd5bb13cd",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/FundamentalCone/Variant9f6bd370978ccc6d1ece8c57fb65eb136ab4d30441805ad95bb7170a26533f37.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a56e33ae-9ba3-8271-200e-642359201d05`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_unit_smul (u : (𝓞 K)ˣ) (x : mixedSpace K) :
    mixedEmbedding.norm (u • x) = mixedEmbedding.norm x := by
  rw [unitSMul_smul, map_mul, norm_unit, one_mul]

end UnitSMul

noncomputable section logMap

open NumberField.Units NumberField.Units.dirichletUnitTheorem Module

variable [NumberField K] {K}

open Classical in
/-- The map from the mixed space to `logSpace K` defined in such way that: 1) it factors the map
`logEmbedding`, see `logMap_eq_logEmbedding`; 2) it is constant on the sets
`{c • x | c ∈ ℝ, c ≠ 0}` if `norm x ≠ 0`, see `logMap_real_smul`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/FundamentalCone/Variant9f6bd370978ccc6d1ece8c57fb65eb136ab4d30441805ad95bb7170a26533f37.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/FundamentalCone/Variant9f6bd370978ccc6d1ece8c57fb65eb136ab4d30441805ad95bb7170a26533f37.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e402cf9e21e2f5980eb41f22d785a1b310c4f5a7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
