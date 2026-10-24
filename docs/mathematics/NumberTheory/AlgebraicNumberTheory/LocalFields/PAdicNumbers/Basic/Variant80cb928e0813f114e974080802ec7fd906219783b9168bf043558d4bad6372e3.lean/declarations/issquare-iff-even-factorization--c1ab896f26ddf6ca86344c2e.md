# isSquare_iff_even_factorization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "09e4fe43670b683a56a386ff184228b0894fe2d3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 396,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/80/80cb928e0813f114e974080802ec7fd906219783b9168bf043558d4bad6372e3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1eb236ca-b2d2-f485-07e1-2e8527f1ddda",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:59e2e9d3-5a2d-e464-8731-fac020429987",
  "kind": "theorem",
  "lexical_name": "isSquare_iff_even_factorization",
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
  "slug": "issquare-iff-even-factorization--c1ab896f26ddf6ca86344c2e",
  "source": {
    "blob": "09e4fe43670b683a56a386ff184228b0894fe2d3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 421,
    "line": 396,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Basic/Variant80cb928e0813f114e974080802ec7fd906219783b9168bf043558d4bad6372e3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c1ab896f26ddf6ca86344c2e060b78abe75354519b8e0c40e1376361a34145fe",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Basic/Variant80cb928e0813f114e974080802ec7fd906219783b9168bf043558d4bad6372e3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:59e2e9d3-5a2d-e464-8731-fac020429987`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 396–421.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isSquare_iff_even_factorization {a : ℚ} :
    IsSquare a ↔ 0 ≤ a ∧ ∀ (p : ℕ), p.Prime → Even (padicValRat p a) := by
  constructor
  · refine fun ⟨r, hr⟩ ↦ ⟨by simpa [hr] using mul_self_nonneg r, fun p hp ↦ ?_⟩
    have : Fact (p.Prime) := ⟨hp⟩
    rw [hr]
    by_cases hr0 : r = 0
    · simp [hr0]
    simp [padicValRat.mul hr0 hr0]
  · intro ⟨hR, hf⟩
    rw [isSquare_iff]
    constructor
    · refine Int.isSquare_iff_nonneg_even_factorization.mpr ⟨num_nonneg.mpr hR, fun p hp ↦ ?_⟩
      have num_even := (num_den_even_padicVal_of_even_padicVal hp (hf p hp)).1
      simpa [Nat.factorization_def _ hp, padicValInt] using num_even
    · refine Nat.isSquare_iff_even_factorization.mpr (fun p hp ↦ ?_)
      have den_even := (num_den_even_padicVal_of_even_padicVal hp (hf p hp)).2
      rwa [Nat.factorization_def _ hp]

end Rat

namespace padicValNat

variable {p a b : ℕ} [hp : Fact p.Prime]

/-- A rewrite lemma for `padicValNat p (a * b)` with conditions `a ≠ 0`, `b ≠ 0`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Basic/Variant80cb928e0813f114e974080802ec7fd906219783b9168bf043558d4bad6372e3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Basic/Variant80cb928e0813f114e974080802ec7fd906219783b9168bf043558d4bad6372e3.lean#L396).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `09e4fe43670b683a56a386ff184228b0894fe2d3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
