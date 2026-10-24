# isBounded_iff_asymptoticCone_subset_singleton

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "142e7f13eeb9e2be5beadf5df379d8d25b64a690",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 69,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/08/08c55eb7396b7540d2178f81973cc8efbea22218782a3729de4d51917c0f4222.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b3f0625f-c556-ae59-93ea-653d3c4e642d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0277d201-6784-5ddb-988b-aeef22020642",
  "kind": "theorem",
  "lexical_name": "isBounded_iff_asymptoticCone_subset_singleton",
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
  "slug": "isbounded-iff-asymptoticcone-subset-singleton--4b01ea75a3d44ba03598a5b3",
  "source": {
    "blob": "142e7f13eeb9e2be5beadf5df379d8d25b64a690",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 69,
    "path": "GRWTSK/Analysis/AsymptoticCone/Variant08c55eb7396b7540d2178f81973cc8efbea22218782a3729de4d51917c0f4222.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4b01ea75a3d44ba03598a5b37abd32363046d1d484b066f7d0e71f5c7229fdc8",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticCone/Variant08c55eb7396b7540d2178f81973cc8efbea22218782a3729de4d51917c0f4222.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0277d201-6784-5ddb-988b-aeef22020642`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isBounded_iff_asymptoticCone_subset_singleton {s : Set P} :
    IsBounded s ↔ asymptoticCone ℝ s ⊆ {0} := by
  refine ⟨asymptoticCone_subset_singleton_of_bounded, fun h => ?_⟩
  simp_rw [isBounded_def, cobounded_eq_iSup_sphere_asymptoticNhds, mem_iSup]
  intro v hv
  by_contra h'
  exact Metric.ne_of_mem_sphere hv one_ne_zero (h h')

/-- In a finite dimensional normed affine space over `ℝ`, a set is unbounded if and only if its
asymptotic cone contains a nonzero vector. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/AsymptoticCone/Variant08c55eb7396b7540d2178f81973cc8efbea22218782a3729de4d51917c0f4222.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticCone/Variant08c55eb7396b7540d2178f81973cc8efbea22218782a3729de4d51917c0f4222.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `142e7f13eeb9e2be5beadf5df379d8d25b64a690` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
