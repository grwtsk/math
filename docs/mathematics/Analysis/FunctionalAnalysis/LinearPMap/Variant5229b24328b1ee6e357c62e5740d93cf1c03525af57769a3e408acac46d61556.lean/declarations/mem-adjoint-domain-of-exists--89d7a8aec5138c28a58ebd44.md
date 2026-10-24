# mem_adjoint_domain_of_exists

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "31f7d28198a95c423d9866a99cb1ed340e2ae343",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 155,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/52/5229b24328b1ee6e357c62e5740d93cf1c03525af57769a3e408acac46d61556.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6f63ec82-9678-8fc6-93c1-fe88696a6f1a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:95c7a8f7-bb8f-8f72-2e21-4927752b33bb",
  "kind": "theorem",
  "lexical_name": "mem_adjoint_domain_of_exists",
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
  "slug": "mem-adjoint-domain-of-exists--89d7a8aec5138c28a58ebd44",
  "source": {
    "blob": "31f7d28198a95c423d9866a99cb1ed340e2ae343",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 162,
    "line": 155,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/LinearPMap/Variant5229b24328b1ee6e357c62e5740d93cf1c03525af57769a3e408acac46d61556.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:89d7a8aec5138c28a58ebd444ef8db5c904152a9bfd3d374117b46b6c7844a6b",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/LinearPMap/Variant5229b24328b1ee6e357c62e5740d93cf1c03525af57769a3e408acac46d61556.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:95c7a8f7-bb8f-8f72-2e21-4927752b33bb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 155–162.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_adjoint_domain_of_exists (y : F) (h : ∃ w : E, ∀ x : T.domain, ⟪w, x⟫ = ⟪y, T x⟫) :
    y ∈ T†.domain := by
  obtain ⟨w, hw⟩ := h
  rw [T.mem_adjoint_domain_iff]
  have : Continuous ((innerSL 𝕜 w).comp T.domain.subtypeL) := by fun_prop
  convert this using 1
  exact funext fun x => (hw x).symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/LinearPMap/Variant5229b24328b1ee6e357c62e5740d93cf1c03525af57769a3e408acac46d61556.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/LinearPMap/Variant5229b24328b1ee6e357c62e5740d93cf1c03525af57769a3e408acac46d61556.lean#L155).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `31f7d28198a95c423d9866a99cb1ed340e2ae343` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
