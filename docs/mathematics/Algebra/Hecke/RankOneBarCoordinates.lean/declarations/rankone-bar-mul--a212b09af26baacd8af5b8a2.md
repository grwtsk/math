# rankOne_bar_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:37f5a276-2e35-f007-de6e-5f0783fe756c",
  "kind": "theorem",
  "lexical_name": "rankOne_bar_mul",
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
  "slug": "rankone-bar-mul--a212b09af26baacd8af5b8a2",
  "source": {
    "blob": "58dac61a28644df3cf2717934e55800843562911",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 36,
    "path": "GRWTSK/Algebra/Hecke/RankOneBarCoordinates.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a212b09af26baacd8af5b8a2b74f698a74e3bb528eb055b6db84fb13bd5f4573",
  "verification": {
    "reference": "docs/verification/Algebra/Hecke/RankOneBarCoordinates.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:37f5a276-2e35-f007-de6e-5f0783fe756c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rankOne_bar_mul (σ : R ≃+* R) (q qinv : R)
    (hparam : σ q = qinv) (hq : q * qinv = 1) (x y : R × R) :
    rankOneBarCoordinates σ qinv (rankOneCoordinateMul q x y) =
      rankOneCoordinateMul q (rankOneBarCoordinates σ qinv x)
        (rankOneBarCoordinates σ qinv y) := by
  apply Prod.ext <;>
    simp [rankOneBarCoordinates, rankOneCoordinateMul, map_add, map_mul, map_sub, hparam] <;>
    linear_combination -(σ x.2 * σ y.2 * qinv) * hq

/-- The normalized C=v⁻¹(I+T) has fixed coordinates when σ(v⁻¹)=v. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Hecke/RankOneBarCoordinates.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Hecke/RankOneBarCoordinates.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `58dac61a28644df3cf2717934e55800843562911` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
