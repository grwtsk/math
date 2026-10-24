# coeff_pderiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "89520bbb67e2860dad083a144209dd7a438e5043",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 121,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/86/86fad42ffca71f9ffd94f59d1e6486977de3c79d14385e1c462afeaf59c09fc5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:77b76271-75be-33bd-9b7c-cf6987e86598",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:80a67a2d-24dc-4438-1165-3f62f7fcb67b",
  "kind": "theorem",
  "lexical_name": "coeff_pderiv",
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
  "slug": "coeff-pderiv--453fbbcffececbc0d206c793",
  "source": {
    "blob": "89520bbb67e2860dad083a144209dd7a438e5043",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 121,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/PDeriv/Variant86fad42ffca71f9ffd94f59d1e6486977de3c79d14385e1c462afeaf59c09fc5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:453fbbcffececbc0d206c7934775c7ccd9c2f98d889eb7e74804177aaea73414",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/PDeriv/Variant86fad42ffca71f9ffd94f59d1e6486977de3c79d14385e1c462afeaf59c09fc5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:80a67a2d-24dc-4438-1165-3f62f7fcb67b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coeff_pderiv {i : σ} (p : MvPolynomial σ R) (m : σ →₀ ℕ) :
    (pderiv i p).coeff m = p.coeff (m + single i 1) * (m i + 1) := by
  classical
  induction p using MvPolynomial.induction_on' with
  | add p q hp hq => simp [hp, hq, add_mul]
  | monomial n a =>
    rw [pderiv_monomial, coeff_monomial, coeff_monomial]
    by_cases h : n = m + single i 1
    · simp [h]
    simp only [h, ↓reduceIte, zero_mul]
    by_cases hn : n i = 0
    · simp [hn]
    apply ite_eq_right
    rwa [tsub_eq_iff_eq_add_of_le (fun _ ↦ by grind)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/PDeriv/Variant86fad42ffca71f9ffd94f59d1e6486977de3c79d14385e1c462afeaf59c09fc5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/PDeriv/Variant86fad42ffca71f9ffd94f59d1e6486977de3c79d14385e1c462afeaf59c09fc5.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `89520bbb67e2860dad083a144209dd7a438e5043` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
