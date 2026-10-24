# hasBasis_open_submodule

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a7d5f656-208d-c88c-cbd7-ef495ba79dad",
  "kind": "lemma",
  "lexical_name": "hasBasis_open_submodule",
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
  "slug": "hasbasis-open-submodule--1b0785d2e18d55671eb69bdf",
  "source": {
    "blob": "b7f22b3bff9dd55073aa98a82fbcec1f6937437f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 119,
    "path": "GRWTSK/Topology/GeneralTopology/LinearTopology/Variant34f6c4fdfde2bd6e1eb59d9b3555f76438620cfeed86439937bff034d1e74f9f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1b0785d2e18d55671eb69bdf50c133398f6c33297b4ae8e75301b4a776411dd2",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LinearTopology/Variant34f6c4fdfde2bd6e1eb59d9b3555f76438620cfeed86439937bff034d1e74f9f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a7d5f656-208d-c88c-cbd7-ef495ba79dad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma hasBasis_open_submodule [ContinuousAdd M] [IsLinearTopology R M] :
    (𝓝 (0 : M)).HasBasis
      (fun N : Submodule R M ↦ IsOpen (N : Set M)) (fun N : Submodule R M ↦ (N : Set M)) :=
  hasBasis_submodule R |>.congr
    (fun N ↦ ⟨N.toAddSubgroup.isOpen_of_mem_nhds, fun hN ↦ hN.mem_nhds (zero_mem N)⟩)
    (fun _ _ ↦ rfl)

variable (R) in
/-- A variant of `IsLinearTopology.mk_of_hasBasis` asking for an explicit proof that `S`
is a class of submodules instead of relying on (fragile) typeclass inference of `SMulCommClass`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LinearTopology/Variant34f6c4fdfde2bd6e1eb59d9b3555f76438620cfeed86439937bff034d1e74f9f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LinearTopology/Variant34f6c4fdfde2bd6e1eb59d9b3555f76438620cfeed86439937bff034d1e74f9f.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b7f22b3bff9dd55073aa98a82fbcec1f6937437f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
