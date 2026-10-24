# erdos_5_iff_limit_point_set

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c668a5ad-5a13-2f4c-3df4-9869d9499da9",
  "kind": "theorem",
  "lexical_name": "erdos_5_iff_limit_point_set",
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
  "slug": "erdos-5-iff-limit-point-set--66559fcc1fdca205617db671",
  "source": {
    "blob": "97ae153f5271ffc956d052dbd1fc588027a948a6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 254,
    "line": 245,
    "path": "GRWTSK/Topology/GeneralTopology/5/Variant5fbbbd16a512b4e8ae89909c9b93a8c22cf52525053438107742753fcdd3869c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:66559fcc1fdca205617db6715fe2a7da7247d22b1f1cfe2a6df37439f7f182bd",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/5/Variant5fbbbd16a512b4e8ae89909c9b93a8c22cf52525053438107742753fcdd3869c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c668a5ad-5a13-2f4c-3df4-9869d9499da9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 245–254.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem erdos_5_iff_limit_point_set :
    (∀ C : ℝ, 0 ≤ C → C ∈ limitPointSet) ↔ limitPointSet = Ici 0 :=
  ⟨fun h => limitPointSet_subset_Ici.antisymm h, fun h _ hC => h ▸ hC⟩

/--
The set $S$ of limit points is closed, as Weisenberg notes in the acknowledgements to
[erdosproblems.com/5](https://www.erdosproblems.com/5); consequently `erdos_5.variants.dense`
and `erdos_5.variants.limit_point_set` ask the same question.
-/
@[category test, AMS 11]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/5/Variant5fbbbd16a512b4e8ae89909c9b93a8c22cf52525053438107742753fcdd3869c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/5/Variant5fbbbd16a512b4e8ae89909c9b93a8c22cf52525053438107742753fcdd3869c.lean#L245).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `97ae153f5271ffc956d052dbd1fc588027a948a6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
