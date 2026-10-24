# multiplier_integrand_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6ac310ce-90be-a72f-a1c3-00c7d7bdd429",
  "kind": "theorem",
  "lexical_name": "multiplier_integrand_integrable",
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
  "slug": "multiplier-integrand-integrable--9d7d4aeab7f9007b7b5d6d4f",
  "source": {
    "blob": "a9dfd4959ada89b12192707a30b87392b2920203",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 51,
    "path": "GRWTSK/Topology/GeneralTopology/ZeroSmoothingMultiplier/Variante4142f0342550878c91f125dfb39bef276752923edb83eebbb8d40b1396bf4b5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9d7d4aeab7f9007b7b5d6d4f46395da73ee4b47e97762b63d866922cb5072664",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ZeroSmoothingMultiplier/Variante4142f0342550878c91f125dfb39bef276752923edb83eebbb8d40b1396bf4b5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6ac310ce-90be-a72f-a1c3-00c7d7bdd429`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem multiplier_integrand_integrable (ε : ℝ) (hε : 0 < ε) (z : ℂ) :
    Integrable (fun y : ℝ ↦ (mollifier ε hε y : ℂ) * Complex.exp (z * (y : ℂ))) volume :=
  (multiplier_integrand_continuous ε hε z).integrable_of_hasCompactSupport
    (multiplier_integrand_hasCompactSupport ε hε z)

/-- Compact kernel support controls the real exponent at every integration point. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ZeroSmoothingMultiplier/Variante4142f0342550878c91f125dfb39bef276752923edb83eebbb8d40b1396bf4b5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ZeroSmoothingMultiplier/Variante4142f0342550878c91f125dfb39bef276752923edb83eebbb8d40b1396bf4b5.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a9dfd4959ada89b12192707a30b87392b2920203` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
