# norm_cos_add_sin_mul_I

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d2ba6ae2970b5c003f4abb20b7b7d536b9f1297c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 945,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b6/b63dc0d49ca3deb88ffb47292745448b2611bf2d43b4ea05931628f8aa286b3b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5fe9eca0-81ab-567e-6a4c-e8eaac4dccfa",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2b98d6a8-0475-8c69-5950-facd83f0ad0a",
  "kind": "theorem",
  "lexical_name": "norm_cos_add_sin_mul_I",
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
  "slug": "norm-cos-add-sin-mul-i--ba85a5ce05145a3f1ab54276",
  "source": {
    "blob": "d2ba6ae2970b5c003f4abb20b7b7d536b9f1297c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 949,
    "line": 945,
    "path": "GRWTSK/Analysis/ComplexAnalysis/Trigonometric/Variantb63dc0d49ca3deb88ffb47292745448b2611bf2d43b4ea05931628f8aa286b3b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ba85a5ce05145a3f1ab54276da29420d6c7ce772dc2b466c6fec62e10218b9b0",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/Trigonometric/Variantb63dc0d49ca3deb88ffb47292745448b2611bf2d43b4ea05931628f8aa286b3b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2b98d6a8-0475-8c69-5950-facd83f0ad0a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 945–949.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_cos_add_sin_mul_I (x : ℝ) : ‖cos x + sin x * I‖ = 1 := by
  have := Real.sin_sq_add_cos_sq x
  simp_all [add_comm, norm_def, normSq, sq, sin_ofReal_re, cos_ofReal_re, mul_re]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/Trigonometric/Variantb63dc0d49ca3deb88ffb47292745448b2611bf2d43b4ea05931628f8aa286b3b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/Trigonometric/Variantb63dc0d49ca3deb88ffb47292745448b2611bf2d43b4ea05931628f8aa286b3b.lean#L945).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d2ba6ae2970b5c003f4abb20b7b7d536b9f1297c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
