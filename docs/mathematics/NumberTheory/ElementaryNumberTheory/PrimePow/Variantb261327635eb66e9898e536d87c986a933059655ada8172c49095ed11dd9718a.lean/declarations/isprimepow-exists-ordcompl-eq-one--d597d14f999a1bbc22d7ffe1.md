# IsPrimePow.exists_ordCompl_eq_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "60833212605b9c634a124d6937af8dc5b6d6c258",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 56,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b2/b261327635eb66e9898e536d87c986a933059655ada8172c49095ed11dd9718a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5d8c77c6-92d9-08d7-045f-07c7bd542dee",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:593cb2d2-a4f8-0df0-006b-8ef25ddbd1bf",
  "kind": "theorem",
  "lexical_name": "IsPrimePow.exists_ordCompl_eq_one",
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
  "slug": "isprimepow-exists-ordcompl-eq-one--d597d14f999a1bbc22d7ffe1",
  "source": {
    "blob": "60833212605b9c634a124d6937af8dc5b6d6c258",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 56,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/PrimePow/Variantb261327635eb66e9898e536d87c986a933059655ada8172c49095ed11dd9718a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d597d14f999a1bbc22d7ffe1299ac9850717fd670824f9f04f9b7bb01847c38a",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/PrimePow/Variantb261327635eb66e9898e536d87c986a933059655ada8172c49095ed11dd9718a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:593cb2d2-a4f8-0df0-006b-8ef25ddbd1bf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsPrimePow.exists_ordCompl_eq_one {n : ℕ} (h : IsPrimePow n) :
    ∃ p : ℕ, p.Prime ∧ ordCompl[p] n = 1 := by
  rcases eq_or_ne n 0 with (rfl | hn0); · cases not_isPrimePow_zero h
  rcases isPrimePow_iff_factorization_eq_single.mp h with ⟨p, k, hk0, h1⟩
  rcases em' p.Prime with (pp | pp)
  · refine absurd ?_ hk0.ne'
    simp [← Nat.factorization_eq_zero_of_non_prime n pp, h1]
  refine ⟨p, pp, ?_⟩
  refine Nat.eq_of_factorization_eq (Nat.ordCompl_pos p hn0).ne' (by simp) fun q => ?_
  rw [Nat.factorization_ordCompl n p, h1]
  simp

@[deprecated (since := "2024-10-24")]
alias IsPrimePow.exists_ord_compl_eq_one := IsPrimePow.exists_ordCompl_eq_one

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/PrimePow/Variantb261327635eb66e9898e536d87c986a933059655ada8172c49095ed11dd9718a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/PrimePow/Variantb261327635eb66e9898e536d87c986a933059655ada8172c49095ed11dd9718a.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `60833212605b9c634a124d6937af8dc5b6d6c258` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
