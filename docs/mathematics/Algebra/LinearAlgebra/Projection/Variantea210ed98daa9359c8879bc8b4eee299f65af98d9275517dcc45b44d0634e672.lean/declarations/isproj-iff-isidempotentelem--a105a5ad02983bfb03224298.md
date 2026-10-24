# isProj_iff_isIdempotentElem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2b5d3bccabca45bd6a4d9a3a9a4fcbfd01ce2039",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 375,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ea/ea210ed98daa9359c8879bc8b4eee299f65af98d9275517dcc45b44d0634e672.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e4173ac1-a8aa-9333-5080-071e42125311",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8f4a878a-ef9b-4cb5-df02-b185cb247bfb",
  "kind": "theorem",
  "lexical_name": "isProj_iff_isIdempotentElem",
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
  "slug": "isproj-iff-isidempotentelem--a105a5ad02983bfb03224298",
  "source": {
    "blob": "2b5d3bccabca45bd6a4d9a3a9a4fcbfd01ce2039",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 398,
    "line": 375,
    "path": "GRWTSK/Algebra/LinearAlgebra/Projection/Variantea210ed98daa9359c8879bc8b4eee299f65af98d9275517dcc45b44d0634e672.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a105a5ad02983bfb03224298fbc10b453b257c484d4a4ec4d7e2462095fab536",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Projection/Variantea210ed98daa9359c8879bc8b4eee299f65af98d9275517dcc45b44d0634e672.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8f4a878a-ef9b-4cb5-df02-b185cb247bfb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 375–398.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isProj_iff_isIdempotentElem (f : M →ₗ[S] M) :
    (∃ p : Submodule S M, IsProj p f) ↔ IsIdempotentElem f := by
  constructor
  · intro ⟨p, hp⟩
    ext x
    exact hp.map_id (f x) (hp.map_mem x)
  · intro h
    use range f
    constructor
    · intro x
      exact mem_range_self f x
    · intro x hx
      obtain ⟨y, hy⟩ := mem_range.1 hx
      rw [← hy, ← Module.End.mul_apply, h]

@[deprecated (since := "2025-01-12")] alias isProj_iff_idempotent := isProj_iff_isIdempotentElem

namespace IsProj

variable {p m}

/-- Restriction of the codomain of a projection of onto a subspace `p` to `p` instead of the whole
space.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Projection/Variantea210ed98daa9359c8879bc8b4eee299f65af98d9275517dcc45b44d0634e672.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Projection/Variantea210ed98daa9359c8879bc8b4eee299f65af98d9275517dcc45b44d0634e672.lean#L375).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b5d3bccabca45bd6a4d9a3a9a4fcbfd01ce2039` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
