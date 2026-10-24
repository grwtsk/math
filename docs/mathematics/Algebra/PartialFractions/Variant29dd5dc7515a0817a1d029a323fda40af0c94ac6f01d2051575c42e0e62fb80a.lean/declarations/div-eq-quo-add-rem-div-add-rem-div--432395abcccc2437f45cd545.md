# div_eq_quo_add_rem_div_add_rem_div

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "292693f7907362a7fd4cdb76860677e55649448e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 58,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/29/29dd5dc7515a0817a1d029a323fda40af0c94ac6f01d2051575c42e0e62fb80a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f9147477-4b0b-50cb-a051-0a1f0f4fcb11",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2cc75513-f933-07dc-18e8-08d4f2c41ba0",
  "kind": "theorem",
  "lexical_name": "div_eq_quo_add_rem_div_add_rem_div",
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
  "slug": "div-eq-quo-add-rem-div-add-rem-div--432395abcccc2437f45cd545",
  "source": {
    "blob": "292693f7907362a7fd4cdb76860677e55649448e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 58,
    "path": "GRWTSK/Algebra/PartialFractions/Variant29dd5dc7515a0817a1d029a323fda40af0c94ac6f01d2051575c42e0e62fb80a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:432395abcccc2437f45cd54525c61dfaa7d2dba9801cd56115cf0917cb1da478",
  "verification": {
    "reference": "docs/verification/Algebra/PartialFractions/Variant29dd5dc7515a0817a1d029a323fda40af0c94ac6f01d2051575c42e0e62fb80a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2cc75513-f933-07dc-18e8-08d4f2c41ba0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem div_eq_quo_add_rem_div_add_rem_div (f : R[X]) {g₁ g₂ : R[X]} (hg₁ : g₁.Monic)
    (hg₂ : g₂.Monic) (hcoprime : IsCoprime g₁ g₂) :
    ∃ q r₁ r₂ : R[X],
      r₁.degree < g₁.degree ∧
        r₂.degree < g₂.degree ∧ (f : K) / (↑g₁ * ↑g₂) = ↑q + ↑r₁ / ↑g₁ + ↑r₂ / ↑g₂ := by
  rcases hcoprime with ⟨c, d, hcd⟩
  refine
    ⟨f * d /ₘ g₁ + f * c /ₘ g₂, f * d %ₘ g₁, f * c %ₘ g₂, degree_modByMonic_lt _ hg₁,
      degree_modByMonic_lt _ hg₂, ?_⟩
  have hg₁' : (↑g₁ : K) ≠ 0 := by
    norm_cast
    exact hg₁.ne_zero
  have hg₂' : (↑g₂ : K) ≠ 0 := by
    norm_cast
    exact hg₂.ne_zero
  have hfc := modByMonic_add_div (f * c) hg₂
  have hfd := modByMonic_add_div (f * d) hg₁
  field_simp
  norm_cast
  linear_combination -1 * f * hcd + -1 * g₁ * hfc + -1 * g₂ * hfd

end TwoDenominators

section NDenominators

open algebraMap

/-- Let R be an integral domain and f ∈ R[X]. Let s be a finite index set.
Then, a fraction of the form f / ∏ (g i) can be rewritten as q + ∑ (r i) / (g i), where
deg(r i) < deg(g i), provided that the g i are monic and pairwise coprime.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/PartialFractions/Variant29dd5dc7515a0817a1d029a323fda40af0c94ac6f01d2051575c42e0e62fb80a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/PartialFractions/Variant29dd5dc7515a0817a1d029a323fda40af0c94ac6f01d2051575c42e0e62fb80a.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `292693f7907362a7fd4cdb76860677e55649448e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
