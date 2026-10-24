# IsAdicComplete.congr_ringEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2c44955c9cf26b4d3550a3da84494905d238fd0f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 99,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f8/f86f197e6d27c95419a568d66860fe375a2a7aac684b7bc6f90c07c2cdbdb169.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fc9bc3c6-3684-6495-e11c-3c716c09a37d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:17069bfe-d9f9-6cbb-3427-9721fe33818d",
  "kind": "theorem",
  "lexical_name": "IsAdicComplete.congr_ringEquiv",
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
  "slug": "isadiccomplete-congr-ringequiv--ff4d4aef843094cd87ef813e",
  "source": {
    "blob": "2c44955c9cf26b4d3550a3da84494905d238fd0f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 99,
    "path": "GRWTSK/Algebra/RingTheory/Topology/Variantf86f197e6d27c95419a568d66860fe375a2a7aac684b7bc6f90c07c2cdbdb169.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ff4d4aef843094cd87ef813e36d738181ab40c6cf212352ce85f960567165ee4",
  "verification": {
    "reference": "docs/verification/Algebra/RingTheory/Topology/Variantf86f197e6d27c95419a568d66860fe375a2a7aac684b7bc6f90c07c2cdbdb169.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:17069bfe-d9f9-6cbb-3427-9721fe33818d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsAdicComplete.congr_ringEquiv : IsAdicComplete (I.map e) S ↔ IsAdicComplete I R := by
  simp [isAdicComplete_iff, IsHausdorff.congr_ringEquiv, IsPrecomplete.congr_ringEquiv]

end congrRingEquiv
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/RingTheory/Topology/Variantf86f197e6d27c95419a568d66860fe375a2a7aac684b7bc6f90c07c2cdbdb169.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RingTheory/Topology/Variantf86f197e6d27c95419a568d66860fe375a2a7aac684b7bc6f90c07c2cdbdb169.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2c44955c9cf26b4d3550a3da84494905d238fd0f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
