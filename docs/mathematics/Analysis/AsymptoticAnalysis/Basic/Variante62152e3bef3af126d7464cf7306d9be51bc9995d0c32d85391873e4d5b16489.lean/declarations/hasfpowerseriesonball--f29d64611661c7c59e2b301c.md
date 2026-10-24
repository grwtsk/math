# HasFPowerSeriesOnBall

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a59d091e0b27c6f255ba94c45bec70c149b00d9bf09984858fc1b0c000ed5519",
  "kind": "structure",
  "lexical_name": "HasFPowerSeriesOnBall",
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
  "slug": "hasfpowerseriesonball--f29d64611661c7c59e2b301c",
  "source": {
    "blob": "f42d3dce53c84fc9f0fbd5e05ecccdb6b8f44796",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 398,
    "line": 389,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Basic/Variante62152e3bef3af126d7464cf7306d9be51bc9995d0c32d85391873e4d5b16489.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f29d64611661c7c59e2b301c24e2b7ab4391f837416f60005c86577930dcb5d5",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Basic/Variante62152e3bef3af126d7464cf7306d9be51bc9995d0c32d85391873e4d5b16489.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a59d091e0b27c6f255ba94c45bec70c149b00d9bf09984858fc1b0c000ed5519`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 389–398.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure HasFPowerSeriesOnBall (f : E → F) (p : FormalMultilinearSeries 𝕜 E F) (x : E) (r : ℝ≥0∞) :
    Prop where
  r_le : r ≤ p.radius
  r_pos : 0 < r
  hasSum :
    ∀ {y}, y ∈ EMetric.ball (0 : E) r → HasSum (fun n : ℕ => p n fun _ : Fin n => y) (f (x + y))
#align has_fpower_series_on_ball HasFPowerSeriesOnBall

/-- Given a function `f : E → F` and a formal multilinear series `p`, we say that `f` has `p` as
a power series around `x` if `f (x + y) = ∑' pₙ yⁿ` for all `y` in a neighborhood of `0`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Basic/Variante62152e3bef3af126d7464cf7306d9be51bc9995d0c32d85391873e4d5b16489.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Basic/Variante62152e3bef3af126d7464cf7306d9be51bc9995d0c32d85391873e4d5b16489.lean#L389).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f42d3dce53c84fc9f0fbd5e05ecccdb6b8f44796` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
