# continuous_subspace_pi_projection

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a628721e577abcbe972a235940d811fff0e5c35f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 106,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6e/6ee591d98bc9a80ca081a7b598c3d86942619728985b22b998fb6363df21ab9d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e09f04d1-2081-594a-1989-550030d9ca0f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c496d9bd-6b34-e6ff-863a-971bd1b3d484",
  "kind": "theorem",
  "lexical_name": "continuous_subspace_pi_projection",
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
  "slug": "continuous-subspace-pi-projection--24ffbaf997bd906a2b6cddfd",
  "source": {
    "blob": "a628721e577abcbe972a235940d811fff0e5c35f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 106,
    "path": "GRWTSK/Topology/GeneralTopology/Continuous/Variant6ee591d98bc9a80ca081a7b598c3d86942619728985b22b998fb6363df21ab9d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:24ffbaf997bd906a2b6cddfd95765d959ffcc639c8f827efc0af2fdc50028a68",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Continuous/Variant6ee591d98bc9a80ca081a7b598c3d86942619728985b22b998fb6363df21ab9d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c496d9bd-6b34-e6ff-863a-971bd1b3d484`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuous_subspace_pi_projection
    {ι : Type uI} {X : ι → Type u}
    (T : ∀ i, TopologicalSpaceLike (X i))
    (S : Set ((i : ι) → X i)) (i : ι) :
    Continuous (subspaceTopology (piTopology T) S) (T i)
      (fun x : {x : ((i : ι) → X i) // x ∈ S} => x.val i) := by
  exact continuous_comp
    (f := fun x : {x : ((i : ι) → X i) // x ∈ S} => x.val)
    (g := fun x => x i)
    (continuous_subtype_val (piTopology T) S)
    (continuous_pi_projection T i)

/-- Both canonical injections into a coproduct are continuous. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Continuous/Variant6ee591d98bc9a80ca081a7b598c3d86942619728985b22b998fb6363df21ab9d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Continuous/Variant6ee591d98bc9a80ca081a7b598c3d86942619728985b22b998fb6363df21ab9d.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a628721e577abcbe972a235940d811fff0e5c35f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
