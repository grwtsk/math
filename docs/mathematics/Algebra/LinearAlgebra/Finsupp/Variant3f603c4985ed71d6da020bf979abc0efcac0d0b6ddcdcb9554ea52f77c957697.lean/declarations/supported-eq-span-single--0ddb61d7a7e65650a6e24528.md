# supported_eq_span_single

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "88ea665c3d1888d240ef7c2990991809bc44f9fa",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 216,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3f/3f603c4985ed71d6da020bf979abc0efcac0d0b6ddcdcb9554ea52f77c957697.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d58d9eeb-6cb0-b241-ea17-8ca9bce2e692",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:50d9ffd8-6148-f48b-17c9-09de8cc50689",
  "kind": "theorem",
  "lexical_name": "supported_eq_span_single",
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
  "slug": "supported-eq-span-single--0ddb61d7a7e65650a6e24528",
  "source": {
    "blob": "88ea665c3d1888d240ef7c2990991809bc44f9fa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 232,
    "line": 216,
    "path": "GRWTSK/Algebra/LinearAlgebra/Finsupp/Variant3f603c4985ed71d6da020bf979abc0efcac0d0b6ddcdcb9554ea52f77c957697.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0ddb61d7a7e65650a6e2452829d600f8710c0a0fb64a3df56e05ac5ac504de30",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Finsupp/Variant3f603c4985ed71d6da020bf979abc0efcac0d0b6ddcdcb9554ea52f77c957697.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:50d9ffd8-6148-f48b-17c9-09de8cc50689`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 216–232.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem supported_eq_span_single (s : Set α) :
    supported R R s = span R ((fun i => single i 1) '' s) := by
  refine' (span_eq_of_le _ _ (SetLike.le_def.2 fun l hl => _)).symm
  · rintro _ ⟨_, hp, rfl⟩
    exact single_mem_supported R 1 hp
  · rw [← l.sum_single]
    refine' sum_mem fun i il => _
  -- Porting note: Needed to help this convert quite a bit replacing underscores
    convert smul_mem (M := α →₀ R) (x := single i 1) (span R ((fun i => single i 1) '' s)) (l i) ?_
    · simp [span]
    · apply subset_span
      apply Set.mem_image_of_mem _ (hl il)
#align finsupp.supported_eq_span_single Finsupp.supported_eq_span_single

variable (M)

/-- Interpret `Finsupp.filter s` as a linear map from `α →₀ M` to `supported M R s`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Finsupp/Variant3f603c4985ed71d6da020bf979abc0efcac0d0b6ddcdcb9554ea52f77c957697.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Finsupp/Variant3f603c4985ed71d6da020bf979abc0efcac0d0b6ddcdcb9554ea52f77c957697.lean#L216).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `88ea665c3d1888d240ef7c2990991809bc44f9fa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
