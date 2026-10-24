# isConstant_comp_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c4803044389f5136573298eaa12eb83549e23e81",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 253,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a4/a46c8da7ee8bd281e88526486e6ea65f158e07abe1f39108bc7b3f4061cbab3c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:51f79de8-c498-9120-e84d-f6e620afa00e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:512ae114-2c08-4968-eaa8-6ba11438103a",
  "kind": "lemma",
  "lexical_name": "isConstant_comp_tendsto",
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
  "slug": "isconstant-comp-tendsto--d3926939a59a7f255d00e992",
  "source": {
    "blob": "c4803044389f5136573298eaa12eb83549e23e81",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 260,
    "line": 253,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Varianta46c8da7ee8bd281e88526486e6ea65f158e07abe1f39108bc7b3f4061cbab3c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d3926939a59a7f255d00e9924b8cc69cedb70150557d7c29059681a429791c57",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Varianta46c8da7ee8bd281e88526486e6ea65f158e07abe1f39108bc7b3f4061cbab3c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:512ae114-2c08-4968-eaa8-6ba11438103a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 253–260.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isConstant_comp_tendsto {lc : Filter γ} {g : γ → α}
    (hf : (f : Germ l β).IsConstant) (hg : Tendsto g lc l) : IsConstant (f ∘ g : Germ lc β) := by
  rcases hf with ⟨b, hb⟩
  exact ⟨b, hb.comp_tendsto hg⟩

/-- If a germ `f : Germ l β` is constant, where `l : Filter α`,
and a function `g : γ → α` tends to `l` along `lc : Filter γ`,
the germ of the composition `f ∘ g` is also constant. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Varianta46c8da7ee8bd281e88526486e6ea65f158e07abe1f39108bc7b3f4061cbab3c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Varianta46c8da7ee8bd281e88526486e6ea65f158e07abe1f39108bc7b3f4061cbab3c.lean#L253).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c4803044389f5136573298eaa12eb83549e23e81` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
