# dist_iterate_next_iterate_next_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:63c11f04-2392-215b-679e-cf3f5466a19a",
  "kind": "lemma",
  "lexical_name": "dist_iterate_next_iterate_next_le",
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
  "slug": "dist-iterate-next-iterate-next-le--84330e1da81bcdee2c9d2c9e",
  "source": {
    "blob": "914aafa576d0474f49ba074168c387ae6059e2ff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 386,
    "line": 372,
    "path": "GRWTSK/Topology/GeneralTopology/PicardLindelof/Variant255b9169dc8655d23e58f681f90452f6fb1b4537e14c5b60dbdb6d99d5b2f5bd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:84330e1da81bcdee2c9d2c9ebfe4273942e510d53d910ecab0cd9b3c34bb4d4f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/PicardLindelof/Variant255b9169dc8655d23e58f681f90452f6fb1b4537e14c5b60dbdb6d99d5b2f5bd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:63c11f04-2392-215b-679e-cf3f5466a19a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 372–386.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma dist_iterate_next_iterate_next_le (hf : IsPicardLindelof f t₀ x₀ a r L K)
    (hx : x ∈ closedBall x₀ r) (α β : FunSpace t₀ x₀ r L) (n : ℕ) :
    dist ((next hf hx)^[n] α) ((next hf hx)^[n] β) ≤
      (K * max (tmax - t₀) (t₀ - tmin)) ^ n / n ! * dist α β := by
  rw [← MetricSpace.isometry_induced FunSpace.toContinuousMap FunSpace.toContinuousMap.injective
    |>.dist_eq, ContinuousMap.dist_le]
  · intro t
    apply le_trans <| dist_iterate_next_apply_le hf hx α β n t
    gcongr
    exact abs_sub_le_max_sub t.2.1 t.2.2 _
  · have : 0 ≤ max (tmax - t₀) (t₀ - tmin) := le_max_of_le_left <| sub_nonneg_of_le t₀.2.2
    positivity

/-- Some `n`-th iterate of `next` is a contracting map, and its associated Lipschitz constant is
independent of the initial point. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/PicardLindelof/Variant255b9169dc8655d23e58f681f90452f6fb1b4537e14c5b60dbdb6d99d5b2f5bd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/PicardLindelof/Variant255b9169dc8655d23e58f681f90452f6fb1b4537e14c5b60dbdb6d99d5b2f5bd.lean#L372).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `914aafa576d0474f49ba074168c387ae6059e2ff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
