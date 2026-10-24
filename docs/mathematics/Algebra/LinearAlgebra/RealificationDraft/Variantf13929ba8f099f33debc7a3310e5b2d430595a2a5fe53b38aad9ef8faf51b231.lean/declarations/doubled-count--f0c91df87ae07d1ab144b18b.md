# doubled_count

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ee1a9301ecb132de22a0e1312c5d360817d8c833",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 50,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f1/f13929ba8f099f33debc7a3310e5b2d430595a2a5fe53b38aad9ef8faf51b231.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e034af52-7166-784c-4802-5d187e854544",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9f6279a3-96ee-8eab-9312-234cad7b19d1",
  "kind": "theorem",
  "lexical_name": "doubled_count",
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
  "slug": "doubled-count--f0c91df87ae07d1ab144b18b",
  "source": {
    "blob": "ee1a9301ecb132de22a0e1312c5d360817d8c833",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 50,
    "path": "GRWTSK/Algebra/LinearAlgebra/RealificationDraft/Variantf13929ba8f099f33debc7a3310e5b2d430595a2a5fe53b38aad9ef8faf51b231.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f0c91df87ae07d1ab144b18b3d7deff58261a72f154d738e62435b4fe4c79300",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/RealificationDraft/Variantf13929ba8f099f33debc7a3310e5b2d430595a2a5fe53b38aad9ef8faf51b231.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9f6279a3-96ee-8eab-9312-234cad7b19d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem doubled_count (w : σ → ℝ) (P : ℝ → Prop) [DecidablePred P] :
    {i : σ ⊕ σ | P (Sum.elim w w i)}.ncard = 2*Fintype.card {i : σ // P (w i)} := by
  classical
  change Nat.card {i : σ ⊕ σ // P (Sum.elim w w i)} = _
  rw [Nat.card_congr (Equiv.subtypeSum (p := fun i : σ ⊕ σ => P (Sum.elim w w i)))]
  change Nat.card ({i : σ // P (w i)} ⊕ {i : σ // P (w i)}) = _
  rw [Nat.card_sum, Nat.card_eq_fintype_card]
  omega

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/RealificationDraft/Variantf13929ba8f099f33debc7a3310e5b2d430595a2a5fe53b38aad9ef8faf51b231.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/RealificationDraft/Variantf13929ba8f099f33debc7a3310e5b2d430595a2a5fe53b38aad9ef8faf51b231.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ee1a9301ecb132de22a0e1312c5d360817d8c833` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
