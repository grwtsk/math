# dist_birkhoffAverage_apply_birkhoffAverage

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:db17436e-8c65-0dbf-75d5-28ea0140292c",
  "kind": "theorem",
  "lexical_name": "dist_birkhoffAverage_apply_birkhoffAverage",
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
  "slug": "dist-birkhoffaverage-apply-birkhoffaverage--85827ad4c7edd3b8bf0f5aff",
  "source": {
    "blob": "5776f39296405f9b750ec40e2000aa91a5e19450",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 72,
    "path": "GRWTSK/Topology/GeneralTopology/NormedSpace/Variant1a49af899f736dea816b4b03f89d61dcf8e8e0651413d8e37580b4ebf87cd9ad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:85827ad4c7edd3b8bf0f5affd1168f03ecb57dc344b00f13251a0e5aebe1d2c2",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/NormedSpace/Variant1a49af899f736dea816b4b03f89d61dcf8e8e0651413d8e37580b4ebf87cd9ad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:db17436e-8c65-0dbf-75d5-28ea0140292c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dist_birkhoffAverage_apply_birkhoffAverage (f : α → α) (g : α → E) (n : ℕ) (x : α) :
    dist (birkhoffAverage 𝕜 f g n (f x)) (birkhoffAverage 𝕜 f g n x) =
      dist (g (f^[n] x)) (g x) / n := by
  simp [dist_birkhoffAverage_birkhoffAverage, dist_birkhoffSum_apply_birkhoffSum]

/-- If a function `g` is bounded along the positive orbit of `x` under `f`,
then the difference between Birkhoff averages of `g`
along the orbit of `f x` and along the orbit of `x`
tends to zero.

See also `tendsto_birkhoffAverage_apply_sub_birkhoffAverage'`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/NormedSpace/Variant1a49af899f736dea816b4b03f89d61dcf8e8e0651413d8e37580b4ebf87cd9ad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/NormedSpace/Variant1a49af899f736dea816b4b03f89d61dcf8e8e0651413d8e37580b4ebf87cd9ad.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5776f39296405f9b750ec40e2000aa91a5e19450` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
