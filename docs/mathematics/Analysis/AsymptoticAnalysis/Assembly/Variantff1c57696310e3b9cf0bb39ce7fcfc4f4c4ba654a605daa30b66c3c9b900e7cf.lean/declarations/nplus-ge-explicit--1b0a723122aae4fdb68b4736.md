# nplus_ge_explicit

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
      "line": 1353,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ff/ff1c57696310e3b9cf0bb39ce7fcfc4f4c4ba654a605daa30b66c3c9b900e7cf.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:40a82d63-7b5c-7cf8-7bd4-e62660d2d4d9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d4073e81-086e-0f58-4f7a-95a0f8b2644d",
  "kind": "theorem",
  "lexical_name": "nplus_ge_explicit",
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
  "slug": "nplus-ge-explicit--1b0a723122aae4fdb68b4736",
  "source": {
    "blob": "3e08238ba18d831cfa7ecdcbddda6ee5b1e8df26",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1375,
    "line": 1353,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Assembly/Variantff1c57696310e3b9cf0bb39ce7fcfc4f4c4ba654a605daa30b66c3c9b900e7cf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1b0a723122aae4fdb68b4736bb6848a00782861e322c4bd2a8ecde92b8f96e45",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Assembly/Variantff1c57696310e3b9cf0bb39ce7fcfc4f4c4ba654a605daa30b66c3c9b900e7cf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d4073e81-086e-0f58-4f7a-95a0f8b2644d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1353–1375.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nplus_ge_explicit {nplus trG trG2 θd FN CE : ℝ}
    (hCS : (trG - θd) ^ 2 / trG2 ≤ nplus) (htr : 0 < trG) (hθd : 0 ≤ θd) (htrG2 : 0 ≤ trG2)
    (hratio : |trG ^ 2 / trG2 - FN| ≤ CE * FN) :
    FN - (CE * FN + 2 * (θd / trG) * ((1 + CE) * FN)) ≤ nplus := by
  set Q := trG ^ 2 / trG2 with hQ
  set x := θd / trG with hx
  have hx0 : 0 ≤ x := div_nonneg hθd htr.le
  have h1 : Q - 2 * x * Q ≤ (trG - θd) ^ 2 / trG2 := by
    have e : Q - 2 * x * Q = (trG ^ 2 - 2 * θd * trG) / trG2 := by
      simp only [hQ, hx]; field_simp
    rw [e]
    apply div_le_div_of_nonneg_right _ htrG2
    nlinarith [sq_nonneg θd]
  have hQlo : FN - CE * FN ≤ Q := by have := (abs_le.mp hratio).1; linarith
  have hQhi : Q ≤ (1 + CE) * FN := by have := (abs_le.mp hratio).2; linarith
  have : 2 * x * Q ≤ 2 * x * ((1 + CE) * FN) := mul_le_mul_of_nonneg_left hQhi (by positivity)
  linarith

/-- **Theorems B and C at fixed `λ ∈ (0,1)`, for an abstract zero configuration — common core.**
There is `R = o(N)` with, eventually in `T`:  `(2F(λ) − 1)N − 2R ≤ N₀ˢ(T,2T)` and
`F(λ)N − R ≤ N_d(T,2T)`  (paper §6, proofs of thm:B, thm:C: prop:tail `θ₀ ≪ lT^{λ/2−1}`, prop:trace
`tr G̃ ≫ dl` hence `tr G̃ > θ₀d`, lem:CS + [eq:ratio] ⇒ [eq:nplus-lower], then [eq:zeroside2] and
`F(λ₁) ≥ F(λ) − 1/l`).  Same displayed inputs as `thmA_abstract` (without `ha`). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Assembly/Variantff1c57696310e3b9cf0bb39ce7fcfc4f4c4ba654a605daa30b66c3c9b900e7cf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Assembly/Variantff1c57696310e3b9cf0bb39ce7fcfc4f4c4ba654a605daa30b66c3c9b900e7cf.lean#L1353).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e08238ba18d831cfa7ecdcbddda6ee5b1e8df26` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
