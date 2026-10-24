# aeval_sumElim_pderiv_inl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b5afb956-1ae9-92c7-1962-ef79ec533a25",
  "kind": "lemma",
  "lexical_name": "aeval_sumElim_pderiv_inl",
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
  "slug": "aeval-sumelim-pderiv-inl--64c7cfd32ba45c6b5ac8278f",
  "source": {
    "blob": "608a6f5fabb3eb2f58f4d8aa42063f5aebd78528",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 147,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/PDeriv/Variant10df93c544aa0e7dc43d5d004f7cb5973c1d15bf51a6429c4912511424574c49.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:64c7cfd32ba45c6b5ac8278f57db52829912fcd4cc4064626a9c2e7cdbd4b620",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/PDeriv/Variant10df93c544aa0e7dc43d5d004f7cb5973c1d15bf51a6429c4912511424574c49.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b5afb956-1ae9-92c7-1962-ef79ec533a25`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 147–163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma aeval_sumElim_pderiv_inl {S τ : Type*} [CommRing S] [Algebra R S]
    (p : MvPolynomial (σ ⊕ τ) R) (f : τ → S) (j : σ) :
    aeval (Sum.elim X (C ∘ f)) ((pderiv (Sum.inl j)) p) =
      (pderiv j) ((aeval (Sum.elim X (C ∘ f))) p) := by
  classical
  induction p using MvPolynomial.induction_on with
  | C a => simp
  | add p q hp hq => simp [hp, hq]
  | mul_X p q h =>
    simp only [Derivation.leibniz, pderiv_X, smul_eq_mul, map_add, map_mul, aeval_X, h]
    cases q <;> simp [Pi.single_apply]

@[deprecated (since := "2025-02-21")] alias aeval_sum_elim_pderiv_inl := aeval_sumElim_pderiv_inl

end PDeriv

end MvPolynomial
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/PDeriv/Variant10df93c544aa0e7dc43d5d004f7cb5973c1d15bf51a6429c4912511424574c49.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/PDeriv/Variant10df93c544aa0e7dc43d5d004f7cb5973c1d15bf51a6429c4912511424574c49.lean#L147).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `608a6f5fabb3eb2f58f4d8aa42063f5aebd78528` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
