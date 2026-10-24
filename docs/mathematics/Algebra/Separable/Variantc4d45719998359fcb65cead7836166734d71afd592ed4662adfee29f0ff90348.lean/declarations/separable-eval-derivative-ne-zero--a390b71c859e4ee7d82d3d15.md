# Separable.eval₂_derivative_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d6597af408428e0c64eaaeafc226086b1b7ec8aa",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 146,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c4/c4d45719998359fcb65cead7836166734d71afd592ed4662adfee29f0ff90348.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:99959494-50fc-77be-adf9-3f26e9529bcc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:65b8c080-328d-95fb-560d-ea2d256dc7fb",
  "kind": "theorem",
  "lexical_name": "Separable.eval₂_derivative_ne_zero",
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
  "slug": "separable-eval-derivative-ne-zero--a390b71c859e4ee7d82d3d15",
  "source": {
    "blob": "d6597af408428e0c64eaaeafc226086b1b7ec8aa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 153,
    "line": 146,
    "path": "GRWTSK/Algebra/Separable/Variantc4d45719998359fcb65cead7836166734d71afd592ed4662adfee29f0ff90348.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a390b71c859e4ee7d82d3d15eee2b5d7d021ab50e5e0b88c392893dd85911b86",
  "verification": {
    "reference": "docs/verification/Algebra/Separable/Variantc4d45719998359fcb65cead7836166734d71afd592ed4662adfee29f0ff90348.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:65b8c080-328d-95fb-560d-ea2d256dc7fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 146–153.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Separable.eval₂_derivative_ne_zero [Nontrivial S] (f : R →+* S) {p : R[X]}
    (h : p.Separable) {x : S} (hx : p.eval₂ f x = 0) :
    (derivative p).eval₂ f x ≠ 0 := by
  intro hx'
  obtain ⟨a, b, e⟩ := h
  apply_fun Polynomial.eval₂ f x at e
  simp only [eval₂_add, eval₂_mul, hx, mul_zero, hx', add_zero, eval₂_one, zero_ne_one] at e

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Separable/Variantc4d45719998359fcb65cead7836166734d71afd592ed4662adfee29f0ff90348.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Separable/Variantc4d45719998359fcb65cead7836166734d71afd592ed4662adfee29f0ff90348.lean#L146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d6597af408428e0c64eaaeafc226086b1b7ec8aa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
