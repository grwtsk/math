# theorem_2_7_holds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9b3420cd3d7b333a4003ef26fd9f10a1d8dbc169282227c781d52f743bc944c2",
  "kind": "def",
  "lexical_name": "theorem_2_7_holds",
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
  "slug": "theorem-2-7-holds--bf92f8c5e5f24b8584c9f66f",
  "source": {
    "blob": "d645be53aef2067c81ea220aede21a93d941f61e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 147,
    "line": 138,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/FioriKadiriSwidinsky/Variantb52332cec7f35afdbefbe63e742f0e274221e19b2aff0e52968c527e9a79952c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bf92f8c5e5f24b8584c9f66fba9b7506dc2cb79c9ebdad7ea9a6a6660a330e72",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/FioriKadiriSwidinsky/Variantb52332cec7f35afdbefbe63e742f0e274221e19b2aff0e52968c527e9a79952c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9b3420cd3d7b333a4003ef26fd9f10a1d8dbc169282227c781d52f743bc944c2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–147.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def theorem_2_7_holds (σ _α _δ d CC₁ _c₁ CC₂ _c₂ H₀ k : ℝ) : Prop :=
    ∀ H T, H ∈ Set.Ico 1002 H₀ → T ≥ H₀ →
    riemannZeta.N' σ T ≤ ((T - H) * log T) / (2 * π * d) *
      log (1 + CC₁ * (log (k * T)) ^ (2 * σ) *
        (log T) ^ (4 * (1 - σ)) * T ^ (8 / 3 * (1 - σ)) / (T - H)) +
      CC₂ * (log T) ^ 2 / (2 * π * d) ∧
    riemannZeta.N' σ T ≤ CC₁ * (log (k * T)) ^ (2 * σ) *
      (log T) ^ (5 - 4 * σ) * T ^ (8 / 3 * (1 - σ)) / (2 * π * d) +
      CC₂ * (log T) ^ 2 / (2 * π * d)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/FioriKadiriSwidinsky/Variantb52332cec7f35afdbefbe63e742f0e274221e19b2aff0e52968c527e9a79952c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/FioriKadiriSwidinsky/Variantb52332cec7f35afdbefbe63e742f0e274221e19b2aff0e52968c527e9a79952c.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d645be53aef2067c81ea220aede21a93d941f61e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
