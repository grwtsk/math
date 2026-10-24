# readout_vanishes_of_mass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4e521017-a56e-37ab-97ef-9419abe5d987",
  "kind": "theorem",
  "lexical_name": "readout_vanishes_of_mass",
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
  "slug": "readout-vanishes-of-mass--84129ca91fc841ce92f227c4",
  "source": {
    "blob": "4d6454d99dd7fd9cffff555bcd00294dfb2795c0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 32,
    "path": "GRWTSK/Analysis/ErrorBounds/WeightedResidualReadout.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:84129ca91fc841ce92f227c4334571a4118df9ac318ff975905672b3d7ede322",
  "verification": {
    "reference": "docs/verification/Analysis/ErrorBounds/WeightedResidualReadout.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4e521017-a56e-37ab-97ef-9419abe5d987`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem readout_vanishes_of_mass {ι : Type*} [Fintype ι]
    (weight : ι → ℝ) (coefficient source model : ℕ → ι → ℝ)
    (actual approximate : ℕ → ℝ) (hn : ∀ i, 0 ≤ weight i)
    (sourceReadout : ∀ n, actual n = ∑ i, coefficient n i * source n i)
    (modelReadout : ∀ n, approximate n = ∑ i, coefficient n i * model n i)
    (consumerBound : ∀ n i, |coefficient n i| ≤ weight i)
    (hm : VanishesAtInfinity (fun n => channelMass weight (sourceResidual source model n))) :
    VanishesAtInfinity (fun n => actual n - approximate n) := by
  apply VanishesAtInfinity.of_nonnegative_bound hm
    (fun n => channelMass_nonnegative weight _ hn)
  intro n
  exact readout_error_bound weight (coefficient n) (sourceResidual source model n)
    (actual n) (approximate n)
    (source_readout_difference (coefficient n) (source n) (model n)
      (actual n) (approximate n) (sourceReadout n) (modelReadout n)) (consumerBound n)
end GRWTSK.Analysis.ErrorBounds
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ErrorBounds/WeightedResidualReadout.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ErrorBounds/WeightedResidualReadout.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d6454d99dd7fd9cffff555bcd00294dfb2795c0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
