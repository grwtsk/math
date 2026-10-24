# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e26f584f3a7184299ce3dccfd7451a9115b7ff6c1d9501c40a0f046018568407",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--173b8cf66feab07149d37e6b",
  "source": {
    "blob": "80c7f008e3460207e09f6b051ddb1bae27de4ffa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 217,
    "line": 207,
    "path": "GRWTSK/Topology/MetricTopology/BoundedOperation/Variantc52498e1cecbd3799616071237ebd5f0083b180bb2879618c48601fd7b463583.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:173b8cf66feab07149d37e6b5114928ff3a52c16da8dacbe3eeb60c9edad394f",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/BoundedOperation/Variantc52498e1cecbd3799616071237ebd5f0083b180bb2879618c48601fd7b463583.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e26f584f3a7184299ce3dccfd7451a9115b7ff6c1d9501c40a0f046018568407`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 207–217.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : BoundedMul ℝ≥0 where
  isBounded_mul {s t} hs ht := by
    obtain ⟨Af, hAf⟩ := (isBounded_iff_subset_closedBall 0).mp hs
    obtain ⟨Ag, hAg⟩ := (isBounded_iff_subset_closedBall 0).mp ht
    have key : IsCompact (closedBall (0 : ℝ≥0) Af ×ˢ closedBall (0 : ℝ≥0) Ag) :=
      IsCompact.prod (isCompact_closedBall _ _) (isCompact_closedBall _ _)
    apply Bornology.IsBounded.subset (key.image continuous_mul).isBounded
    intro _ ⟨x, x_in_s, y, y_in_t, xy_eq⟩
    exact ⟨⟨x, y⟩, by simpa only [Set.mem_prod] using ⟨⟨hAf x_in_s, hAg y_in_t⟩, xy_eq⟩⟩

end NNReal
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/BoundedOperation/Variantc52498e1cecbd3799616071237ebd5f0083b180bb2879618c48601fd7b463583.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/BoundedOperation/Variantc52498e1cecbd3799616071237ebd5f0083b180bb2879618c48601fd7b463583.lean#L207).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `80c7f008e3460207e09f6b051ddb1bae27de4ffa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
