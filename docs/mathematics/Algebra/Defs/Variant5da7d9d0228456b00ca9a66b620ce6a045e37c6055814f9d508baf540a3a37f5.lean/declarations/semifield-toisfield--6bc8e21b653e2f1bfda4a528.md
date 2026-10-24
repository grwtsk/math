# Semifield.toIsField

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ee90f30fd6c9b73ec876118aa08eae2be49abda5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 196,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5d/5da7d9d0228456b00ca9a66b620ce6a045e37c6055814f9d508baf540a3a37f5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8a0c7fdb-fa4c-41fe-903c-392bea7659b2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:15dd2d4b-7809-db10-4cad-56f73960686c",
  "kind": "theorem",
  "lexical_name": "Semifield.toIsField",
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
  "slug": "semifield-toisfield--6bc8e21b653e2f1bfda4a528",
  "source": {
    "blob": "ee90f30fd6c9b73ec876118aa08eae2be49abda5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 201,
    "line": 196,
    "path": "GRWTSK/Algebra/Defs/Variant5da7d9d0228456b00ca9a66b620ce6a045e37c6055814f9d508baf540a3a37f5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6bc8e21b653e2f1bfda4a528dea74ef311f7479f535912fab793ce8b1033b002",
  "verification": {
    "reference": "docs/verification/Algebra/Defs/Variant5da7d9d0228456b00ca9a66b620ce6a045e37c6055814f9d508baf540a3a37f5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:15dd2d4b-7809-db10-4cad-56f73960686c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 196–201.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Semifield.toIsField (R : Type u) [Semifield R] : IsField R :=
  { ‹Semifield R› with
    mul_inv_cancel := @fun a ha => ⟨a⁻¹, mul_inv_cancel a ha⟩ }
#align semifield.to_is_field Semifield.toIsField

/-- Transferring from `Field` to `IsField`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Defs/Variant5da7d9d0228456b00ca9a66b620ce6a045e37c6055814f9d508baf540a3a37f5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Defs/Variant5da7d9d0228456b00ca9a66b620ce6a045e37c6055814f9d508baf540a3a37f5.lean#L196).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ee90f30fd6c9b73ec876118aa08eae2be49abda5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
