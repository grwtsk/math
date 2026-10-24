# restrictScalars_restrictSupportIdeal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f139ca05206f1a00072f0cf1594bfdc9604b81ca",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 159,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d6/d689a79e455a430135760db90b06299fb4bcf1792ae658d7268e07caa1d22a65.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:832f9480-5b6d-4719-b573-6981e5b3b1b1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6d11c4f4-1c36-c376-0eb4-5db0f32e140d",
  "kind": "lemma",
  "lexical_name": "restrictScalars_restrictSupportIdeal",
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
  "slug": "restrictscalars-restrictsupportideal--bdb2859d8dae72a6a7446927",
  "source": {
    "blob": "f139ca05206f1a00072f0cf1594bfdc9604b81ca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 165,
    "line": 159,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantd689a79e455a430135760db90b06299fb4bcf1792ae658d7268e07caa1d22a65.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bdb2859d8dae72a6a744692795735e5236715d07f1fbe45f9049917e201dd547",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variantd689a79e455a430135760db90b06299fb4bcf1792ae658d7268e07caa1d22a65.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6d11c4f4-1c36-c376-0eb4-5db0f32e140d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 159–165.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma restrictScalars_restrictSupportIdeal (s : Set (σ →₀ ℕ)) (hs) :
    (restrictSupportIdeal (R := R) s hs).restrictScalars R = restrictSupport R s :=
  rfl

variable (σ)

/-- The submodule of polynomials of total degree less than or equal to `m`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variantd689a79e455a430135760db90b06299fb4bcf1792ae658d7268e07caa1d22a65.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variantd689a79e455a430135760db90b06299fb4bcf1792ae658d7268e07caa1d22a65.lean#L159).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f139ca05206f1a00072f0cf1594bfdc9604b81ca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
