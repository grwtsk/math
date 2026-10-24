# coeff_pow_p'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "557787c8f32425dd40b7442d9826510c08600c5b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 115,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f5/f5746eab3cb265bee8e260621ed3d8f67f7d7b78e7b26ea21d24b61e1a9ebb9e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e473002f-6861-186f-97ec-0dada7a0aa43",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3f9f10b6-dc4e-9ce3-3514-e06ec3762440",
  "kind": "theorem",
  "lexical_name": "coeff_pow_p'",
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
  "slug": "coeff-pow-p--8c82b0932fa0f2e9d301fb18",
  "source": {
    "blob": "557787c8f32425dd40b7442d9826510c08600c5b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 115,
    "path": "GRWTSK/Algebra/Perfection/Variantf5746eab3cb265bee8e260621ed3d8f67f7d7b78e7b26ea21d24b61e1a9ebb9e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8c82b0932fa0f2e9d301fb1800379b39f8be81981ef333a270362941137e1fef",
  "verification": {
    "reference": "docs/verification/Algebra/Perfection/Variantf5746eab3cb265bee8e260621ed3d8f67f7d7b78e7b26ea21d24b61e1a9ebb9e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3f9f10b6-dc4e-9ce3-3514-e06ec3762440`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coeff_pow_p' (f : Ring.Perfection R p) (n : ℕ) : coeff R p (n + 1) f ^ p = coeff R p n f :=
  f.2 n

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Perfection/Variantf5746eab3cb265bee8e260621ed3d8f67f7d7b78e7b26ea21d24b61e1a9ebb9e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Perfection/Variantf5746eab3cb265bee8e260621ed3d8f67f7d7b78e7b26ea21d24b61e1a9ebb9e.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `557787c8f32425dd40b7442d9826510c08600c5b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
