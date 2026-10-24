# schnirelmannDensity_mul_le_card_filter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:57d63005-d2cc-c3be-5d78-95c5ddb09f39",
  "kind": "lemma",
  "lexical_name": "schnirelmannDensity_mul_le_card_filter",
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
  "slug": "schnirelmanndensity-mul-le-card-filter--c99e8af5fa1977ae90d79e49",
  "source": {
    "blob": "037089457948f261c4f0ae7cfe22381ab1a971d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 81,
    "path": "GRWTSK/Topology/GeneralTopology/Schnirelmann/Variantb934bff4954d8965afd763e60534efc8bda6b2523dc8fa4b54e727c7b3269128.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c99e8af5fa1977ae90d79e49d9f2bfd269efbc9b5d37490a5a7aa475f7d6a389",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Schnirelmann/Variantb934bff4954d8965afd763e60534efc8bda6b2523dc8fa4b54e727c7b3269128.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:57d63005-d2cc-c3be-5d78-95c5ddb09f39`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma schnirelmannDensity_mul_le_card_filter {n : ℕ} :
    schnirelmannDensity A * n ≤ #{a ∈ Ioc 0 n | a ∈ A} := by
  rcases eq_or_ne n 0 with rfl | hn
  · simp
  exact (le_div_iff₀ (by positivity)).1 (schnirelmannDensity_le_div hn)

/--
To show the Schnirelmann density is upper bounded by `x`, it suffices to show
`|A ∩ {1, ..., n}| / n ≤ x`, for any chosen positive value of `n`.

We provide `n` explicitly here to make this lemma more easily usable in `apply` or `refine`.
This lemma is analogous to `ciInf_le_of_le`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Schnirelmann/Variantb934bff4954d8965afd763e60534efc8bda6b2523dc8fa4b54e727c7b3269128.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Schnirelmann/Variantb934bff4954d8965afd763e60534efc8bda6b2523dc8fa4b54e727c7b3269128.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `037089457948f261c4f0ae7cfe22381ab1a971d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
