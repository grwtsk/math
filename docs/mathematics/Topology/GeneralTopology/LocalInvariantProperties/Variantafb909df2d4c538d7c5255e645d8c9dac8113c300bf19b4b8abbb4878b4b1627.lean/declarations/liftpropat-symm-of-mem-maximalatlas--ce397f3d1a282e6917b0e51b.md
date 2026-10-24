# liftPropAt_symm_of_mem_maximalAtlas

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "704caf6b4ef1ea88ecb99bbc90bc38d18b5b9d15",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 464,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/af/afb909df2d4c538d7c5255e645d8c9dac8113c300bf19b4b8abbb4878b4b1627.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:19c9fb06-fd3f-457f-5c5e-00bdea95cb5e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4682ffa0-2f61-c98d-775d-85a5d5b9d324",
  "kind": "theorem",
  "lexical_name": "liftPropAt_symm_of_mem_maximalAtlas",
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
  "slug": "liftpropat-symm-of-mem-maximalatlas--ce397f3d1a282e6917b0e51b",
  "source": {
    "blob": "704caf6b4ef1ea88ecb99bbc90bc38d18b5b9d15",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 473,
    "line": 464,
    "path": "GRWTSK/Topology/GeneralTopology/LocalInvariantProperties/Variantafb909df2d4c538d7c5255e645d8c9dac8113c300bf19b4b8abbb4878b4b1627.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ce397f3d1a282e6917b0e51b05256c5ab045da613886f95f94e6e63258e139ce",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LocalInvariantProperties/Variantafb909df2d4c538d7c5255e645d8c9dac8113c300bf19b4b8abbb4878b4b1627.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4682ffa0-2f61-c98d-775d-85a5d5b9d324`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 464–473.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem liftPropAt_symm_of_mem_maximalAtlas [HasGroupoid M G] {x : H}
    (hG : G.LocalInvariantProp G Q) (hQ : ∀ y, Q id univ y) (he : e ∈ maximalAtlas M G)
    (hx : x ∈ e.target) : LiftPropAt Q e.symm x := by
  suffices h : Q (e ∘ e.symm) univ x by
    have : e.symm x ∈ e.source := by simp only [hx, mfld_simps]
    rw [LiftPropAt, hG.liftPropWithinAt_indep_chart G.id_mem_maximalAtlas (mem_univ _) he this]
    refine ⟨(e.symm.continuousAt hx).continuousWithinAt, ?_⟩
    simp only [h, mfld_simps]
  exact hG.congr' (e.eventually_right_inverse hx) (hQ x)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LocalInvariantProperties/Variantafb909df2d4c538d7c5255e645d8c9dac8113c300bf19b4b8abbb4878b4b1627.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LocalInvariantProperties/Variantafb909df2d4c538d7c5255e645d8c9dac8113c300bf19b4b8abbb4878b4b1627.lean#L464).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `704caf6b4ef1ea88ecb99bbc90bc38d18b5b9d15` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
