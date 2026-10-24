# ascPochhammer_eval_eq_zero_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "481a161835e3d36f183fd32133e0d42c14462752",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 434,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ad/ad7f0f7072531ab4cbfb55f10764fb0753d0f0daf5cdce3e39675c3b939894f0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4660d84b-a9f0-b1f2-2557-6c01732e77f6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:66c7f354-eebe-e1c9-abca-c27e4bffe6bd",
  "kind": "theorem",
  "lexical_name": "ascPochhammer_eval_eq_zero_iff",
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
  "slug": "ascpochhammer-eval-eq-zero-iff--8c72866cfb28261ddee972ac",
  "source": {
    "blob": "481a161835e3d36f183fd32133e0d42c14462752",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 451,
    "line": 434,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Pochhammer/Variantad7f0f7072531ab4cbfb55f10764fb0753d0f0daf5cdce3e39675c3b939894f0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8c72866cfb28261ddee972acd0473d5aba941ec3b8578c089a5400b24bfb61d1",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Pochhammer/Variantad7f0f7072531ab4cbfb55f10764fb0753d0f0daf5cdce3e39675c3b939894f0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:66c7f354-eebe-e1c9-abca-c27e4bffe6bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 434–451.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ascPochhammer_eval_eq_zero_iff [IsDomain R]
    (n : ℕ) (r : R) : (ascPochhammer R n).eval r = 0 ↔ ∃ k < n, k = -r := by
  refine ⟨fun zero' ↦ ?_, fun hrn ↦ ?_⟩
  · induction n with
    | zero => simp only [ascPochhammer_zero, Polynomial.eval_one, one_ne_zero] at zero'
    | succ n ih =>
      rw [ascPochhammer_succ_eval, mul_eq_zero] at zero'
      cases zero' with
      | inl h =>
        obtain ⟨rn, hrn, rrn⟩ := ih h
        exact ⟨rn, by lia, rrn⟩
      | inr h =>
        exact ⟨n, lt_add_one n, eq_neg_of_add_eq_zero_right h⟩
  · obtain ⟨rn, hrn, rnn⟩ := hrn
    convert! ascPochhammer_eval_neg_coe_nat_of_lt hrn
    simp [rnn]

/-- `descPochhammer R n` is `0` for `0, 1, …, n-1`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Pochhammer/Variantad7f0f7072531ab4cbfb55f10764fb0753d0f0daf5cdce3e39675c3b939894f0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Pochhammer/Variantad7f0f7072531ab4cbfb55f10764fb0753d0f0daf5cdce3e39675c3b939894f0.lean#L434).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `481a161835e3d36f183fd32133e0d42c14462752` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
