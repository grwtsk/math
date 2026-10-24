# positive_integer_residue_budget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:402a237b-31f6-b61d-4207-caaa15cc9ba2",
  "kind": "theorem",
  "lexical_name": "positive_integer_residue_budget",
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
  "slug": "positive-integer-residue-budget--c352e9acf046bdad1b64f054",
  "source": {
    "blob": "0c7882f0f345eb2d00a8db514d9cbab20e13f504",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 39,
    "line": 35,
    "path": "GRWTSK/Analysis/BranchPoleGrowthBudget/Variant93cfdebf42203bdaa52e43f3cd1d0de845916d9955fa7c1f4c15ea2fc5760f0e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c352e9acf046bdad1b64f054a99a03b7b870155bdcb68deefb731418038b39b5",
  "verification": {
    "reference": "docs/verification/Analysis/BranchPoleGrowthBudget/Variant93cfdebf42203bdaa52e43f3cd1d0de845916d9955fa7c1f4c15ea2fc5760f0e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:402a237b-31f6-b61d-4207-caaa15cc9ba2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–39.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem positive_integer_residue_budget (g : ℝ → ℝ) (L C p : ℝ) (m : ℕ)
    (hL : 0 < L) (hlim : Tendsto g (𝓝[>] (0 : ℝ)) (𝓝 L))
    (hbound : ∀ᶠ σ in 𝓝[>] (0 : ℝ), g σ ≤ C * σ ^ ((m : ℝ) - p - 1)) :
    (m : ℝ) ≤ p + 1 := positive_residue_forces_exponent_le g L C m p hL hlim hbound

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/BranchPoleGrowthBudget/Variant93cfdebf42203bdaa52e43f3cd1d0de845916d9955fa7c1f4c15ea2fc5760f0e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/BranchPoleGrowthBudget/Variant93cfdebf42203bdaa52e43f3cd1d0de845916d9955fa7c1f4c15ea2fc5760f0e.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0c7882f0f345eb2d00a8db514d9cbab20e13f504` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
