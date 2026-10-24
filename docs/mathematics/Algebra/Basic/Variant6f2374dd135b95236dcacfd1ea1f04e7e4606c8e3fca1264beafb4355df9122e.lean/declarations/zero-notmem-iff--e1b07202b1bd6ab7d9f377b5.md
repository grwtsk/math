# zero_notMem_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4b9ee496-3142-a0e2-df5b-7ac2b224d0c8",
  "kind": "theorem",
  "lexical_name": "zero_notMem_iff",
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
  "slug": "zero-notmem-iff--e1b07202b1bd6ab7d9f377b5",
  "source": {
    "blob": "224f704719226915ab23482aa01c3e65c11f16af",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 123,
    "path": "GRWTSK/Algebra/Basic/Variant6f2374dd135b95236dcacfd1ea1f04e7e4606c8e3fca1264beafb4355df9122e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e1b07202b1bd6ab7d9f377b59fe2b530609c95d3d66aa7992612c12f3cb63577",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant6f2374dd135b95236dcacfd1ea1f04e7e4606c8e3fca1264beafb4355df9122e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4b9ee496-3142-a0e2-df5b-7ac2b224d0c8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem zero_notMem_iff {a : A} : (0 : R) ∉ σ a ↔ IsUnit a := by
  rw [zero_mem_iff, Classical.not_not]

@[deprecated (since := "2025-05-23")] alias zero_not_mem_iff := zero_notMem_iff

alias ⟨isUnit_of_zero_notMem, zero_notMem⟩ := spectrum.zero_not_mem_iff

@[deprecated (since := "2025-05-23")] alias isUnit_of_zero_not_mem := isUnit_of_zero_notMem
@[deprecated (since := "2025-05-23")] alias zero_not_mem := zero_notMem

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant6f2374dd135b95236dcacfd1ea1f04e7e4606c8e3fca1264beafb4355df9122e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant6f2374dd135b95236dcacfd1ea1f04e7e4606c8e3fca1264beafb4355df9122e.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `224f704719226915ab23482aa01c3e65c11f16af` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
