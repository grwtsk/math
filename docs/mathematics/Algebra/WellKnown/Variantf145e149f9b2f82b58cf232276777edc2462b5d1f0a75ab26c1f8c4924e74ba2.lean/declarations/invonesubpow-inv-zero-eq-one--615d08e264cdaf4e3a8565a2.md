# invOneSubPow_inv_zero_eq_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "573be53173ec1e7dcad83d95fd65556f49523066",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 152,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f1/f145e149f9b2f82b58cf232276777edc2462b5d1f0a75ab26c1f8c4924e74ba2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8986c4fd-165a-4e5f-54ff-632414e65046",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f2683e69-c00b-a0ae-8c26-bd9488266740",
  "kind": "theorem",
  "lexical_name": "invOneSubPow_inv_zero_eq_one",
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
  "slug": "invonesubpow-inv-zero-eq-one--615d08e264cdaf4e3a8565a2",
  "source": {
    "blob": "573be53173ec1e7dcad83d95fd65556f49523066",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 155,
    "line": 152,
    "path": "GRWTSK/Algebra/WellKnown/Variantf145e149f9b2f82b58cf232276777edc2462b5d1f0a75ab26c1f8c4924e74ba2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:615d08e264cdaf4e3a8565a2777ca07c04fe3eddacb3f6e59f741568d41da853",
  "verification": {
    "reference": "docs/verification/Algebra/WellKnown/Variantf145e149f9b2f82b58cf232276777edc2462b5d1f0a75ab26c1f8c4924e74ba2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f2683e69-c00b-a0ae-8c26-bd9488266740`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 152–155.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem invOneSubPow_inv_zero_eq_one : (invOneSubPow S 0).inv = 1 := by
  delta invOneSubPow
  simp only [Units.inv_eq_val_inv, inv_one, Units.val_one]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/WellKnown/Variantf145e149f9b2f82b58cf232276777edc2462b5d1f0a75ab26c1f8c4924e74ba2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/WellKnown/Variantf145e149f9b2f82b58cf232276777edc2462b5d1f0a75ab26c1f8c4924e74ba2.lean#L152).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `573be53173ec1e7dcad83d95fd65556f49523066` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
