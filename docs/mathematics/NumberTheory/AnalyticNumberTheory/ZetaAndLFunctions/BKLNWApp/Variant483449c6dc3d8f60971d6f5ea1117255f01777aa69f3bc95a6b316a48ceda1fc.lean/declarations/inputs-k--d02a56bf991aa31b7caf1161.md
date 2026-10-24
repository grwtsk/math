# Inputs.k

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9f9a22c6fb63535b481470cfd4bfa16c937176abdaa6b6e8a032e03053ee96f1",
  "kind": "def",
  "lexical_name": "Inputs.k",
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
  "slug": "inputs-k--d02a56bf991aa31b7caf1161",
  "source": {
    "blob": "8540b9c42bd040f88ceaa130fd3ccba5e0ae6db4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 324,
    "line": 310,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/BKLNWApp/Variant483449c6dc3d8f60971d6f5ea1117255f01777aa69f3bc95a6b316a48ceda1fc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d02a56bf991aa31b7caf1161915d47a161be7fb9a8ddca17974713eb1458a174",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/BKLNWApp/Variant483449c6dc3d8f60971d6f5ea1117255f01777aa69f3bc95a6b316a48ceda1fc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9f9a22c6fb63535b481470cfd4bfa16c937176abdaa6b6e8a032e03053ee96f1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 310–324.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def Inputs.k (I : Inputs)
    (σ x₀ : ℝ) : ℝ :=
  (exp ((10 - 16 * σ) / 3 *
      (log x₀ / I.R) ^ (1 / 2)) *
    (log x₀ / I.R) ^ (5 - 2 * σ)) ^ (-1 : ℝ)

@[blueprint
  "bklnw-eq_A_17"
  (title := "Equation (A.17)")
  (statement := /-- We define
  $$ c_3(\sigma, x_0) = 2
  \exp\left( -2 \left( \frac{\log x_0}{R}
  \right)^{1/2} \right)
  (\log x_0)^2 k(\sigma, x_0). $$
  -/)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/BKLNWApp/Variant483449c6dc3d8f60971d6f5ea1117255f01777aa69f3bc95a6b316a48ceda1fc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/BKLNWApp/Variant483449c6dc3d8f60971d6f5ea1117255f01777aa69f3bc95a6b316a48ceda1fc.lean#L310).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8540b9c42bd040f88ceaa130fd3ccba5e0ae6db4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
