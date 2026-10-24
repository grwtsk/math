# bracket_ofTwoCocycle

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3004ea302df468384135cd2540eb5c44bba4a8f4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 203,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e0/e0f98c03529588821104cd2c9db72cbf5798a3b8f8763dd797128f9298efc69c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:da0b18be-d370-f51f-115d-ee49d2df5838",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4b6ae328-8fdf-c3d0-1843-ea4254c04410",
  "kind": "lemma",
  "lexical_name": "bracket_ofTwoCocycle",
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
  "slug": "bracket-oftwococycle--8a78b920789d204267e7b835",
  "source": {
    "blob": "3004ea302df468384135cd2540eb5c44bba4a8f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 208,
    "line": 203,
    "path": "GRWTSK/Algebra/Extension/Variante0f98c03529588821104cd2c9db72cbf5798a3b8f8763dd797128f9298efc69c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8a78b920789d204267e7b835f8b7b6d71b530bcd3ef4667e2e9c3d111e9d0f27",
  "verification": {
    "reference": "docs/verification/Algebra/Extension/Variante0f98c03529588821104cd2c9db72cbf5798a3b8f8763dd797128f9298efc69c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4b6ae328-8fdf-c3d0-1843-ea4254c04410`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 203–208.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma bracket_ofTwoCocycle {c : twoCocycle R L M} (x y : ofTwoCocycle c) :
    letI x₁ := ((ofProd c).symm x).1; letI x₂ := ((ofProd c).symm x).2
    letI y₁ := ((ofProd c).symm y).1; letI y₂ := ((ofProd c).symm y).2
    ⁅x, y⁆ = ofProd c (⁅x₁, y₁⁆, (c : L →ₗ[R] L →ₗ[R] M) x₁ y₁ + ⁅x₁, y₂⁆ - ⁅y₁, x₂⁆) :=
  rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Extension/Variante0f98c03529588821104cd2c9db72cbf5798a3b8f8763dd797128f9298efc69c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Extension/Variante0f98c03529588821104cd2c9db72cbf5798a3b8f8763dd797128f9298efc69c.lean#L203).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3004ea302df468384135cd2540eb5c44bba4a8f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
