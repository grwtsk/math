# mainTr2_hat_identity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3e08238ba18d831cfa7ecdcbddda6ee5b1e8df26",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 439,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ff/ff1c57696310e3b9cf0bb39ce7fcfc4f4c4ba654a605daa30b66c3c9b900e7cf.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3c696aa5-39a6-55fa-8f80-c52d1cd8f5a6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:eccb5c6f-ea13-28e1-55dc-e3655f764d03",
  "kind": "lemma",
  "lexical_name": "mainTr2_hat_identity",
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
  "slug": "maintr2-hat-identity--4dc3c934b282135e30ba921c",
  "source": {
    "blob": "3e08238ba18d831cfa7ecdcbddda6ee5b1e8df26",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 447,
    "line": 439,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Assembly/Variantff1c57696310e3b9cf0bb39ce7fcfc4f4c4ba654a605daa30b66c3c9b900e7cf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4dc3c934b282135e30ba921cd0fcb7fc812cfbf2b4e171b13a7c501014338299",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Assembly/Variantff1c57696310e3b9cf0bb39ce7fcfc4f4c4ba654a605daa30b66c3c9b900e7cf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eccb5c6f-ea13-28e1-55dc-e3655f764d03`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 439–447.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mainTr2_hat_identity {a L T ℓ₁ : ℝ} (ha : a ≠ 0) (hL : L ≠ 0) (hℓ₁ : ℓ₁ ≠ 0) :
    ((a * L)⁻¹) ^ 2 * (T * L / (2 * Real.pi) * (ℓ₁ ^ 2 + L ^ 2 / 3))
      = (a ^ 2)⁻¹ * (1 / (L / ℓ₁) + (L / ℓ₁) / 3) * (T * ℓ₁ / (2 * Real.pi)) := by
  field_simp

/-- **"`‖Ĝ‖_F² ≤ (1/λ₁ + λ₁/3) N (1 + O(𝓔′_T))`" made explicit.**  From [eq:tr2] (second form,
upper half) `tr G̃² ≤ (1 + C𝓔)(TL/2π)(ℓ₁² + L²/3)` and Riemann–von Mangoldt in the form
`Tℓ₁/2π ≤ N + R_N` [eq:RvM], with `K := (1 + C𝓔)/a²` and `cλ := 1/λ₁ + λ₁/3`:
`‖Ĝ‖_F² = tr G̃²/(aL)² ≤ cλ N + cλ((K − 1) N + K R_N)`.  (The second summand is the explicit `R₂`.) -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Assembly/Variantff1c57696310e3b9cf0bb39ce7fcfc4f4c4ba654a605daa30b66c3c9b900e7cf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Assembly/Variantff1c57696310e3b9cf0bb39ce7fcfc4f4c4ba654a605daa30b66c3c9b900e7cf.lean#L439).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e08238ba18d831cfa7ecdcbddda6ee5b1e8df26` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
