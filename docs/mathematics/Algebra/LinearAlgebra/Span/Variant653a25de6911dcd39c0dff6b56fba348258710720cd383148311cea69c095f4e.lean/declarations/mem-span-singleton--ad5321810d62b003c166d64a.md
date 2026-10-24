# mem_span_singleton

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:656a278d-647d-6e6b-1017-a300e0d3d622",
  "kind": "theorem",
  "lexical_name": "mem_span_singleton",
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
  "slug": "mem-span-singleton--ad5321810d62b003c166d64a",
  "source": {
    "blob": "3f92280d5936b02750358be10db05af1822786fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 431,
    "line": 419,
    "path": "GRWTSK/Algebra/LinearAlgebra/Span/Variant653a25de6911dcd39c0dff6b56fba348258710720cd383148311cea69c095f4e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ad5321810d62b003c166d64ad2836bf321c21944e088e091da832ccaa7b4a1e5",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Span/Variant653a25de6911dcd39c0dff6b56fba348258710720cd383148311cea69c095f4e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:656a278d-647d-6e6b-1017-a300e0d3d622`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 419–431.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_span_singleton {y : M} : (x ∈ R ∙ y) ↔ ∃ a : R, a • y = x :=
  ⟨fun h => by
    refine span_induction h ?_ ?_ ?_ ?_
    · rintro y (rfl | ⟨⟨_⟩⟩)
      exact ⟨1, by simp⟩
    · exact ⟨0, by simp⟩
    · rintro _ _ ⟨a, rfl⟩ ⟨b, rfl⟩
      exact ⟨a + b, by simp [add_smul]⟩
    · rintro a _ ⟨b, rfl⟩
      exact ⟨a * b, by simp [smul_smul]⟩, by
    rintro ⟨a, y, rfl⟩; exact smul_mem _ _ (subset_span <| by simp)⟩
#align submodule.mem_span_singleton Submodule.mem_span_singleton

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Span/Variant653a25de6911dcd39c0dff6b56fba348258710720cd383148311cea69c095f4e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Span/Variant653a25de6911dcd39c0dff6b56fba348258710720cd383148311cea69c095f4e.lean#L419).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3f92280d5936b02750358be10db05af1822786fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
