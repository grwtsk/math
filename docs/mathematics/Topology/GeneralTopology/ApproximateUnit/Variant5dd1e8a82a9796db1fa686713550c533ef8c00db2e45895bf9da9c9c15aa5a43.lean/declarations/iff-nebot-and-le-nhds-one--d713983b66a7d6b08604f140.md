# iff_neBot_and_le_nhds_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2d75aa30-fb70-1615-4704-3a8b456925da",
  "kind": "lemma",
  "lexical_name": "iff_neBot_and_le_nhds_one",
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
  "slug": "iff-nebot-and-le-nhds-one--d713983b66a7d6b08604f140",
  "source": {
    "blob": "5702971168566ab2745c3a6c485981de42149838",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 73,
    "path": "GRWTSK/Topology/GeneralTopology/ApproximateUnit/Variant5dd1e8a82a9796db1fa686713550c533ef8c00db2e45895bf9da9c9c15aa5a43.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d713983b66a7d6b08604f140bf5ad87465fbc1118efdcecb858e53eb7d993b01",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ApproximateUnit/Variant5dd1e8a82a9796db1fa686713550c533ef8c00db2e45895bf9da9c9c15aa5a43.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2d75aa30-fb70-1615-4704-3a8b456925da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma iff_neBot_and_le_nhds_one [SeparatelyContinuousMul α] {l : Filter α} :
    IsApproximateUnit l ↔ l.NeBot ∧ l ≤ 𝓝 1 :=
  ⟨fun hl ↦ ⟨hl.neBot, by simpa using! hl.tendsto_mul_left 1⟩,
    And.elim fun _ hl ↦ nhds_one α |>.mono hl⟩

/-- In a topological unital magma, `𝓝 1` is the largest approximate unit. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ApproximateUnit/Variant5dd1e8a82a9796db1fa686713550c533ef8c00db2e45895bf9da9c9c15aa5a43.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ApproximateUnit/Variant5dd1e8a82a9796db1fa686713550c533ef8c00db2e45895bf9da9c9c15aa5a43.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5702971168566ab2745c3a6c485981de42149838` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
