# mul_limZero_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4bb9b5b0db3a0ea03633e1ec0f31c637deec59f2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 381,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/16/168afdb165f5ee52e06bd48209e8bfc73f3a85659d4a8ee190f25422b2092a6e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:335db6ef-36cd-90db-5726-eaa253ecf7d5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:051dd4e2-c40a-efc2-99a8-a49e2a6098ef",
  "kind": "theorem",
  "lexical_name": "mul_limZero_left",
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
  "slug": "mul-limzero-left--57639b6e444b96d2e2fe71ef",
  "source": {
    "blob": "4bb9b5b0db3a0ea03633e1ec0f31c637deec59f2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 387,
    "line": 381,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant168afdb165f5ee52e06bd48209e8bfc73f3a85659d4a8ee190f25422b2092a6e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:57639b6e444b96d2e2fe71eff579d239f9dd95cbfcad9bed72f508d5b0b2fce7",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant168afdb165f5ee52e06bd48209e8bfc73f3a85659d4a8ee190f25422b2092a6e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:051dd4e2-c40a-efc2-99a8-a49e2a6098ef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 381–387.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mul_limZero_left {f} (g : CauSeq β abv) (hg : LimZero f) : LimZero (f * g)
  | ε, ε0 =>
    let ⟨G, G0, hG⟩ := g.bounded' 0
    (hg _ <| div_pos ε0 G0).imp fun _ H j ij => by
      have := mul_lt_mul'' (H _ ij) (hG j) (abv_nonneg abv _) (abv_nonneg abv _)
      rwa [div_mul_cancel₀ _ (ne_of_gt G0), ← abv_mul] at this

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant168afdb165f5ee52e06bd48209e8bfc73f3a85659d4a8ee190f25422b2092a6e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant168afdb165f5ee52e06bd48209e8bfc73f3a85659d4a8ee190f25422b2092a6e.lean#L381).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4bb9b5b0db3a0ea03633e1ec0f31c637deec59f2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
