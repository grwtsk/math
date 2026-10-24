# observePhaseOne_apply_mk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5c8a75224c08c18d5db0303ddfdb14b2f20d93df",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 53,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9b/9b8b0d310453eb3ac3ad7aa923f1eb4d5b37d16161b2f9b35e9ae424833e5fc4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3d04f133-1f4c-a06f-f4e0-1a79fe4326d1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:22a72538-dc60-5ee1-d496-83ce8f0acc3e",
  "kind": "theorem",
  "lexical_name": "observePhaseOne_apply_mk",
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
  "slug": "observephaseone-apply-mk--432c8ada29199af2e7b48954",
  "source": {
    "blob": "5c8a75224c08c18d5db0303ddfdb14b2f20d93df",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 53,
    "path": "GRWTSK/Algebra/9b8b0d310453eb3ac3ad7aa923f1eb4d5b37d16161b2f9b35e9ae424833e5fc4PhaseCharacteris/Variant9b8b0d310453eb3ac3ad7aa923f1eb4d5b37d16161b2f9b35e9ae424833e5fc4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:432c8ada29199af2e7b48954a73bdbb180ecd71a4828bcb3524aa50c33a8fb32",
  "verification": {
    "reference": "docs/verification/Algebra/9b8b0d310453eb3ac3ad7aa923f1eb4d5b37d16161b2f9b35e9ae424833e5fc4PhaseCharacteris/Variant9b8b0d310453eb3ac3ad7aa923f1eb4d5b37d16161b2f9b35e9ae424833e5fc4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:22a72538-dc60-5ee1-d496-83ce8f0acc3e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem observePhaseOne_apply_mk (p : ℂ[X]) :
    observePhaseOne (AdjoinRoot.mk ((X - C (1 : ℂ)) ^ 2) p) =
      aeval (phaseRotation 1) p := by
  have hU : phaseRotation 1 = (1 : Matrix (Fin 2) (Fin 2) ℂ) :=
    phase_reflection_involution 1 (by simp)
  have hscalar : (1 : Matrix (Fin 2) (Fin 2) ℂ) = algebraMap ℂ _ 1 := by simp
  rw [hU, hscalar, aeval_algebraMap_apply_eq_algebraMap_eval]
  simp [observePhaseOne, observeOne]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/9b8b0d310453eb3ac3ad7aa923f1eb4d5b37d16161b2f9b35e9ae424833e5fc4PhaseCharacteris/Variant9b8b0d310453eb3ac3ad7aa923f1eb4d5b37d16161b2f9b35e9ae424833e5fc4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/9b8b0d310453eb3ac3ad7aa923f1eb4d5b37d16161b2f9b35e9ae424833e5fc4PhaseCharacteris/Variant9b8b0d310453eb3ac3ad7aa923f1eb4d5b37d16161b2f9b35e9ae424833e5fc4.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c8a75224c08c18d5db0303ddfdb14b2f20d93df` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
