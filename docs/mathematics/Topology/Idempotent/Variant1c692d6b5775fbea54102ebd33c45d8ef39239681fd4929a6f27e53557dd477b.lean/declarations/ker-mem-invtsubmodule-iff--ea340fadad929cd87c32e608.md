# ker_mem_invtSubmodule_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9aaef2bb-b7b9-4367-8d86-95d9cd4d4437",
  "kind": "lemma",
  "lexical_name": "ker_mem_invtSubmodule_iff",
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
  "slug": "ker-mem-invtsubmodule-iff--ea340fadad929cd87c32e608",
  "source": {
    "blob": "8232207b783803c9083efe11c195865fdacdb07d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 80,
    "path": "GRWTSK/Topology/Idempotent/Variant1c692d6b5775fbea54102ebd33c45d8ef39239681fd4929a6f27e53557dd477b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ea340fadad929cd87c32e608c10cb7d2b333557a00a8abd3f73974a7d38845da",
  "verification": {
    "reference": "docs/verification/Topology/Idempotent/Variant1c692d6b5775fbea54102ebd33c45d8ef39239681fd4929a6f27e53557dd477b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9aaef2bb-b7b9-4367-8d86-95d9cd4d4437`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ker_mem_invtSubmodule_iff {f T : M →L[R] M}
    (hf : IsIdempotentElem f) :
    f.ker ∈ Module.End.invtSubmodule T ↔ f ∘L T ∘L f = f ∘L T := by
  simpa [← toLinearMap_comp] using
    LinearMap.IsIdempotentElem.ker_mem_invtSubmodule_iff (T := T) hf.toLinearMap

alias ⟨conj_eq_of_ker_mem_invtSubmodule,
  ker_mem_invtSubmodule⟩ := IsIdempotentElem.ker_mem_invtSubmodule_iff

/-- An idempotent operator `f` commutes with `T` if and only if
both `range f` and `ker f` are invariant under `T`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/Idempotent/Variant1c692d6b5775fbea54102ebd33c45d8ef39239681fd4929a6f27e53557dd477b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/Idempotent/Variant1c692d6b5775fbea54102ebd33c45d8ef39239681fd4929a6f27e53557dd477b.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8232207b783803c9083efe11c195865fdacdb07d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
