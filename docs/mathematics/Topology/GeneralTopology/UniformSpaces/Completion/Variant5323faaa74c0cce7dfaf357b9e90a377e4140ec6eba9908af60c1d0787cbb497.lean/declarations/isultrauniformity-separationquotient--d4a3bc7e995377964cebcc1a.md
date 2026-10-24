# IsUltraUniformity.separationQuotient

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:846a3a40186735d5df8bf9500b1f6fb9bf90ea820f9d873b7f9dd77da41dd9f9",
  "kind": "instance",
  "lexical_name": "IsUltraUniformity.separationQuotient",
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
  "slug": "isultrauniformity-separationquotient--d4a3bc7e995377964cebcc1a",
  "source": {
    "blob": "57e689f4979fdce829c29d13848e37228269025b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 50,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Completion/Variant5323faaa74c0cce7dfaf357b9e90a377e4140ec6eba9908af60c1d0787cbb497.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d4a3bc7e995377964cebcc1a2cbe2d178c8ab24dd8969947aa3b126ecd1dda5a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/Completion/Variant5323faaa74c0cce7dfaf357b9e90a377e4140ec6eba9908af60c1d0787cbb497.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:846a3a40186735d5df8bf9500b1f6fb9bf90ea820f9d873b7f9dd77da41dd9f9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance IsUltraUniformity.separationQuotient [IsUltraUniformity X] :
    IsUltraUniformity (SeparationQuotient X) := by
  have := IsUltraUniformity.hasBasis.map
    (Prod.map SeparationQuotient.mk (SeparationQuotient.mk (X := X)))
  rw [← SeparationQuotient.uniformity_eq] at this
  apply mk_of_hasBasis this
  · exact fun _ ⟨_, hU, _⟩ ↦ by rw [id_eq]; infer_instance
  · rintro U ⟨hU', _, hU⟩
    constructor
    rintro x y z
    simp only [id_eq, Set.mem_image, Prod.exists, Prod.map_apply, Prod.mk.injEq,
      forall_exists_index, and_imp]
    rintro a b hab rfl rfl c d hcd hc rfl
    have hbc : (b, c) ∈ U := by
      rw [eq_comm, SeparationQuotient.mk_eq_mk, inseparable_iff_ker_uniformity,
          Filter.mem_ker] at hc
      exact hc _ hU'
    exact ⟨a, d, U.trans (U.trans hab hbc) hcd, by simp, by simp⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/Completion/Variant5323faaa74c0cce7dfaf357b9e90a377e4140ec6eba9908af60c1d0787cbb497.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/Completion/Variant5323faaa74c0cce7dfaf357b9e90a377e4140ec6eba9908af60c1d0787cbb497.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `57e689f4979fdce829c29d13848e37228269025b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
