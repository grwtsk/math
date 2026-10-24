# conductorThreePsi_sub_theta_eq_primePowerRemainder

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:063d8216-3129-b9b1-cc2b-c783b9cb96c7",
  "kind": "theorem",
  "lexical_name": "conductorThreePsi_sub_theta_eq_primePowerRemainder",
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
  "slug": "conductorthreepsi-sub-theta-eq-primepowerremainder--a47b3c9d82edea14b831b7e9",
  "source": {
    "blob": "303de9690965476f743375042031b28375645ec2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 323,
    "line": 313,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ConductorThreePrimePowerRemoval/Variantd81cb0d98689799de8753e70f7baa5464fe52e2deb7004c9eeed83c2abed29ba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a47b3c9d82edea14b831b7e96ff253a6b08892247c12fb012fec4f7aaa3da2f9",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ConductorThreePrimePowerRemoval/Variantd81cb0d98689799de8753e70f7baa5464fe52e2deb7004c9eeed83c2abed29ba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:063d8216-3129-b9b1-cc2b-c783b9cb96c7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 313–323.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem conductorThreePsi_sub_theta_eq_primePowerRemainder (x : ℕ) :
    Surface.Core.ConductorThreeVonMangoldt.conductorThreePsi x -
        conductorThreeTheta x = conductorThreePrimePowerRemainder x := by
  rw [Surface.Core.ConductorThreeVonMangoldt.conductorThreePsi,
    conductorThreeTheta_eq_sum_range, ← Finset.sum_sub_distrib]
  unfold conductorThreePrimePowerRemainder
  apply Finset.sum_congr rfl
  intro n hn
  by_cases hp : n.Prime <;> simp [hp]

@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/ConductorThreePrimePowerRemoval/Variantd81cb0d98689799de8753e70f7baa5464fe52e2deb7004c9eeed83c2abed29ba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ConductorThreePrimePowerRemoval/Variantd81cb0d98689799de8753e70f7baa5464fe52e2deb7004c9eeed83c2abed29ba.lean#L313).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `303de9690965476f743375042031b28375645ec2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
