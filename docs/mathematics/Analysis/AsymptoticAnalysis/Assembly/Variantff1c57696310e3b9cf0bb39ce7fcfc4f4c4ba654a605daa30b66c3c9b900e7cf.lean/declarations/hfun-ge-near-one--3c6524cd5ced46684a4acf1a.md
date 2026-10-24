# Hfun_ge_near_one

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
      "line": 300,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ff/ff1c57696310e3b9cf0bb39ce7fcfc4f4c4ba654a605daa30b66c3c9b900e7cf.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4fa23edb-b097-f200-8563-42db5a814866",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:66392cb8-5a6e-5641-7283-d2586971a0e2",
  "kind": "lemma",
  "lexical_name": "Hfun_ge_near_one",
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
  "slug": "hfun-ge-near-one--3c6524cd5ced46684a4acf1a",
  "source": {
    "blob": "3e08238ba18d831cfa7ecdcbddda6ee5b1e8df26",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 308,
    "line": 300,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Assembly/Variantff1c57696310e3b9cf0bb39ce7fcfc4f4c4ba654a605daa30b66c3c9b900e7cf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3c6524cd5ced46684a4acf1adbf57fa144081b3724a920d14f5beddbd5c35d5e",
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

Occurrence: `result:66392cb8-5a6e-5641-7283-d2586971a0e2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 300–308.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Hfun_ge_near_one (lam : ℝ) (h1 : 1 / 2 ≤ lam) (h2 : lam ≤ 1) :
    2 / 3 - 5 / 3 * (1 - lam) ≤ Hfun lam := by
  simp only [Hfun]
  have hlam : 0 < lam := by linarith
  have : 1 / lam ≤ 1 + 2 * (1 - lam) := by
    rw [div_le_iff₀ hlam]; nlinarith
  linarith

/-- For `λ ∈ [0, 1]`, `F(λ) ≥ 3/4 − (1 − λ)` (for the `λ → 1⁻` step of Thm B/C). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Assembly/Variantff1c57696310e3b9cf0bb39ce7fcfc4f4c4ba654a605daa30b66c3c9b900e7cf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Assembly/Variantff1c57696310e3b9cf0bb39ce7fcfc4f4c4ba654a605daa30b66c3c9b900e7cf.lean#L300).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e08238ba18d831cfa7ecdcbddda6ee5b1e8df26` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
