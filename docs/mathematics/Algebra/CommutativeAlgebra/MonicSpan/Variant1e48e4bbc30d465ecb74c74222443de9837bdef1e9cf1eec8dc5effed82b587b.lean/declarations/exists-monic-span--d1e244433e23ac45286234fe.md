# exists_monic_span

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "00fe5d9cce36d837a9f26b4e0e47424f0c7e6168",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 27,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1e/1e48e4bbc30d465ecb74c74222443de9837bdef1e9cf1eec8dc5effed82b587b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:368abafa-ce8e-e22c-2399-f1259736dad1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e4899b6a-1fe3-85ee-9481-1aa2e5f9893b",
  "kind": "lemma",
  "lexical_name": "exists_monic_span",
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
  "slug": "exists-monic-span--d1e244433e23ac45286234fe",
  "source": {
    "blob": "00fe5d9cce36d837a9f26b4e0e47424f0c7e6168",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 34,
    "line": 27,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/MonicSpan/Variant1e48e4bbc30d465ecb74c74222443de9837bdef1e9cf1eec8dc5effed82b587b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d1e244433e23ac45286234fe75a876378b4bce2574c01d99a4544cb7c7d8119b",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/MonicSpan/Variant1e48e4bbc30d465ecb74c74222443de9837bdef1e9cf1eec8dc5effed82b587b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e4899b6a-1fe3-85ee-9481-1aa2e5f9893b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–34.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_monic_span {k : Type*} [Field k] (I : Ideal k[X]) (ne : I ≠ ⊥) :
    ∃ f, f.Monic ∧ I = Ideal.span {f} := by
  classical
  obtain ⟨x, h, spanx⟩ := Ideal.exists_normalized_span_of_isPrincipal I
  refine ⟨x, (Polynomial.normalize_eq_self_iff_monic ?_).mp h, spanx⟩
  by_contra eq0
  simp [eq0, spanx] at ne

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/MonicSpan/Variant1e48e4bbc30d465ecb74c74222443de9837bdef1e9cf1eec8dc5effed82b587b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/MonicSpan/Variant1e48e4bbc30d465ecb74c74222443de9837bdef1e9cf1eec8dc5effed82b587b.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `00fe5d9cce36d837a9f26b4e0e47424f0c7e6168` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
