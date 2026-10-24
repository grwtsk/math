# piCongrRight_symm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0840cb51516782757b8b13a38293c46d2ff188f0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 151,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/35/358094bd169f70c36eef06e1d165fdd6d16d4051846d77efaa0f3776e8ac13db.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:00d4b5db-338d-d695-3023-74864f6cdbab",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a03d93bc-06d5-a2b2-673d-71191c7aa619",
  "kind": "theorem",
  "lexical_name": "piCongrRight_symm",
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
  "slug": "picongrright-symm--cc2fc5ccc98bc71caa6ea51a",
  "source": {
    "blob": "0840cb51516782757b8b13a38293c46d2ff188f0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 155,
    "line": 151,
    "path": "GRWTSK/Algebra/Pi/Variant358094bd169f70c36eef06e1d165fdd6d16d4051846d77efaa0f3776e8ac13db.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cc2fc5ccc98bc71caa6ea51af4a8e291fccdf7843a9915850be870b99f930399",
  "verification": {
    "reference": "docs/verification/Algebra/Pi/Variant358094bd169f70c36eef06e1d165fdd6d16d4051846d77efaa0f3776e8ac13db.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a03d93bc-06d5-a2b2-673d-71191c7aa619`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 151–155.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem piCongrRight_symm (e : ∀ i, A₁ i ≃ₐ[R] A₂ i) :
    (piCongrRight e).symm = piCongrRight fun i ↦ (e i).symm :=
  rfl

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Pi/Variant358094bd169f70c36eef06e1d165fdd6d16d4051846d77efaa0f3776e8ac13db.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Pi/Variant358094bd169f70c36eef06e1d165fdd6d16d4051846d77efaa0f3776e8ac13db.lean#L151).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0840cb51516782757b8b13a38293c46d2ff188f0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
