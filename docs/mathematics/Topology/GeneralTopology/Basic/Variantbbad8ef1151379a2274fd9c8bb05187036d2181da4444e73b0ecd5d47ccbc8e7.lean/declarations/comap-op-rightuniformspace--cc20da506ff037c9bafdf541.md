# comap_op_rightUniformSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:70f9b716-1043-5d31-b1bc-5af30a40ba48",
  "kind": "lemma",
  "lexical_name": "comap_op_rightUniformSpace",
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
  "slug": "comap-op-rightuniformspace--cc20da506ff037c9bafdf541",
  "source": {
    "blob": "6015e3b8d8caf3384c93dc3542187280fd0c352b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 297,
    "line": 286,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantbbad8ef1151379a2274fd9c8bb05187036d2181da4444e73b0ecd5d47ccbc8e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cc20da506ff037c9bafdf541b4f44ab0bce85f980a65285496e847ae97cd0d91",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantbbad8ef1151379a2274fd9c8bb05187036d2181da4444e73b0ecd5d47ccbc8e7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:70f9b716-1043-5d31-b1bc-5af30a40ba48`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 286–297.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[to_additive] lemma comap_op_rightUniformSpace :
    (IsTopologicalGroup.rightUniformSpace Gᵐᵒᵖ).comap MulOpposite.op =
      IsTopologicalGroup.leftUniformSpace G := by
  ext : 1
  change comap (fun (x : G × G) ↦ (MulOpposite.op x.1, MulOpposite.op x.2))
      (comap (fun p : Gᵐᵒᵖ × Gᵐᵒᵖ => p.2 * p.1⁻¹) (𝓝 1))
    = comap (fun p : G × G => p.1⁻¹ * p.2) (𝓝 1)
  have : 𝓝 (1 : G) = comap (MulOpposite.opHomeomorph) (𝓝 (1 : Gᵐᵒᵖ)) := by
    simp [Homeomorph.comap_nhds_eq]
  simp_rw [comap_comap, this, comap_comap]
  rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantbbad8ef1151379a2274fd9c8bb05187036d2181da4444e73b0ecd5d47ccbc8e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantbbad8ef1151379a2274fd9c8bb05187036d2181da4444e73b0ecd5d47ccbc8e7.lean#L286).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6015e3b8d8caf3384c93dc3542187280fd0c352b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
