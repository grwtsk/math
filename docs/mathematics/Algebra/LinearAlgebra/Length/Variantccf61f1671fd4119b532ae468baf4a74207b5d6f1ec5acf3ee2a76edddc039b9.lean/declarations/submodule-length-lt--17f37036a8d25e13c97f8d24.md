# Submodule.length_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:80cdd6a8-70d3-e3ea-0def-46f5c6dd72bb",
  "kind": "lemma",
  "lexical_name": "Submodule.length_lt",
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
  "slug": "submodule-length-lt--17f37036a8d25e13c97f8d24",
  "source": {
    "blob": "f205bbb307f205d0c688071d46cb98b311d999a9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 168,
    "path": "GRWTSK/Algebra/LinearAlgebra/Length/Variantccf61f1671fd4119b532ae468baf4a74207b5d6f1ec5acf3ee2a76edddc039b9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:17f37036a8d25e13c97f8d24c8eda466d0f52727598ac2d673a0c6780ba42264",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Length/Variantccf61f1671fd4119b532ae468baf4a74207b5d6f1ec5acf3ee2a76edddc039b9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:80cdd6a8-70d3-e3ea-0def-46f5c6dd72bb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Submodule.length_lt [IsArtinian R M] [IsNoetherian R M] {N : Submodule R M} (h : N ≠ ⊤) :
    Module.length R N < Module.length R M := by
  simpa [← Module.length_top (M := M), Module.length_submodule] using height_strictMono h.lt_top

variable {N P : Type*} [AddCommGroup N] [AddCommGroup P] [Module R N] [Module R P]
variable (f : N →ₗ[R] M) (g : M →ₗ[R] P) (hf : Function.Injective f) (hg : Function.Surjective g)
variable (H : Function.Exact f g)

include hf hg H in
/-- Length is additive in exact sequences. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Length/Variantccf61f1671fd4119b532ae468baf4a74207b5d6f1ec5acf3ee2a76edddc039b9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Length/Variantccf61f1671fd4119b532ae468baf4a74207b5d6f1ec5acf3ee2a76edddc039b9.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f205bbb307f205d0c688071d46cb98b311d999a9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
