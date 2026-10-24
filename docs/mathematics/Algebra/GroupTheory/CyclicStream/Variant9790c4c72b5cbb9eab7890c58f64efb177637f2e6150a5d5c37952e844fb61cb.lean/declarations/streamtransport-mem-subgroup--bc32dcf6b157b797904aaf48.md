# streamTransport_mem_subgroup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a8d3c1dc-b842-5ad0-75c0-e15841517358",
  "kind": "theorem",
  "lexical_name": "streamTransport_mem_subgroup",
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
  "slug": "streamtransport-mem-subgroup--bc32dcf6b157b797904aaf48",
  "source": {
    "blob": "6a1cd880ff1a1d35b5c60d87f00671d55c6671c5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 366,
    "line": 350,
    "path": "GRWTSK/Algebra/GroupTheory/CyclicStream/Variant9790c4c72b5cbb9eab7890c58f64efb177637f2e6150a5d5c37952e844fb61cb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bc32dcf6b157b797904aaf48d19630c6c5fa0b129e2f5b0f7c03a9fd472be34a",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/CyclicStream/Variant9790c4c72b5cbb9eab7890c58f64efb177637f2e6150a5d5c37952e844fb61cb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a8d3c1dc-b842-5ad0-75c0-e15841517358`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 350–366.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem streamTransport_mem_subgroup (input : ℕ → ℕ)
    (stepMap : CoverPhase h → Fiber3 ≃ₗ[ℝ] Fiber3)
    (G : Subgroup (Fiber3 ≃ₗ[ℝ] Fiber3))
    (hG : StreamInSubgroup input h stepMap G) (N : ℕ) :
    streamTransport input h stepMap N ∈ G := by
  induction N with
  | zero =>
      exact G.one_mem
  | succ N ih =>
      rw [streamTransport_succ, ← LinearEquiv.mul_eq_trans]
      exact G.mul_mem (hG N) ih

/--
A stronger phasewise structure-group reduction implies containment for every
possible external input sequence.
-/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/CyclicStream/Variant9790c4c72b5cbb9eab7890c58f64efb177637f2e6150a5d5c37952e844fb61cb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/CyclicStream/Variant9790c4c72b5cbb9eab7890c58f64efb177637f2e6150a5d5c37952e844fb61cb.lean#L350).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6a1cd880ff1a1d35b5c60d87f00671d55c6671c5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
