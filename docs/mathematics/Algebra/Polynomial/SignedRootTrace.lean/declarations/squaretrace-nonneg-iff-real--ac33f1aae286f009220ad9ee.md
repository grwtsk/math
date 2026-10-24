# squareTrace_nonneg_iff_real

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8a0bd84a-bca9-18d1-a318-fe579b1508ba",
  "kind": "theorem",
  "lexical_name": "squareTrace_nonneg_iff_real",
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
  "slug": "squaretrace-nonneg-iff-real--ac33f1aae286f009220ad9ee",
  "source": {
    "blob": "681311b90019c078ed32a3ff4ddb31d6597704bc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 125,
    "path": "GRWTSK/Algebra/Polynomial/SignedRootTrace.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ac33f1aae286f009220ad9ee93ad4cc5741740f5208fc9dab7f2855e0ee6b286",
  "verification": {
    "reference": "docs/verification/Algebra/Polynomial/SignedRootTrace.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8a0bd84a-bca9-18d1-a318-fe579b1508ba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem squareTrace_nonneg_iff_real {nodes : Finset ℂ}
    (hclosed : ∀ z ∈ nodes, conj z ∈ nodes) {weight : ℂ → ℝ}
    (hweight : ∀ z ∈ nodes, 0 < weight z) :
    (∀ p : Polynomial ℝ, p.degree < (nodes.card : WithBot ℕ) →
      0 ≤ (squareTrace nodes weight p).re) ↔
    ∀ z ∈ nodes, z.im = 0 := by
  constructor
  · intro h z hz
    by_contra him
    obtain ⟨p, hdegree, hp⟩ := exists_pair_test hclosed weight hz him
    have hnonneg := h p hdegree
    rw [hp] at hnonneg
    simp only [Complex.neg_re, Complex.ofReal_re] at hnonneg
    have hw := hweight z hz
    have hwc := hweight (conj z) (hclosed z hz)
    linarith
  · intro hreal p _
    rw [squareTrace_eq_real weight hreal p, Complex.ofReal_re]
    exact Finset.sum_nonneg fun z hz => mul_nonneg (hweight z hz).le (sq_nonneg _)

end GRWTSK.Polynomial.SignedRootTrace
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Polynomial/SignedRootTrace.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Polynomial/SignedRootTrace.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `681311b90019c078ed32a3ff4ddb31d6597704bc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
