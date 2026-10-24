# char_eq_expChar_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "55ca94dbddbb2e0dd85319b93f4ad4c4a6e65019",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 56,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1d/1db54ee9050707a573f95c209be999eae2d4f594887553c6fc4d40f09945f7f3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7e5dd7a4-81b4-883e-2c9c-8cc273b1be55",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:433495c4-02c9-a30f-1c73-ec068b80c1a8",
  "kind": "theorem",
  "lexical_name": "char_eq_expChar_iff",
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
  "slug": "char-eq-expchar-iff--411080cac726fdef5304ab9b",
  "source": {
    "blob": "55ca94dbddbb2e0dd85319b93f4ad4c4a6e65019",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 56,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ExpChar/Variant1db54ee9050707a573f95c209be999eae2d4f594887553c6fc4d40f09945f7f3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:411080cac726fdef5304ab9b2519b1a0d2813c5fd2748806e5ae3834cfb3f620",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ExpChar/Variant1db54ee9050707a573f95c209be999eae2d4f594887553c6fc4d40f09945f7f3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:433495c4-02c9-a30f-1c73-ec068b80c1a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem char_eq_expChar_iff (p q : ℕ) [hp : CharP R p] [hq : ExpChar R q] : p = q ↔ p.Prime := by
  cases' hq with q hq_one hq_prime hq_hchar
  · rw [(CharP.eq R hp inferInstance : p = 0)]
    decide
  · exact ⟨fun hpq => hpq.symm ▸ hq_prime, fun _ => CharP.eq R hp hq_hchar⟩
#align char_eq_exp_char_iff char_eq_expChar_iff

section Nontrivial

variable [Nontrivial R]

/-- The exponential characteristic is one if the characteristic is zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/ExpChar/Variant1db54ee9050707a573f95c209be999eae2d4f594887553c6fc4d40f09945f7f3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ExpChar/Variant1db54ee9050707a573f95c209be999eae2d4f594887553c6fc4d40f09945f7f3.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `55ca94dbddbb2e0dd85319b93f4ad4c4a6e65019` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
