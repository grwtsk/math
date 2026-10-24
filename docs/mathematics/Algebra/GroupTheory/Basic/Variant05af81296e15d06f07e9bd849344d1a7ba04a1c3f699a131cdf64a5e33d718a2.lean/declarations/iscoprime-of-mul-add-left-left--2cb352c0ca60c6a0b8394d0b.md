# IsCoprime.of_mul_add_left_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2efdace89745b6adeafbad57fa60c5236fcc3069",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 186,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/05/05af81296e15d06f07e9bd849344d1a7ba04a1c3f699a131cdf64a5e33d718a2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b79d45ee-f09f-f978-2e72-2a6d1fef26d2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fece6d5e-8ae8-ed75-d91a-597e0a16a450",
  "kind": "theorem",
  "lexical_name": "IsCoprime.of_mul_add_left_left",
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
  "slug": "iscoprime-of-mul-add-left-left--2cb352c0ca60c6a0b8394d0b",
  "source": {
    "blob": "2efdace89745b6adeafbad57fa60c5236fcc3069",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 189,
    "line": 186,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variant05af81296e15d06f07e9bd849344d1a7ba04a1c3f699a131cdf64a5e33d718a2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2cb352c0ca60c6a0b8394d0bc557cea14d156b141a798480c4d97bd7f17248cb",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variant05af81296e15d06f07e9bd849344d1a7ba04a1c3f699a131cdf64a5e33d718a2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fece6d5e-8ae8-ed75-d91a-597e0a16a450`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 186–189.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsCoprime.of_mul_add_left_left (h : IsCoprime (y * z + x) y) : IsCoprime x y := by
  rw [add_comm] at h
  exact h.of_add_mul_left_left

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variant05af81296e15d06f07e9bd849344d1a7ba04a1c3f699a131cdf64a5e33d718a2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variant05af81296e15d06f07e9bd849344d1a7ba04a1c3f699a131cdf64a5e33d718a2.lean#L186).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2efdace89745b6adeafbad57fa60c5236fcc3069` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
