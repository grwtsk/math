# nonzero_shear

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "72fe9351e4b19e50a0b7b0f7823fe25cea9b352d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 51,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/72/72de4debf1dde0222803eac9999a0ca266679c886bf4a065263e441630eef201.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0ee68afb-1afe-249e-5eae-6a065d443eeb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fe4e50aa-a212-ae6c-8d15-2a75401d6af0",
  "kind": "theorem",
  "lexical_name": "nonzero_shear",
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
  "slug": "nonzero-shear--3719a795ef811da96c5cdd13",
  "source": {
    "blob": "72fe9351e4b19e50a0b7b0f7823fe25cea9b352d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 51,
    "path": "GRWTSK/Algebra/LinearAlgebra/72de4debf1dde0222803eac9999a0ca266679c886bf4a065263e441630eef201FeshbachInertiaA/Variant72de4debf1dde0222803eac9999a0ca266679c886bf4a065263e441630eef201.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3719a795ef811da96c5cdd133978166015143d2d50335f65c568baa0922c559d",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/72de4debf1dde0222803eac9999a0ca266679c886bf4a065263e441630eef201FeshbachInertiaA/Variant72de4debf1dde0222803eac9999a0ca266679c886bf4a065263e441630eef201.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fe4e50aa-a212-ae6c-8d15-2a75401d6af0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nonzero_shear :
    shear (1 : Matrix Unit Unit ℝ) 1 (fun _ => 2, fun _ => 3) =
      (fun _ => 2, fun _ => 5) := by
  ext <;> norm_num [shear_apply]

/-- The rank-one packet has an exactly zero Schur center. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/72de4debf1dde0222803eac9999a0ca266679c886bf4a065263e441630eef201FeshbachInertiaA/Variant72de4debf1dde0222803eac9999a0ca266679c886bf4a065263e441630eef201.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/72de4debf1dde0222803eac9999a0ca266679c886bf4a065263e441630eef201FeshbachInertiaA/Variant72de4debf1dde0222803eac9999a0ca266679c886bf4a065263e441630eef201.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `72fe9351e4b19e50a0b7b0f7823fe25cea9b352d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
