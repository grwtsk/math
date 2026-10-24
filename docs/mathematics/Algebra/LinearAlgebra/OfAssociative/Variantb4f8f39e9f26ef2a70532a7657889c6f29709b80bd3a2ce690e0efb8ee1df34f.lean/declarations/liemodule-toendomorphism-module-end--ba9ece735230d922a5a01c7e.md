# LieModule.toEndomorphism_module_end

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:91bd89b3-6fb9-de5a-927b-6f81f969ac8a",
  "kind": "theorem",
  "lexical_name": "LieModule.toEndomorphism_module_end",
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
  "slug": "liemodule-toendomorphism-module-end--ba9ece735230d922a5a01c7e",
  "source": {
    "blob": "46e5f1be764d3cc680ec3d173f50adf3477ca3f7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 251,
    "line": 248,
    "path": "GRWTSK/Algebra/LinearAlgebra/OfAssociative/Variantb4f8f39e9f26ef2a70532a7657889c6f29709b80bd3a2ce690e0efb8ee1df34f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ba9ece735230d922a5a01c7e9323e29bf2d25a8e643172ef0a5afa3a14ac7b99",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/OfAssociative/Variantb4f8f39e9f26ef2a70532a7657889c6f29709b80bd3a2ce690e0efb8ee1df34f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:91bd89b3-6fb9-de5a-927b-6f81f969ac8a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 248–251.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem LieModule.toEndomorphism_module_end :
    LieModule.toEndomorphism R (Module.End R M) M = LieHom.id := by ext g m; simp [lie_eq_smul]
#align lie_module.to_endomorphism_module_End LieModule.toEndomorphism_module_end

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/OfAssociative/Variantb4f8f39e9f26ef2a70532a7657889c6f29709b80bd3a2ce690e0efb8ee1df34f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/OfAssociative/Variantb4f8f39e9f26ef2a70532a7657889c6f29709b80bd3a2ce690e0efb8ee1df34f.lean#L248).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `46e5f1be764d3cc680ec3d173f50adf3477ca3f7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
