# SeminormedGroup.disjoint_nhds_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:544b2b9a-65c0-0326-0c27-fb0de74170ec",
  "kind": "lemma",
  "lexical_name": "SeminormedGroup.disjoint_nhds_one",
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
  "slug": "seminormedgroup-disjoint-nhds-one--3174dfb5219fcf6b9a1256b6",
  "source": {
    "blob": "ca7fdf53fd50b36ad7edb15ea216403ff521f16e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 701,
    "line": 686,
    "path": "GRWTSK/Topology/MetricTopology/Basic/Variant13142346a4cb583ba69cd5f8acb402b5fd8dc232460b132bd81f1294e2a4d8a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3174dfb5219fcf6b9a1256b6746d674f92f2e99e2dada09a3fa3fc7149a0ce8f",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Basic/Variant13142346a4cb583ba69cd5f8acb402b5fd8dc232460b132bd81f1294e2a4d8a0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:544b2b9a-65c0-0326-0c27-fb0de74170ec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 686–701.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma SeminormedGroup.disjoint_nhds_one (f : Filter E) :
    Disjoint (𝓝 1) f ↔ ∃ δ > 0, ∀ᶠ y in f, δ ≤ ‖y‖ := by
  simpa using disjoint_nhds 1 f

end SeminormedGroup

section Induced

variable (E F)
variable [FunLike 𝓕 E F]

-- See note [reducible non-instances]
/-- A group homomorphism from a `Group` to a `SeminormedGroup` induces a `SeminormedGroup`
structure on the domain. -/
@[to_additive /-- A group homomorphism from an `AddGroup` to a
`SeminormedAddGroup` induces a `SeminormedAddGroup` structure on the domain. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Basic/Variant13142346a4cb583ba69cd5f8acb402b5fd8dc232460b132bd81f1294e2a4d8a0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Basic/Variant13142346a4cb583ba69cd5f8acb402b5fd8dc232460b132bd81f1294e2a4d8a0.lean#L686).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ca7fdf53fd50b36ad7edb15ea216403ff521f16e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
