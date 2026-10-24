# norm_map_coord_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1aec35bffddaf94f76bbd74293bc89515d4b7b3f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 133,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f4/f4cfde792912ada8d319e77f416c4472d3dab576fc6c104b4230f3d4126a548c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a858204e-7264-4ca7-8043-92e2239c6db7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b9e3e3b2-395a-20ca-e7ed-3cbf6b09ff84",
  "kind": "lemma",
  "lexical_name": "norm_map_coord_zero",
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
  "slug": "norm-map-coord-zero--3ab5190dc25208fa22c2a125",
  "source": {
    "blob": "1aec35bffddaf94f76bbd74293bc89515d4b7b3f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 151,
    "line": 133,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantf4cfde792912ada8d319e77f416c4472d3dab576fc6c104b4230f3d4126a548c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3ab5190dc25208fa22c2a125ac7f9507afe8b370f4a41d3db83131519cadc585",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantf4cfde792912ada8d319e77f416c4472d3dab576fc6c104b4230f3d4126a548c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b9e3e3b2-395a-20ca-e7ed-3cbf6b09ff84`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 133–151.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma norm_map_coord_zero (f : MultilinearMap 𝕜 E G) (hf : Continuous f)
    {m : ∀ i, E i} {i : ι} (hi : ‖m i‖ = 0) : ‖f m‖ = 0 := by
  classical
  rw [← inseparable_zero_iff_norm] at hi ⊢
  have : Inseparable (update m i 0) m := inseparable_pi.2 <|
    (forall_update_iff m fun i a ↦ Inseparable a (m i)).2 ⟨hi.symm, fun _ _ ↦ rfl⟩
  simpa only [map_update_zero] using this.symm.map hf

variable [Fintype ι]

/-- If a multilinear map in finitely many variables on seminormed spaces
sends vectors with a component of norm zero to vectors of norm zero
and satisfies the inequality `‖f m‖ ≤ C * ∏ i, ‖m i‖` on a shell `ε i / ‖c i‖ < ‖m i‖ < ε i`
for some positive numbers `ε i` and elements `c i : 𝕜`, `1 < ‖c i‖`,
then it satisfies this inequality for all `m`.

The first assumption is automatically satisfied on normed spaces, see `bound_of_shell` below.
For seminormed spaces, it follows from continuity of `f`, see next lemma,
see `bound_of_shell_of_continuous` below. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantf4cfde792912ada8d319e77f416c4472d3dab576fc6c104b4230f3d4126a548c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantf4cfde792912ada8d319e77f416c4472d3dab576fc6c104b4230f3d4126a548c.lean#L133).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1aec35bffddaf94f76bbd74293bc89515d4b7b3f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
