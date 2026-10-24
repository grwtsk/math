# exists_countable_separating

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5f5f38c6-88af-faf0-3d16-62beed1b0a70",
  "kind": "lemma",
  "lexical_name": "exists_countable_separating",
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
  "slug": "exists-countable-separating--e06a98b3cb87e9aecdea0fe6",
  "source": {
    "blob": "f9ec0f82265b578948182d0f3c97e192fd484d8e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 347,
    "line": 337,
    "path": "GRWTSK/Topology/GeneralTopology/WeakDual/Variant8fb5d44d79c852f05e6d7a353f7558a4ea03ecc3a31313a34975299ce49ab17d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e06a98b3cb87e9aecdea0fe6cf250cc733e602c545580472064c2729634833df",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/WeakDual/Variant8fb5d44d79c852f05e6d7a353f7558a4ea03ecc3a31313a34975299ce49ab17d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5f5f38c6-88af-faf0-3d16-62beed1b0a70`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 337–347.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_countable_separating : ∃ (gs : ℕ → (WeakDual 𝕜 E) → 𝕜),
    (∀ n, Continuous (gs n)) ∧ (∀ ⦃x y⦄, x ≠ y → ∃ n, gs n x ≠ gs n y) := by
  use (fun n φ ↦ φ (denseSeq E n))
  constructor
  · exact fun _ ↦ eval_continuous _
  · intro w y w_ne_y
    contrapose! w_ne_y
    exact DFunLike.ext'_iff.mpr <| (map_continuous w).ext_on
      (denseRange_denseSeq E) (map_continuous y) (Set.eqOn_range.mpr (funext w_ne_y))

/-- A compact subset of the weak dual of a separable normed space is metrizable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/WeakDual/Variant8fb5d44d79c852f05e6d7a353f7558a4ea03ecc3a31313a34975299ce49ab17d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/WeakDual/Variant8fb5d44d79c852f05e6d7a353f7558a4ea03ecc3a31313a34975299ce49ab17d.lean#L337).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f9ec0f82265b578948182d0f3c97e192fd484d8e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
