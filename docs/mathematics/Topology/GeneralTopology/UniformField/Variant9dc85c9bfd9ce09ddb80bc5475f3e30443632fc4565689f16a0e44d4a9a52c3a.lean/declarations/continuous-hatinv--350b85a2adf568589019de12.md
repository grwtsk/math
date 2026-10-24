# continuous_hatInv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "29357e36903c9043687627edefc84cc323ef6eea",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 67,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9d/9dc85c9bfd9ce09ddb80bc5475f3e30443632fc4565689f16a0e44d4a9a52c3a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:76658f65-580d-0754-f21c-f3f79d78910e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9690a005-2790-dbc9-e258-e29c52844512",
  "kind": "theorem",
  "lexical_name": "continuous_hatInv",
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
  "slug": "continuous-hatinv--350b85a2adf568589019de12",
  "source": {
    "blob": "29357e36903c9043687627edefc84cc323ef6eea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 67,
    "path": "GRWTSK/Topology/GeneralTopology/UniformField/Variant9dc85c9bfd9ce09ddb80bc5475f3e30443632fc4565689f16a0e44d4a9a52c3a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:350b85a2adf568589019de125a6953ca770304c7f0be78c2140e50c92ba4fbe0",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformField/Variant9dc85c9bfd9ce09ddb80bc5475f3e30443632fc4565689f16a0e44d4a9a52c3a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9690a005-2790-dbc9-e258-e29c52844512`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuous_hatInv [CompletableTopField K] {x : hat K} (h : x ≠ 0) :
    ContinuousAt hatInv x := by
  refine isDenseInducing_coe.continuousAt_extend ?_
  apply mem_of_superset (compl_singleton_mem_nhds h)
  intro y y_ne
  rw [mem_compl_singleton_iff] at y_ne
  apply CompleteSpace.complete
  have : (fun (x : K) => (↑x⁻¹ : hat K)) =
      ((fun (y : K) => (↑y : hat K))∘(fun (x : K) => (x⁻¹ : K))) := by
    unfold Function.comp
    simp
  rw [this, ← Filter.map_map]
  apply Cauchy.map _ (Completion.uniformContinuous_coe K)
  apply CompletableTopField.nice
  · haveI := isDenseInducing_coe.comap_nhds_neBot y
    apply cauchy_nhds.comap
    rw [Completion.comap_coe_eq_uniformity]
  · have eq_bot : 𝓝 (0 : hat K) ⊓ 𝓝 y = ⊥ := by
      by_contra h
      exact y_ne (eq_of_nhds_neBot <| neBot_iff.mpr h).symm
    rw [isDenseInducing_coe.nhds_eq_comap (0 : K), ← Filter.comap_inf]
    norm_cast
    rw [eq_bot]
    exact comap_bot

open Classical in
/--
The value of `hat_inv` at zero is not really specified, although it's probably zero.
Here we explicitly enforce the `inv_zero` axiom.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/UniformField/Variant9dc85c9bfd9ce09ddb80bc5475f3e30443632fc4565689f16a0e44d4a9a52c3a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformField/Variant9dc85c9bfd9ce09ddb80bc5475f3e30443632fc4565689f16a0e44d4a9a52c3a.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `29357e36903c9043687627edefc84cc323ef6eea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
